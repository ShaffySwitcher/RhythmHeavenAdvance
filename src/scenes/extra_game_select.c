#include "global.h"
#include "extra_game_select.h"
#include "graphics/game_select/game_select_graphics.h"
#include "graphics/extra_game_select/extra_game_select_graphics.h"

#include "levels.h"
#include "extra_levels.h"
#include "src/scenes/reading.h"
#include "src/scenes/studio.h"

/* DATA */

u32 extraLevelsWithNoPractice[] = {
    LEVEL_KARATE_MAN
};


/* GAME SELECT SCENE */


#define COLOR_MOD_MAX_WAIT_TIME 60
#define COLOR_MOD_INTERP_TIME 96

enum ColorChangerStatesEnum {
    COLOR_CHANGER_STATE_WAITING,
    COLOR_CHANGER_STATE_INTERPOLATING
};

#define STAGE_PANE_Y_HIDDEN (SCREEN_HEIGHT + 40)
#define STAGE_PANE_Y_VISIBLE (SCREEN_HEIGHT - 20)
#define STAGE_PANE_SPEED 9

enum InfoPaneStatesEnum {
    /* 00 */ INFO_PANE_TASK_NONE,
    /* 01 */ INFO_PANE_TASK_DELAY,
    /* 02 */ INFO_PANE_TASK_PRINT_NAME,
    /* 03 */ INFO_PANE_TASK_PRINT_RANK,
    /* 04 */ INFO_PANE_TASK_PRINT_DESC,
    /* 05 */ INFO_PANE_TASK_RENDER
};

enum FlowPaneStatesEnum {
    /* 00 */ FLOW_PANE_TASK_NONE,
    /* 01 */ FLOW_PANE_TASK_WAIT,
    /* 02 */ FLOW_PANE_TASK_ROLL,
    /* 03 */ FLOW_PANE_TASK_FLICKER
};


static s8 sCurrentCampaign; // Current Perfect Campaign ID


extern u32 D_03005590; // Unused
extern u32 D_030055d4; // Unused


#define LEVEL_STATE_PERFECT 6 // New state for perfected levels

// Play Game Select Music
void play_extra_game_select_bgm(void) {
    set_beatscript_tempo(115);
    scene_set_music(&s_extra_game_select_bgm_seqData);
}


// Write Game Select Grid to VRAM
void init_extra_game_select_grid_gfx(void) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    void *tileBase, *iconMapBase, *iconOverlayMapBase;
    u32 tileNum;
    u32 i, j;

    tileBase = BG_TILESET_BASE(0);
    dma3_fill(0, tileBase, 0x20, 0x20, 0x200);
    iconMapBase = BG_MAP_BASE(0xE000);
    dma3_fill(0, iconMapBase, 0x2000, 0x20, 0x200);
    iconOverlayMapBase = BG_MAP_BASE(0xC000);
    dma3_fill((0x0100 << 16) | 0x0100, iconOverlayMapBase, 0x2000, 0x20, 0x200);

    tileNum = 1;
    for (i = 0; i < 54; i++) {
        extra_game_select_print_icon_texture(level_icon_texture_table[i], 0, tileNum);
        tileNum += (3 * 3);
    }

    for (i = 0; i < GS_GRID_HEIGHT; i++) {
        for (j = 0; j < GS_GRID_WIDTH; j++) {
            struct LevelData *levelData;
            s32 levelID, levelState, levelType;
            u32 overlay, palette;

            levelID = game_select_grid_data[j + (i * GS_GRID_WIDTH)].id;

            if (levelID >= 0) {
                u32 tileX = 1 + (j * 5);
                u32 tileY = 4 + (i * 3);

                levelData = &level_data_table[levelID];
                levelType = levelData->type;
                levelState = saveData->levelStates[levelID];
                overlay = level_icon_overlays_map[levelType][levelState];
                if (levelState != LEVEL_STATE_HIDDEN) {
                    tileNum = 1 + (levelData->icon * 3 * 3);
                    palette = level_icon_palette_table[levelData->icon];
                    extra_game_select_print_icon_maps(28, 3, tileX, tileY, 3, 3, tileNum, palette);
                }
                tileNum = 1 + (overlay * 3 * 3) + 0x100;
                extra_game_select_print_icon_maps(24, 3, tileX, tileY, 3, 3, tileNum, 7);
            }
        }
    }
}


// Init. Color Changers
void extra_game_select_init_color_mod(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gExtraGameSelect->colorChangers); i++) {
        struct ColorChanger *changer = &gExtraGameSelect->colorChangers[i];

        changer->r1 = changer->g1 = changer->b1 = 31;
        changer->r2 = changer->g2 = changer->b2 = 31;
        changer->state = COLOR_CHANGER_STATE_WAITING;
        changer->timer = 1;
        changer->target = (i == 0) ? 0xFE : 0xFF;
    }
}


// Update Color Changer
void extra_game_select_update_color_mod(struct ColorChanger *changer) {
    u32 r, g, b;

    switch (changer->state) {
        case COLOR_CHANGER_STATE_WAITING:
            if (--changer->timer == 0) {
                changer->state = COLOR_CHANGER_STATE_INTERPOLATING;
                changer->r1 = changer->r2;
                changer->g1 = changer->g2;
                changer->b1 = changer->b2;

                if (agb_random(2)) {
                    changer->r2 = agb_random(32);
                    changer->g2 = agb_random(32);
                    changer->b2 = agb_random(32);

                    if ((changer->r2 < 20) && (changer->g2 < 20) && (changer->b2 < 20)) {
                        u8 *darkest = &changer->r2;

                        if (changer->r2 > changer->g2) {
                            darkest = &changer->g2;
                        }
                        if (*darkest > changer->b2) {
                            darkest = &changer->b2;
                        }

                        *darkest = 31 - (*darkest / 4);
                    }
                } else {
                    changer->r2 = 31 * agb_random(2);
                    changer->g2 = 31 * agb_random(2);
                    changer->b2 = 31 * agb_random(2);
                }

                changer->timer = 0;
            }
            break;

        case COLOR_CHANGER_STATE_INTERPOLATING:
            changer->timer++;
            r = math_lerp(changer->r1, changer->r2, changer->timer, COLOR_MOD_INTERP_TIME);
            g = math_lerp(changer->g1, changer->g2, changer->timer, COLOR_MOD_INTERP_TIME);
            b = math_lerp(changer->b1, changer->b2, changer->timer, COLOR_MOD_INTERP_TIME);
            D_03004b10.bgPalette[0][changer->target] = ((r & 0x1F)) | ((g & 0x1F) << 5) | ((b & 0x1F) << 10);

            if (changer->timer >= COLOR_MOD_INTERP_TIME) {
                changer->timer = 1 + agb_random(COLOR_MOD_MAX_WAIT_TIME);
                changer->state = COLOR_CHANGER_STATE_WAITING;
            }
            break;
    }
}


// Update Color Changers
void extra_game_select_update_bg_colors(void) {
    extra_game_select_update_color_mod(&gExtraGameSelect->colorChangers[0]);
    extra_game_select_update_color_mod(&gExtraGameSelect->colorChangers[1]);
}


// Scene Init. Static Variables
void extra_game_select_scene_init_memory(void) {
    D_030055d4 = 0;
    D_03005590 = 0;
    clear_current_campaign();
}


// Scene Graphics Init. 4 (Colors & Level Icons)
void extra_game_select_scene_init_gfx4(void) {
    func_0800c604(0);
    set_pause_beatscript_scene(FALSE);
    //func_080041d0(0xFE, 0xFF, 0);
    //func_0800425c(16, 144);
    init_extra_game_select_grid_gfx();
    extra_game_select_init_icon_overlays();
    gExtraGameSelect->loadingSceneGfx = FALSE;
}


// Scene Graphics Init. 3 (Buffered Textures)
void extra_game_select_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), extra_game_select_buffered_textures);
    run_func_after_task(task, extra_game_select_scene_init_gfx4, 0);
}


// Scene Graphics Init. 2 (Graphics Table)
void extra_game_select_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), extra_game_select_gfx_table, 0x3000);
    run_func_after_task(task, extra_game_select_scene_init_gfx3, 0);
}


// Scene Graphics Init. 1 (BG/OBJ Layers)
void extra_game_select_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), extra_game_select_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, TRUE, 0, 0, 2, 10, BGCNT_TILEMAP_SIZE(0) | BGCNT_PRIORITY(3));
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 2, 22, BGCNT_TILEMAP_SIZE(2) | BGCNT_PRIORITY(0));
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 2, 24, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(1));
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 28, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(2));
}


