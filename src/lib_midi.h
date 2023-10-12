#pragma once

#include "global.h"
#include "sound.h"

// VALUES
enum PsgToneDutyEnum {
    /* 00 */ PSG_TONE_DUTY_12_5,
    /* 01 */ PSG_TONE_DUTY_25,
    /* 02 */ PSG_TONE_DUTY_50,
    /* 03 */ PSG_TONE_DUTY_75
};

enum PsgNoiseDutyEnum {
    /* 00 */ PSG_NOISE_COUNTER_15,
    /* 01 */ PSG_NOISE_COUNTER_7
};

enum ModulationTypeEnum {
    /* 00 */ MOD_TYPE_VIBRATO,
    /* 01 */ MOD_TYPE_TREMOLO,
    /* 02 */ MOD_TYPE_PANNING
};

enum AdsrStageEnum {
    /* 00 */ ADSR_STAGE_ATTACK,
    /* 01 */ ADSR_STAGE_DECAY,
    /* 02 */ ADSR_STAGE_SUSTAIN,
    /* 03 */ ADSR_STAGE_RELEASE,
    /* 04 */ ADSR_STAGE_FORCE_STOP
};

enum LfoStageEnum {
    /* 00 */ LFO_STAGE_DISABLED,
    /* 01 */ LFO_STAGE_PRE_DELAY,
    /* 02 */ LFO_STAGE_ATTACK,
    /* 03 */ LFO_STAGE_SUSTAIN
};

enum VolumeFadeTypeEnum {
    /* 00 */ VOL_FADE_RESET,
    /* 01 */ VOL_FADE_IN,
    /* 02 */ VOL_FADE_OUT_CLEAR,
    /* 03 */ VOL_FADE_OUT_PAUSE
};

enum MidiSystemExclusiveMessageEnum {
    /* 00 */ SYS_EXC_EVENT_LFO,
    /* 01 */ SYS_EXC_EVENT_R_SCALE
};

enum MidiMetaEventTypeEnum {
    /* 00 */ META_EVENT_OTHER,
    /* 01 */ META_EVENT_TRACK_END,
    /* 02 */ META_EVENT_LOOP_START,
    /* 03 */ META_EVENT_LOOP_END
};

enum MidiTrackStreamEndEnum {
    /* 00 */ M_TRACK_STREAM_CONTINUE,
    /* 01 */ M_TRACK_STREAM_STOP,
    /* 02 */ M_TRACK_STREAM_LOOP
};

#define INSTRUMENT_PCM_ALIGNED  'A' // 0x41
#define INSTRUMENT_PCM_FIXED    'F' // 0x46
#define INSTRUMENT_PSG          'P' // 0x50
#define INSTRUMENT_PSG_ALT      'Q' // 0x51
#define INSTRUMENT_SUB_RHYTHM   'R' // 0x52
#define INSTRUMENT_SUB_SPLIT    'S' // 0x53

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
extern volatile s32 D_03001888[1568*2];     // [D_03001888] DIRECTSOUND - DMA Source Addresses { &D_03001888[0] = Right; &D_03001888[D_03005b24] = Left }
extern s32 D_030024c8[0x400];               // [D_030024c8] DIRECTSOUND - Sample Processing ScratchPad
extern struct SampleStream D_030028c8[12];  // [D_030028c8] DIRECTSOUND - DMA Sample Readers (12 Channels)
extern struct SoundChannel D_03002a48[12];  // [D_03002a48] DIRECTSOUND - DirectSound Channels (12 Channels)

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
extern volatile u32 D_03005b24;     // [D_03005b24] DIRECTSOUND - Number of 32-bit samples per DMA Source Address ( = 1568 / 4)
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
extern u16 midi_tuning_table[128];      // MIDI Note to Frequency Table (A4 = 440Hz)
extern u32 midi_step_freq_table[14];    // Semitones to Frequency Table
extern s16 midi_sine_table[0x100];      // Sine Table (Q8.8)
extern s16 midi_cosine_table[0x100];    // Cosine Table (Q8.8)
extern u16 midi_psg_wave_vol_table[];
extern IOReg midi_psg_env_regs[];
extern IOReg midi_psg_freq_regs[];
extern u8 midi_psg_noise_freq_table[];
extern char midi_loop_start_sym[];
extern char midi_loop_end_sym[];

