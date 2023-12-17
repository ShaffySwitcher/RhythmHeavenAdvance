#include "engines/drum_live.h"
#include "src/scenes/gameplay.h"
#include "src/scenes/results.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gDrumLive ((struct DrumLiveEngineData *)gCurrentEngineData)
#define CROWD_BG_MAP_BASE (void *)(VRAMBase + 0xE000)

static u8 sDrumLiveResult; // Results Rank


/* DRUM LIVE */


// Get Animation
struct Animation *drum_live_get_anim(u32 anim) {
    return drum_live_anim_table[anim][gDrumLive->version];
}


// Init. Lights
#include "asm/engines/drumming_lessons/asm_08025248.s"


// Update Lights
#include "asm/engines/drumming_lessons/asm_08025460.s"


// Light Callback Function
void func_08025538() {
    func_0800c604(0);
    gDrumLive->unk13F9--;
}


// Play Applause
#include "asm/engines/drumming_lessons/asm_0802555c.s"


// ?
#include "asm/engines/drumming_lessons/asm_080255f8.s"


// Engine Event 0x05 (?)
void func_08025748(u32 arg) {
    gDrumLive->unk13FA = arg;
}


// ?
#include "asm/engines/drumming_lessons/asm_0802575c.s"


// ?
#include "asm/engines/drumming_lessons/asm_080257b8.s"


// ?
#include "asm/engines/drumming_lessons/asm_08025848.s"


// ?
#include "asm/engines/drumming_lessons/asm_080258c0.s"


// Engine Event 0x06 (?)
void func_08025a2c(u32 arg) {
    gDrumLive->unk1415 = arg;
    gDrumLive->unk1416 = ticks_to_frames(20);
}


// Engine Event 0x07 (Play Applause)
void drum_live_script_play_applause(void) {
    drum_live_play_applause();
}


// Clear Cool/Lame Inputs
void drum_live_clear_input_def(void) {
    u32 i;

    for (i = 0; i < 6; i++) {
        gDrumLive->coolInputs[i] = 0;
        gDrumLive->lameInputs[i] = 0;
    }
}


// Engine Event 0x02 (Clear "Cool"/"Lame" Inputs)
void drum_live_script_clear_input_def(void) {
    drum_live_clear_input_def();
}


// Define "Cool" Inputs
void drum_live_define_cool_inputs(u32 index, u32 keys) {
    gDrumLive->coolInputs[index] = keys;
}


// Define "Lame" Inputs
void drum_live_define_lame_inputs(u32 index, u32 keys) {
    gDrumLive->lameInputs[index] = keys;
}


// Engine Event 0x03 (Define "Cool" Inputs)
void drum_live_script_define_cool_inputs(u32 args) {
    drum_live_define_cool_inputs(args & 0xFF, args >> 8);
}


// Engine Event 0x04 (Define "Lame" Inputs)
void drum_live_script_define_lame_inputs(u32 args) {
    drum_live_define_lame_inputs(args & 0xFF, args >> 8);
}


// ?
#include "asm/engines/drumming_lessons/asm_08025afc.s"


// Reset Excitement Factor
void drum_live_reset_excitement(void) {
    gDrumLive->excitementFactor = 0x1E0;
    gDrumLive->excitementBaseInc = 0x10;
    gDrumLive->excitementBaseDec = 0x10;
    gDrumLive->unk13F8 = 0;
    drum_live_clear_input_def();
}


// Engine Event 0x09 (?)
void func_08025bcc(u32 arg) {
    gDrumLive->unk13F8 = arg;
}


// Reset Crowd BG Map and Rank
void drum_live_reset_crowd_and_rank(void) {
    drum_live_set_crowd_and_rank(0);
}