// Scene Start
void extra_game_select_scene_start(void *sVar, s32 dArg) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s32 recentLevelState, previousLevelState;
    s16 bgOfsX, bgOfsY;
    s32 prevX, prevY;

    // Init. Graphics
    gExtraGameSelect->loadingSceneGfx = TRUE;
    func_08007324(FALSE);
    func_080073f0();
    extra_game_select_scene_init_gfx1();
    //extra_game_select_init_color_mod();
    extra_game_select_init_stub();
    gExtraGameSelect->bgX = 0;
    gExtraGameSelect->bgY = 0;

    // Init. Cursor
    gExtraGameSelect->cursorX = D_030046a8->data.gsCursorX;
    gExtraGameSelect->cursorY = D_030046a8->data.gsCursorY;
    extra_get_pixel_xy_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY, &bgOfsX, &bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_3, bgOfsX, bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_2, bgOfsX, bgOfsY);
    gExtraGameSelect->selectionBorderSprite = sprite_create(gSpriteHandler, anim_game_select_border_target, 0, 48, 72, 0x4800, 1, 0, 0);
    gExtraGameSelect->cursorSprite = sprite_create(gSpriteHandler, anim_game_select_cursor, 0, 64, 64, 0x47FF, 1, 0, 0);
    extra_game_select_link_sprite_xy_to_bg(gExtraGameSelect->selectionBorderSprite);
    extra_game_select_link_sprite_xy_to_bg(gExtraGameSelect->cursorSprite);
    extra_game_select_move_cursor_to_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY);

    // Init. BG Motion
    gExtraGameSelect->gridPaneIsMoving = FALSE;
    gExtraGameSelect->gridPaneX1 = gExtraGameSelect->gridPaneX2 = bgOfsX;
    gExtraGameSelect->gridPaneY1 = gExtraGameSelect->gridPaneY2 = bgOfsY;
    gExtraGameSelect->infoPaneIsMoving = FALSE;
    gExtraGameSelect->infoPaneX1 = gExtraGameSelect->infoPaneX2 = 0;
    gExtraGameSelect->infoPaneY1 = gExtraGameSelect->infoPaneY2 = 0;

    // Init. Various
    init_campaign_notice();
    //extra_game_select_init_medal_pane();
    //extra_game_select_init_squares();
    gExtraGameSelect->inputsEnabled = FALSE;
    extra_game_select_init_info_pane();
    extra_game_select_set_info_pane_to_cursor_target();
    //extra_game_select_init_flow_pane();

    // Init. Events
    gExtraGameSelect->totalLevelEventsQueued = 0;
    gExtraGameSelect->levelEventDequeueID = 0;
    gExtraGameSelect->levelEventEnqueueID = 0;
    gExtraGameSelect->levelEventPending = FALSE;
    prevX = saveData->recentLevelX;
    prevY = saveData->recentLevelY;
    recentLevelState = saveData->recentLevelState;
    previousLevelState = get_level_state_from_grid_xy(prevX, prevY);
    gExtraGameSelect->baristaLevelEventPending = FALSE;
    gExtraGameSelect->baristaLevelEventTimer = 0;

    /*if (recentLevelState > previousLevelState) {
        extra_game_select_start_level_events(60);
        extra_game_select_enqueue_level_event(prevX, prevY, recentLevelState);

        if (saveData->recentLevelClearedByBarista) {
            gExtraGameSelect->baristaLevelEventPending = TRUE;
            gExtraGameSelect->baristaLevelEventX = prevX;
            gExtraGameSelect->baristaLevelEventY = prevY;
            gExtraGameSelect->baristaLevelEventTimer = 60;
        }
    } else {
        gExtraGameSelect->runningLevelEvents = FALSE;
        gExtraGameSelect->levelEventTimer = 0;
        write_game_save_data();

        if (gExtraGameSelect->campaignNotice.hasNewCampaign) {
            start_campaign_notice(D_030046a8->data.currentCampaign);
            gExtraGameSelect->campaignNotice.hasNewCampaign = FALSE;
        } else {
            gExtraGameSelect->sceneState = GS_STATE_MAIN;
        }
    }*/

    gExtraGameSelect->sceneState = GS_STATE_MAIN;

    //saveData->recentLevelState = LEVEL_STATE_NULL;
    //saveData->recentLevelClearedByBarista = FALSE;
    results_set_enable_save(FALSE);

    /* Init. BGM */
    //get_grid_xy_from_level_id(LEVEL_STAFF_CREDIT, &prevX, &prevY);

    /* Init. Scene Transitions */
    set_scene_trans_target(&scene_results_ver_rank, &scene_epilogue);
    set_scene_trans_target(&scene_results_ver_score, &scene_extra_game_select);
    set_scene_trans_target(&scene_epilogue, &scene_extra_game_select);
}


// Scene Update (Paused)
void extra_game_select_scene_paused(void *sVar, s32 dArg) {
}


// Scroll Start - Grid
void extra_game_select_scroll_grid_pane(s32 x, s32 y, s24_8 rate) {
    gExtraGameSelect->gridPaneIsMoving = TRUE;
    gExtraGameSelect->gridPaneX1 = gExtraGameSelect->gridPaneX2;
    gExtraGameSelect->gridPaneY1 = gExtraGameSelect->gridPaneY2;
    gExtraGameSelect->gridPaneX2 = x;
    gExtraGameSelect->gridPaneY2 = y;
    gExtraGameSelect->gridPaneMotionDecay = rate;
    gExtraGameSelect->gridPaneMotionTime = INT_TO_FIXED(1.0);
}


// Scroll Start - Description Box
void extra_game_select_scroll_info_pane(s32 x, s32 y, s24_8 rate) {
    gExtraGameSelect->infoPaneIsMoving = TRUE;
    gExtraGameSelect->infoPaneX1 = gExtraGameSelect->infoPaneX2;
    gExtraGameSelect->infoPaneY1 = gExtraGameSelect->infoPaneY2;
    gExtraGameSelect->infoPaneX2 = x;
    gExtraGameSelect->infoPaneY2 = y;
    gExtraGameSelect->infoPaneMotionDecay = rate;
    gExtraGameSelect->infoPaneMotionTime = INT_TO_FIXED(1.0);
}


// Update Screen Scroll
void extra_game_select_update_bg_scroll(void) {
    s24_8 x, y;

    gExtraGameSelect->bgX += 2;
    gExtraGameSelect->bgY -= 1;
    scene_set_bg_layer_pos(BG_LAYER_0, gExtraGameSelect->bgX >> 2, gExtraGameSelect->bgY >> 2);

    if (gExtraGameSelect->gridPaneIsMoving) {
        gExtraGameSelect->gridPaneMotionTime = FIXED_POINT_MUL(gExtraGameSelect->gridPaneMotionTime, gExtraGameSelect->gridPaneMotionDecay);
        x = math_lerp(gExtraGameSelect->gridPaneX2, gExtraGameSelect->gridPaneX1, gExtraGameSelect->gridPaneMotionTime, INT_TO_FIXED(1.0));
        y = math_lerp(gExtraGameSelect->gridPaneY2, gExtraGameSelect->gridPaneY1, gExtraGameSelect->gridPaneMotionTime, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_3, x, y);
        scene_set_bg_layer_pos(BG_LAYER_2, x, y);

        if (gExtraGameSelect->gridPaneMotionTime == 0) {
            gExtraGameSelect->gridPaneIsMoving = FALSE;
        }
    }

    if (gExtraGameSelect->infoPaneIsMoving) {
        gExtraGameSelect->infoPaneMotionTime = FIXED_POINT_MUL(gExtraGameSelect->infoPaneMotionTime, gExtraGameSelect->infoPaneMotionDecay);
        x = math_lerp(gExtraGameSelect->infoPaneX2, gExtraGameSelect->infoPaneX1, gExtraGameSelect->infoPaneMotionTime, INT_TO_FIXED(1.0));
        y = math_lerp(gExtraGameSelect->infoPaneY2, gExtraGameSelect->infoPaneY1, gExtraGameSelect->infoPaneMotionTime, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_1, x, y);

        if (gExtraGameSelect->infoPaneMotionTime == 0) {
            gExtraGameSelect->infoPaneIsMoving = FALSE;
        }
    }
}


// Set Selection Border Sprite Z/Layer
void extra_game_select_set_cursor_border_z(void) {
    // Adjust Z level to place selection border under the medal icon (if present).
    if (get_level_state_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY) == LEVEL_STATE_HAS_MEDAL) {
        sprite_set_z(gSpriteHandler, gExtraGameSelect->selectionBorderSprite, 0x8800);
    } else {
        sprite_set_z(gSpriteHandler, gExtraGameSelect->selectionBorderSprite, 0x4800);
    }
}


// Set Position for Cursor and Selection Border
void extra_game_select_move_cursor_to_grid_xy(s32 x, s32 y) {
    s16 screenX, screenY;

    gExtraGameSelect->cursorX = x;
    gExtraGameSelect->cursorY = y;

    extra_get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);

    screenX += 52;
    screenY += 68;

    sprite_set_x_y(gSpriteHandler, gExtraGameSelect->selectionBorderSprite, screenX, screenY);
    sprite_set_x_y(gSpriteHandler, gExtraGameSelect->cursorSprite, screenX, screenY);
    extra_game_select_set_cursor_border_z();
}


// Get Next Valid Cursor Position in Given Directions (return FALSE if no movement should occur)
u32 extra_game_select_get_next_valid_xy(s32 *xReq, s32 *yReq, s32 dx, s32 dy) {
    s32 x, y, levelID;

    x = *xReq;
    y = *yReq;

    // No movement is requested.
    if ((dx == 0) && (dy == 0)) {
        return FALSE;
    }

    // If both horizontal and vertical movement is requested, ignore the former.
    if ((dx != 0) && (dy != 0)) {
        dx = 0;
    }

    // Continuously move in the given direction, skipping grid icons that are either absent or hidden.
    while (TRUE) {
        x += dx;
        y += dy;

        // Movement target is out-of-bounds.
        if ((x < 0) || (x >= GS_GRID_WIDTH) || (y < 0) || (y >= (s32)GS_GRID_HEIGHT)) {
            return FALSE;
        }

        // Movement target is a visible grid icon.
        levelID = get_level_id_from_grid_xy(x, y);
        if ((levelID > LEVEL_NULL) && (get_level_state_from_id(levelID) >= LEVEL_STATE_CLOSED)) {
            *xReq = x;
            *yReq = y;
            return TRUE;
        }
    }
}


// Read Directional Inputs
void extra_game_select_read_dpad_inputs(void) {
    s16 screenX, screenY;
    s32 x, y, dx, dy;

    // Get horizontal and vertical movement.
    dx = dy = 0;
    if (D_030053b8 & DPAD_UP) {
        dy = -1;
    }
    if (D_030053b8 & DPAD_DOWN) {
        dy = 1;
    }
    if (D_030053b8 & DPAD_LEFT) {
        dx = -1;
    }
    if (D_030053b8 & DPAD_RIGHT) {
        dx = 1;
    }

    // No movement is requested.
    if ((dx == 0) && (dy == 0)) {
        return;
    }

    // If both horizontal and vertical movement is requested, ignore the former.
    if ((dx != 0) && (dy != 0)) {
        dx = 0;
    }

    x = gExtraGameSelect->cursorX;
    y = gExtraGameSelect->cursorY;

    // If the movement is invalid or zero, exit.
    if (!extra_game_select_get_next_valid_xy(&x, &y, dx, dy)) {
        return;
    }

    // Movement is valid.
    extra_game_select_move_cursor_to_grid_xy(x, y);
    extra_get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);
    extra_game_select_scroll_grid_pane(screenX, screenY, 200);
    extra_game_select_set_info_pane_to_cursor_target();

    play_sound(&s_menu_cursor1_seqData);
}


