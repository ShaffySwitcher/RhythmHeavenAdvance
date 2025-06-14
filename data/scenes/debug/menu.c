#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/debug_menu.h"
#include "graphics/debug/menu/menu_graphics.h"


  /* DEBUG MENU - SCENE DATA */


// [D_089ddab0] SceneObjects
union SceneObject debug_menu_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};


// [D_089ddab4] Graphics Table
struct GraphicsTable debug_menu_gfx_table[] = {
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[8],
        /* Dest. */ OBJ_PALETTE_BUFFER(0.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[8],
        /* Dest. */ OBJ_PALETTE_BUFFER(1.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[9],
        /* Dest. */ OBJ_PALETTE_BUFFER(2.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[10],
        /* Dest. */ OBJ_PALETTE_BUFFER(3.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[11],
        /* Dest. */ OBJ_PALETTE_BUFFER(4.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[12],
        /* Dest. */ OBJ_PALETTE_BUFFER(5.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[13],
        /* Dest. */ OBJ_PALETTE_BUFFER(6.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(7.5),
        /* Size  */ 0x8
    },
    /* BG Tileset */ {
        /* Src.  */ &debug_menu_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &debug_menu_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
        /* BG Palette */ {
        /* Src.  */ debug_menu_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x20
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089ddb20] Buffered Textures List
struct CompressedData *debug_menu_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
