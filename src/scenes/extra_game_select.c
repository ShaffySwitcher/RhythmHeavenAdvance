#include "global.h"
#include "extra_game_select.h"
#include "graphics/game_select/game_select_graphics.h"
#include "graphics/extra_game_select/extra_game_select_graphics.h"

#include "extra_levels.h"

void play_extra_game_select_bgm(void) {
    set_beatscript_tempo(152);
    scene_set_music(&s_menu_bgm_seqData);
}

// Scene Init. Static Variables
void extra_game_select_scene_init_memory(void) {
}

// Scene Graphics Init. 4 (Colors & Level Icons)
void extra_game_select_scene_init_gfx4(void) {
    func_0800c604(0);
    set_pause_beatscript_scene(FALSE);
    func_080041d0(0xFE, 0xFF, 0);
    func_0800425c(16, 144);
    //init_extra_game_select_grid_gfx();
    //extra_game_select_init_icon_overlays();
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
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 2, 22, BGCNT_TILEMAP_SIZE(2) | BGCNT_PRIORITY(0));
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 2, 24, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(1));
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 28, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(2));
}

// Scene Start
void extra_game_select_scene_start(void *sVar, s32 dArg) {
    /*struct TengokuSaveData *saveData = &D_030046a8->data;
    s32 recentLevelState, previousLevelState;
    s16 bgOfsX, bgOfsY;
    s32 prevX, prevY;*/

    // Init. Graphics
    gExtraGameSelect->loadingSceneGfx = TRUE;
    func_08007324(FALSE);
    func_080073f0();
    game_select_scene_init_gfx1();
    //game_select_init_color_mod();
    //game_select_init_stub();

    // Init. Cursor
    /*gGameSelect->cursorX = D_030046a8->data.gsCursorX;
    gGameSelect->cursorY = D_030046a8->data.gsCursorY;
    get_pixel_xy_from_grid_xy(gGameSelect->cursorX, gGameSelect->cursorY, &bgOfsX, &bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_3, bgOfsX, bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_2, bgOfsX, bgOfsY);
    gGameSelect->selectionBorderSprite = sprite_create(gSpriteHandler, anim_game_select_border_target, 0, 48, 72, 0x4800, 1, 0, 0);
    gGameSelect->cursorSprite = sprite_create(gSpriteHandler, anim_game_select_cursor, 0, 64, 64, 0x47FF, 1, 0, 0);
    game_select_link_sprite_xy_to_bg(gGameSelect->selectionBorderSprite);
    game_select_link_sprite_xy_to_bg(gGameSelect->cursorSprite);
    game_select_move_cursor_to_grid_xy(gGameSelect->cursorX, gGameSelect->cursorY);

    // Init. BG Motion
    gGameSelect->gridPaneIsMoving = FALSE;
    gGameSelect->gridPaneX1 = gGameSelect->gridPaneX2 = bgOfsX;
    gGameSelect->gridPaneY1 = gGameSelect->gridPaneY2 = bgOfsY;
    gGameSelect->infoPaneIsMoving = FALSE;
    gGameSelect->infoPaneX1 = gGameSelect->infoPaneX2 = 0;
    gGameSelect->infoPaneY1 = gGameSelect->infoPaneY2 = 0;

    // Init. Stage Title Pane
    gGameSelect->stageTitleText = sprite_create(gSpriteHandler, anim_game_select_stage1, 0x7F, 60, 140, 0x479C, 1, 0x7F, 0);
    gGameSelect->stageTitlePane = sprite_create_w_attr(gSpriteHandler, anim_game_select_stage_box, 0, 60, 140, 0x479D, 0, 0, 0, 0);
    gGameSelect->stageTitleY = STAGE_PANE_Y_VISIBLE;
    gGameSelect->unk18 = 0;
    gGameSelect->hideStageTitle = FALSE;
    gGameSelect->stageTitlePersistTime = 0;
    game_select_set_stage_title(gGameSelect->cursorX);

    // Init. Various
    init_campaign_notice();
    game_select_init_medal_pane();
    game_select_init_squares();
    gGameSelect->inputsEnabled = FALSE;
    game_select_init_info_pane();
    game_select_set_info_pane_to_cursor_target();
    game_select_init_flow_pane();

    // Init. Events
    gGameSelect->totalLevelEventsQueued = 0;
    gGameSelect->levelEventDequeueID = 0;
    gGameSelect->levelEventEnqueueID = 0;
    gGameSelect->levelEventPending = FALSE;
    prevX = saveData->recentLevelX;
    prevY = saveData->recentLevelY;
    recentLevelState = saveData->recentLevelState;
    previousLevelState = get_level_state_from_grid_xy(prevX, prevY);
    gGameSelect->baristaLevelEventPending = FALSE;
    gGameSelect->baristaLevelEventTimer = 0;

    if (recentLevelState > previousLevelState) {
        game_select_start_level_events(60);
        game_select_enqueue_level_event(prevX, prevY, recentLevelState);

        if (saveData->recentLevelClearedByBarista) {
            gGameSelect->baristaLevelEventPending = TRUE;
            gGameSelect->baristaLevelEventX = prevX;
            gGameSelect->baristaLevelEventY = prevY;
            gGameSelect->baristaLevelEventTimer = 60;
        }

        if ((get_level_id_from_grid_xy(prevX, prevY) == LEVEL_REMIX_6) && (recentLevelState >= LEVEL_STATE_CLEARED)) {
            enable_game_select_2_bgm();
        }
    } else {
        gGameSelect->runningLevelEvents = FALSE;
        gGameSelect->levelEventTimer = 0;
        write_game_save_data();

        if (gGameSelect->campaignNotice.hasNewCampaign) {
            start_campaign_notice(D_030046a8->data.currentCampaign);
            gGameSelect->campaignNotice.hasNewCampaign = FALSE;
        } else {
            gGameSelect->sceneState = GS_STATE_MAIN;
        }
    }

    saveData->recentLevelState = LEVEL_STATE_NULL;
    saveData->recentLevelClearedByBarista = FALSE;
    results_set_enable_save(TRUE);
    game_select_disable_credits_after_epilogue();*/

    /* Init. Scene Transitions */
}

// Scene Update (Active)
void extra_game_select_scene_update(void *sVar, s32 dArg) {

}

// Scene Stop
void extra_game_select_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08003f28();
    func_08004058();
    func_08006d80();
    func_08007014(0);
}

// Scene Update (Paused)
void extra_game_select_scene_paused(void *sVar, s32 dArg) {
}