// Stub
void extra_game_select_read_inputs_sub1(void) {
}


// Stub
void extra_game_select_read_inputs_sub2(void) {
}


// Read Key Inputs
void extra_game_select_read_inputs(void) {
    struct LevelData *levelData;
    s32 levelState, levelID;
    u32 canHaveCampaign;

    if (!extra_game_select_scene_inputs_enabled()) {
        return;
    }

    /* Update inputs beside A_BUTTON and B_BUTTON. */
    extra_game_select_read_inputs_sub1();
    extra_game_select_read_inputs_sub2();
    extra_game_select_read_dpad_inputs();

    /* A_BUTTON was pressed: Attempt to open the selected level. */
    if (D_03004afc & A_BUTTON) {
        levelState = get_level_state_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY);

        /* If the level can be opened: */
        if ((levelState == LEVEL_STATE_OPEN) || (levelState == LEVEL_STATE_CLEARED) || (levelState == LEVEL_STATE_HAS_MEDAL)) {
            D_030046a8->data.gsCursorX = gExtraGameSelect->cursorX;
            D_030046a8->data.gsCursorY = gExtraGameSelect->cursorY;
            levelID = get_level_id_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY);
            levelData = get_level_data_from_id(levelID);
            set_next_scene(levelData->scene);

            switch (levelData->type) {
                case LEVEL_TYPE_GAME:
                case LEVEL_TYPE_REMIX:
                    set_scene_trans_target(&scene_results_ver_rank, &scene_epilogue);
                    set_scene_trans_target(&scene_results_ver_score, &scene_extra_game_select);
                    set_scene_trans_target(&scene_epilogue, &scene_extra_game_select);
                    set_scene_trans_var(&scene_epilogue, (s32)levelData);
                    gameplay_pause_menu_set_quit_destination(&scene_extra_game_select);
                    canHaveCampaign = TRUE;
                    break;

                case LEVEL_TYPE_BONUS:
                    if (levelID == LEVEL_LIVE_MENU) {
                        set_scene_trans_target(levelData->scene, &scene_epilogue);
                        set_scene_trans_target(&scene_epilogue, &scene_extra_game_select);
                        set_scene_trans_var(&scene_epilogue, (s32)levelData);
                        gameplay_pause_menu_set_quit_destination(&scene_extra_game_select);
                    } else {
                        set_scene_trans_target(levelData->scene, &scene_extra_game_select);
                        gameplay_pause_menu_set_quit_destination(&scene_extra_game_select);
                    }
                    canHaveCampaign = FALSE;
                    break;
            }

            D_030046a8->data.gsCursorX = D_030046a8->data.recentLevelX = gExtraGameSelect->cursorX;
            D_030046a8->data.gsCursorY = D_030046a8->data.recentLevelY = gExtraGameSelect->cursorY;
            D_030046a8->data.recentLevelState = LEVEL_STATE_NULL;

            if (canHaveCampaign && (D_030046a8->data.campaignState == CAMPAIGN_STATE_ACTIVE) && (gExtraGameSelect->campaignNotice.id >= 0)) {
                if ((gExtraGameSelect->cursorX == gExtraGameSelect->campaignNotice.x) && (gExtraGameSelect->cursorY == gExtraGameSelect->campaignNotice.y)) {
                    set_current_campaign(gExtraGameSelect->campaignNotice.id);
                    D_030046a8->data.campaignAttemptsLeft--;
                    D_030046a8->data.unk26A = 0;
                } else {
                    D_030046a8->data.campaignAttemptsLeft--;
                }
            }

            write_game_save_data();
            set_pause_beatscript_scene(FALSE);
            gExtraGameSelect->inputsEnabled = FALSE;
            play_sound(&s_menu_kettei1_seqData);
            return;
        }

        /* If the level cannot be opened: */
        play_sound(&s_menu_error_seqData);
        return;
    }

    /* B_BUTTON was pressed: Return to Main Menu. */
    if (D_03004afc & B_BUTTON) {
        set_next_scene(&scene_main_menu);
        set_scene_trans_var(&scene_main_menu, 0);
        D_030046a8->data.gsCursorX = D_030046a8->data.recentLevelX = gExtraGameSelect->cursorX;
        D_030046a8->data.gsCursorY = D_030046a8->data.recentLevelY = gExtraGameSelect->cursorY;
        D_030046a8->data.recentLevelState = LEVEL_STATE_NULL;
        write_game_save_data();
        set_pause_beatscript_scene(FALSE);
        gExtraGameSelect->inputsEnabled = FALSE;
        play_sound(&s_menu_cancel3_seqData);
    }
}


// Set Info Pane to Cursor Target
void extra_game_select_set_info_pane_to_cursor_target(void) {
    s32 levelState = get_level_state_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY);

    switch (levelState) {
        case (LEVEL_STATE_NULL):
        case (LEVEL_STATE_HIDDEN):
        case (LEVEL_STATE_CLOSED):
            extra_game_select_set_info_pane(LEVEL_NULL, LEVEL_STATE_HIDDEN, 10);
            break;

        case (LEVEL_STATE_OPEN):
        case (LEVEL_STATE_CLEARED):
        case (LEVEL_STATE_HAS_MEDAL):
            extra_game_select_set_info_pane(get_level_id_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY), levelState, 10);
            break;
    }
}


// Link Sprite X/Y to Grid BG H/V Offset
void extra_game_select_link_sprite_xy_to_bg(s16 sprite) {
    sprite_set_origin_x_y(gSpriteHandler, sprite, &D_03004b10.BG_OFS[BG_LAYER_3].x, &D_03004b10.BG_OFS[BG_LAYER_3].y);
}


// Scene Update (Active)
void extra_game_select_scene_update(void *sVar, s32 dArg) {
    s16 bgOfsX, bgOfsY;

    if (gExtraGameSelect->loadingSceneGfx) {
        return;
    }

    bgOfsX = D_03004b10.BG_OFS[BG_LAYER_3].x;
    bgOfsY = D_03004b10.BG_OFS[BG_LAYER_3].y;

    switch (gExtraGameSelect->sceneState) {
        case GS_STATE_UNLOCKING_LEVELS:
            extra_game_select_update_level_events();
            break;

        case GS_STATE_MAIN:
            extra_game_select_read_inputs();
            break;

        case GS_STATE_DISPLAYING_CAMPAIGN:
            update_campaign_notice();
            break;
    }

    //extra_game_select_update_bg_colors();
    extra_game_select_update_stub();
    extra_game_select_update_info_pane();
    extra_game_select_update_bg_scroll();
    bgOfsX -= D_03004b10.BG_OFS[BG_LAYER_3].x;
    bgOfsY -= D_03004b10.BG_OFS[BG_LAYER_3].y;
    //extra_game_select_update_bg_squares(bgOfsX - 1, bgOfsY);
    extra_game_select_update_icon_squares();
    //extra_game_select_update_flow_pane();
    //extra_game_select_update_medal_pane();
}


// Check if Scene Can Receive Inputs
u32 extra_game_select_scene_inputs_enabled(void) {
    if (gExtraGameSelect->inputsEnabled) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Set D_030055d4 and D_03005590
void extra_game_select_set_unused_static_var(u32 arg0, u32 arg1) {
    D_030055d4 = arg0;
    D_03005590 = arg1;
}


// Return the Total Number of Levels
u32 extra_game_select_get_total_levels(void) {
    return TOTAL_LEVELS;
}


// Get Level Name from ID
const char *extra_game_select_get_level_name(s32 id) {
    struct LevelData *levelData;

    if (id < 0) {
        return NULL;
    }

    if (id >= TOTAL_LEVELS) {
        return NULL;
    }

    levelData = &level_data_table[id];
    return levelData->name;
}


// Enqueue New Level Event
void extra_game_select_enqueue_level_event(s32 x, s32 y, s32 state) {
    struct QueuedLevelEvent *data;
    s32 oldState;

    if (state == LEVEL_STATE_NULL) {
        return;
    }

    oldState = get_level_state_from_grid_xy(x, y);
    if ((oldState >= 0) && (oldState < state)) {
        data = &gExtraGameSelect->levelEventsQueue[gExtraGameSelect->levelEventEnqueueID];
        data->x = x;
        data->y = y;
        data->state = state;

        gExtraGameSelect->totalLevelEventsQueued++;
        if (++gExtraGameSelect->levelEventEnqueueID >= ARRAY_COUNT(gExtraGameSelect->levelEventsQueue)) {
            gExtraGameSelect->levelEventEnqueueID = 0;
        }
    }
}


// Dequeue New Level Event
void extra_game_select_dequeue_level_event(s32 *xReq, s32 *yReq, s32 *stateReq) {
    struct QueuedLevelEvent *data;

    if (gExtraGameSelect->totalLevelEventsQueued == 0) {
        *stateReq = LEVEL_STATE_NULL;
        return;
    }

    data = &gExtraGameSelect->levelEventsQueue[gExtraGameSelect->levelEventDequeueID];
    *xReq = data->x;
    *yReq = data->y;
    *stateReq = data->state;

    gExtraGameSelect->totalLevelEventsQueued--;
    if (++gExtraGameSelect->levelEventDequeueID >= ARRAY_COUNT(gExtraGameSelect->levelEventsQueue)) {
        gExtraGameSelect->levelEventDequeueID = 0;
    }
}


// Check Level Show/Open Requirements
u32 extra_game_select_check_level_event_req(s32 x, s32 y, s32 newState) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    struct ExtraGameSelectGridEntry *gridEntry;
    const s8 *requirements;
    s32 state;

    gridEntry = game_select_grid_data + x + (y * GS_GRID_WIDTH);

    if (gridEntry->id < 0) {
        return FALSE;
    }

    state = saveData->levelStates[gridEntry->id];
    requirements = NULL;

    switch (state) {
        case LEVEL_STATE_HIDDEN:
            if (newState == LEVEL_STATE_CLOSED) {
                requirements = gridEntry->displayReq;
            }
        case LEVEL_STATE_CLOSED:
            if (newState == LEVEL_STATE_OPEN) {
                requirements = gridEntry->unlockReq;
            }
    }

    if (requirements == NULL) {
        return FALSE;
    }

    while (TRUE) {
        s32 x, y;

        if (requirements[0] == -1) {
            return TRUE;
        }

        x = requirements[1];
        y = requirements[2];
        gridEntry = game_select_grid_data + x + (y * GS_GRID_WIDTH);

        if (gridEntry->id < 0) {
            return FALSE;
        }

        state = saveData->levelStates[gridEntry->id];

        switch (requirements[0]) {
            case LEVEL_STATE_HAS_MEDAL:
                if (state == LEVEL_STATE_CLEARED) {
                    return FALSE;
                }
            case LEVEL_STATE_CLEARED:
                if (state == LEVEL_STATE_OPEN) {
                    return FALSE;
                }
            case LEVEL_STATE_OPEN:
                if (state == LEVEL_STATE_CLOSED) {
                    return FALSE;
                }
            case LEVEL_STATE_CLOSED:
                if (state == LEVEL_STATE_APPEARING) {
                    return FALSE;
                }
                if (state == LEVEL_STATE_HIDDEN) {
                    return FALSE;
                }
                break;

            default:
                return FALSE;
        }

        requirements += 3;
    }

    return TRUE;
}


