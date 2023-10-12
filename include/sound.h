#pragma once

enum PsgChannelsEnum {
    PSG_PULSE_CHANNEL_1,
    PSG_PULSE_CHANNEL_2,
    PSG_WAVE_CHANNEL,
    PSG_NOISE_CHANNEL
};

enum SoundPlayersEnum {
    MUSIC_PLAYER_0,
    MUSIC_PLAYER_1,
    MUSIC_PLAYER_2,
    SFX_PLAYER_0,
    SFX_PLAYER_1,
    SFX_PLAYER_2,
    SFX_PLAYER_3,
    SFX_PLAYER_4,
    SFX_PLAYER_5,
    SFX_PLAYER_6,
    SFX_PLAYER_7,
    SFX_PLAYER_8,
    SFX_PLAYER_9,
    DEFAULT_SOUND_PLAYER = 0xFF
};

enum MidiTracksEnum {
    MIDI_TRACK_0,
    MIDI_TRACK_1,
    MIDI_TRACK_2,
    MIDI_TRACK_3,
    MIDI_TRACK_4,
    MIDI_TRACK_5,
    MIDI_TRACK_6,
    MIDI_TRACK_7,
    MIDI_TRACK_8,
    MIDI_TRACK_9,
    MIDI_TRACK_10,
    MIDI_TRACK_11,
    MIDI_TRACK_12,
    MIDI_TRACK_13,
    MIDI_TRACK_14,
    MIDI_TRACK_15
};

enum DirectSoundModesEnum {
    DIRECTSOUND_MODE_STEREO,
    DIRECTSOUND_MODE_MONO1,
    DIRECTSOUND_MODE_MONO2
};

enum InstrumentBanksEnum {
	INST_BANK_UNUSED_0,
	INST_BANK_UNUSED_1,
	INST_BANK_UNUSED_2,
	INST_BANK_UNUSED_3,
	INST_BANK_UNUSED_4,
	INST_BANK_54,
	INST_BANK_UNUSED_5,
	INST_BANK_UNUSED_7,
	INST_BANK_UNUSED_8,
	INST_BANK_UNUSED_9,
	INST_BANK_UNUSED_10,
	INST_BANK_UNUSED_11,
	INST_BANK_UNUSED_12,
	INST_BANK_UNUSED_13,
	INST_BANK_UNUSED_14,
	INST_BANK_UNUSED_15,
	INST_BANK_UNUSED_16,
	INST_BANK_55,
	INST_BANK_1,
	INST_BANK_2,
	INST_BANK_3,
	INST_BANK_4,
	INST_BANK_5,
	INST_BANK_6,
	INST_BANK_7,
	INST_BANK_8,
	INST_BANK_9,
	INST_BANK_10,
	INST_BANK_11,
	INST_BANK_12,
	INST_BANK_13,
	INST_BANK_14,
	INST_BANK_15,
	INST_BANK_16,
	INST_BANK_17,
	INST_BANK_UNUSED_35,
	INST_BANK_UNUSED_36,
	INST_BANK_UNUSED_37,
	INST_BANK_UNUSED_38,
	INST_BANK_UNUSED_39,
	INST_BANK_47,
	INST_BANK_49,
	INST_BANK_50,
	INST_BANK_48,
	INST_BANK_UNUSED_44,
	INST_BANK_51,
	INST_BANK_52,
	INST_BANK_53,
	INST_BANK_UNUSED_48,
	INST_BANK_UNUSED_49,
	INST_BANK_18,
	INST_BANK_19,
	INST_BANK_20,
	INST_BANK_21,
	INST_BANK_22,
	INST_BANK_23,
	INST_BANK_24,
	INST_BANK_25,
	INST_BANK_26,
	INST_BANK_27,
	INST_BANK_28,
	INST_BANK_29,
	INST_BANK_30,
	INST_BANK_31,
	INST_BANK_32,
	INST_BANK_33,
	INST_BANK_34,
	INST_BANK_35,
	INST_BANK_36,
	INST_BANK_37,
	INST_BANK_38,
	INST_BANK_39,
	INST_BANK_40,
	INST_BANK_41,
	INST_BANK_42,
	INST_BANK_43,
	INST_BANK_44,
	INST_BANK_45,
	INST_BANK_46,
	INST_BANK_UNUSED_79,
	INST_BANK_UNUSED_80,
	INST_BANK_UNUSED_81,
	INST_BANK_UNUSED_82,
	INST_BANK_UNUSED_83,
	INST_BANK_UNUSED_84,
	INST_BANK_UNUSED_85,
	INST_BANK_UNUSED_86,
	INST_BANK_UNUSED_87,
	INST_BANK_UNUSED_88,
	INST_BANK_UNUSED_89,
	INST_BANK_UNUSED_90,
	INST_BANK_UNUSED_91,
	INST_BANK_UNUSED_92,
	INST_BANK_UNUSED_93,
	INST_BANK_UNUSED_94,
	INST_BANK_UNUSED_95,
	INST_BANK_UNUSED_96,
	INST_BANK_UNUSED_97,
	INST_BANK_UNUSED_98,
	INST_BANK_UNUSED_99,
	INST_BANK_56,
	INST_BANK_57,
	INST_BANK_58,
	INST_BANK_59,
	INST_BANK_60,
	INST_BANK_61,
	INST_BANK_UNUSED_106,
	INST_BANK_UNUSED_107,
	INST_BANK_UNUSED_108,
	INST_BANK_UNUSED_109,
	INST_BANK_62,
	INST_BANK_63
};