// Set Crowd BG Map and Rank
void drum_live_set_crowd_and_rank(u32 excitement) {
    s32 crowd = clamp_int32(excitement, 0, 4);
    u32 rank;

    func_08003bd4(&gDrumLive->dynamicBgMap, drum_live_crowd_bg_maps[crowd], 1, CROWD_BG_MAP_BASE, 0x800);

    switch (crowd) {
        case 0:
        case 1:
            rank = RESULTS_RANK_TRY_AGAIN;
            break;
        case 2:
        case 3:
            rank = RESULTS_RANK_OK;
            break;
        default:
            rank = RESULTS_RANK_SUPERB;
            break; // fun trivia: removing this break statement causes a massive mismatch
    }

    drum_live_set_result_rank(rank);
}


// Drum Kit Event - D-Pad Up (Snare Roll)
void drum_live_kit_play_roll() {
}


// Drum Kit Event - D-Pad Down
void drum_live_kit_play_bass_l() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804cebc(D_03005380, drummer->leftBassDrum, 0);
    func_0804cebc(D_03005380, drummer->body, 0);
    func_0804cebc(D_03005380, drummer->head, 0);
}


// Drum Kit Event - B Button
void drum_live_kit_play_bass_r() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804cebc(D_03005380, drummer->rightBassDrum, 0);
    func_0804cebc(D_03005380, drummer->body, 0);
    func_0804cebc(D_03005380, drummer->head, 0);
}


// ?
void drum_live_kit_play_stub(void) {
}


// Drum Kit Event - D-Pad Left
void drum_live_kit_play_snare_l() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_L), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    func_0804cebc(D_03005380, drummer->snareDrum, 0);
}


// Drum Kit Event - A Button
void drum_live_kit_play_snare_r() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->rightArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_R), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->rightArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    func_0804cebc(D_03005380, drummer->snareDrum, 0);
}


// Drum Kit Event - ?
void drum_live_kit_play_unknown() {
}


// Drum Kit Event - D-Pad Right
void drum_live_kit_play_tom() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_TOM), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    func_0804cebc(D_03005380, drummer->tomDrum, 0);
}


// Drum Kit Event - D-Pad Up (Hi-Hat)
void drum_live_kit_play_hihat() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_HIHAT), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    func_0804dae0(D_03005380, drummer->hiHat, 1, 0x7F, 0);
    func_0804cebc(D_03005380, drummer->hiHat, 0);
}


// Drum Kit Event - L Button
void drum_live_kit_play_splash() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SPLASH), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    func_0804cebc(D_03005380, drummer->splashCymbal, 0);
}


// Drum Kit Event - R Button
void drum_live_kit_play_crash() {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    func_0804d8f8(D_03005380, drummer->rightArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_CRASH), 0, 1, 0x7F, 0);
    func_0804d5d4(D_03005380, drummer->rightArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    func_0804cebc(D_03005380, drummer->crashCymbal, 0);
}


// Graphics Init. 3
void drum_live_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
    drum_live_reset_crowd_and_rank();
}


// Graphics Init. 2
void drum_live_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), drum_live_gfx_tables[gDrumLive->version], 0x2000);
    run_func_after_task(task, drum_live_init_gfx3, 0);
}


// Graphics Init. 1
void drum_live_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), drum_live_buffered_textures);
    run_func_after_task(task, drum_live_init_gfx2, 0);
}


// Offset Performer Sprite X/Y Position by Vector Table
void drum_live_offset_sprite_pos(s16 sprite, u32 performer) {
    struct Vector2 *offset = &D_089e0ab0[gDrumLive->version][performer];
    s32 x = func_0804ddb0(D_03005380, sprite, 4);
    s32 y = func_0804ddb0(D_03005380, sprite, 5);

    func_0804d5d4(D_03005380, sprite, x + offset->x, y + offset->y);
}


