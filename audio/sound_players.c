#include "global.h"
#include "sound.h"
#include "src/lib_08049144.h"


/* SOUND PLAYER DATA */


// VALUES
#define TRACK_COUNT_MUSIC_0 15
#define TRACK_COUNT_MUSIC_1 12
#define TRACK_COUNT_MUSIC_2 12
#define TRACK_COUNT_SFX     5


// STATIC VARIABLES
extern struct SoundPlayer sMusicPlayer0;
extern struct SoundPlayer sMusicPlayer1;
extern struct SoundPlayer sMusicPlayer2;
extern struct SoundPlayer sSfxPlayer0;
extern struct SoundPlayer sSfxPlayer1;
extern struct SoundPlayer sSfxPlayer2;
extern struct SoundPlayer sSfxPlayer3;
extern struct SoundPlayer sSfxPlayer4;
extern struct SoundPlayer sSfxPlayer5;
extern struct SoundPlayer sSfxPlayer6;
extern struct SoundPlayer sSfxPlayer7;
extern struct SoundPlayer sSfxPlayer8;
extern struct SoundPlayer sSfxPlayer9;

// static volatile s32 D_03001888[1568*2];
// static volatile s32 D_030024c8[0x400];
// static struct SampleStream D_030028c8[12];
// static struct SoundChannel D_03002a48[12];

extern struct MidiChannel sMusicPlayer0_midiChannels[TRACK_COUNT_MUSIC_0];
extern struct MidiBus sMusicPlayer0_midiBus;
extern struct MidiTrackStream sMusicPlayer0_midiReaders[TRACK_COUNT_MUSIC_0];
extern struct MidiChannel sMusicPlayer1_midiChannels[TRACK_COUNT_MUSIC_1];
extern struct MidiBus sMusicPlayer1_midiBus;
extern struct MidiTrackStream sMusicPlayer1_midiReaders[TRACK_COUNT_MUSIC_1];
extern struct MidiChannel sMusicPlayer2_midiChannels[TRACK_COUNT_MUSIC_2];
extern struct MidiBus sMusicPlayer2_midiBus;
extern struct MidiTrackStream sMusicPlayer2_midiReaders[TRACK_COUNT_MUSIC_2];
extern struct MidiChannel sSfxPlayer0_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer0_midiBus;
extern struct MidiTrackStream sSfxPlayer0_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer1_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer1_midiBus;
extern struct MidiTrackStream sSfxPlayer1_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer2_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer2_midiBus;
extern struct MidiTrackStream sSfxPlayer2_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer3_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer3_midiBus;
extern struct MidiTrackStream sSfxPlayer3_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer4_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer4_midiBus;
extern struct MidiTrackStream sSfxPlayer4_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer5_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer5_midiBus;
extern struct MidiTrackStream sSfxPlayer5_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer6_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer6_midiBus;
extern struct MidiTrackStream sSfxPlayer6_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer7_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer7_midiBus;
extern struct MidiTrackStream sSfxPlayer7_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer8_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer8_midiBus;
extern struct MidiTrackStream sSfxPlayer8_midiReaders[TRACK_COUNT_SFX];
extern struct MidiChannel sSfxPlayer9_midiChannels[TRACK_COUNT_SFX];
extern struct MidiBus sSfxPlayer9_midiBus;
extern struct MidiTrackStream sSfxPlayer9_midiReaders[TRACK_COUNT_SFX];


// SoundPlayer Count - 1
u32 D_08aa4318 = SOUND_PLAYER_COUNT - 1;


// DirectMIDI Data
u8 D_08aa431c = TRUE;
u8 D_08aa431d = INST_BANK_37;
u8 D_08aa431e = 127;
u8 D_08aa431f = 0;
u8 D_08aa4320 = 150;


// SoundPlayer List
struct SoundPlayer *D_08aa4324[] = {
    &sMusicPlayer0,
    &sMusicPlayer1,
    &sMusicPlayer2,
    &sSfxPlayer0,
    &sSfxPlayer1,
    &sSfxPlayer2,
    &sSfxPlayer3,
    &sSfxPlayer4,
    &sSfxPlayer5,
    &sSfxPlayer6,
    &sSfxPlayer7,
    &sSfxPlayer8,
    &sSfxPlayer9
};