// Set Level Icon Map After Level Event
void extra_game_select_set_icon_map_after_level_event(s32 x, s32 y) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    struct LevelData *levelData;
    s32 id, state, type;
    u32 tileX, tileY, tileNum, overlay, palette;

    id = get_level_id_from_grid_xy(x, y);

    if (id < 0) {
        return;
    }

    tileX = 1 + (x * 5);
    tileY = 4 + (y * 3);
    levelData = &level_data_table[id];
    type = levelData->type;
    state = saveData->levelStates[id];
    overlay = level_icon_overlays_map[type][state];

    if ((state == LEVEL_STATE_HIDDEN) || (state == LEVEL_STATE_APPEARING)) {
        return;
    }

    tileNum = 1 + (levelData->icon * 9);
    palette = level_icon_palette_table[levelData->icon];
    extra_game_select_print_icon_maps(28, 3, tileX, tileY, 3, 3, tileNum, palette);

    tileNum = 1 + (overlay * 9) + 0x100;
    extra_game_select_print_icon_maps(24, 3, tileX, tileY, 3, 3, tileNum, 7);
}


// Set Level Event Target
u32 extra_game_select_set_level_event_target(s32 x, s32 y, u32 moveCursor, s24_8 scrollRate) {
    s16 screenX, screenY;

    gExtraGameSelect->levelEventTargetX = x;
    gExtraGameSelect->levelEventTargetY = y;

    extra_get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);
    extra_game_select_scroll_grid_pane(screenX, screenY, scrollRate);

    if (moveCursor) {
        extra_game_select_move_cursor_to_grid_xy(x, y);
    }
}


// Process Level Event Targets List
u32 extra_game_select_process_level_event_targets(const s8 *eventTargets) {
    struct ExtraGameSelectGridEntry *gridEntry;
    s32 x, y;

    if (eventTargets == NULL) {
        return;
    }

    while ((eventTargets[0] >= 0) && (eventTargets[1] >= 0)) {
        x = eventTargets[0];
        y = eventTargets[1];
        gridEntry = game_select_grid_data + x + (y * GS_GRID_WIDTH);

        if (extra_game_select_check_level_event_req(x, y, LEVEL_STATE_OPEN)) {
            s32 state = LEVEL_STATE_OPEN;

            if (gridEntry->flags & LEVEL_EVENT_CLEAR_BY_DEFAULT) {
                state = LEVEL_STATE_CLEARED;
            }
            extra_game_select_enqueue_level_event(x, y, state);

            if (gridEntry->flags & LEVEL_EVENT_TARGET_ON_OPEN) {
                extra_game_select_set_level_event_target(x, y, gridEntry->flags & LEVEL_EVENT_MOVE_CURSOR, 240);
                if (gExtraGameSelect->levelEventTimer < 90) {
                    gExtraGameSelect->levelEventTimer = 90;
                }
            }
        }

        else if (extra_game_select_check_level_event_req(x, y, LEVEL_STATE_CLOSED)) {
            s32 args;

            args = LEVEL_STATE_CLOSED;
            args <<= 8;
            args |= x;
            args <<= 8;
            args |= y;

            extra_game_select_spawn_icon_square(x, y, enqueue_level_event_after_reveal, args, gridEntry->orderIndex * 6);
            if (gridEntry->flags & LEVEL_EVENT_TARGET_ON_SHOW) {
                extra_game_select_set_level_event_target(x, y, gridEntry->flags & LEVEL_EVENT_MOVE_CURSOR, 250);
            }
            save_level_state_from_grid_xy(x, y, LEVEL_STATE_APPEARING);
        }

        eventTargets += 2;
    }
}


// Process Level Events
u32 extra_game_select_process_level_events(void) {
    struct ExtraGameSelectGridEntry *gridEntry;
    const s8 *eventTargets;
    s16 screenX, screenY;
    s32 x, y, state, id;
    s16 sprite;

    if (gExtraGameSelect->levelEventPending) {
        gExtraGameSelect->levelEventPending = FALSE;
        extra_game_select_process_level_event_targets(gExtraGameSelect->levelEventTargets);
        return FALSE;
    }

    extra_game_select_dequeue_level_event(&x, &y, &state);
    if (state == LEVEL_STATE_NULL) {
        return TRUE;
    }

    id = get_level_id_from_grid_xy(x, y);
    extra_get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);

    switch (state) {
        case LEVEL_STATE_OPEN:
            screenX += 47;
            screenY += 68;
            sprite = sprite_create(gSpriteHandler, anim_game_select_new_game, 0, screenX, screenY, 0x4864, 1, 0, 3);
            extra_game_select_link_sprite_xy_to_bg(sprite);
            play_sound(&s_f_open_game_seqData);
            break;

        case LEVEL_STATE_CLEARED:
            screenX += 47;
            screenY += 68;
            sprite = sprite_create(gSpriteHandler, anim_game_select_clear_game, 0, screenX, screenY, 0x4864, 1, 0, 3);
            extra_game_select_link_sprite_xy_to_bg(sprite);
            play_sound(&s_f_clear_game_seqData);

            cafe_session_remove_level(id);
            D_030046a8->data.levelFirstOK[id] = D_030046a8->data.levelTotalPlays[id];
            break;

        case LEVEL_STATE_HAS_MEDAL:
            screenX += 47;
            screenY += 68;
            sprite = sprite_create(gSpriteHandler, anim_game_select_get_superb, 0, screenX, screenY, 0x4864, 1, 0, 3);
            extra_game_select_link_sprite_xy_to_bg(sprite);
            play_sound_w_pitch_volume(&s_f_clear_game_seqData, INT_TO_FIXED(0.5), INT_TO_FIXED(2.0));
            play_sound(&s_f_get_medal_seqData);

            D_030046a8->data.totalMedals++;
            extra_game_select_refresh_medal_count(127);
            cafe_session_remove_level(id);
            D_030046a8->data.levelFirstSuperb[id] = D_030046a8->data.levelTotalPlays[id];
            if (D_030046a8->data.levelFirstOK[id] == 0) {
                D_030046a8->data.levelFirstOK[id] = D_030046a8->data.levelTotalPlays[id];
            }
            break;
    }

    save_level_state_from_grid_xy(x, y, state);
    extra_game_select_set_icon_map_after_level_event(x, y);

    if ((x == gExtraGameSelect->cursorX) && (y == gExtraGameSelect->cursorY)) {
        extra_game_select_set_cursor_border_z();
        extra_game_select_set_info_pane_to_cursor_target();
    }

    gridEntry = game_select_grid_data + x + (y * GS_GRID_WIDTH);

    if ((state == LEVEL_STATE_CLEARED) || (state == LEVEL_STATE_HAS_MEDAL)) {
        if ((gridEntry->flags & LEVEL_EVENT_DELAY_CLEAR)) {
            gExtraGameSelect->levelEventTimer = 60;
        }
    }
    if (state == LEVEL_STATE_OPEN) {
        if ((gridEntry->flags & LEVEL_EVENT_DELAY_OPEN)) {
            gExtraGameSelect->levelEventTimer = 60;
        }
    }
    if (state == LEVEL_STATE_CLOSED) {
        if ((gridEntry->flags & LEVEL_EVENT_DELAY_SHOW)) {
            gExtraGameSelect->levelEventTimer = 60;
        }
    }

    eventTargets = NULL;
    if (gridEntry->id >= 0) {
        eventTargets = gridEntry->targets;
    }

    if (gExtraGameSelect->levelEventTimer == 0) {
        extra_game_select_process_level_event_targets(eventTargets);
    } else {
        gExtraGameSelect->levelEventPending = TRUE;
        gExtraGameSelect->levelEventTargets = eventTargets;
    }

    return FALSE;
}


// Update Level Events
void extra_game_select_update_level_unlocks(void) {
    while (!extra_game_select_process_level_events()) {
        if (gExtraGameSelect->levelEventTimer > 0) {
            return;
        }
    }
}


// Start Level Events
void extra_game_select_start_level_events(u32 delay) {
    gExtraGameSelect->runningLevelEvents = TRUE;
    gExtraGameSelect->levelEventTargetX = gExtraGameSelect->cursorX;
    gExtraGameSelect->levelEventTargetY = gExtraGameSelect->cursorY;
    gExtraGameSelect->levelEventTimer = delay;
    gExtraGameSelect->sceneState = GS_STATE_UNLOCKING_LEVELS;
}