// Game Engine Start
void drum_live_engine_start(u32 version) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;
    struct LiveGuitarist *guitarist;

    // Init. Stage
    gDrumLive->version = version;
    drum_live_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, TRUE, 0, 0, 2, 28, 0);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    func_08003b28(&gDrumLive->dynamicBgMap);

    // Init. Drummer
    drummer->head = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUMMER_HEAD), 0, 120, 70, 0x482D, 1, 0x7F, 0);
    drummer->body = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUMMER_BODY), 0, 120, 70, 0x4832, 1, 0x7F, 0);
    drummer->leftArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_L), 0, 120, 70, 0x4828, 1, 0x7F, 0);
    drummer->rightArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_R), 0, 120, 70, 0x4828, 1, 0x7F, 0);
    func_0804db44(D_03005380, drummer->leftArm, NULL, &drummer->armPosY);
    func_0804db44(D_03005380, drummer->rightArm, NULL, &drummer->armPosY);
    drummer->armPosY = 0;
    drummer->leftBassDrum = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_BASS_L), 0, 120, 110, 0x47CE, 1, 0x7F, 0);
    drummer->rightBassDrum = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_BASS_R), 0, 120, 110, 0x47CE, 1, 0x7F, 0);
    drummer->snareDrum = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_SNARE), 0, 120, 110, 0x47D8, 1, 0x7F, 0);
    drummer->tomDrum = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_TOM), 0, 120, 110, 0x47C9, 1, 0x7F, 0);
    drummer->hiHat = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_HIHAT), 0, 120, 110, 0x47D6, 1, 0x7F, 0);
    drummer->splashCymbal = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_SPLASH), 0, 120, 110, 0x47C4, 1, 0x7F, 0);
    drummer->crashCymbal = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_CRASH), 0, 120, 110, 0x47C4, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(drummer->head, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->body, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->leftBassDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->rightBassDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->snareDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->tomDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->hiHat, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->splashCymbal, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->crashCymbal, LIVE_PERFORMER_DRUMMER);

    // Init. Bass Guitarist
    guitarist = &gDrumLive->guitarists[1];
    guitarist->head = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BASSIST_HEAD), 0, 50, 110, 0x4792, 1, 0x7F, 0);
    guitarist->body = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BASSIST_BODY), 0, 50, 110, 0x479C, 1, 0x7F, 0);
    guitarist->legs = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BASSIST_LEGS), 0, 50, 109, 0x47A6, 1, 0x7F, 0);
    guitarist->leftArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BASSIST_ARM_L), 0, 50, 110, 0x4788, 1, 0x7F, 0);
    guitarist->rightArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BASSIST_ARM_R), 0, 50, 110, 0x4788, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(guitarist->head, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->body, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->legs, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->leftArm, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->rightArm, LIVE_PERFORMER_BASSIST);
    func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_MICROPHONE), 0, 38, 142, 0x4738, 0, 0, 0);
    guitarist->unkE = 0;
    guitarist->unk10 = 0;

    // Init. Guitarist
    guitarist = &gDrumLive->guitarists[0];
    guitarist->head = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_GUITARIST_HEAD), 0, 190, 115, 0x4792, 1, 0x7F, 0);
    guitarist->body = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_GUITARIST_BODY), 0, 190, 115, 0x479C, 1, 0x7F, 0);
    guitarist->legs = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_GUITARIST_LEGS), 0, 190, 115, 0x47A6, 1, 0x7F, 0);
    guitarist->leftArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_GUITARIST_ARM_L), 0, 190, 115, 0x4788, 1, 0x7F, 0);
    guitarist->rightArm = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_GUITARIST_ARM_R), 0, 190, 115, 0x4788, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(guitarist->head, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->body, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->legs, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->leftArm, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->rightArm, LIVE_PERFORMER_GUITARIST);
    func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_MICROPHONE), 0, 202, 139, 0x4738, 0, 0, 0);
    guitarist->unkE = 0;
    guitarist->unk10 = 0;

    // Init. Modes and Icons
    func_0804e188(D_03005380, get_current_mem_id(), NULL, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    gDrumLive->unk39C = 0;
    gDrumLive->unk3A0 = 1;
    gDrumLive->adjustModeIcon = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_ADJUST_MODE_ICON), gDrumLive->unk3A0, 120, 154, 0, 0, 0, 0x8000);
    gDrumLive->busyIcon = func_0804d160(D_03005380, drum_live_get_anim(LIVE_ANIM_BUSY_ICON), 0, 120, 144, 0, 0, 0, 0x8000);

    // Init. Other
    init_drumtech(&gDrumLive->drumTech);
    gameplay_set_input_buttons(DPAD_ALL | A_BUTTON | B_BUTTON, 0);
    gameplay_prevent_dpad_overlap(FALSE);
    drum_live_reset_excitement();
    gDrumLive->unk13D0 = INT_TO_FIXED(1.0);
    func_08025248();
    drum_live_set_result_rank(RESULTS_RANK_TRY_AGAIN);
}


