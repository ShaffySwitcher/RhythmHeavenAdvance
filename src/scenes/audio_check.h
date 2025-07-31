#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"
#include "src/audio.h"


// MACROS
#define gAudioCheck ((struct AudioCheckSceneData *)gCurrentSceneData)


// TYPES (TO-DO: i think ARM is stricly aligned, so i need to see if i need to reorganize this struct)
struct AudioCheckSceneData {
    struct TextPrinter* headerPrinter;
    struct TextPrinter* currentPrinter;
    u32 inputsEnabled;
    s16 padding;
    s16 currentBank;
    s16 currentInstrument;
    s16 currentNote;
    s8 hasInitializedAudio;
    s8 maxBanks;
    char headerString[0x64];
    char currentString[0x64];
};


// DATA
extern union SceneObject audio_check_scene_objects[];
extern struct GraphicsTable audio_check_gfx_table[];
extern struct CompressedData *audio_check_buffered_textures[];
extern struct Scene scene_debug_menu;


// FUNCTIONS
extern void audio_check_scene_init_memory(void);
extern void audio_check_scene_init_gfx3(void);
extern void audio_check_scene_init_gfx2(void);
extern void audio_check_scene_init_gfx1(void);
extern void audio_check_scene_start(void *sVar, s32 dArg);
extern void audio_check_scene_paused(void *sVar, s32 dArg);
extern void audio_check_scene_update(void *sVar, s32 dArg);
extern u32  audio_check_scene_inputs_enabled(void);
extern void audio_check_print_note();
extern void audio_check_scene_stop(void *sVar, s32 dArg);