// Update Level Events
void extra_game_select_update_level_events(void) {
    s16 screenX, screenY;
    s32 x, y;
    u32 eventsFinished;

    // Decrement timer.
    if (gExtraGameSelect->levelEventTimer > 0) {
        gExtraGameSelect->levelEventTimer--;
        return;
    }

    // Scroll to show Barista-cleared level.
    if (gExtraGameSelect->baristaLevelEventPending) {
        gExtraGameSelect->baristaLevelEventPending = FALSE;

        x = gExtraGameSelect->baristaLevelEventX;
        y = gExtraGameSelect->baristaLevelEventY;
        gExtraGameSelect->levelEventTargetX = x;
        gExtraGameSelect->levelEventTargetY = y;
        extra_get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);
        extra_game_select_scroll_grid_pane(screenX, screenY, 240);

        gExtraGameSelect->levelEventTimer = 120;
        return;
    }

    // Update level-unlock events.
    eventsFinished = TRUE;
    if (extra_game_select_check_for_icon_squares()) {
        eventsFinished = FALSE;
    }
    if ((gExtraGameSelect->totalLevelEventsQueued > 0) || (gExtraGameSelect->levelEventPending)) {
        extra_game_select_update_level_unlocks();
        eventsFinished = FALSE;
    }
    if (gExtraGameSelect->gridPaneIsMoving) {
        eventsFinished = FALSE;
    }

    if (!eventsFinished) {
        return;
    }

    // Return to cursor position.
    if ((gExtraGameSelect->cursorX != gExtraGameSelect->levelEventTargetX) || (gExtraGameSelect->cursorY != gExtraGameSelect->levelEventTargetY)) {
        if (gExtraGameSelect->baristaLevelEventTimer > 0) {
            gExtraGameSelect->levelEventTimer = gExtraGameSelect->baristaLevelEventTimer;
            gExtraGameSelect->baristaLevelEventTimer = 0;
        } else {
            gExtraGameSelect->levelEventTargetX = gExtraGameSelect->cursorX;
            gExtraGameSelect->levelEventTargetY = gExtraGameSelect->cursorY;
            extra_get_pixel_xy_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY, &screenX, &screenY);
            extra_game_select_scroll_grid_pane(screenX, screenY, 240);
        }
        return;
    }

    gExtraGameSelect->baristaLevelEventTimer = 0;
    gExtraGameSelect->runningLevelEvents = FALSE;
    D_030046a8->data.gsCursorX = gExtraGameSelect->cursorX;
    D_030046a8->data.gsCursorY = gExtraGameSelect->cursorY;

#if REV < 1
    if (gExtraGameSelect->manualUnlockEnabled) {
        save_level_state_from_grid_xy(gExtraGameSelect->manualUnlockX, gExtraGameSelect->manualUnlockY, LEVEL_STATE_OPEN);
    }
#endif

    write_game_save_data();

    if (gExtraGameSelect->campaignNotice.hasNewCampaign) {
        start_campaign_notice(D_030046a8->data.currentCampaign);
        gExtraGameSelect->campaignNotice.hasNewCampaign = FALSE;
    } else {
        gExtraGameSelect->sceneState = GS_STATE_MAIN;
    }
}


// Set Medal Count
void extra_game_select_set_medal_count(u32 total) {
    total = clamp_int32(total, 0, 99);

    sprite_set_anim_cel(gSpriteHandler, gExtraGameSelect->medalPaneDigit1, total % 10);
    sprite_set_anim_cel(gSpriteHandler, gExtraGameSelect->medalPaneDigit2, (total < 10) ? 10 : (total / 10));
    sprite_set_x(gSpriteHandler, gExtraGameSelect->medalPaneDigit1, (total < 10) ? 164 : 168);
}


// Init. Medal Pane
void extra_game_select_init_medal_pane(void) {
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];

    gExtraGameSelect->medalPaneTitle = sprite_create(gSpriteHandler, anim_game_select_medal_text, 0, 162, 151, 0x800, 0, 0, 0);
    gExtraGameSelect->medalPaneDigit1 = sprite_create(gSpriteHandler, anim_game_select_medal_num, 0, 168, 151, 0x800, 0, 0x7f, 0);
    gExtraGameSelect->medalPaneDigit2 = sprite_create(gSpriteHandler, anim_game_select_medal_num, 0, 168, 151, 0x800, 0, 0x7f, 0);
    sprite_set_x_y(gSpriteHandler, gExtraGameSelect->medalPaneDigit2, 161, 151);

    sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->medalPaneTitle, &bgOfs->x, &bgOfs->y);
    sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->medalPaneDigit1, &bgOfs->x, &bgOfs->y);
    sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->medalPaneDigit2, &bgOfs->x, &bgOfs->y);
    extra_game_select_set_medal_count(D_030046a8->data.totalMedals);
    gExtraGameSelect->medalPaneFlickerTimer = 0;
}


// Update Medal Pane Flicker
u32 extra_game_select_update_medal_pane_flicker(void) {
    u32 render;

    if (gExtraGameSelect->medalPaneFlickerTimer > 0) {
        render = ~(--gExtraGameSelect->medalPaneFlickerTimer / 16) & 1;

        sprite_set_visible(gSpriteHandler, gExtraGameSelect->medalPaneTitle, render);
        sprite_set_visible(gSpriteHandler, gExtraGameSelect->medalPaneDigit1, render);
        sprite_set_visible(gSpriteHandler, gExtraGameSelect->medalPaneDigit2, render);
    }
}


// Update Medal Pane
void extra_game_select_update_medal_pane(void) {
    extra_game_select_update_medal_pane_flicker();
}


// Refresh Medal Count
void extra_game_select_refresh_medal_count(u32 flickerDuration) {
    extra_game_select_set_medal_count(D_030046a8->data.totalMedals);
    gExtraGameSelect->medalPaneFlickerTimer = flickerDuration;
}


// Init. Level Info Pane
void extra_game_select_init_info_pane(void) {
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];

    gExtraGameSelect->infoPaneName = -1;
    gExtraGameSelect->infoPaneRank = -1;
    gExtraGameSelect->infoPaneDesc = text_printer_create_new(get_current_mem_id(), 5, 110, 26);
    text_printer_set_x_y(gExtraGameSelect->infoPaneDesc, 125, 48);
    text_printer_set_layer(gExtraGameSelect->infoPaneDesc, 0x800);
    text_printer_set_colors(gExtraGameSelect->infoPaneDesc, 0);
    text_printer_set_palette(gExtraGameSelect->infoPaneDesc, 8);
    text_printer_set_line_spacing(gExtraGameSelect->infoPaneDesc, 13);
    text_printer_set_alignment(gExtraGameSelect->infoPaneDesc, TEXT_ALIGNMENT_CENTER);
    text_printer_set_x_y_controller(gExtraGameSelect->infoPaneDesc, &bgOfs->x, &bgOfs->y);
    text_printer_set_shadow_colors(gExtraGameSelect->infoPaneDesc, -1);
    gExtraGameSelect->perfectClearedSprite = sprite_create(gSpriteHandler, anim_game_select_perfect_rank, 0, 187, 112, 0x80A, 1, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->perfectClearedSprite, &bgOfs->x, &bgOfs->y);

    gExtraGameSelect->noPracticeSprite = sprite_create(gSpriteHandler, anim_game_select_no_practice, 0, 211, 130, 0x80A, 1, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->noPracticeSprite, &bgOfs->x, &bgOfs->y);

    gExtraGameSelect->infoPaneIsClear = TRUE;
    gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_NONE;
}


// Delete Level Info Pane Text Sprite
void extra_game_select_delete_info_pane_sprite(s16 *ptr) {
    s16 sprite = *ptr;

    if (sprite < 0) {
        return;
    }

    text_printer_delete_anim((void *)sprite_get_data(gSpriteHandler, sprite, 7));
    sprite_delete(gSpriteHandler, sprite);
    *ptr = -1;
}


// Clear Level Info Pane
void extra_game_select_clear_info_pane(void) {
    if (gExtraGameSelect->infoPaneIsClear) {
        return;
    }

    text_printer_fill_vram_tiles(0, 24, 32, 8, 0);
    extra_game_select_delete_info_pane_sprite(&gExtraGameSelect->infoPaneName);
    extra_game_select_delete_info_pane_sprite(&gExtraGameSelect->infoPaneRank);
    text_printer_clear(gExtraGameSelect->infoPaneDesc);
    sprite_set_visible(gSpriteHandler, gExtraGameSelect->perfectClearedSprite, FALSE);
    sprite_set_visible(gSpriteHandler, gExtraGameSelect->noPracticeSprite, FALSE);
    gExtraGameSelect->infoPaneIsClear = TRUE;
}


// Print Level Name
void extra_game_select_print_level_name(struct LevelData *levelData) {
    struct Animation *anim;
    const char *string;

    text_printer_fill_vram_tiles(0, 26, 16, 2, 0);
    string = levelData->name;
    anim = text_printer_get_formatted_line_anim(get_current_mem_id(), 0, 26, TEXT_PRINTER_FONT_SMALL, &string, TEXT_ANCHOR_BOTTOM_CENTER, 0, 104, 0, -1);
    gExtraGameSelect->infoPaneName = sprite_create(gSpriteHandler, anim, 0, 180, 37, 0x800, 1, 0, 0x8000);
    sprite_set_base_palette(gSpriteHandler, gExtraGameSelect->infoPaneName, 7);
    gExtraGameSelect->infoPaneIsClear = FALSE;
}


// Print Level Description
void extra_game_select_print_level_desc(struct LevelData *levelData) {
    s32 lineCount = 1;
    const char *desc;

    desc = levelData->description;
    while (*desc != '\0') {
        if (*desc == '\n') {
            lineCount++;
        }
        desc++;
    }

    if (lineCount <= 4) {
        text_printer_set_line_spacing(gExtraGameSelect->infoPaneDesc, 15);
        text_printer_set_y(gExtraGameSelect->infoPaneDesc, 57);
    } else {
        text_printer_set_line_spacing(gExtraGameSelect->infoPaneDesc, 13);
        text_printer_set_y(gExtraGameSelect->infoPaneDesc, 54);
    }

    text_printer_set_string(gExtraGameSelect->infoPaneDesc, levelData->description);
    gExtraGameSelect->infoPaneIsClear = FALSE;
}