// Engine Event 0x0A (STUB)
void drum_live_engine_event_stub(void) {
}


// ?
#include "asm/engines/drumming_lessons/asm_08026640.s"


// Engine Event 0x00 (?)
void func_080268cc(u32 args) {
    struct LiveGuitarist *guitarist;
    u32 arg0, arg1;
    u32 i;

    arg0 = args >> 2;
    arg1 = args & 3;

    for (i = 0; i < 2; i++) {
        if ((arg1 >> i) & 1) {
            guitarist = &gDrumLive->guitarists[i];

            if (guitarist->unk10 != 0) {
                if (guitarist->unk10 < 3) {
                    func_08026640(i, guitarist->unkF);
                }
            }

            guitarist->unk10 = ticks_to_frames(24);
            guitarist->unkF = arg0;
        }
    }
}


// Update Guitarists
void drum_live_update_guitarists(void) {
    struct LiveGuitarist *guitarist;
    u32 i;

    for (i = 0; i < 2; i++) {
        guitarist = &gDrumLive->guitarists[i];

        if (guitarist->unk10 != 0) {
            if (--guitarist->unk10 == 0) {
                func_08026640(i, guitarist->unkF);
            }
        }
    }
}


// Engine Event 0x01 (?)
#include "asm/engines/drumming_lessons/asm_08026968.s"


// Engine Event 0x08 (Set Enable Boredom Timer)
void drum_live_set_enable_boredom(u32 enable) {
    gDrumLive->boredomEnabled = enable;
    gDrumLive->timeSinceLastInput = 0;
}


// Update Audience Boredom
void drum_live_update_boredom(void) {
    if (gDrumLive->boredomEnabled) {
        if (gDrumLive->timeSinceLastInput < 240) {
            if (++gDrumLive->timeSinceLastInput >= 240) {
                gDrumLive->excitementFactor = INT_TO_FIXED(0.0);
            }
        }
    }
}


// Update Band Monkey Body Animation Speed
void drum_live_update_band_monkeys(void) {
    if (gDrumLive->version == ENGINE_VER_DRUM_SAMURAI_BAND_LIVE) {
        u24_8 speed = INT_TO_FIXED(get_beatscript_tempo()) / 120u;

        func_0804dcb8(D_03005380, gDrumLive->guitarists[0].body, speed);
        func_0804dcb8(D_03005380, gDrumLive->guitarists[1].body, speed);
    }
}


// Game Engine Update
void drum_live_engine_update(void) {
    func_08003b34(&gDrumLive->dynamicBgMap);
    play_drumtech_kit_w_anim(drum_live_kits[drum_live_kit_map[gDrumLive->version]], D_03004afc);
    update_drumtech();
    func_08003c1c(&gDrumLive->dynamicBgMap);
    drum_live_update_boredom();
    drum_live_update_guitarists();
    drum_live_update_band_monkeys();
    func_08025460();
}


// Set Results Rank
void drum_live_set_result_rank(u32 rank) {
    sDrumLiveResult = rank;
}


// Get Results Rank
u32 drum_live_get_result_rank(void) {
    return sDrumLiveResult;
}


// Game Engine Stop
void drum_live_engine_stop(void) {
    key_rec_set_mode(INPUT_REC_MODE_NONE, 0x3FF, NULL, 0);
}