extern union Instrument *instrument_banks[];
extern u32 D_08aa4318;

extern u8 midi_direct_player_enabled;
extern u8 midi_direct_player_bank_id;
extern u8 midi_direct_player_volume;
extern u8 midi_direct_player_priority;
extern u8 midi_direct_player_tempo;

/* ASSEMBLY */

typedef void (*ThumbFunc)();
#define ALIGN_THUMB_FUNC(x) (ThumbFunc)((u32)&x|1)

extern ThumbFunc func_0804833e;
extern ThumbFunc func_080483b8;
extern ThumbFunc func_08048758;
extern ThumbFunc func_08048a00;
extern ThumbFunc func_08048b9c;
extern ThumbFunc func_08048d58;
extern ThumbFunc func_08048fc0;

/* INTERRUPT_DMA2 */

extern void midi_interrupt_dma2(void);

/* DIRECTSOUND STREAM OPERATIONS */

extern void midi_sampler_load(u32 id, struct SampleData *sampleData);
extern void midi_sampler_start(u32 id);
extern void midi_sampler_stop(u32 id);
extern void midi_sampler_set_stereo_bias(u32 id, u32 left, u32 right);
extern void midi_sampler_set_volume(u32 id, u32 volume);
extern void midi_sampler_set_frequency(u32 id, u32 frequency);
extern void midi_sampler_set_enable_distort(u32 id, u32 enable);
extern void midi_sampler_set_enable_eq(u32 id, u32 enable);

/* DIRECTSOUND OPERATIONS */

extern void midi_directsound_init(u32 soundMode, u32 sampleRate, u32 bufferSize, volatile s32 *buffer, u32 scratchSize,
                                    s32 *scratch, u16 samplerCount, struct SampleStream *samplerPool);
extern void midi_directsound_update(void);
extern void midi_directsound_flush(void);
extern void midi_directsound_set_reverb(u32 rvb0, u32 rvb1, u32 rvb2, u32 rvb3);
extern u32  midi_sampler_is_active(u32 id);
extern void midi_equalizer_set_position(u32 position);
extern void midi_equalizer_set_high_gain(u8 gain);
extern void midi_equalizer_init(void);
extern void midi_equalizer_reset(void);
extern void midi_equalizer_set(u32 enable, u32 position, u32 gain);

/* MIDI BUS UPDATE OPERATIONS */

extern void midi_channel_update_mod(struct MidiBus *midiBus, u32 track);
extern void midi_channel_update_mod_all(struct MidiBus *midiBus);
extern void midi_channel_cut(struct MidiBus *midiBus, u32 track);
extern void midi_channel_stop(struct MidiBus *midiBus, u32 track);
extern void midi_channel_cut_all(struct MidiBus *midiBus);
extern void midi_channel_stop_all(struct MidiBus *midiBus);

/* MIDI BUS INITIALISATION OPERATIONS */

extern void midi_bus_set_priority(struct MidiBus *midiBus, u8 priority);
extern void midi_bus_set_track_volume(struct MidiBus *midiBus, u8 volume, u16 mask);
extern void midi_channel_init(struct MidiChannel *midiChannel);
extern void midi_bus_init(struct MidiBus *midiBus, u32 totalChannels, struct MidiChannel *midiChannelArray);
extern void midi_bus_set_bank(struct MidiBus *midiBus, union Instrument *instrumentBank);

/* SOUND CHANNEL OPERATIONS */