// Print Level Rank
void extra_game_select_print_level_rank(s32 levelState) {
    struct Animation *anim;
    const char *string;

    if (D_030046a8->data.levelScores[gExtraGameSelect->infoPaneLevelID] == DEFAULT_LEVEL_SCORE) {
        levelState = LEVEL_STATE_OPEN;
    }

    // Check if the game has been perfected
    if (D_030046a8->data.campaignsCleared[get_campaign_from_level_id(gExtraGameSelect->infoPaneLevelID)]) {
        levelState = LEVEL_STATE_PERFECT; // Use the new "perfect" rank
    }

    text_printer_fill_vram_tiles(16, 26, 16, 2, 0);
    string = extra_game_select_rank_text[levelState];
    anim = text_printer_get_formatted_line_anim(get_current_mem_id(), 16, 26, TEXT_PRINTER_FONT_SMALL, &string, TEXT_ANCHOR_BOTTOM_RIGHT, 0, 104, 0, -1);
    gExtraGameSelect->infoPaneRank = sprite_create(gSpriteHandler, anim, 0, 228, 113, 0x800, 1, 0, 0x8000);
    sprite_set_base_palette(gSpriteHandler, gExtraGameSelect->infoPaneRank, extra_game_select_rank_palette[levelState]);
    gExtraGameSelect->infoPaneIsClear = FALSE;
}


// Update Level Info Pane
void extra_game_select_process_info_pane(void) {
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];
    s32 campaign;
    u32 i;

    switch (gExtraGameSelect->infoPaneTask) {
        case INFO_PANE_TASK_DELAY:
            if (--gExtraGameSelect->infoPaneDelay == 0) {
                gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_PRINT_NAME;
            }
            break;

        case INFO_PANE_TASK_PRINT_NAME:
            extra_game_select_print_level_name(gExtraGameSelect->infoPaneLevelData);
            gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_PRINT_RANK;
            break;

        case INFO_PANE_TASK_PRINT_RANK:
            if (gExtraGameSelect->infoPaneLevelData->type != 2) {
                //extra_game_select_print_level_rank(gExtraGameSelect->infoPaneLevelState);
            }
            gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_PRINT_DESC;
            break;

        case INFO_PANE_TASK_PRINT_DESC:
            extra_game_select_print_level_desc(gExtraGameSelect->infoPaneLevelData);
            gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_RENDER;
            break;

        case INFO_PANE_TASK_RENDER:
            if (!text_printer_is_busy(gExtraGameSelect->infoPaneDesc)) {
                sprite_set_visible(gSpriteHandler, gExtraGameSelect->infoPaneName, TRUE);
                sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->infoPaneName, &bgOfs->x, &bgOfs->y);
                sprite_set_visible(gSpriteHandler, gExtraGameSelect->infoPaneRank, TRUE);
                sprite_set_origin_x_y(gSpriteHandler, gExtraGameSelect->infoPaneRank, &bgOfs->x, &bgOfs->y);

                // campaign = get_campaign_from_grid_xy(gExtraGameSelect->cursorX, gExtraGameSelect->cursorY);
                // if ((campaign >= 0) && D_030046a8->data.campaignsCleared[campaign]) {
                //     sprite_set_visible(gSpriteHandler, gExtraGameSelect->perfectClearedSprite, TRUE);
                // }

                for(i = 0; i < ARRAY_COUNT(extraLevelsWithNoPractice); i++) {
                    if(extraLevelsWithNoPractice[i] == gExtraGameSelect->infoPaneLevelID) {
                        sprite_set_visible(gSpriteHandler, gExtraGameSelect->noPracticeSprite, TRUE);
                        break;
                    }
                }

                gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_NONE;
            }
            break;
    }
}


// Set Level Info Pane
void extra_game_select_set_info_pane(s32 id, s32 state, s32 delay) {
    extra_game_select_clear_info_pane();
    if (id < 0) {
        gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_NONE;
    } else {
        gExtraGameSelect->infoPaneLevelID = id;
        gExtraGameSelect->infoPaneLevelState = state;
        gExtraGameSelect->infoPaneDelay = delay;
        gExtraGameSelect->infoPaneLevelData = &level_data_table[id];
        gExtraGameSelect->infoPaneTask = INFO_PANE_TASK_DELAY;
    }
}


// Update Level Info Pane
void extra_game_select_update_info_pane(void) {
    extra_game_select_process_info_pane();
    text_printer_update(gExtraGameSelect->infoPaneDesc);
}


// Calculate Flow
u32 extra_game_select_calculate_flow(u32 *modifierReq, u32 *averageReq) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s24_8 completionModifier;
    u32 modifiedScore;
    u32 totalGames = 0;
    u32 totalScore = 0;
    u32 i;

    for (i = 0; i < TOTAL_LEVELS; i++) {
        u32 score = saveData->levelScores[i];

        if (score != DEFAULT_LEVEL_SCORE) {
            totalGames++;
            totalScore += score;
        }
    }

    if (totalGames == 0) {
        return 0;
    }

    // Min = 0.7 (0 levels played)
    // Max = 1.4 (48 levels played)
    completionModifier = INT_TO_FIXED((TOTAL_RHYTHM_GAMES + totalGames) * 7) / (TOTAL_RHYTHM_GAMES * 10);

    // Min = 0 (0 * 0.7)
    // Max = 1400 (1000 * 1.4)
    modifiedScore = FIXED_TO_INT(completionModifier * totalScore) / totalGames;

    if (modifierReq != NULL) {
        *modifierReq = completionModifier;
    }

    if (averageReq != NULL) {
        *averageReq = totalScore / totalGames;
    }

    return modifiedScore;
}


// Unused Flow Calculation
u32 extra_game_select_calculate_flow_old(void) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s24_8 completionModifier;
    u32 baseScore;
    u32 totalGames = 0;
    u32 totalScore = 0;
    u32 i;

    for (i = 0; i < TOTAL_LEVELS; i++) {
        u32 score = saveData->levelScores[i];

        if (score != DEFAULT_LEVEL_SCORE) {
            totalGames++;
            totalScore += score;
        }
    }

    if (totalGames == 0) {
        return 0;
    }

    // Min = 0.7 (0-3 levels played)
    // Max = 1.4 (28+ levels played)
    completionModifier = INT_TO_FIXED(0.7) + (INT_TO_FIXED(clamp_int32(totalGames - 3, 0, 25) * 7) / (25 * 10));

    // Min =  30 (avg. score <= 300)
    // Max = 100 (avg. score >= 995)
    baseScore = clamp_int32((5 + (totalScore / totalGames)) / 10, 30, 100);

    // Min =  21 ( 30 * 0.7)
    // Max = 140 (100 * 1.4)
    return FIXED_TO_INT(baseScore * completionModifier);
}


// Update Scores
u32 extra_game_select_update_scores(void) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    struct FlowDisplay *flowPane = &gExtraGameSelect->flowDisplay;
    u32 modifier, average;
    u32 prevModScore, newModScore;
    u32 newScore, score, flow;
    u32 medalWasObtained = FALSE;
    u32 newLevelState;
    s32 x, y, levelID;
    u32 i;

    newScore = saveData->recentLevelScore;

    // Arrived from another menu or Staff Credit.
    if (newScore == DEFAULT_LEVEL_SCORE) {
        flowPane->previousScore = D_030046a8->data.currentFlow;
        flowPane->currentScore = D_030046a8->data.currentFlow;
        return 0;
    }

    x = saveData->recentLevelX;
    y = saveData->recentLevelY;
    levelID = get_level_id_from_grid_xy(x, y);
    newLevelState = saveData->recentLevelState;

    if ((get_level_state_from_grid_xy(x, y) < LEVEL_STATE_HAS_MEDAL) && (newLevelState == LEVEL_STATE_HAS_MEDAL)) {
        medalWasObtained = TRUE;
    }
    if (medalWasObtained) {
        prevModScore = extra_game_select_calculate_flow(NULL, NULL);
    }

    // Save new score.
    if (levelID >= 0) {
        score = saveData->levelScores[levelID];

        if (score == DEFAULT_LEVEL_SCORE) {
            // New scores have a weight of 100%.
            score = newScore;
        } else if (score < newScore) {
            // Improved scores have a weight of 75%.
            score = ((score + (newScore * 3)) / 4);
        } else {
            // Worse scores have a weight of 25%.
            score = ((newScore + (score * 3)) / 4) & 0xFFFFFF;
        }

        saveData->levelScores[levelID] = score;
    }

    saveData->recentLevelScore = DEFAULT_LEVEL_SCORE;
    newModScore = extra_game_select_calculate_flow(&modifier, &average);

    // If a new medal was obtained, but the new flow value would be worse, apply a bonus to all scores and recalculate.
    if (medalWasObtained) {
        if (newModScore < prevModScore) {
            u32 scoreBonus = (INT_TO_FIXED(prevModScore) / modifier) - average + 1;

            for (i = 0; i < TOTAL_LEVELS; i++) {
                score = saveData->levelScores[i];

                if (score != DEFAULT_LEVEL_SCORE) {
                    saveData->levelScores[i] = clamp_int32(score + scoreBonus, 0, MAX_LEVEL_SCORE);
                }
            }
        }
        newModScore = extra_game_select_calculate_flow(NULL, NULL);
    }

    flow = newModScore / 10;
    if (flow < 9) {
        flow = 9;
    }

    flowPane->previousScore = saveData->currentFlow;
    flowPane->currentScore = saveData->currentFlow = flow;
}