// Update Excitement Factor
void drum_live_modify_excitement(struct DrumLiveCue *info, u8_8 coolMultiplier, u8_8 lameMultiplier) {
    if (gDrumLive->unk13F8 != 0) {
        return;
    }

    if (info->coolInputs & D_03004afc) {
        gDrumLive->excitementFactor += FIXED_POINT_MUL(info->baseInc, coolMultiplier);
    }

    if (info->lameInputs & D_03004afc) {
        gDrumLive->excitementFactor -= FIXED_POINT_MUL(info->baseDec, lameMultiplier);
    }

    gDrumLive->excitementFactor = clamp_int32(gDrumLive->excitementFactor, INT_TO_FIXED(-1.0), INT_TO_FIXED(5.0));
}


// Cue - Spawn
void drum_live_cue_spawn(struct Cue *cue, struct DrumLiveCue *info, u32 type) {
    info->type = type;
    info->coolInputs = gDrumLive->coolInputs[info->type];
    info->lameInputs = gDrumLive->lameInputs[info->type];
    info->baseInc = gDrumLive->excitementBaseInc;
    info->baseDec = gDrumLive->excitementBaseDec;
    info->unk1 = gDrumLive->unk13FA;
    gDrumLive->unk13FA = -1;
}


// Cue - Update
u32 drum_live_cue_update(struct Cue *cue, struct DrumLiveCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(36)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void drum_live_cue_despawn(struct Cue *cue, struct DrumLiveCue *info) {
}


// Set Tempo?
void func_08026c3c(void) {
    u32 tempo = gDrumLive->unk39C;
    s32 hitOffset, oneBeat, newTempo;

    if (tempo == 0) {
        return;
    }

    hitOffset = gameplay_get_last_hit_offset();
    oneBeat = ticks_to_frames(24);
    newTempo = (s32)get_beatscript_tempo() * (oneBeat - hitOffset) / oneBeat;
    set_beatscript_tempo(clamp_int32(newTempo, tempo - 5, tempo + 5));
}


// Cue - Hit
void drum_live_cue_hit(struct Cue *cue, struct DrumLiveCue *info, u32 pressed, u32 released) {
    if (info->type == 0) {
        func_08026c3c();
    }

    drum_live_modify_excitement(info, INT_TO_FIXED(1.0), INT_TO_FIXED(1.0));

    if (info->unk1 >= 0) {
        func_080255f8(info->unk1);
    }

    gDrumLive->timeSinceLastInput = 0;
}


// Cue - Barely
void drum_live_cue_barely(struct Cue *cue, struct DrumLiveCue *info, u32 pressed, u32 released) {
    if (gDrumLive->unk39C != 0) {
        set_beatscript_tempo(gDrumLive->unk39C);
    }

    drum_live_modify_excitement(info, INT_TO_FIXED(0.5), INT_TO_FIXED(1.0));
    gDrumLive->timeSinceLastInput = 0;
}


// Cue - Miss
void drum_live_cue_miss(struct Cue *cue, struct DrumLiveCue *info) {
    if (gDrumLive->unk39C != 0) {
        set_beatscript_tempo(gDrumLive->unk39C);
    }
}


// Input Event
void drum_live_input_event(u32 pressed, u32 released) {
    if (gDrumLive->unk13F8 == 0) {
        gDrumLive->excitementFactor -= INT_TO_FIXED(1.0);
    }

    gDrumLive->timeSinceLastInput = 0;
}


// Common Event 0 (Beat Animation)
void drum_live_common_beat_animation(void) {
    struct LiveGuitarist *guitarist;
    u32 i;

    for (i = 0; i < 2; i++) {
        guitarist = &gDrumLive->guitarists[i];

        if (guitarist->unkE == 0) {
            func_0804cebc(D_03005380, guitarist->head, 0);
            func_0804cebc(D_03005380, guitarist->body, 0);
            func_0804cebc(D_03005380, guitarist->legs, 0);
            func_0804cebc(D_03005380, guitarist->leftArm, 0);
        }
    }

    drum_live_set_crowd_and_rank(FIXED_TO_INT(gDrumLive->excitementFactor));
    func_080258c0();
}


// Common Event 1 (Display Text, Unimplemented)
void drum_live_common_display_text(void) {
}


// Common Event 2 (Init. Tutorial)
void drum_live_common_init_tutorial(struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