struct SampleData {
	u32 length;
	u32 sampleRate;
	u32 pitch;
	u32 loopStart;
	u32 loopEnd;
	const u32 *waveform;
};

union Instrument {
    u8 *type;
    struct InstrumentPCM *pcm;
    struct InstrumentPSG *psg;
    struct InstrumentSubRhythm *rhy;
    struct InstrumentSubSplit *spl;
};

struct InstrumentPCM {
	u8 type;
	u8 key:7;
    u8 distort:1;
	s16 panning;
	struct SampleData *sample;
	s32 initial;
	s32 sustain;
	s32 attack;
	s32 decay;
	s32 fade;
	s32 release;
};

struct InstrumentPSG {
	u8 type;
	u8 key;
	s16 panning;
	u32 *wavetable;
	s32 initial;
	s32 sustain;
	s32 attack;
	s32 decay;
	s32 fade;
	s32 release;
	u32 channel:2;
	u32 length:8;
	u32 sweep:7;
    u32 dutyTone:2;
    u32 dutyNoise:13;
};

struct InstrumentSubRhythm {
	u32 type:8;
	u32 total:24;
	union Instrument *subBank;
};

struct InstrumentSubSplit {
    u32 type:8;
	u32 total:24;
	u8 *keySplitTable;
	union Instrument *subBank;
};

struct SequenceData {
    const u8 *midiSequence;
    u32 soundPlayer:5;
    u32 soundBank:10;
    u32 volume:7;
    u32 priority:10;
    u32 unk8;
    char *title;
    u32 songNum;
};

/* MIDI PLAYER DEVICES */

