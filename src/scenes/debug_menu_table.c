#include "global.h"
#include "debug_menu.h"


/* DEBUG MENU TABLE */


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "Ｃｏｎｃｅｒｔ",
        /* Epil. */ TRUE
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "Ｓｉｃｋ　Ｂｅａｔｓ　ＳＰ",
        /* Epil. */ FALSE
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "Ｑｕｉｚ　Ｓｈｏｗ　ＳＰ",
        /* Epil. */ FALSE
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "Ｍａｎｎｅｑｕｉｎ　Ｆａｃｔｏｒｙ",
        /* Epil. */ FALSE
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        /* Label */ "Ｍｒ．　Ｕｐｂｅａｔ",
        /* Epil. */ FALSE
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "Ｒｅｍｉｘ　８",
        /* Epil. */ TRUE
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "Ｒｅｍｉｘ　７",
        /* Epil. */ TRUE
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "Ｒｅｍｉｘ　６",
        /* Epil. */ TRUE
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "Ｒｅｍｉｘ　５",
        /* Epil. */ TRUE
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "Ｒｅｍｉｘ　４",
        /* Epil. */ TRUE
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "Ｒｅｍｉｘ　３",
        /* Epil. */ TRUE
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "Ｒｅｍｉｘ　２",
        /* Epil. */ TRUE
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "Ｒｅｍｉｘ　１",
        /* Epil. */ TRUE
    },
    /* Remix 1 (Tempo Up) */ {
        /* Scene */ &scene_remix_1_extra,
        /* Label */ "Ｒｅｍｉｘ　１　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "Ｔｈｅ　Ｂｏｎ　Ｏｄｏｒｉ",
        /* Epil. */ TRUE
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "Ｔｈｅ　Ｂｏｎ　Ｄａｎｃｅ",
        /* Epil. */ TRUE
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "Ｃａｔ　Ｍａｃｈｉｎｅ",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "Ｌｏｖｅ　Ｍａｃｈｉｎｅ",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "Ｒａｐ　Ｍａｃｈｉｎｅ",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　１）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　４）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　８）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　５）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　７）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　６）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　９）",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｂａｓｉｃ　１）",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｂａｓｉｃ　２）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　２）",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｓｈｏｒｔ　３）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　４）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　２）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　３）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　１）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　５）",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｌｏｎｇ　６）",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｔｅｃｈｎｉｃａｌ　１）",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "Ｌｅｓｓｏｎ　（Ｔｅｃｈｎｉｃａｌ　２）",
        /* Epil. */ FALSE
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver0,
        /* Label */ "Ｓｔｕｄｉｏ　Ｄｒｕｍｓ　（Ｖｅｒ．０）",
        /* Epil. */ FALSE
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver2,
        /* Label */ "Ｓｔｕｄｉｏ　Ｄｒｕｍｓ　（Ｖｅｒ．２）",
        /* Epil. */ FALSE
    },
    /* Rhythm Test */ {
        /* Scene */ &scene_rhythm_test,
        /* Label */ "Ｒｈｙｔｈｍ　Ｔｅｓｔ",
        /* Epil. */ FALSE
    },
    /* Reading Material */ {
        /* Scene */ &scene_reading,
        /* Label */ "Ｅｍａｉｌ",
        /* Epil. */ FALSE
    },
    /* Quiz Show */ {
        /* Scene */ &scene_quiz_show,
        /* Label */ "Ｑｕｉｚ　Ｓｈｏｗ",
        /* Epil. */ TRUE
    },
    /* Rap Men */ {
        /* Scene */ &scene_rap_men,
        /* Label */ "ＲＡＰＭＥＮ",
        /* Epil. */ TRUE
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &scene_rap_women,
        /* Label */ "ＲＡＰＷＯＭＥＮ　（ｂｙ　ＹＯＮＥ）",
        /* Epil. */ TRUE
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &scene_rap_women_unused,
        /* Label */ "ＲＡＰＷＯＭＥＮ　（Ｂｙ　ＫＡＺＵ）",
        /* Epil. */ TRUE
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "Ｓｐａｃｅ　Ｄａｎｃｅ",
        /* Epil. */ TRUE
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "Ｃｏｓｍｉｃ　Ｄａｎｃｅ",
        /* Epil. */ TRUE
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "Ｓｈｏｗｔｉｍｅ",
        /* Epil. */ TRUE
    },
    /* RIQ Data Check */ {
        /* Scene */ &scene_data_check,
        /* Label */ "Ｒ−ＩＱ　Ｄａｔａ　Ｃｈｅｃｋ",
        /* Epil. */ FALSE
    },
    /* Opening (B Type) */ {
        /* Scene */ &scene_drum_samurai_opening_cutscene,
        /* Label */ "Ｏｐｅｎｉｎｇ　（Ｔｙｐｅ　Ｂ）",
        /* Epil. */ FALSE
    },
    /* Opening (A Type) */ {
        /* Scene */ &scene_drum_samurai_demo_cutscene,
        /* Label */ "Ｏｐｅｎｉｎｇ　（Ｔｙｐｅ　Ａ）",
        /* Epil. */ FALSE
    },
    /* Drum Inrto (Unused 1) */ {
        /* Scene */ &scene_drum_intro_unused,
        /* Label */ "Ｄｒｕｍ　Ｉｎｔｒｏ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 2) */ {
        /* Scene */ &scene_drum_intro_unused_2,
        /* Label */ "Ｄｒｕｍ　Ｉｎｔｒｏ　（Ｕｎｕｓｅｄ　２）",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 3) */ {
        /* Scene */ &scene_drum_intro_unused_3,
        /* Label */ "Ｄｒｕｍ　Ｉｎｔｒｏ　（Ｕｎｕｓｅｄ　３）",
        /* Epil. */ TRUE
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "Ｔｒａｍ　＆　Ｐａｕｌｉｎｅ",
        /* Epil. */ TRUE
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "Ｔｏｓｓ　Ｔｅａｍ",
        /* Epil. */ TRUE
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "Ｔｏｓｓ　Ｔｅａｍ　２",
        /* Epil. */ TRUE
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &scene_drum_girls_live_unused,
        /* Label */ "Ｄｒｕｍ　Ｇｉｒｌｓ",
        /* Epil. */ TRUE
    },
    /* Power Calligraphy */ {
        /* Scene */ &scene_power_calligraphy,
        /* Label */ "Ｐｏｗｅｒ　Ｃａｌｌｉｇｒａｐｈｙ",
        /* Epil. */ TRUE
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "Ｒａｔ　Ｒａｃｅ",
        /* Epil. */ TRUE
    },
    /* Flash Memory Test */ {
        /* Scene */ &scene_flash_mem_test,
        /* Label */ "Ｆｌａｓｈ　Ｍｅｍｏｒｙ　Ｔｅｓｔ",
        /* Epil. */ FALSE
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "Ｆｉｒｅｗｏｒｋｓ",
        /* Epil. */ TRUE
    },
    /* Metronome */ {
        /* Scene */ &scene_metronome,
        /* Label */ "Ｍｅｔｒｏｎｏｍｅ",
        /* Epil. */ TRUE
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "Ｂｕｎｎｙ　Ｈｏｐ",
        /* Epil. */ TRUE
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &scene_remix_1_unused,
        /* Label */ "Ｄａｎｃｅ　Ｌｅｓｓｏｎ　１",
        /* Epil. */ TRUE
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "Ｗｉｚａｒｄ’ｓ　Ｗａｌｔｚ",
        /* Epil. */ TRUE
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "Ｍａｒｃｈｉｎｇ　Ｏｒｄｅｒｓ",
        /* Epil. */ TRUE
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "Ｍａｒｃｈｉｎｇ　Ｏｒｄｅｒｓ　２",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Tempo Up) */ {
        /* Scene */ &scene_marching_orders_extra,
        /* Label */ "Ｍａｒｃｈｉｎｇ　Ｏｒｄｅｒｓ　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "Ｈｏｒｓｅ　Ｍａｃｈｉｎｅ",
        /* Epil. */ FALSE
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "Ｔａｐ　Ｔｒｉａｌ",
        /* Epil. */ TRUE
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "Ｔａｐ　Ｔｒｉａｌ　２",
        /* Epil. */ TRUE
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "Ｓａｍｕｒａｉ　Ｓｌｉｃｅ",
        /* Epil. */ TRUE
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "Ｓｐａｃｅｂａｌｌ",
        /* Epil. */ TRUE
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "Ｓｐａｃｅｂａｌｌ　２",
        /* Epil. */ TRUE
    },
    /* Spaceball (Tempo Up) */ {
        /* Scene */ &scene_spaceball_extra,
        /* Label */ "Ｓｐａｃｅｂａｌｌ　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "Ｓｎｅａｋｙ　Ｓｐｉｒｉｔｓ",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "Ｓｎｅａｋｙ　Ｓｐｉｒｉｔｓ　２",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "Ｎｉｎｊａ　Ｂｏｄｙｇｕａｒｄ",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "Ｎｉｎｊａ　Ｄｅｓｃｅｎｄａｎｔ",
        /* Epil. */ TRUE
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "Ｂｏｕｎｃｙ　Ｒｏａｄ",
        /* Epil. */ TRUE
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "Ｂｏｕｎｃｙ　Ｒｏａｄ　２",
        /* Epil. */ TRUE
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "Ｓｉｃｋ　Ｂｅａｔｓ",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "Ｒｈｙｔｈｍ　Ｔｗｅｅｚｅｒｓ",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "Ｒｈｙｔｈｍ　Ｔｗｅｅｚｅｒｓ　２",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers (Tempo Up) */ {
        /* Scene */ &scene_rhythm_tweezers_extra,
        /* Label */ "Ｒｈｙｔｈｍ　Ｔｗｅｅｚｅｒｓ　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    },
    /* Night Walk */ {
        /* Scene */ &scene_night_walk,
        /* Label */ "Ｎｉｇｈｔ　Ｗａｌｋ",
        /* Epil. */ TRUE
    },
    /* Night Walk 2 */ {
        /* Scene */ &scene_night_walk_2,
        /* Label */ "Ｎｉｇｈｔ　Ｗａｌｋ　２",
        /* Epil. */ TRUE
    },
    /* Polyrhythm */ {
        /* Scene */ &scene_polyrhythm,
        /* Label */ "Ｐｏｌｙｒｈｙｔｈｍ",
        /* Epil. */ TRUE
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &scene_polyrhythm_2,
        /* Label */ "Ｐｏｌｙｒｈｙｔｈｍ　２",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "Ｔｈｅ　Ｃｌａｐｐｙ　Ｔｒｉｏ",
        /* Epil. */ TRUE
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "Ｔｈｅ　Ｓｎａｐｐｙ　Ｔｒｉｏ",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio (Tempo Up) */ {
        /* Scene */ &scene_clappy_trio_extra,
        /* Label */ "Ｔｈｅ　Ｃｌａｐｐｙ　Ｔｒｉｏ　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    }, 
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "Ｋａｒａｔｅ　Ｍａｎ",
        /* Epil. */ TRUE
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "Ｋａｒａｔｅ　Ｍａｎ　２",
        /* Epil. */ TRUE
    },
    /* Karate Man (Tempo Up) */ {
        /* Scene */ &scene_karate_man_extra,
        /* Label */ "Ｋａｒａｔｅ　Ｍａｎ　（Ｔｅｍｐｏ　Ｕｐ）",
        /* Epil. */ TRUE
    },
    /* Tanuki and Monkey */ {
        /* Scene */ &scene_tanuki_and_monkey,
        /* Label */ "Ｔａｎｕｋｉ　＆　Ｍｏｎｋｅｙ",
        /* Epil. */ TRUE
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_title,
        /* Label */ "Ｒ−ＩＱ　（Ｔｉｔｌｅ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Main Menu) */ {
        /* Scene */ &scene_main_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｍｅｎｕ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Game Select) */ {
        /* Scene */ &scene_game_select,
        /* Label */ "Ｒ−ＩＱ　（Ｇａｍｅ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Data Room) */ {
        /* Scene */ &scene_data_room,
        /* Label */ "Ｒ−ＩＱ　（Ｌｅｔｔｅｒ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Studio) */ {
        /* Scene */ &scene_studio,
        /* Label */ "Ｒ−ＩＱ　（Ｓｔｕｄｉｏ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Options) */ {
        /* Scene */ &scene_options_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｏｐｔｉｏｎ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 1) */ {
        /* Scene */ &scene_results_ver_debug,
        /* Label */ "Ｒ−ＩＱ　（Ｒｅｓｕｌｔ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 2) */ {
        /* Scene */ &scene_results_ver_rank,
        /* Label */ "Ｒ−ＩＱ　（Ｒｅｓｕｌｔ　２）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 3) */ {
        /* Scene */ &scene_results_ver_score,
        /* Label */ "Ｒ−ＩＱ　（Ｒｅｓｕｌｔ　３）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Result 4) */ {
        /* Scene */ &scene_epilogue,
        /* Label */ "Ｒ−ＩＱ　（Ｒｅｓｕｌｔ　４）",
        /* Epil. */ TRUE
    },
    /* R-IQ (Debug Menu) */ {
        /* Scene */ &scene_debug_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｄｅｂｕｇ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Library) */ {
        /* Scene */ &scene_arrival,
        /* Label */ "Ｒ−ＩＱ　（Ｅｍａｉｌ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Perfect) */ {
        /* Scene */ &scene_perfect,
        /* Label */ "Ｒ−ＩＱ　（Ｐｅｒｆｅｃｔ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "Ｒ−ＩＱ　（Ｃａｆｅ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Endless Games) */ {
        /* Scene */ &scene_endless_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｍｉｎｉｇａｍｅ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Drum Lessons) */ {
        /* Scene */ &scene_lessons_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｄｒｕｍ　Ｌｅｓｓｏｎｓ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Rhythm Toys) */ {
        /* Scene */ &scene_toys_menu,
        /* Label */ "Ｒ−ＩＱ　（Ｔｏｙｓ）",
        /* Epil. */ FALSE
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "Ｒ−ＩＱ　（Ｃａｆｅ）",
        /* Epil. */ FALSE
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &scene_staff_credit_remix_6,
        /* Label */ "Ｅｎｄｉｎｇ　（Ｇａｍｅ　Ｃｌｅａｒｅｄ）",
        /* Epil. */ FALSE
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "Ｅｎｄｉｎｇ　（Ｅｘｔｒａ　Ｖｉｅｗｉｎｇｓ）",
        /* Epil. */ FALSE
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "Ｓａｖｅ　Ｄａｔａ　Ｃｌｅａｒ",
        /* Epil. */ FALSE
    },
    /* Warning */ {
        /* Scene */ &scene_warning,
        /* Label */ "Ｗａｒｎｉｎｇ",
        /* Epil. */ FALSE
    },
    /* Disclaimer */ {
        /* Scene */ &scene_disclaimer,
        /* Label */ "Ｄｉｓｃｌａｉｍｅｒ",
        /* Epil. */ FALSE
    },
    /* Snappy Trio (Unused) */ {
        /* Scene */ &scene_snappy_trio_unused,
        /* Label */ "Ｔｈｅ　Ｓｎａｐｐｙ　Ｔｒｉｏ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Bouncy Road (Unused) */ {
        /* Scene */ &scene_bouncy_road_unused,
        /* Label */ "Ｂｏｕｎｃｙ　Ｒｏａｄ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Bouncy Road (Unused 2) */ {
        /* Scene */ &scene_bouncy_road_unused_2,
        /* Label */ "Ｂｏｕｎｃｙ　Ｒｏａｄ　（Ｕｎｕｓｅｄ　２）",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused) */ {
        /* Scene */ &scene_spaceball_unused,
        /* Label */ "Ｓｐａｃｅｂａｌｌ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused 2) */ {
        /* Scene */ &scene_spaceball_unused_2,
        /* Label */ "Ｓｐａｃｅｂａｌｌ　（Ｕｎｕｓｅｄ　２）",
        /* Epil. */ TRUE
    },
    /* Tap Trial (Unused) */ {
        /* Scene */ &scene_tap_trial_unused,
        /* Label */ "Ｔａｐ　Ｔｒｉａｌ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Unused) */ {
        /* Scene */ &scene_marching_orders_unused,
        /* Label */ "Ｍａｒｃｈｉｎｇ　Ｏｒｄｅｒｓ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    /* Horse Machine (Unused) */ {
        /* Scene */ &scene_mechanical_horse_unused,
        /* Label */ "Ｈｏｒｓｅ　Ｍａｃｈｉｎｅ　（Ｕｎｕｓｅｄ）",
        /* Epil. */ TRUE
    },
    END_OF_DEBUG_ENTRIES
};


// [D_089ddf60] Page Number Digits
const char *debug_menu_counter_digits[] = {
    "０", "１", "２", "３", "４", "５", "６", "７", "８", "９",
    "Ａ", "Ｂ", "Ｃ", "Ｄ", "Ｅ", "Ｆ", "Ｇ", "Ｈ", "Ｉ", "Ｊ",
    "Ｋ", "Ｌ", "Ｍ", "Ｎ", "Ｏ", "Ｐ", "Ｑ", "Ｒ", "Ｓ", "Ｔ",
    "Ｕ", "Ｖ", "Ｗ", "Ｘ", "Ｙ", "Ｚ"
};


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
        string[0] = '\0';
        strcat(string, debug_menu_counter_digits[targetPage + 1]);
        strcat(string, "／");
        strcat(string, debug_menu_counter_digits[totalPages + 1]);
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
