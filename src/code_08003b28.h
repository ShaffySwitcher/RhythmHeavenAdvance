#pragma once

#include "global.h"
#include "graphics.h"


struct DynamicBgMap {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
};

// extern ? func_08003b28(?); // Create ?
// extern ? func_08003b34(?); // Update ?
// extern ? func_08003bd4(?);
// extern ? func_08003c18(?);
// extern ? func_08003c1c(?);
// extern ? func_08003de0(?);
// extern ? func_08003dec(?);
// extern ? func_08003e00(?);
extern void func_08003e64(void); // Load RLE Decompression Function to RAM
// extern ? func_08003ea4(?);
// extern ? func_08003eb8(?);
