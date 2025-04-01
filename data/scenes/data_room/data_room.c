#include "global.h"
#include "graphics.h"
#include "src/scenes/data_room.h"
#include "graphics/data_room/data_room_graphics.h"


  /* RHYTHM DATA ROOM - SCENE DATA */


// [D_089cdaf4] Graphics Table
struct GraphicsTable data_room_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &archives_bgtile_bin,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ 4704
    },
    /* BG Map */ {
        /* Src.  */ &archives_bgmap_bin,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ 2048
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cc7330,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ data_room_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cdb3c] Buffered Textures List
struct CompressedGraphics *data_room_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
