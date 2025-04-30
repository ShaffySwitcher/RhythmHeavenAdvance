#pragma once

#include "global.h"
#include "scenes.h"

// so you know, i could totally just use the same header as warning.h, but i won't

// MACROS
#define gDisclamer ((struct DisclamerSceneData *)gCurrentSceneData)


// TYPES
struct DisclamerSceneData {
    u32 inputsEnabled;
    u32 timer;
};


// DATA
extern struct GraphicsTable disclamer_gfx_table[];

// FUNCTIONS
extern void disclamer_scene_render_anim(void);
extern void disclamer_scene_wait_if_not_seen(void);
extern void disclamer_scene_init_gfx3(void);
extern void disclamer_scene_init_gfx2(void);
extern void disclamer_scene_init_gfx1(void);
extern void disclamer_scene_start(void *sVar, s32 dArg);
extern void disclamer_scene_update(void *sVar, s32 dArg);