struct MidiChannel {
    u32 disabled:1;     // Disable MidiChannel [default = FALSE]
    u32 fixedPitch:1;   // Disable Pitch Modulation [default = FALSE]
    u32 instPatch:7;    // Instrument Patch Number [Evnt_C; default = 0]
    u32 bankSelect:14;  // Bank Select (underused) [Ctrl_00; Ctrl_20; default = 0]
    u32 volume:7;       // Channel Volume [Ctrl_07; default = 100]
    u32 filterEQ:1;     // Use Equalizer [Ctrl_48; default = FALSE]
    u32 stereo:1;       // Stereo Phase Effect [Ctrl_4B; default = FALSE]
    u32 panning:7;      // Channel Panning [Ctrl_0A; default = 0x40]
    u32 expression:7;   // Expression [Ctrl_0B; default = 127]
    u32 modDepth:7;     // Modulation Depth [Ctrl_01; default = 0]
    u32 unk4_b21:7;     // ? [default = 0]
    u32 modType:2;      // Modulation Type [default = PITCH]
    u32 unk4_b30:2;     // Unused
    u32 pitchWheel:14;  // Pitch Wheel [Evnt_E; default = 0x2000]
    u32 volumeWheel:8;  // Volume Wheel
    u32 priority:10;    // Priority [Ctrl_20; default = 0]
    u8  unkC;           // ? [default = 1]
    s8  modResult;      // Modulation Result [Ctrl_01; default = 0]
    u8  unkE;           // Unused
    u8  modRange;       // Pitch Wheel Range [Ctrl_14; default = 2]
    u16 modSpeed;       // Modulation Counter Increment [Ctrl_15; default = 0x3C00]
    u16 modCount;       // Modulation Counter (ticks Up) [Ctrl_15; default = 0]
    u8  modDelay;       // Modulation Delay Time [Ctrl_1A; default = 0]
    u8  modDelayCount;  // Modulation Delay Counter (ticks down) [Ctrl_1A; default = 0]
    u16 randomPitchFloor;   // Random Pitch Minimum [Ctrl_52; default = 0x100]
    u16 randomPitchRange;   // Random Pitch Range [Ctrl_52; default = 0]
    u16 randomPitchResult;  // Random Pitch Result [Ctrl_52; default = 0x100]
    u8  keyModDepth;        // Random Key Modulation Max Offset [Ctrl_53; default = 0]
    u8  keyModInterval;     // Random Key Modulation Interval [Ctrl_54; default = 0]
    u8  keyModCount;        // Random Key Modulation Counter [Ctrl_54; default = 0]
};

struct MidiBus {
    u8  busVolume;
    u8  trackVolume;
    u16 trackMask;
    s8  key;
    s8  panning;
    s16 pitch;
    u16 unk8;
    u16 *tuningTable;
    union Instrument *soundBank;
    u32 totalChannels:5;
    u32 priority:27;
    struct MidiChannel *midiChannel;
    s8  unk1C[12];
};

struct MidiTrackStream {
    u32 active_curr:1;  // Active State (Current)
    u32 active_loop:1;  // Active State (At Loop Start)
    u32 command_curr:8; // Command (Current)
    u32 command_loop:8; // Command (At Loop Start)
    u32 inLoop:1;       // Reader is within MIDI loop region (note: label may not be accurate). [default = 0]
    const u8 *stream_start;   // Stream Position: Track Start
    const u8 *stream_curr;    // Stream Position: Current
    u32 unkC;           // ?? ( = initial deltaTime << 8)
    const u8 *stream_loop;    // Stream Position: Loop Start
    u32 unk14;          // ?? (may be unused?)
    u32 runningTime;    // Time until next instruction? (already parsed from variable-length quantity)
};

struct SoundPlayer {
    u32 totalTracks:5;  // Maximum number of MIDI Tracks this SoundPlayer is able to process.
    u32 usedTracks:5;   // Total number of MIDI Tracks used by the current MIDI.
    u32 inLoop:1;       // Channel is currently within MIDI loop region. [default = 0]
    u32 isPaused:1;     // Paused State { 0 = Unpaused; 1 = Paused }
    u32 midiTempo:9;    // Current MIDI Tempo, in Beats Per Minute (BPM).
    u32 priorityEnabled:1;  // If enabled, check priority values before playing a new sound.
    u32 unk0_b22:5;         // (indeterminate split; may be unused entirely)
    u32 volumeFadeType:3;   // Type of currently-active Volume Fade { 0 = None; 1 = Fade-In; 2 = Fade-Out & Close; 3 = Fade-Out & Pause }
    struct MidiBus *midiBus;             // MIDI: Bus with effects for all MIDI Channels.
    struct MidiTrackStream *midiReader;  // MIDI: Multiple structures which each keep track of a MIDI Track being processed.
    struct SequenceData *sequence; // SequenceData: Currently-loaded Sound Sequence.
    u32 deltaTime;              // MIDI: Ticks Per Frame, using internal assumption of 60fps [default = 1]
    const char *loopStartSym;   // MIDI: Label denoting "Loop Start". [always '[']
    const char *loopEndSym;     // MIDI: Label denoting "Loop End". [always ']']
    u8  loopStartSymSize;   // MIDI: Length of the "Loop Start" label. [always 1]
    u8  loopEndSymSize;     // MIDI: Length of the "Loop End" label. [always 1]
    u16 midiQuarterNote;    // MIDI: Value denoting 1 beat. [effectively always 24]
    u16 playerVolume;   // Channel Gain (Volume) Envelope. [Q8.8]
    u16 trackVolume;    // Gain Envelope for a selection of MIDI Tracks. [Q8.8]
    u16 trackMask;      // Selection of MIDI Tracks to apply Gain Envelope.
    u16 playerSpeed;    // Speed Multiplier Envelope. [Q8.8]
    u16 volumeFadeEnv;  // Volume Multiplier Envelope used for fade-out and mute effects. [Q1.15]
    u16 volumeFadeSpd;  // Higher values for faster fade-out. Is set to 1 when track is muted instantly. [default = 0]
    u8  sequenceVolume; // SequenceData: Volume
    s8  midiController4E;   // ??: [default = 64]
    s8  midiController4F;   // ??: [default = 64]
    s8  midiController50;   // ??: [default = 64]
    s8  midiController51;   // ??: [default = 64]
    u32 unk34;      // ??: (is set to midiReader->deltaTime upon hitting a loop start marker) [default = 0]
};