// Init. Flow Display
void extra_game_select_init_flow_pane(void) {
    struct FlowDisplay *flowPane = &gExtraGameSelect->flowDisplay;
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];
    u32 initialScore;
    u32 updateFlow;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(flowPane->digits); i++) {
        flowPane->digits[i] = sprite_create(gSpriteHandler, anim_game_select_flow_num, 10, 208 - (i * 8), 128, 0, 0, 0, 0);
        sprite_set_origin_x_y(gSpriteHandler, flowPane->digits[i], &bgOfs->x, &bgOfs->y);
    }

    flowPane->title = sprite_create(gSpriteHandler, anim_game_select_flow_text, 0, 128, 128, 0, 0, 0, 0);
    sprite_set_origin_x_y(gSpriteHandler, flowPane->title, &bgOfs->x, &bgOfs->y);

    flowPane->arrow = sprite_create(gSpriteHandler, anim_game_select_flow_arrow, 0, 224, 128, 0, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, flowPane->arrow, &bgOfs->x, &bgOfs->y);

    updateFlow = extra_game_select_update_scores();
    initialScore = flowPane->previousScore;

    if (initialScore > 0) {
        for (i = 0; i < ARRAY_COUNT(flowPane->digits); i++) {
            sprite_set_anim_cel(gSpriteHandler, flowPane->digits[i], ((initialScore != 0) ? (initialScore % 10) : 10));
            initialScore /= 10;
        }
    }

    flowPane->state = (flowPane->currentScore > 0) && updateFlow;
    flowPane->timer = 60;
    if (D_030046a8->data.recentLevelClearedByBarista) {
        flowPane->timer = 180;
    }
}


// Update Flow Display
void extra_game_select_update_flow_pane(void) {
    struct FlowDisplay *flowPane = &gExtraGameSelect->flowDisplay;
    u32 volume, flow, render;
    u32 i;

    switch (flowPane->state) {
        case FLOW_PANE_TASK_WAIT:
            if (--flowPane->timer == 0) {
                flowPane->state = FLOW_PANE_TASK_ROLL;
                flowPane->timer = 120;
                flowPane->counter = 0;
                sprite_set_playback(gSpriteHandler, flowPane->title, 1, 0, 0);
            }
            break;

        case FLOW_PANE_TASK_ROLL:
            if (gExtraGameSelect->sceneState == GS_STATE_DISPLAYING_CAMPAIGN) {
                volume = 100;
            } else {
                volume = 0x100;
                flowPane->timer--;
            }

            if (flowPane->timer == 0) {
                flowPane->state = FLOW_PANE_TASK_FLICKER;
                flowPane->timer = 240;

                sprite_set_playback(gSpriteHandler, flowPane->title, 0, 0, 0);
                sprite_set_anim_cel(gSpriteHandler, flowPane->title, 0);
                flow = flowPane->currentScore;

                for (i = 0; i < ARRAY_COUNT(flowPane->digits); i++) {
                    sprite_set_anim_cel(gSpriteHandler, flowPane->digits[i], ((flow != 0) ? (flow % 10) : 10));
                    flow /= 10;
                }

                sprite_set_anim_cel(gSpriteHandler, flowPane->arrow, 1);
                if (flowPane->previousScore < flowPane->currentScore) {
                    sprite_set_anim_cel(gSpriteHandler, flowPane->arrow, 0);
                }

                if ((flowPane->previousScore > flowPane->currentScore)) {
                    sprite_set_anim_cel(gSpriteHandler, flowPane->arrow, 2);
                }

                play_sound(&s_f_point_stop_seqData);
            } else {
                if ((flowPane->counter & 1) == 0) {
                    sprite_set_anim_cel(gSpriteHandler, flowPane->digits[0], agb_random(10));
                    sprite_set_anim_cel(gSpriteHandler, flowPane->digits[1], agb_random(10));
                    sprite_set_anim_cel(gSpriteHandler, flowPane->digits[2], agb_random((flowPane->timer) ? 10 : 2));

                    if ((flowPane->counter & 3) == 0) {
                        play_sound_w_pitch_volume(&s_f_point_roll_seqData, volume, 0);
                    }
                }
            }
            break;

        case FLOW_PANE_TASK_FLICKER:
            if (--flowPane->timer == 0) {
                flowPane->state = FLOW_PANE_TASK_NONE;

                if (flowPane->previousScore > 0) {
                    sprite_set_visible(gSpriteHandler, flowPane->arrow, TRUE);
                }

                for (i = 0; i < ARRAY_COUNT(flowPane->digits); i++) {
                    sprite_set_visible(gSpriteHandler, flowPane->digits[i], TRUE);
                }
            } else {
                render = (flowPane->timer >> 4) & 1;
                render ^= 1;

                for (i = 0; i < ARRAY_COUNT(flowPane->digits); i++) {
                    sprite_set_visible(gSpriteHandler, flowPane->digits[i], render);
                }

                if (flowPane->previousScore > 0) {
                    sprite_set_visible(gSpriteHandler, flowPane->arrow, render);
                }
            }
            break;
    }

    flowPane->counter++;
}


// Scene Stop
void extra_game_select_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08003f28();
    func_08004058();
    func_08006d80();
    func_08007014(0);
}


// Init. Stub
void extra_game_select_init_stub(void) {
}


// Init. Level Icon Overlays
void extra_game_select_init_icon_overlays(void) {
    u32 i;

    dma3_fill(0, BG_TILESET_BASE(0xA000), 0x20, 0x20, 0x200);

    for (i = 0; level_icon_overlay_data[i] != NULL; i++) {
        extra_game_select_animate_icon(level_icon_overlay_data[i], 2, 1 + (i * 9) + 0x100);
    }
}


// Update Stub
void extra_game_select_update_stub(void) {
}


// Init. Level Icon Overlay Animator Task
struct LevelIconAnimatorTask *extra_game_select_init_icon_animator(struct LevelIconAnimatorTask *inputs) {
    struct LevelIconAnimatorTask *task;

    task = mem_heap_alloc(sizeof(struct LevelIconAnimatorTask));
    task->tilesetBase = inputs->tilesetBase;
    task->texture = inputs->texture;
    task->frameData = inputs->frameData;
    task->size = inputs->size;
    task->currentFrame = 0;
    task->timeUntilNext = task->frameData[1];

    dma3_set(task->texture + (task->frameData[0] * task->size), task->tilesetBase, task->size, 0x20, 0x200);

    return task;
}


// Update Level Icon Overlay Animator Task
u32 extra_game_select_update_icon_animator(struct LevelIconAnimatorTask *task) {
    s32 frame;

    if (--task->timeUntilNext == 0) {
        task->currentFrame++;
        frame = task->frameData[task->currentFrame * 2];

        if (frame == LEVEL_ICON_ANIM_STOP) {
            return TRUE;
        }

        if (frame == LEVEL_ICON_ANIM_LOOP) {
            task->currentFrame = 0;
            frame = task->frameData[0];
        }

        task->timeUntilNext = task->frameData[(task->currentFrame * 2) + 1];
        dma3_set(&task->texture[frame * task->size], task->tilesetBase, task->size, 0x20, 0x200);
    }

    return FALSE;
}


// Start new Level Icon Overlay Animator Task
s32 extra_game_select_start_new_icon_animator(u16 memID, const void *texture, u16 *tilesetBase, u32 size, const s8 *frameData) {
    struct LevelIconAnimatorTask inputs;

    inputs.texture = texture;
    inputs.tilesetBase = tilesetBase;
    inputs.size = size;
    inputs.frameData = frameData;

    return start_new_task(memID, &level_icon_overlay_animator_task, &inputs, NULL, 0);
}


// Animate Level Icon Overlay Texture
s32 extra_game_select_animate_icon(struct ExtraGameSelectOverlay *overlay, u32 tilesetNum, u32 baseTileNum) {
    void *tilesetBase = (void *)(VRAMBase + (tilesetNum * 0x4000) + (baseTileNum * 0x20));

    return extra_game_select_start_new_icon_animator(get_current_mem_id(), overlay->texture, tilesetBase, overlay->width * overlay->height * 0x20, overlay->animData);
}


// Write Level Icon Map to 2x2 BG Map Space
void extra_game_select_print_icon_map(u32 baseMapNum, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tilesPerRow, u32 tileNum, u32 palette) {
    u32 mapX = 0;
    u32 mapY = 0;
    u32 mapNum;
    u16 mapTile;
    u16 *mapDest;
    u32 i, j;

    mapX = tileX >> 5;
    mapY = tileY >> 5;
    tileX &= 0x1F;
    tileY &= 0x1F;

    switch (mapSize) {
        case 0:
            mapNum = 0;
            break;
        case 1:
            mapNum = mapX & 1;
            break;
        case 2:
            mapNum = mapY & 1;
            break;
        case 3:
            mapNum = (mapX & 1) + ((mapY & 1) << 1);
            break;
    }

    mapDest = ((u16 *)VRAMBase) + ((baseMapNum + mapNum) << 10) + tileX + (tileY << 5);
    mapTile = (palette << 12) | tileNum;

    for (i = 0; i < height; i++) {
        for (j = 0; j < width; j++) {
            mapDest[j] = (mapTile + j);
        }
        mapDest += 0x20;
        mapTile += tilesPerRow;
    }
}


