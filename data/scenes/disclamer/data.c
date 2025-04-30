#include "global.h"
#include "graphics.h"
#include "src/scenes/disclamer.h"
#include "graphics/disclamer/disclamer_graphics.h"


  /* DISCLAMER SCREEN - SCENE DATA */


// [D_089dda68] Graphics Table
struct GraphicsTable disclamer_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &disclamer_tile_bin,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ 12992
    },
    /* BG Map */ {
        /* Src.  */ &disclamer_tile_map_bin,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ 3172
    },
    /* OBJ Tileset */ {
        /* Src.  */ &disclamer_tile_bin,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ 12992
    },
    /* BG Palette */ {
        /* Src.  */ disclamer_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ disclamer_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};
