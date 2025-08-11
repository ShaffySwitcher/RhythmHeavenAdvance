struct MedalCornerLevel extra_menu_levels[] = {
    /* UNUSED_TANUKI_AND_MONKEY */ {
        /* Scene  */ &scene_tanuki_and_monkey,
        /* Title  */ "Tanuki & Monkey",
        /* Anim   */ NULL,
        /* Medals */ 0
    },
    /* UNUSED_DANCE_LESSON_1 */ {
        /* Scene  */ &scene_remix_1_unused,
        /* Title  */ "Dance Lesson 1",
        /* Anim   */ NULL,
        /* Medals */ 0
    },
    /* UNUSED_RAPWOMEN_BY_KAZU */ {
        /* Scene  */ &scene_rap_women_unused,
        /* Title  */ "RAPWOMEN (by KAZU)",
        /* Anim   */ NULL,
        /* Medals */ 0
    },
};

struct GraphicsTable extra_menu_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &extra_games_menu_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &extra_games_menu_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &medal_corner_obj,
        /* Dest. */ OBJ_TILESET_BASE(0x4000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ extra_menu_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ extra_menu_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089dd5dc] Endless Games Menu
struct MedalCornerMenu extra_games_menu_data = {
    /* Level Count */ TOTAL_EXTRA_GAMES,
    /* Music       */ &s_extra_game_select_bgm_seqData,
    /* Graphics    */ extra_menu_gfx_table,
    /* Level Data  */ extra_menu_levels
};
