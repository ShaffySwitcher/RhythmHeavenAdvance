#pragma once

#include "global.h"
#include "scenes.h"

// MACROS
#define gExtraGameSelect ((struct ExtraGameSelectSceneData *)gCurrentSceneData)


// TYPES
struct ExtraGameSelectSceneData {
    /* [0x000] Scene */
    u8 sceneState;
    u32 inputsEnabled;
    u32 loadingSceneGfx:1;
    u32 hideStageTitle:1;
    u32 unused8:30;

    /* [0x00C] Cursor */
    s16 selectionBorderSprite;
    s16 cursorSprite;
    s8 cursorX, cursorY; // { 1..9 }, { 6..11 }

    /* [0x012] Stage Title Pane */
    s16 stageTitleText;
    s16 stageTitlePane;
    s16 stageTitleY;
    u16 unk18;
    u16 stageTitlePersistTime;

    /* [0x01C] BG Color Controls */
    struct ColorChanger {
        u8 state;
        u8 r1, g1, b1;
        u8 r2, g2, b2;
        u16 timer;
        u16 target;
    } colorChangers[2];

    /* [0x034] Level Info Pane */
    s16 infoPaneName;
    struct TextPrinter *infoPaneDesc;
    s16 infoPaneRank;
    u8 infoPaneIsClear;
    u8 infoPaneLevelState;
    u8 infoPaneDelay;
    u8 infoPaneTask;
    struct LevelData *infoPaneLevelData;
    s16 infoPaneLevelID;
    u16 unused4A;
    u16 unused4C;

    /* [0x04E] BG Motion (Grid Pane) */
    u8 gridPaneIsMoving;
    s16 gridPaneX1, gridPaneY1;
    s16 gridPaneX2, gridPaneY2;
    u16 gridPaneMotionTime;
    u16 gridPaneMotionDecay;

    /* [0x05C] BG Motion (Info Pane) */
    u8 infoPaneIsMoving;
    s16 infoPaneX1, infoPaneY1;
    s16 infoPaneX2, infoPaneY2;
    u16 infoPaneMotionTime;
    u16 infoPaneMotionDecay;

    /* [0x06A] Squares */
    s16 squareSprites[50];
    struct Vector2 squareVectors[50];
    struct NewIconSquare {
        u8 active;
        s16 sprite;
        s16 xIn, yIn;
        s16 x1, y1;
        s16 x2, y2;
        s16 progress;
        void (*onFinish)();
        s32 onFinishArg;
        u16 delay;
    } newIconSquares[10];

    /* [0x2D8] Level Events */
    u8 runningLevelEvents;
    u8 levelEventTimer;
    u8 totalLevelEventsQueued;
    u8 levelEventDequeueID;
    u8 levelEventEnqueueID;
    struct QueuedLevelEvent {
        s8 x, y;
        s8 state;
    } levelEventsQueue[16];
    u8 levelEventPending;
    const s8 *levelEventTargets;
    s8 levelEventTargetX;
    s8 levelEventTargetY;

    /* [0x32C] Flow Pane */
    struct FlowDisplay {
        s16 title;
        s16 digits[3];
        s16 arrow;
        u8 state;
        u16 timer;
        u16 counter;
        u16 currentScore;
        u16 previousScore;
    } flowDisplay;

    /* [0x340] Campaign Notice */
    struct CampaignNotice {
        u8 hasNewCampaign;
        s8 id;
        s16 x, y;
        s16 borderSprite;
        u16 textAdvDelay;
        u16 noticeDelay;
        struct TextPrinter *printer;
        s16 textAdvSprite;
        char text[0x100];
        u8 unused452;
        u8 totalAvailable;
        u8 indexes[48];
    } campaignNotice;
    u8 unused484[100];

    /* [0x4E8] Medal Pane */
    s16 medalPaneTitle;
    s16 medalPaneDigit1;
    s16 medalPaneDigit2;
    u16 medalPaneFlickerTimer;

#if REV < 1
    /* [0x4F0] Unused Forced Level Unlock */
    u8 unused4F0;
    s8 manualUnlockX;
    s8 manualUnlockY;
    u8 manualUnlockEnabled;
#endif

    /* [0x4F4] Barista Level Unlock */
    u8 baristaLevelEventPending;
    s8 baristaLevelEventX;
    s8 baristaLevelEventY;
    u16 baristaLevelEventTimer;

    /* [0x4F8] Perfect Rank Icon */
    s16 perfectClearedSprite;
    s16 noPracticeSprite;
};

// DATA

extern struct GraphicsTable extra_game_select_gfx_table[];
extern struct CompressedData *extra_game_select_buffered_textures[];

// FUNCTIONS
extern void play_extra_game_select_bgm(void);

extern void extra_game_select_scene_init_memory(void);
extern void extra_game_select_scene_init_gfx4(void);
extern void extra_game_select_scene_init_gfx3(void);
extern void extra_game_select_scene_init_gfx2(void);
extern void extra_game_select_scene_init_gfx1(void);
extern void extra_game_select_scene_start(void *sVar, s32 dArg);
extern void extra_game_select_scene_paused(void *sVar, s32 dArg);

extern void extra_game_select_scene_update(void *sVar, s32 dArg);
extern void extra_game_select_scene_stop(void *sVar, s32 dArg);