extern u32  midi_note_update_pitch(struct SoundChannel *soundChannel);
extern u32  midi_note_update_volume(struct SoundChannel *soundChannel);
extern u32  midi_note_update_adsr(struct SoundChannel *soundChannel);
extern void midi_note_update_id(u32 id);
extern void midi_note_update_all(void);
extern void midi_note_init(u32 totalChannels, struct SoundChannel *soundChannelPool);
extern s32  midi_note_get_first_active(struct MidiChannel *midiChannel, u8 key);
extern s32  midi_note_get_first_inactive(void);
extern s32  midi_note_get_quietest_released(void);
extern s32  midi_note_get_quietest_unreleased(void);
extern s32  midi_note_get_least_significant(struct MidiBus *midiBus, u32 track, u32 velocity);
extern void midi_note_stop(struct MidiBus *midiBus, u32 track, u8 key);
extern s32  midi_note_get_free(struct MidiBus *midiBus, u32 track, u8 key, u8 velocity);
extern u8   midi_get_stereo_bias_r(u8 panning);
extern u8   midi_get_stereo_bias_l(u8 panning);
// extern u32 midi_key_to_freq(struct MidiBus *midiBus, u8 key);
extern void midi_note_start(struct MidiBus *midiBus, u32 track, u8 key, u8 velocity);

/* MIDI CHANNEL OPERATIONS */

extern void midi_channel_set_pitch(struct MidiBus *midiBus, u32 track, u16 pitch);
extern void midi_channel_set_volume(struct MidiBus *midiBus, u32 track, u8 volume);
extern void midi_channel_set_panning(struct MidiBus *midiBus, u32 track, u8 panning);
extern u8   midi_channel_get_panning(struct MidiBus *midiBus, u32 track);
extern void midi_channel_update_panning(struct MidiBus *midiBus, u32 track);
extern void midi_channel_set_patch(struct MidiBus *midiBus, u32 track, u8 patch);
extern void midi_channel_set_expression(struct MidiBus *midiBus, u32 track, u8 expression);
extern void midi_channel_set_bankselect(struct MidiBus *midiBus, u32 track, u16 args);
extern void midi_channel_set_disable(struct MidiBus *midiBus, u32 track, u8 disable);
extern void midi_channel_set_mod_depth(struct MidiBus *midiBus, u32 track, u8 depth);
extern void midi_channel_set_unk4_b21(struct MidiBus *midiBus, u32 track, u8 arg);
extern void midi_channel_set_enable_filter_eq(struct MidiBus *midiBus, u32 track, u8 useFilter);
extern void midi_channel_set_mod_type(struct MidiBus *midiBus, u32 track, u8 type);
extern void midi_channel_set_unkC(struct MidiBus *midiBus, u32 track, u8 arg);
extern void midi_channel_set_mod_speed(struct MidiBus *midiBus, u32 track, u16 speed);
extern void midi_channel_set_mod_delay(struct MidiBus *midiBus, u32 track, u8 delay);
extern void midi_channel_set_mod_range(struct MidiBus *midiBus, u32 track, u8 range);
extern void midi_channel_set_stereo_phase(struct MidiBus *midiBus, u32 track, u32 isStereo);
extern void midi_channel_set_priority(struct MidiBus *midiBus, u32 track, u8 priority);
extern void midi_channel_set_random_pitch(struct MidiBus *midiBus, u32 track, u8 range);
extern void midi_channel_set_random_key_mod_depth(struct MidiBus *midiBus, u32 track, u8 maxOffset);
extern void midi_channel_set_random_key_mod_interval(struct MidiBus *midiBus, u32 track, u8 interval);

/* MIDI BUS OPERATIONS */

extern void midi_bus_set_key(struct MidiBus *midiBus, s8 key);
extern void midi_bus_set_volume(struct MidiBus *midiBus, u8 volume);
extern void midi_bus_set_panning(struct MidiBus *midiBus, s8 panning);
extern void midi_bus_set_pitch(struct MidiBus *midiBus, s16 pitch);
extern void midi_bus_set_mod_range(struct MidiBus *midiBus, u8 range);
extern void midi_bus_set_unk8(struct MidiBus *midiBus, u16 arg);
extern void midi_bus_set_tuning(struct MidiBus *midiBus, u16 *table);

/* LOW-FREQUENCY OSCILLATOR OPERATIONS */

extern void midi_lfo_init(struct LFO *lfo, u8 preDelay, u8 attack, u8 arg3, u8 offset, u8 duration);
extern void midi_lfo_start(struct LFO *lfo);
extern void midi_lfo_stop(struct LFO *lfo);
extern void midi_lfo_update(struct LFO *lfo, u32 delta);

/* RANDOM */

extern u32  midi_random(u16 range);

/* PSG CHANNEL OPERATIONS */