// Sound Channel
struct SoundChannel {
    u32 active:1;
    u32 key:7; // MIDI Key
    u32 velocity:7; // MIDI Velocity
    u32 frequency:17;
    union Instrument instrument;
    struct MidiBus *midiBus;
    struct MidiChannel *midiChannel;
    u16 unk10;
    u16 unk12;
    s16 unk14;
    u16 priority:15;
    u16 unk17_b7:1;
    s16 panning;
    struct BufferADSR {
        u32 stage:8;
        u32 envelope:24;
    } adsr;
};

// DirectSound Sample Reader/Stream
struct SampleStream {
    u8 active:1;
    u8 hasFrequency:1;  // TRUE if Frequency Envelope is not 1.0 (Q18.14)
    u8 distort:1;       // Distortion(?)
    u8 equalize:1;      // Use Equalizer
    u8 volume;          // Volume
    s8 leftBias;        // Stereo Left Bias
    s8 rightBias;       // Stereo Right Bias
    const u32 *sample;  // Sample - Stream
    u32 length;         // Sample - Length << 14
    u32 position;       // Sample - Stream Position << 14
    u32 loopStart;      // Sample - Loop Start << 14
    u32 loopEnd;        // Sample - Loop End << 14
    u32 frequency;      // Frequency Envelope
    u32 rate;           // ? (samplerate-related)
};

enum LfoModesEnum {
    LFO_MODE_DISABLED,
    LFO_MODE_KEYPRESS,
    LFO_MODE_CONSTANT
};

// Low-Frequency Oscillator (used for an Auto-Wah)
struct LFO {
    u8  preDelay;   // Pre-Delay Time
    u8  attack;     // Attack Time
    u16 rate;       // Rate
    u8  offset;     // Offset
    u8  duration;   // Range
    u8  stage;      // Current Envelope Stage { 0..3 }
    s8  output;     // Output
    u32 ticks;      // Running Time
};

// [D_03005b30] LFO - Low-Frequency Oscillator
extern struct LFO D_03005b30;

// [D_03005b3c] LFO - Mode { 0 = Disabled; 1 = Note Triggered; 2 = Constant }
extern u8 D_03005b3c;

// [D_08aa06f8] Song Table
extern struct SoundTable {
    struct SequenceData *sound;
    u16 player;
} D_08aa06f8[];

// [D_08aa4324] SoundPlayer List
extern struct SoundPlayer *D_08aa4324[];

// [D_08aa4358] SoundPlayer Init. Table
extern struct SoundPlayerInitTable {
    u16 id:5;
    u16 totalTracks:5;
    u16 priorityEnabled:6; // FALSE for music; TRUE for sfx
    struct MidiChannel *midiChannels;
    struct MidiBus *midiBus;
    struct MidiTrackStream *trackStreams;
    struct SoundPlayer *soundPlayer;
} D_08aa4358[];

// [D_08aa445c] SoundPlayer Count
extern u8 D_08aa445c;

// [D_08aa4460] SoundPlayer Table
extern struct SoundPlayerTable {
    struct SoundPlayer *soundPlayer;
    u32 null4; // unused
    u16 totalTracks;
    u16 priorityEnabled;
} D_08aa4460[];
