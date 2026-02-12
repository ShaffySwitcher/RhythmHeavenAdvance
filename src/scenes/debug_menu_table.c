#include "global.h"
#include "debug_menu.h"


/* DEBUG MENU TABLE */


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "�b������������",
        /* Epil. */ TRUE
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "�r�������@�a���������@�r�o",
        /* Epil. */ FALSE
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "�p�������@�r�������@�r�o",
        /* Epil. */ FALSE
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "�l�����������������@�e������������",
        /* Epil. */ FALSE
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        /* Label */ "�l���D�@�t����������",
        /* Epil. */ FALSE
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "�q���������@�W",
        /* Epil. */ TRUE
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "�q���������@�V",
        /* Epil. */ TRUE
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "�q���������@�U",
        /* Epil. */ TRUE
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "�q���������@�T",
        /* Epil. */ TRUE
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "�q���������@�S",
        /* Epil. */ TRUE
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "�q���������@�R",
        /* Epil. */ TRUE
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "�q���������@�Q",
        /* Epil. */ TRUE
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "�q���������@�P",
        /* Epil. */ TRUE
    },
    /* Remix 1 (Tempo Up) */ {
        /* Scene */ &scene_remix_1_extra,
        /* Label */ "�q���������@�P�@�i�s���������@�t���j",
        /* Epil. */ TRUE
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "�s�����@�a�����@�n��������",
        /* Epil. */ TRUE
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "�s�����@�a�����@�c��������",
        /* Epil. */ TRUE
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "�b�����@�l������������",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "�k�������@�l������������",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "�q�����@�l������������",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "�k�����������@�i�r���������@�P�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "�k�����������@�i�r���������@�S�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "�k�����������@�i�r���������@�W�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "�k�����������@�i�r���������@�T�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "�k�����������@�i�r���������@�V�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "�k�����������@�i�r���������@�U�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "�k�����������@�i�r���������@�X�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "�k�����������@�i�a���������@�P�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "�k�����������@�i�a���������@�Q�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "�k�����������@�i�r���������@�Q�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "�k�����������@�i�r���������@�R�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "�k�����������@�i�k�������@�S�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "�k�����������@�i�k�������@�Q�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "�k�����������@�i�k�������@�R�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "�k�����������@�i�k�������@�P�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "�k�����������@�i�k�������@�T�j",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "�k�����������@�i�k�������@�U�j",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "�k�����������@�i�s�����������������@�P�j",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "�k�����������@�i�s�����������������@�Q�j",
        /* Epil. */ FALSE
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver0,
        /* Label */ "�r�����������@�c���������@�i�u�����D�O�j",
        /* Epil. */ FALSE
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver2,
        /* Label */ "�r�����������@�c���������@�i�u�����D�Q�j",
        /* Epil. */ FALSE
    },
    /* Rhythm Test */ {
        /* Scene */ &scene_rhythm_test,
        /* Label */ "�q�����������@�s������",
        /* Epil. */ FALSE
    },
    /* Reading Material */ {
        /* Scene */ &scene_reading,
        /* Label */ "�d��������",
        /* Epil. */ FALSE
    },
    /* Quiz Show */ {
        /* Scene */ &scene_quiz_show,
        /* Label */ "�p�������@�r������",
        /* Epil. */ TRUE
    },
    /* Rap Men */ {
        /* Scene */ &scene_rap_men,
        /* Label */ "�q�`�o�l�d�m",
        /* Epil. */ TRUE
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &scene_rap_women,
        /* Label */ "�q�`�o�v�n�l�d�m�@�i�����@�x�n�m�d�j",
        /* Epil. */ TRUE
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &scene_rap_women_unused,
        /* Label */ "�q�`�o�v�n�l�d�m�@�i�a���@�j�`�y�t�j",
        /* Epil. */ TRUE
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "�r���������@�c��������",
        /* Epil. */ TRUE
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "�b�����������@�c��������",
        /* Epil. */ TRUE
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "�r��������������",
        /* Epil. */ TRUE
    },
    /* RIQ Data Check */ {
        /* Scene */ &scene_data_check,
        /* Label */ "�q�|�h�p�@�c�������@�b��������",
        /* Epil. */ FALSE
    },
    /* Opening (B Type) */ {
        /* Scene */ &scene_drum_samurai_opening_cutscene,
        /* Label */ "�n�������������@�i�s�������@�a�j",
        /* Epil. */ FALSE
    },
    /* Opening (A Type) */ {
        /* Scene */ &scene_drum_samurai_demo_cutscene,
        /* Label */ "�n�������������@�i�s�������@�`�j",
        /* Epil. */ FALSE
    },
    /* Drum Inrto (Unused 1) */ {
        /* Scene */ &scene_drum_intro_unused,
        /* Label */ "�c�������@�h���������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 2) */ {
        /* Scene */ &scene_drum_intro_unused_2,
        /* Label */ "�c�������@�h���������@�i�t�����������@�Q�j",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 3) */ {
        /* Scene */ &scene_drum_intro_unused_3,
        /* Label */ "�c�������@�h���������@�i�t�����������@�R�j",
        /* Epil. */ TRUE
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "�s�������@���@�o������������",
        /* Epil. */ TRUE
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "�s�������@�s������",
        /* Epil. */ TRUE
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "�s�������@�s�������@�Q",
        /* Epil. */ TRUE
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &scene_drum_girls_live_unused,
        /* Label */ "�c�������@�f��������",
        /* Epil. */ TRUE
    },
    /* Power Calligraphy */ {
        /* Scene */ &scene_power_calligraphy,
        /* Label */ "�o���������@�b��������������������",
        /* Epil. */ TRUE
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "�q�����@�q������",
        /* Epil. */ TRUE
    },
    /* Flash Memory Test */ {
        /* Scene */ &scene_flash_mem_test,
        /* Label */ "�e���������@�l�����������@�s������",
        /* Epil. */ FALSE
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "�e����������������",
        /* Epil. */ TRUE
    },
    /* Metronome */ {
        /* Scene */ &scene_metronome,
        /* Label */ "�l����������������",
        /* Epil. */ TRUE
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "�a���������@�g����",
        /* Epil. */ TRUE
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &scene_remix_1_unused,
        /* Label */ "�c���������@�k�����������@�P",
        /* Epil. */ TRUE
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "�v�����������f���@�v��������",
        /* Epil. */ TRUE
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "�l���������������@�n����������",
        /* Epil. */ TRUE
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "�l���������������@�n�����������@�Q",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Tempo Up) */ {
        /* Scene */ &scene_marching_orders_extra,
        /* Label */ "�l���������������@�n�����������@�i�s���������@�t���j",
        /* Epil. */ TRUE
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "�g���������@�l������������",
        /* Epil. */ FALSE
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "�s�����@�s��������",
        /* Epil. */ TRUE
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "�s�����@�s���������@�Q",
        /* Epil. */ TRUE
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "�r�������������@�r��������",
        /* Epil. */ TRUE
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "�r����������������",
        /* Epil. */ TRUE
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "�r�����������������@�Q",
        /* Epil. */ TRUE
    },
    /* Spaceball (Tempo Up) */ {
        /* Scene */ &scene_spaceball_extra,
        /* Label */ "�r�����������������@�i�s���������@�t���j",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "�r�����������@�r������������",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "�r�����������@�r�������������@�Q",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "�m���������@�a����������������",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "�m���������@�c������������������",
        /* Epil. */ TRUE
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "�a�����������@�q������",
        /* Epil. */ TRUE
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "�a�����������@�q�������@�Q",
        /* Epil. */ TRUE
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "�r�������@�a��������",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "�q�����������@�s��������������",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "�q�����������@�s���������������@�Q",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers (Tempo Up) */ {
        /* Scene */ &scene_rhythm_tweezers_extra,
        /* Label */ "�q�����������@�s���������������@�i�s���������@�t���j",
        /* Epil. */ TRUE
    },
    /* Night Walk */ {
        /* Scene */ &scene_night_walk,
        /* Label */ "�m���������@�v������",
        /* Epil. */ TRUE
    },
    /* Night Walk 2 */ {
        /* Scene */ &scene_night_walk_2,
        /* Label */ "�m���������@�v�������@�Q",
        /* Epil. */ TRUE
    },
    /* Polyrhythm */ {
        /* Scene */ &scene_polyrhythm,
        /* Label */ "�o������������������",
        /* Epil. */ TRUE
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &scene_polyrhythm_2,
        /* Label */ "�o�������������������@�Q",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "�s�����@�b�����������@�s������",
        /* Epil. */ TRUE
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "�s�����@�r�����������@�s������",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio (Tempo Up) */ {
        /* Scene */ &scene_clappy_trio_extra,
        /* Label */ "�s�����@�b�����������@�s�������@�i�s���������@�t���j",
        /* Epil. */ TRUE
    }, 
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "�j�����������@�l����",
        /* Epil. */ TRUE
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "�j�����������@�l�����@�Q",
        /* Epil. */ TRUE
    },
    /* Karate Man (Tempo Up) */ {
        /* Scene */ &scene_karate_man_extra,
        /* Label */ "�j�����������@�l�����@�i�s���������@�t���j",
        /* Epil. */ TRUE
    },
    /* Tanuki and Monkey */ {
        /* Scene */ &scene_tanuki_and_monkey,
        /* Label */ "�s�����������@���@�l����������",
        /* Epil. */ TRUE
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_title,
        /* Label */ "�q�|�h�p�@�i�s���������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Main Menu) */ {
        /* Scene */ &scene_main_menu,
        /* Label */ "�q�|�h�p�@�i�l�������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Game Select) */ {
        /* Scene */ &scene_game_select,
        /* Label */ "�q�|�h�p�@�i�f�������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Data Room) */ {
        /* Scene */ &scene_data_room,
        /* Label */ "�q�|�h�p�@�i�k�����������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Studio) */ {
        /* Scene */ &scene_studio,
        /* Label */ "�q�|�h�p�@�i�r�����������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Options) */ {
        /* Scene */ &scene_options_menu,
        /* Label */ "�q�|�h�p�@�i�n�����������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 1) */ {
        /* Scene */ &scene_results_ver_debug,
        /* Label */ "�q�|�h�p�@�i�q�����������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 2) */ {
        /* Scene */ &scene_results_ver_rank,
        /* Label */ "�q�|�h�p�@�i�q�����������@�Q�j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 3) */ {
        /* Scene */ &scene_results_ver_score,
        /* Label */ "�q�|�h�p�@�i�q�����������@�R�j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 4) */ {
        /* Scene */ &scene_epilogue,
        /* Label */ "�q�|�h�p�@�i�q�����������@�S�j",
        /* Epil. */ TRUE
    },
    /* R-IQ (Debug Menu) */ {
        /* Scene */ &scene_debug_menu,
        /* Label */ "�q�|�h�p�@�i�c���������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Library) */ {
        /* Scene */ &scene_arrival,
        /* Label */ "�q�|�h�p�@�i�d���������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Perfect) */ {
        /* Scene */ &scene_perfect,
        /* Label */ "�q�|�h�p�@�i�o�������������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "�q�|�h�p�@�i�b�������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Endless Games) */ {
        /* Scene */ &scene_endless_menu,
        /* Label */ "�q�|�h�p�@�i�l���������������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Drum Lessons) */ {
        /* Scene */ &scene_lessons_menu,
        /* Label */ "�q�|�h�p�@�i�c�������@�k�������������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Toys) */ {
        /* Scene */ &scene_toys_menu,
        /* Label */ "�q�|�h�p�@�i�s�������j",
        /* Epil. */ FALSE
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "�q�|�h�p�@�i�b�������j",
        /* Epil. */ FALSE
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &scene_staff_credit_remix_6,
        /* Label */ "�d�����������@�i�f�������@�b�������������j",
        /* Epil. */ FALSE
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "�d�����������@�i�d���������@�u���������������j",
        /* Epil. */ FALSE
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "�r�������@�c�������@�b��������",
        /* Epil. */ FALSE
    },
    /* Warning */ {
        /* Scene */ &scene_warning,
        /* Label */ "�v������������",
        /* Epil. */ FALSE
    },
    /* Disclaimer */ {
        /* Scene */ &scene_disclaimer,
        /* Label */ "�c������������������",
        /* Epil. */ FALSE
    },
    /* Snappy Trio (Unused) */ {
        /* Scene */ &scene_snappy_trio_unused,
        /* Label */ "�s�����@�r�����������@�s�������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Bouncy Road (Unused) */ {
        /* Scene */ &scene_bouncy_road_unused,
        /* Label */ "�a�����������@�q�������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Bouncy Road (Unused 2) */ {
        /* Scene */ &scene_bouncy_road_unused_2,
        /* Label */ "�a�����������@�q�������@�i�t�����������@�Q�j",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused) */ {
        /* Scene */ &scene_spaceball_unused,
        /* Label */ "�r�����������������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused 2) */ {
        /* Scene */ &scene_spaceball_unused_2,
        /* Label */ "�r�����������������@�i�t�����������@�Q�j",
        /* Epil. */ TRUE
    },
    /* Tap Trial (Unused) */ {
        /* Scene */ &scene_tap_trial_unused,
        /* Label */ "�s�����@�s���������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Unused) */ {
        /* Scene */ &scene_marching_orders_unused,
        /* Label */ "�l���������������@�n�����������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    /* Horse Machine (Unused) */ {
        /* Scene */ &scene_mechanical_horse_unused,
        /* Label */ "�g���������@�l�������������@�i�t�����������j",
        /* Epil. */ TRUE
    },
    END_OF_DEBUG_ENTRIES
};