// Write Level Icon Map
void extra_game_select_print_icon_maps(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tileNum, u32 palette) {
    u32 x, y, w, h, num;

    // MAP 0 - Upper-Left Corner
    if ((tileX < 0x20) && (tileY < 0x20)) {
        if ((tileX + width) > 0x20) {
            w = 0x20 - tileX;
        } else {
            w = width;
        }

        if ((tileY + height) > 0x20) {
            h = 0x20 - tileY;
        } else {
            h = height;
        }

        extra_game_select_print_icon_map(baseMap, mapSize, tileX, tileY, w, h, width, tileNum, palette);
    }

    if (mapSize == 0) {
        return;
    }

    // MAP 1 - Upper-Right Corner
    if ((mapSize & 1) && (tileX + width > 0x20) && (tileX < 0x40) && (tileY < 0x20)) {
        x = tileX;
        num = tileNum;

        w = width;
        if (tileX < 0x20) {
            x = 0x20;
            w += tileX - 0x20;
            num += 0x20 - tileX;
        }
        if (tileX + width > 0x40) {
            w += 0x40 - (tileX + width);
        }

        if (tileY + height > 0x20) {
            h = 0x20 - tileY;
        } else {
            h = height;
        }

        extra_game_select_print_icon_map(baseMap, mapSize, x, tileY, w, h, width, num, palette);
    }

    // MAP 2 - Lower-Left Corner
    if ((mapSize & 2) && (tileX < 0x20) && (tileY + height > 0x20) && (tileY < 0x40)) {
        y = tileY;
        num = tileNum;

        w = 0;
        if (tileX + width > 0x20) {
            w = 0x20 - tileX;
        } else {
            w = width;
        }

        h = height;
        if (tileY < 0x20) {
            y = 0x20;
            h += tileY - 0x20;
            num += width * (0x20 - tileY);
        }
        if (tileY + height > 0x40) {
            h += 0x40 - (tileY + height);
        }

        extra_game_select_print_icon_map(baseMap, mapSize, tileX, y, w, h, width, num, palette);
    }

    // MAP 3 - Lower-Right Corner
    if ((mapSize == 3) && (tileX + width > 0x20) && (tileX < 0x40) && (tileY + height > 0x20) && (tileY < 0x40)) {
        x = tileX;
        y = tileY;
        num = tileNum;

        w = width;
        if (tileX < 0x20) {
            x = 0x20;
            w += tileX - 0x20;
            num += 0x20 - tileX;
        }
        if (tileX + width > 0x40) {
            w += 0x40 - (tileX + width);
        }

        h = height;
        if (tileY < 0x20) {
            y = 0x20;
            h += tileY - 0x20;
            num += width * (0x20 - tileY);
        }
        if (tileY + height > 0x40) {
            h += 0x40 - (tileY + height);
        }

        extra_game_select_print_icon_map(baseMap, mapSize, x, y, w, h, width, num, palette);
    }
}


// Write Level Icon Texture to VRAM
void extra_game_select_print_icon_texture(const void *texture, u32 tileset, u32 tileNum) {
    dma3_set(texture, (void *)(VRAMBase + (tileset * 0x4000) + (tileNum * 0x20)), 0x20 * 3 * 3, 0x20, 0x200);
}


// Init. BG Squares
void extra_game_select_init_squares(void) {
    struct Vector2 *vector;
    s32 x, y;
    u32 i;
    s8 temp;

    x = 544;
    y = 384;

    for (i = 0; i < 16; i++) {
        vector = &gExtraGameSelect->squareVectors[i];
        vector->x = agb_random(x);
        vector->y = agb_random(y);
        gExtraGameSelect->squareSprites[i] = sprite_create_w_attr(gSpriteHandler, anim_game_select_bg_square_large, agb_random(6), 0, 0, 0xC800, -1, 0x7f, 0, 4);
        sprite_set_anim_speed(gSpriteHandler, gExtraGameSelect->squareSprites[i], agb_random(INT_TO_FIXED(1.0)) + INT_TO_FIXED(1.0));
    }

    x *= 2;
    y *= 2;

    for (i = 16; i < ARRAY_COUNT(gExtraGameSelect->squareVectors); i++) {
        vector = &gExtraGameSelect->squareVectors[i];
        vector->x = agb_random(x);
        vector->y = agb_random(y);
        gExtraGameSelect->squareSprites[i] = sprite_create_w_attr(gSpriteHandler, anim_game_select_bg_square_small, agb_random(6), 0, 0, 0xC800, -1, 0x7f, 0, 4);
        sprite_set_anim_speed(gSpriteHandler, gExtraGameSelect->squareSprites[i], agb_random(INT_TO_FIXED(1.0)) + INT_TO_FIXED(1.0));
    }

    D_03004b10.BLDMOD = (BLDMOD_BG0_TGT | BLDMOD_BG1_TGT | BLDMOD_BG2_TGT | BLDMOD_BG3_TGT | BLDMOD_BACKDROP_TGT);
    D_03004b10.COLEV = (COLEV_SRC_PIXEL(16) | COLEV_TGT_PIXEL(16));

    for (i = 0; i < ARRAY_COUNT(gExtraGameSelect->newIconSquares); i++) {
        gExtraGameSelect->newIconSquares[i].active = FALSE;
    }
}


// Update BG Squares
void extra_game_select_update_bg_squares_motion(s32 dx, s32 dy) {
    struct Vector2 *vector;
    s32 x, y, x2, y2;
    u32 i;

    x = 272;
    y = 192;
    x2 = x * 2;
    y2 = y * 2;

    // Large Squares
    for (i = 0; i < 16; i++) {
        vector = &gExtraGameSelect->squareVectors[i];
        vector->x += dx;
        vector->y += dy;

        if (vector->x < 0) {
            vector->x = x2;
            vector->y = agb_random(y2);
        }
        if (vector->x > x2) {
            vector->x = 0;
            vector->y = agb_random(y2);
        }
        if (vector->y < 0) {
            vector->x = agb_random(x2);
            vector->y = y2;
        }
        if (vector->y > y2) {
            vector->x = agb_random(x2);
            vector->y = 0;
        }

        sprite_set_x_y(gSpriteHandler, gExtraGameSelect->squareSprites[i], 120 + ((vector->x - x) >> 1), 80 + ((vector->y - y) >> 1));
    }

    x = x2;
    y = y2;
    x2 = x * 2;
    y2 = y * 2;

    // Small Squares
    for (i = 16; i < ARRAY_COUNT(gExtraGameSelect->squareVectors); i++) {
        vector = &gExtraGameSelect->squareVectors[i];
        vector->x += dx;
        vector->y += dy;

        if (vector->x < 0) {
            vector->x = x2;
            vector->y = agb_random(y2);
        }
        if (vector->x > x2) {
            vector->x = 0;
            vector->y = agb_random(y2);
        }
        if (vector->y < 0) {
            vector->x = agb_random(x2);
            vector->y = y2;
        }
        if (vector->y > y2) {
            vector->x = agb_random(x2);
            vector->y = 0;
        }

        sprite_set_x_y(gSpriteHandler, gExtraGameSelect->squareSprites[i], SCREEN_CENTER_X + ((vector->x - x) >> 2), SCREEN_CENTER_Y + ((vector->y - y) >> 2));
    }
}


// Spawn New Icon Square
void extra_game_select_spawn_icon_square(s16 x, s16 y, void *onFinish, s32 onFinishArg, u32 delay) {
    struct NewIconSquare *shadow = gExtraGameSelect->newIconSquares;
    s32 x1, y1, x2, y2;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gExtraGameSelect->newIconSquares); i++) {
        if (!shadow->active) {
            break;
        }
        shadow++;
    }

    if (i >= ARRAY_COUNT(gExtraGameSelect->newIconSquares)) {
        return;
    }

    x2 = 20 + (x * 40);
    y1 = (4 + (y * 3)) * 8;
    y2 = y1 + 12;
    x1 = x2 + agb_random(200);

    x1 -= 200;
    y1 -= 188;

    shadow->sprite = sprite_create(gSpriteHandler, anim_game_select_bg_square_large, 0, x1, y1, 0x479C, 1, 0, 0x8000);
    sprite_set_anim_speed(gSpriteHandler, shadow->sprite, INT_TO_FIXED(2.0));
    sprite_set_base_palette(gSpriteHandler, shadow->sprite, 1);
    extra_game_select_link_sprite_xy_to_bg(shadow->sprite);
    shadow->xIn = x;
    shadow->yIn = y;
    shadow->x1 = x1;
    shadow->y1 = y1;
    shadow->x2 = x2;
    shadow->y2 = y2;
    shadow->progress = INT_TO_FIXED(1.0);
    shadow->onFinish = onFinish;
    shadow->onFinishArg = onFinishArg;
    shadow->delay = delay;
    shadow->active = TRUE;
}


// Update New Icon Square
void extra_game_select_update_icon_square(struct NewIconSquare *shadow) {
    s32 x, y;

    if (!shadow->active) {
        return;
    }

    if (shadow->delay > 0) {
        shadow->delay--;
        return;
    }

    if (shadow->progress != 0) {
        x = math_lerp(shadow->x2, shadow->x1, shadow->progress, INT_TO_FIXED(1.0));
        y = math_lerp(shadow->y2, shadow->y1, shadow->progress, INT_TO_FIXED(1.0));
        sprite_set_x_y(gSpriteHandler, shadow->sprite, x, y);
        sprite_set_visible(gSpriteHandler, shadow->sprite, TRUE);
        shadow->progress = FIXED_POINT_MUL(INT_TO_FIXED(0.9), shadow->progress);
        return;
    }

    if (shadow->onFinish != NULL) {
        shadow->onFinish(shadow->onFinishArg);
    }

    sprite_set_base_palette(gSpriteHandler, shadow->sprite, 0);
    sprite_set_anim_speed(gSpriteHandler, shadow->sprite, INT_TO_FIXED(1.0));
    sprite_set_anim(gSpriteHandler, shadow->sprite, anim_game_select_clear_game, 0, 1, 0, 3);
    sprite_set_x_y_z(gSpriteHandler, shadow->sprite, shadow->x2 - 12, shadow->y2 - 12, 0x4864);
    play_sound(&s_f_appear_game_seqData);
    shadow->active = FALSE;
}


// Update New Icon Squares
void extra_game_select_update_icon_squares(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gExtraGameSelect->newIconSquares); i++) {
        extra_game_select_update_icon_square(&gExtraGameSelect->newIconSquares[i]);
    }
}


// Check for Active New Icon Squares
u32 extra_game_select_check_for_icon_squares(void) {
    struct NewIconSquare *shadow = gExtraGameSelect->newIconSquares;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gExtraGameSelect->newIconSquares); i++) {
        if (shadow->active) {
            return TRUE;
        }
        shadow++;
    }

    return FALSE;
}


// Update BG Squares
void extra_game_select_update_bg_squares(s32 dx, s32 dy) {
    extra_game_select_update_bg_squares_motion(dx, dy);
}

// Get Screen Coordinates from Grid Position
void extra_get_pixel_xy_from_grid_xy(s32 x, s32 y, s16 *xReq, s16 *yReq) {
    *xReq = (x * 40) - 44;
    *yReq = (y * 24) - 36;
}