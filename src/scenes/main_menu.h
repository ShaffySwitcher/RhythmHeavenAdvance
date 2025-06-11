#pragma once

#include "global.h"
#include "scenes.h"


// VALUES
#define TOTAL_MAIN_MENU_BUTTONS 6
#define MAIN_MENU_VISIBLE_BUTTONS 5
#define MAIN_MENU_BUTTON_SPACING 29
#define MAIN_MENU_BASE_Y 0

// MACROS
#define gMainMenu ((struct MainMenuSceneData *)gCurrentSceneData)


// TYPES
struct MainMenuSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
    s16 buttons[TOTAL_MAIN_MENU_BUTTONS];
    s16 bgX;
    s16 bgY;
    u8 enteredFromOptionsMenu;
    u8 exitingToOptionsMenu;
    s8 windowY;
    s8 windowNewY;
    u8 isMoving;
    u8 topVisibleButton;
    u16 windowYMotion;
};


// DATA
extern union SceneObject main_menu_scene_objects[];
extern struct GraphicsTable main_menu_gfx_table[];
extern struct CompressedData *main_menu_buffered_textures[];
extern struct Animation *main_menu_button_on_anim[];
extern struct Animation *main_menu_button_off_anim[];


// FUNCTIONS
extern void main_menu_scene_init_memory(void);
extern void main_menu_scene_init_gfx3(void);
extern void main_menu_scene_init_gfx2(void);
extern void main_menu_scene_init_gfx1(void);
extern void main_menu_scene_start(void *sVar, s32 dArg);
extern void main_menu_scene_paused(void *sVar, s32 dArg);
extern void main_menu_scene_update(void *sVar, s32 dArg);
extern u32  main_menu_scene_inputs_enabled(void);
extern void main_menu_scene_stop(void *sVar, s32 dArg);