extern void midi_psg_init(void);
extern void midi_psg_trigger_id(u32 id);
extern u32  midi_psg_pitch_to_freq(u32 freq);
extern u32  midi_psg_volume_to_env(u32 vol);
extern void midi_psg_update_id(u32 id);
extern void midi_psg_update(void);

/* SOUND PLAYER OPERATIONS */

extern u16  midi_player_parse_be16(const u8 *stream);
extern u32  midi_player_parse_be32(const u8 *stream);
extern u32  midi_player_get_loop_sym_size(const char *loopMarker);
extern void midi_player_play_header(struct SoundPlayer *soundPlayer, struct SequenceData *sound);
extern void midi_player_play_id(u16 soundIndex);
extern void midi_player_stop(struct SoundPlayer *soundPlayer);
extern void midi_player_set_pause(struct SoundPlayer *soundPlayer, u8 pause);
extern u32  midi_player_is_playing(struct SoundPlayer *soundPlayer);
extern void midi_player_pause(struct SoundPlayer *soundPlayer);
extern void midi_player_unpause(struct SoundPlayer *soundPlayer);
extern void midi_player_pause_all(void);
extern void midi_player_unpause_all(void);
extern void midi_player_set_volume(struct SoundPlayer *soundPlayer, u16 volume);
extern void midi_player_set_track_volume(struct SoundPlayer *soundPlayer, u16 trackMask, u16 volume);
extern void midi_player_set_pitch(struct SoundPlayer *soundPlayer, u16 unused, s16 pitch);
extern void midi_player_set_panning(struct SoundPlayer *soundPlayer, u16 unused, s8 panning);
extern void midi_player_pause_id(u16 soundIndex);
extern u32  midi_player_text_is_loop_sym(const u8 *stream1, const u8 *stream2, u32 length);
extern u32  midi_player_get_delta_time(u16 tempo, u16 speed, u16 quarterNote);
extern void midi_player_set_speed(struct SoundPlayer *soundPlayer, u16 speed);
extern void midi_player_set_volume_fade(struct SoundPlayer *soundPlayer, u16 type, u16 duration);
extern void midi_player_fade_out_to_stop(struct SoundPlayer *soundPlayer, u16 duration);
extern void midi_player_fade_out_to_pause(struct SoundPlayer *soundPlayer, u16 duration);
extern void midi_player_fade_in(struct SoundPlayer *soundPlayer, u16 duration);

/* MIDI SEQUENCE OPERATIONS */

extern void midi_player_parse_sys_exc_message(struct SoundPlayer *soundPlayer, const u8 *stream);
extern u32  midi_player_parse_meta_event(struct SoundPlayer *soundPlayer, const u8 **upstream);
extern void midi_player_parse_controller_change(struct SoundPlayer *soundPlayer, u32 track, u8 controller, u8 value);
extern void midi_player_add_note(u32 track, u32 key, u32 velocity);
extern u32  midi_player_read_track(struct SoundPlayer *soundPlayer, u32 track);
extern void midi_player_update_track(struct SoundPlayer *soundPlayer, u32 track);

/* MAIN SOUND */

extern void midi_player_update_volume_fade(struct SoundPlayer *soundPlayer);
extern void midi_player_update_sequence(struct SoundPlayer *soundPlayer);
extern void midi_player_update_all(void);
extern void midi_player_set_reverb(u32 rvb0, u32 rvb1, u32 rvb2, u32 rvb3);
extern void midi_stub(void);
extern void midi_player_init(struct SoundPlayer *soundPlayer, struct MidiBus *midiBus, u32 nTracksMax, struct MidiTrackStream *midiReader, u32 priorityEnabled);
extern u32  midi_parse_variable_length(const u8 **upstream);

/* DIRECT-MIDI PLAYER */

extern void midi_direct_player_init(struct SoundPlayer *, struct MidiTrackStream *, u32, struct MidiBus *, struct MidiChannel *, u8 *);
extern void midi_direct_player_append_sequence(s8 *, u32);
extern void midi_direct_player_read_sequence(void);
extern void midi_direct_player_update(void);

/* SOUND AREA */

extern void lib_midi_init(void);
