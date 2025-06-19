#include "global.h"
#include "graphics.h"
#include "text.h"
#include "levels.h"
#include "src/bitmap_font.h"
#include "src/scenes/extra_game_select.h"
#include "graphics/game_select/game_select_graphics.h"
#include "graphics/extra_game_select/extra_game_select_graphics.h"


/* EXTRA GAME SELECT - SCENE DATA */


union SceneObject extra_game_select_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};


struct GraphicsTable extra_game_select_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &game_select_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &extra_game_select_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x7800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &extra_game_select_bg_map,
        /* Dest. */ BG_MAP_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &game_select_bg_map_description_unused_riq,
        /* Dest. */ BG_MAP_BASE(0xB000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &game_select_bg_map_perfect_notice,
        /* Dest. */ BG_MAP_BASE(0xB800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &game_select_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_icon_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x100
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_overlay_pal,
        /* Dest. */ BG_PALETTE_BUFFER(8),
        /* Size  */ 0x100
    },
    /* OBJ Palette */ {
        /* Src.  */ game_select_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089cf9a8] Buffered Textures List
struct CompressedData *extra_game_select_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089cf9ac] Stage Title Text Animations (by Grid X Pos.)
struct Animation *extra_game_select_stage_title_anim[] = {
    /* 00 */ anim_game_select_stage0,
    /* 01 */ anim_game_select_stage0,
    /* 02 */ anim_game_select_stage1,
    /* 03 */ anim_game_select_stage2,
    /* 04 */ anim_game_select_stage3,
    /* 05 */ anim_game_select_stage4,
    /* 06 */ anim_game_select_stage5,
    /* 07 */ anim_game_select_stage6,
    /* 08 */ anim_game_select_stage7,
    /* 09 */ anim_game_select_stage8,
    /* 10 */ anim_game_select_stage0,
    /* 11 */ anim_game_select_stage0,
    /* 12 */ anim_game_select_stage0,
    /* 13 */ anim_game_select_stage0,
    /* 14 */ anim_game_select_stage0
};


const char *extra_game_select_rank_text[] = {
    /* HIDDEN    */ "",
    /* INVALID   */ "",
    /* CLOSED    */ "",
    /* UNCLEARED */ "",
    /* CLEARED   */ "\0020" "\0010" "\0051" "\0015" "Rank:                  " "\x87\x52" "\0022" "\0012" "\0053" "\0017" "OK",
    /* HAS_MEDAL */ "\0020" "\0010" "\0051" "\0015" "Rank:         " "\x87\x53" "\0022" "\0012" "\0053" "\0017" "Superb",
    /* PERFECT   */ "\0020" "\0010" "\0051" "\0015" "Rank:         " "\x87\x53" "\0022" "\0012" "\0053" "\0017" "Perfect"
};


u8 extra_game_select_rank_palette[] = {
    /* HIDDEN    */ 0,
    /* INVALID   */ 0,
    /* CLOSED    */ 0,
    /* UNCLEARED */ 0,
    /* CLEARED   */ 9,
    /* HAS_MEDAL */ 10,
    /* PERFECT   */ 10
};