// SoundPlayer Table
struct SoundPlayerInitTable D_08aa4358[] = {
    /* MUSIC PLAYER 0 */ {
        /* Player ID     */ MUSIC_PLAYER_0,
        /* Track Count   */ TRACK_COUNT_MUSIC_0,
        /* Use Priority  */ FALSE,
        /* MIDI Channels */ sMusicPlayer0_midiChannels,
        /* MIDI Bus      */ &sMusicPlayer0_midiBus,
        /* MIDI Streams  */ sMusicPlayer0_midiReaders,
        /* Sound Player  */ &sMusicPlayer0
    },
    /* MUSIC PLAYER 1 */ {
        /* Player ID     */ MUSIC_PLAYER_1,
        /* Track Count   */ TRACK_COUNT_MUSIC_1,
        /* Use Priority  */ FALSE,
        /* MIDI Channels */ sMusicPlayer1_midiChannels,
        /* MIDI Bus      */ &sMusicPlayer1_midiBus,
        /* MIDI Streams  */ sMusicPlayer1_midiReaders,
        /* Sound Player  */ &sMusicPlayer1
    },
    /* MUSIC PLAYER 2 */ {
        /* Player ID     */ MUSIC_PLAYER_2,
        /* Track Count   */ TRACK_COUNT_MUSIC_2,
        /* Use Priority  */ FALSE,
        /* MIDI Channels */ sMusicPlayer2_midiChannels,
        /* MIDI Bus      */ &sMusicPlayer2_midiBus,
        /* MIDI Streams  */ sMusicPlayer2_midiReaders,
        /* Sound Player  */ &sMusicPlayer2
    },
    /* SFX PLAYER 0 */ {
        /* Player ID     */ SFX_PLAYER_0,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer0_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer0_midiBus,
        /* MIDI Streams  */ sSfxPlayer0_midiReaders,
        /* Sound Player  */ &sSfxPlayer0
    },
    /* SFX PLAYER 1 */ {
        /* Player ID     */ SFX_PLAYER_1,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer1_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer1_midiBus,
        /* MIDI Streams  */ sSfxPlayer1_midiReaders,
        /* Sound Player  */ &sSfxPlayer1
    },
    /* SFX PLAYER 2 */ {
        /* Player ID     */ SFX_PLAYER_2,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer2_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer2_midiBus,
        /* MIDI Streams  */ sSfxPlayer2_midiReaders,
        /* Sound Player  */ &sSfxPlayer2
    },
    /* SFX PLAYER 3 */ {
        /* Player ID     */ SFX_PLAYER_3,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer3_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer3_midiBus,
        /* MIDI Streams  */ sSfxPlayer3_midiReaders,
        /* Sound Player  */ &sSfxPlayer3
    },
    /* SFX PLAYER 4 */ {
        /* Player ID     */ SFX_PLAYER_4,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer4_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer4_midiBus,
        /* MIDI Streams  */ sSfxPlayer4_midiReaders,
        /* Sound Player  */ &sSfxPlayer4
    },
    /* SFX PLAYER 5 */ {
        /* Player ID     */ SFX_PLAYER_5,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer5_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer5_midiBus,
        /* MIDI Streams  */ sSfxPlayer5_midiReaders,
        /* Sound Player  */ &sSfxPlayer5
    },
    /* SFX PLAYER 6 */ {
        /* Player ID     */ SFX_PLAYER_6,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer6_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer6_midiBus,
        /* MIDI Streams  */ sSfxPlayer6_midiReaders,
        /* Sound Player  */ &sSfxPlayer6
    },
    /* SFX PLAYER 7 */ {
        /* Player ID     */ SFX_PLAYER_7,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer7_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer7_midiBus,
        /* MIDI Streams  */ sSfxPlayer7_midiReaders,
        /* Sound Player  */ &sSfxPlayer7
    },
    /* SFX PLAYER 8 */ {
        /* Player ID     */ SFX_PLAYER_8,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer8_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer8_midiBus,
        /* MIDI Streams  */ sSfxPlayer8_midiReaders,
        /* Sound Player  */ &sSfxPlayer8
    },
    /* SFX PLAYER 9 */ {
        /* Player ID     */ SFX_PLAYER_9,
        /* Track Count   */ TRACK_COUNT_SFX,
        /* Use Priority  */ TRUE,
        /* MIDI Channels */ sSfxPlayer9_midiChannels,
        /* MIDI Bus      */ &sSfxPlayer9_midiBus,
        /* MIDI Streams  */ sSfxPlayer9_midiReaders,
        /* Sound Player  */ &sSfxPlayer9
    }
};


// SoundPlayer Count
u8 D_08aa445c = SOUND_PLAYER_COUNT;


// Simplified SoundPlayer List
struct SoundPlayerTable D_08aa4460[] = {
    /* MUSIC PLAYER 0 */ {
        /* Sound Player */ &sMusicPlayer0,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_MUSIC_0,
        /* Use Priority */ FALSE
    },
    /* MUSIC PLAYER 1 */ {
        /* Sound Player */ &sMusicPlayer1,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_MUSIC_1,
        /* Use Priority */ FALSE
    },
    /* MUSIC PLAYER 2 */ {
        /* Sound Player */ &sMusicPlayer2,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_MUSIC_2,
        /* Use Priority */ FALSE
    },
    /* SFX PLAYER 0 */ {
        /* Sound Player */ &sSfxPlayer0,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 1 */ {
        /* Sound Player */ &sSfxPlayer1,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 2 */ {
        /* Sound Player */ &sSfxPlayer2,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 3 */ {
        /* Sound Player */ &sSfxPlayer3,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 4 */ {
        /* Sound Player */ &sSfxPlayer4,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 5 */ {
        /* Sound Player */ &sSfxPlayer5,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 6 */ {
        /* Sound Player */ &sSfxPlayer6,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 7 */ {
        /* Sound Player */ &sSfxPlayer7,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 8 */ {
        /* Sound Player */ &sSfxPlayer8,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    },
    /* SFX PLAYER 9 */ {
        /* Sound Player */ &sSfxPlayer9,
        /* NULL         */ 0,
        /* Track Count  */ TRACK_COUNT_SFX,
        /* Use Priority */ TRUE
    }
};
