#pragma once

#include "global.h"
#include "sound.h"

// VALUES
enum PsgToneDutyEnum {
    PSG_TONE_DUTY_12_5,
    PSG_TONE_DUTY_25,
    PSG_TONE_DUTY_50,
    PSG_TONE_DUTY_75
};

enum PsgNoiseDutyEnum {
    PSG_NOISE_COUNTER_15,
    PSG_NOISE_COUNTER_7
};

enum ModulationTypeEnum {
    MOD_TYPE_VIBRATO,
    MOD_TYPE_TREMOLO,
    MOD_TYPE_PANNING
};

enum AdsrStageEnum {
    ADSR_STAGE_ATTACK,
    ADSR_STAGE_DECAY,
    ADSR_STAGE_SUSTAIN,
    ADSR_STAGE_RELEASE,
    ADSR_STAGE_FORCE_STOP
};

enum LfoStageEnum {
    LFO_STAGE_DISABLED,
    LFO_STAGE_PRE_DELAY,
    LFO_STAGE_ATTACK,
    LFO_STAGE_SUSTAIN
};

enum VolumeFadeTypeEnum {
    VOL_FADE_RESET,
    VOL_FADE_IN,
    VOL_FADE_OUT_CLEAR,
    VOL_FADE_OUT_PAUSE
};

enum MidiSystemExclusiveMessageEnum {
    SYS_EXC_EVENT_LFO,
    SYS_EXC_EVENT_R_SCALE
};

enum MidiMetaEventTypeEnum {
    META_EVENT_OTHER,
    META_EVENT_TRACK_END,
    META_EVENT_LOOP_START,
    META_EVENT_LOOP_END
};

enum MidiTrackStreamEndEnum {
    M_TRACK_STREAM_CONTINUE,
    M_TRACK_STREAM_STOP,
    M_TRACK_STREAM_LOOP
};

#define MSG_NOTE_OFF                    0x80
#define MSG_NOTE_ON                     0x90
#define MSG_POLYPHONIC_KEY_PRESSURE     0xA0
#define MSG_CONTROLLER_CHANGE           0xB0
#define MSG_PROGRAM_CHANGE              0xC0
#define MSG_CHANNEL_PRESSURE            0xD0
#define MSG_PITCH_WHEEL_CHANGE          0xE0

#define META_TEXT_MARKER    0x06
#define META_END_OF_TRACK   0x2F
#define META_SET_TEMPO      0x51

#define M_CONTROLLER_BANK_SELECT_MSB    0x00
#define M_CONTROLLER_MOD_DEPTH          0x01
#define M_CONTROLLER_VOLUME             0x07
#define M_CONTROLLER_PANNING            0x0A
#define M_CONTROLLER_EXPRESSION         0x0B
#define M_CONTROLLER_UNK_0E             0x0E
#define M_CONTROLLER_UNK_10             0x10
#define M_CONTROLLER_MOD_RANGE          0x14
#define M_CONTROLLER_MOD_SPEED          0x15
#define M_CONTROLLER_MOD_TYPE           0x16
#define M_CONTROLLER_MOD_DELAY          0x1A
#define M_CONTROLLER_BANK_SELECT_LSB    0x20
#define M_CONTROLLER_PRIORITY           0x21
#define M_CONTROLLER_DAMPEN             0x48
#define M_CONTROLLER_LFO                0x49
#define M_CONTROLLER_EQ                 0x4A
#define M_CONTROLLER_STEREO             0x4B
#define M_CONTROLLER_LFO_GAIN           0x4C
#define M_CONTROLLER_EQ_GAIN            0x4D
#define M_CONTROLLER_RVB1               0x4E
#define M_CONTROLLER_RVB2               0x4F
#define M_CONTROLLER_RVB3               0x50
#define M_CONTROLLER_RVB4               0x51
#define M_CONTROLLER_RANDOM_PITCH       0x52
#define M_CONTROLLER_RANDOM_53          0x53
#define M_CONTROLLER_RANDOM_54          0x54

#define AUDIO_SAMPLE_RATE 13379
#define DIRECTSOUND_CHANNEL_COUNT 12
#define SOUND_PLAYER_COUNT 13
#define DMA_SAMPLE_BUFFER_SIZE 1568
#define SAMPLE_SCRATCHPAD_SIZE 0x80


// TYPES
struct MidiNote {
    u32 channel:4;
    u32 key:7;
    u32 velocity:7;
};