// [D_089ddf60] Page Number Digits
char debug_menu_counter_digits[] = "�O�P�Q�R�S�T�U�V�W�X�`�a�b�c�d�e�f�g�h�i�j�k�l�m�n�o�p�q�r�s�t�u�v�w�x�y";


// Render Text
void debug_menu_render_table(s32 targetPage, s32 targetRow) {
    char string[100];
    s32 totalPages;
    u32 i, j;

    totalPages = (gDebugMenu->totalEntries - 1) / DEBUG_MENU_ENTRY_PER_PAGE;

    if (targetPage < 0) {
        targetPage = totalPages;
    }

    if (targetPage > totalPages) {
        targetPage = 0;
    }

    if ((targetPage * DEBUG_MENU_ENTRY_PER_PAGE) + targetRow >= gDebugMenu->totalEntries) {
        targetRow = (gDebugMenu->totalEntries - 1) - (totalPages * DEBUG_MENU_ENTRY_PER_PAGE);
    }

    if (targetPage != gDebugMenu->page) {
        struct PrintedTextAnim *textAnim;

        for (i = 0; i < DEBUG_MENU_ENTRY_PER_PAGE; i++) {
            if (gDebugMenu->textLines[i] > -1) {
                delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->textLines[i]);
                sprite_delete(gSpriteHandler, gDebugMenu->textLines[i]);
                gDebugMenu->textLines[i] = -1;
            }
        }

        for (j = 0, i = (targetPage * DEBUG_MENU_ENTRY_PER_PAGE); (i < (targetPage * DEBUG_MENU_ENTRY_PER_PAGE) + DEBUG_MENU_ENTRY_PER_PAGE) && (i < gDebugMenu->totalEntries); j++, i++) {
            textAnim = bmp_font_obj_print_l(gDebugMenu->objFont, debug_menu_entry_table[i].label, 1, 0);
            gDebugMenu->textLines[j] = sprite_create(gSpriteHandler, textAnim->frames, 0, 32, (j * 18) + 32, 0x800, 0, 0, 0);
        }

        delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->counter);
        strncpy(string, &debug_menu_counter_digits[(targetPage + 1) * 2], 2);
        string[2] = '\0';
        strcat(string, "�^");
        strncat(string, &debug_menu_counter_digits[(totalPages + 1) * 2], 2);
        textAnim = bmp_font_obj_print_r(gDebugMenu->objFont, string, 1, 4);
        sprite_set_anim(gSpriteHandler, gDebugMenu->counter, textAnim->frames, 0, 0, 0, 0);
    }

    gDebugMenu->page = targetPage;
    gDebugMenu->row = targetRow;

    for (i = 0; i < DEBUG_MENU_ENTRY_PER_PAGE; i++) {
        if (gDebugMenu->textLines[i] > -1) {
            sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[i], 0);
        }
    }

    sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[gDebugMenu->row], 7);
    sprite_set_x_y(gSpriteHandler, gDebugMenu->cursor, 16, (gDebugMenu->row * 18) + 32);
}