typedef volatile u16 *IOReg;


// STATIC VARIABLES
extern u16 D_03001570;          // [D_03001570] MIDI4AGB - Pseudo-RNG Variable

extern u8  D_03001578[4];       // [D_03001578] PSG CHANNEL - ?? (checked by TONE 1 and WAVE)
extern u16 D_03001580[4];       // [D_03001580] PSG CHANNEL - Initial Volume of Envelope
extern u16 D_03001588[4];       // [D_03001588] PSG CHANNEL - Frequency
extern u8 *D_03001590;          // [D_03001590] PSG CHANNEL - Wave Pattern

extern struct SoundPlayer *D_03001598; // [D_03001598] TEST PLAYER - Sound Player
extern struct MidiBus *D_0300159c;     // [D_0300159c] TEST PLAYER - MIDI Bus
extern u8 *D_030015a0;          // [D_030015a0] TEST PLAYER - Sequence Array (max. size = 0x200)
extern u16 D_030015a4;          // [D_030015a4] TEST PLAYER - Sequence Length
extern u8  D_030015a6;          // [D_030015a6] TEST PLAYER - Sequence Current Command
extern u8  D_030015a7[4];       // [D_030015a7] UNDEFINED - Initial value at D_03005b7c

extern volatile s32 D_03001888[1568*2]; // [D_03001888] DIRECTSOUND - DMA Source Addresses { &D_03001888[0] = Right; &D_03001888[D_03005b24] = Left }
extern volatile s32 D_030024c8[0x400];  // [D_030024c8] DIRECTSOUND - Sample Processing ScratchPad
extern struct SampleStream D_030028c8[12];  // [D_030028c8] DIRECTSOUND - DMA Sample Readers (12 Channels)
extern struct SoundChannel D_03002a48[12];     // [D_03002a48] DIRECTSOUND - DirectSound Channels (12 Channels)

extern u16 D_030055f0;              // [D_030055f0] MIDI4AGB - Set to REG_VCOUNT near the start of each update.
extern u32 D_030055f4;              // [D_030055f4] DIRECTSOUND - Initial Sound Mode { 0 = Stereo; 1 = Mono (One Channel); 2 = Mono (Two Channels) }
extern s32 D_03005600[4];           // [D_03005600] REVERB - Previous Processed Samples (R+L, x2)
extern u16 D_03005610;              // [D_03005610] DIRECTSOUND - Number of DMA Sample Readers ( = 12)
extern s32 D_03005620[3];           // [D_03005620] FILTER EQ - [0] = Filter Setting; [1], [2] = Previous Samples (R+L)
extern u32 D_0300562c;              // [D_0300562c] ??? - Current Speed (NOT Tempo)
extern u32 D_03005630;              // [D_03005630] REVERB - Controller #2 (init. = 0)
extern u32 D_03005634;              // [D_03005634] REVERB - Controller #4 (init. = 4)
extern u32 D_03005638;              // [D_03005638] DIRECTSOUND - Sample Processing ScratchPad Size, in L+R pairs ( = 0x80)
extern volatile u32 *D_0300563c;    // [D_0300563c] DIRECTSOUND - REG_DMA1SAD (Right Audio Source) ( = &D_03001888)
extern u8  D_03005640;              // [D_03005640] LFO - Multiplier [mCtrl4C]
extern struct SoundPlayer *D_03005644;     // [D_03005644] LFO - Controller Sound Player (for Tempo)
extern u16 D_03005648;              // [D_03005648] UNDEFINED - Current byte in D_03005b7c to set [mCtrl0E]

extern struct MidiNote D_03005650[20];     // [D_03005650] MIDI - Note Buffer
extern struct SoundChannel D_030056a0[4];  // [D_030056a0] PSG CHANNEL - PSG Channels { 0 = Tone+Sweep; 1 = Tone; 2 = Wave; 3 = Noise }
extern s8  D_03005720[0x400];       // [D_03005720] DIRECTSOUND - DMA Buffer Sample = D_03005720[(ScratchPad Sample >> 7) & 0x3ff]
extern u16 D_03005b20;              // [D_03005b20] UNDEFINED - Total Bytes in array at D_03005b7c
extern volatile u32 D_03005b24;     // [D_03005b24] DIRECTSOUND - Number of 32-bit samples per DMA Source Address ( = 0x620 / 4 ( = 392))
extern u8  D_03005b28;              // [D_03005b28] FILTER EQ - High Gain [mCtrl4C]

// [D_03005b30] LFO - Low-Frequency Oscillator
// [D_03005b3c] LFO - Mode { 0 = Disabled; 1 = Note Triggered; 2 = Constant }
extern volatile u32 D_03005b40;     // [D_03005b40] DIRECTSOUND - ??
extern u8  D_03005b44;              // [D_03005b44] FILTER EQ - Enable Global Filter
extern u32 D_03005b48;              // [D_03005b48] REVERB - gRVBCNT3 (init. = 2)

extern u16 D_03005b78;              // [D_03005b78] MIDI - Next Available MIDI Note
extern u8 *D_03005b7c;              // [D_03005b7c] UNDEFINED - (Byte at offset D_03005648 set by MIDI Controller 10)
extern u16 D_03005b80;              // [D_03005b80] MIDI4AGB - Set to REG_VCOUNT near the end of each update.
extern u16 D_03005b84;              // [D_03005b84] DIRECTSOUND - ??
extern struct SampleStream *D_03005b88;    // [D_03005b88] DIRECTSOUND - SampleStream (12 Channels, at D_030028c8)
extern u16 D_03005b8c;              // [D_03005b8c] DIRECTSOUND - Number of DirectSound Channels ( = 12)
extern s8  D_03005b90[4];           // [D_03005b90] REVERB - Reverb Controller Update Scratch
extern u32 D_03005b94;              // [D_03005b94] MIDI4AGB - Global Sample Rate ( = 13379Hz)

extern volatile u32 D_030064a0;     // [D_030064a0] DIRECTSOUND - Offset from *D_0300563c and *D_030064b8 to operate on.
extern u32 D_030064a4;              // [D_030064a4] REVERB - gRVBCNT1 (init. = 0)
extern u32 D_030064a8;              // [D_030064a8] MIDI4AGB - 13379Hz / 60 (samples per frame, at 60fps)
extern u16 D_030064ac;              // [D_030064ac] DIRECTSOUND - ??
extern s32 *D_030064b0;             // [D_030064b0] DIRECTSOUND - Sample Processing ScratchPad ( = &D_030024c8)
extern u32 D_030064b4;              // [D_030064b4] MIDI4AGB - 16776921 / 13379Hz
extern volatile u32 *D_030064b8;    // [D_030064b8] DIRECTSOUND - REG_DMA2SAD (Left Audio Source) ( = &D_03001888[D_03005b24] ( = &D_03001ea8))
extern struct SoundChannel *D_030064bc;    // [D_030064bc] DIRECTSOUND - DirectSound Channels (12 Channels, at D_03002a48)
extern s8  D_030064c0;              // [D_030064c0] FILTER EQ - Duplicate of D_03005620[0] used for just one (1) singular calculation.
extern u16 D_030064c4;              // [D_030064c4] DIRECTSOUND - Enable DirectSound


// DATA
extern u16 midi_tuning_table[128];   // MIDI Note to Frequency Table (A4 = 440Hz)
extern u32 midi_step_freq_table[14];    // Semitones to Frequency Table ((2^(p/12) - 1) << 10)
extern s16 midi_sine_table[0x100]; // Sine Table (init = 0; size = 0x100; max = 0x100; min = -0x100)
extern s16 midi_cosine_table[0x100]; // Cosine Table (init = 0; size = 0x100; max = 0x100; min = -0x100)
extern u16 midi_psg_wave_vol_table[];
extern IOReg midi_psg_env_regs[];
extern IOReg midi_psg_freq_regs[];
extern u8 midi_psg_noise_freq_table[];
extern char midi_loop_start_sym[];
extern char midi_loop_end_sym[];

extern InstrumentBank *instrument_banks[];
extern u32 D_08aa4318;
extern u8 D_08aa431c; // Has Data [TRUE]
extern u8 D_08aa431d; // Sound Bank ID [INST_BANK_37]
extern u8 D_08aa431e; // Volume [127]
extern u8 D_08aa431f; // Priority [0]
extern u8 D_08aa4320; // Tempo [150]



/* INTERRUPT_DMA2 */

extern void func_08049144(void);

/* DIRECTSOUND STREAM OPERATIONS */

extern void func_0804930c(u32, struct SampleData *);
extern void func_08049394(u32);
extern void func_080493b0(u32);
extern void func_080493c8(u32, u32, u32);
extern void func_080493e4(u32, u32);
extern void func_080493f4(u32, u32);
extern void func_08049450(u32, u32);
extern void func_08049470(u32, u32);

/* DIRECTSOUND OPERATIONS */

extern void func_08049490(u32, u32, u32, volatile s32 *, u32, volatile s32 *, u16, struct SampleStream *);
extern void func_080497f8(void);
extern void func_08049ad8(void);
extern void func_08049b34(u32, u32, u32, u32);
extern u32  func_08049b5c(u32);
extern void func_08049b70(u32);
extern void func_08049b8c(u8);
extern void func_08049bac(void);
extern void func_08049be4(void);
extern void func_08049bfc(u32, u32, u32);

/* MIDI BUS UPDATE OPERATIONS */

extern void func_08049c34(struct MidiBus *, u32);
extern void func_08049d08(struct MidiBus *);
extern void func_08049d30(struct MidiBus *, u32);
extern void func_08049db8(struct MidiBus *, u32);
extern void func_08049e3c(struct MidiBus *);
extern void func_08049e64(struct MidiBus *);

/* MIDI BUS INITIALISATION OPERATIONS */

extern void func_08049e8c(struct MidiBus *, u8);
extern void func_08049ec4(struct MidiBus *, u8, u16);
extern void func_08049ecc(struct MidiChannel *);
extern void func_08049fa0(struct MidiBus *, u32, struct MidiChannel *);
extern void func_0804a014(struct MidiBus *, const union Instrument *);

/* SOUND CHANNEL OPERATIONS */

extern u32  func_0804a018(struct SoundChannel *);
extern u32  func_0804a1f4(struct SoundChannel *);
extern u32  func_0804a224(struct SoundChannel *);
extern void func_0804a2c4(u32);
extern void func_0804a334(void);
extern void func_0804a360(u32, struct SoundChannel *);
extern s32  func_0804a3a0(struct MidiChannel *, u8);
extern s32  func_0804a3fc(void);
extern s32  func_0804a434(void);
extern s32  func_0804a48c(void);
// extern ? func_0804a4e0(?);
extern void func_0804a5b4(struct MidiBus *, u32, u8);
extern s32  func_0804a628(struct MidiBus *, u32, u8, u8);
extern u8   func_0804a65c(u8);
extern u8   func_0804a674(u8);
extern u32  func_0804a690(struct MidiBus *, u32);
extern void func_0804a6b0(struct MidiBus *, u32, u8, u8);

/* MIDI CHANNEL OPERATIONS */

extern void func_0804aa40(struct MidiBus *, u32, u16);
extern void func_0804aa5c(struct MidiBus *, u32, u8);
extern void func_0804aa7c(struct MidiBus *, u32, u8);
extern u8   func_0804aaa4(struct MidiBus *, u32);
extern void func_0804aae0(struct MidiBus *, u32);
extern void func_0804ab88(struct MidiBus *, u32, u8);
extern void func_0804aba8(struct MidiBus *, u32, u8);
extern void func_0804abc8(struct MidiBus *, u32, u16);
extern void func_0804ac24(struct MidiBus *, u32, u8);
extern void func_0804ac40(struct MidiBus *, u32, u8);
extern void func_0804ac60(struct MidiBus *, u32, u8);
extern void func_0804ac80(struct MidiBus *, u32, u8);
extern void func_0804aca0(struct MidiBus *, u32, u8);
extern void func_0804acc0(struct MidiBus *, u32, u8);
extern void func_0804accc(struct MidiBus *, u32, u16);
extern void func_0804acd8(struct MidiBus *, u32, u8);
extern void func_0804ace4(struct MidiBus *, u32, u8);
extern void func_0804acf0(struct MidiBus *, u32, u32);
extern void func_0804ad18(struct MidiBus *, u32, u8);
extern void func_0804ad38(struct MidiBus *, u32, u8);
extern void func_0804ad90(struct MidiBus *, u32, u8);
extern void func_0804ad9c(struct MidiBus *, u32, u8);

/* MIDI BUS OPERATIONS */

extern void func_0804adb0(struct MidiBus *, s8);
extern void func_0804adb4(struct MidiBus *, u8);
extern void func_0804adb8(struct MidiBus *, s8);
extern void func_0804ade4(struct MidiBus *, s16);
extern void func_0804ade8(struct MidiBus *, u8);
extern void func_0804ae14(struct MidiBus *, u16);
extern void func_0804ae18(struct MidiBus *, u16 *);

/* LOW-FREQUENCY OSCILLATOR OPERATIONS */

extern void func_0804ae1c(struct LFO *lfo, u8 preDelay, u8 attack, u8 arg3, u8 offset, u8 duration);
extern void func_0804ae54(struct LFO *lfo);
extern void func_0804ae60(struct LFO *lfo);
extern void func_0804ae6c(struct LFO *lfo, u32 delta);
extern u32  func_0804af0c(u16 range);

/* PSG CHANNEL OPERATIONS */

extern void func_0804af30(void);
extern void func_0804af74(u32 id);
extern u32  func_0804afa4(u32 freq);
extern u32  func_0804afd8(u32 vol);
// extern void func_0804aff0(u32 id);
extern void func_0804b2c4(void);

/* SOUND PLAYER OPERATIONS */

extern u16  func_0804b324(const u8 *stream);
extern u32  func_0804b330(const u8 *stream);
extern u32  func_0804b348(const char *loopMarker);
extern void func_0804b368(struct SoundPlayer *soundPlayer, struct SequenceData *sound);
extern void func_0804b534(u16 soundIndex);
extern void func_0804b560(struct SoundPlayer *soundPlayer);
extern void func_0804b574(struct SoundPlayer *soundPlayer, u8 pause);
extern u32  func_0804b5a0(struct SoundPlayer *soundPlayer);
extern void func_0804b5d8(struct SoundPlayer *soundPlayer);
extern void func_0804b5e4(struct SoundPlayer *soundPlayer);
extern void func_0804b5f0(void);
extern void func_0804b620(void);
extern void func_0804b650(struct SoundPlayer *soundPlayer, u16 volume);
extern void func_0804b654(struct SoundPlayer *soundPlayer, u16 trackMask, u16 volume);
extern void func_0804b65c(struct SoundPlayer *soundPlayer, u16 unused, s16 pitch);
extern void func_0804b66c(struct SoundPlayer *soundPlayer, u16 unused, s8 panning);
extern void func_0804b67c(u16 soundIndex);
extern u32  func_0804b6c4(const u8 *stream1, const u8 *stream2, u32 length);
extern u32  func_0804b6f0(u16 tempo, u16 speed, u16 quarterNote);
extern void func_0804b710(struct SoundPlayer *soundPlayer, u16 speed);
extern void func_0804b734(struct SoundPlayer *soundPlayer, u16 type, u16 duration);
extern void func_0804b7dc(struct SoundPlayer *soundPlayer, u16 duration);
extern void func_0804b7ec(struct SoundPlayer *soundPlayer, u16 duration);
extern void func_0804b7fc(struct SoundPlayer *soundPlayer, u16 duration);

/* MIDI SEQUENCE OPERATIONS */

extern void func_0804b80c(struct SoundPlayer *soundPlayer, const u8 *stream);
extern u32  func_0804b898(struct SoundPlayer *soundPlayer, const u8 **upstream);
extern void func_0804b95c(struct SoundPlayer *soundPlayer, u32 track, u8 controller, u8 value);
extern void func_0804bc5c(u32 track, u32 key, u32 velocity);
extern u32  func_0804bcc0(struct SoundPlayer *soundPlayer, u32 track);
extern void func_0804bed0(struct SoundPlayer *soundPlayer, u32 track);

/* MAIN SOUND */

extern void func_0804c040(struct SoundPlayer *soundPlayer);
extern void func_0804c0f8(struct SoundPlayer *soundPlayer);
extern void func_0804c170(void);
extern void func_0804c340(u32 rvb0, u32 rvb1, u32 rvb2, u32 rvb3);
extern void func_0804c358(void);
extern void func_0804c35c(struct SoundPlayer *soundPlayer, struct MidiBus *midiBus, u32 nTracksMax, struct MidiTrackStream *midiReader, u32 priorityEnabled);
extern u32  func_0804c398(const u8 **upstream);

/* DIRECT-MIDI PLAYER */

extern void func_0804c3c0(struct SoundPlayer *, struct MidiTrackStream *, u32, struct MidiBus *, struct MidiChannel *, u8 *);
extern void func_0804c4bc(s8 *, u32);
extern void func_0804c508(void);
extern void func_0804c6c8(void);

/* INIT */

extern void func_0804c778(void);
