#pragma once

enum PsgChannelsEnum {
    PSG_PULSE_CHANNEL_1,
    PSG_PULSE_CHANNEL_2,
    PSG_WAVE_CHANNEL,
    PSG_NOISE_CHANNEL
};

enum SoundPlayersEnum {
    /* 00 */ MUSIC_PLAYER_0,
    /* 01 */ MUSIC_PLAYER_1,
    /* 02 */ MUSIC_PLAYER_2,
    /* 03 */ SFX_PLAYER_0,
    /* 04 */ SFX_PLAYER_1,
    /* 05 */ SFX_PLAYER_2,
    /* 06 */ SFX_PLAYER_3,
    /* 07 */ SFX_PLAYER_4,
    /* 08 */ SFX_PLAYER_5,
    /* 09 */ SFX_PLAYER_6,
    /* 10 */ SFX_PLAYER_7,
    /* 11 */ SFX_PLAYER_8,
    /* 12 */ SFX_PLAYER_9,
    /* -1 */ DEFAULT_SOUND_PLAYER = 0xFF
};

enum MidiTracksEnum {
    MIDI_TRACK_0    = (1 << 0),
    MIDI_TRACK_1    = (1 << 1),
    MIDI_TRACK_2    = (1 << 2),
    MIDI_TRACK_3    = (1 << 3),
    MIDI_TRACK_4    = (1 << 4),
    MIDI_TRACK_5    = (1 << 5),
    MIDI_TRACK_6    = (1 << 6),
    MIDI_TRACK_7    = (1 << 7),
    MIDI_TRACK_8    = (1 << 8),
    MIDI_TRACK_9    = (1 << 9),
    MIDI_TRACK_10   = (1 << 10),
    MIDI_TRACK_11   = (1 << 11),
    MIDI_TRACK_12   = (1 << 12),
    MIDI_TRACK_13   = (1 << 13),
    MIDI_TRACK_14   = (1 << 14),
    MIDI_TRACK_15   = (1 << 15)
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
    u8 fastRead:1;
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

struct SongHeader {
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
    u32 disabled:1;     // Disable channel.
    u32 fixedPitch:1;   // Disable pitch modulation.
    u32 instPatch:7;    // Instrument patch number (0-127).
    u32 bankSelect:14;  // Target bank (unused - MIDI specification only).
    u32 volume:7;       // Volume level (0-127).
    u32 filterEQ:1;     // Apply EQ filter to output.
    u32 phaseStereo:1;  // Apply stereo phase effect.
    u32 panning:7;      // Panning level (0-64-127).
    u32 expression:7;   // Expression level (0-127).
    u32 modDepth:7;     // Modulation depth.
    u32 unk4_b21:7;     // Unknown modifiable value (defaults to 0).
    u32 modType:2;      // Modulation target (defaults to PITCH).
    u32 unk4_b30:2;     // Unused
    u32 pitchWheel:14;  // 14-bit signed pitch envelope.
    u32 volumeWheel:8;  // 8-bit unsigned volume envelope.
    u32 priority:10;    // Priority.
    u8  modRange;       // Modulation range.
    s8  modResult;      // Modulation value.
    u8  unkE;           // Unused
    u8  pitchRange;     // Pitch wheel range, in octaves (defaults to 2).
    u16 modSpeed;       // Q8.8 modulation counter increment (defaults to 60.0).
    u16 modCount;       // Q8.8 modulation counter, ticking up.
    u8  modDelay;       // Modulation base delay time, in frames.
    u8  modDelayCount;  // Modulation delay clock, ticking down to 0.
    u16 randomPitchFloor;   // Q8.8 random base pitch - minimum.
    u16 randomPitchRange;   // Q8.8 random base pitch - range.
    u16 randomPitchResult;  // Q8.8 random base pitch - value.
    u8  keyModDepth;        // Random key modulation - max offset.
    u8  keyModInterval;     // Random key modulation - interval.
    u8  keyModCount;        // Random key modulation - clock.
};

struct MidiBus {
    u8  volumeA;            // Primary volume level.
    u8  volumeB;            // Secondary volume level.
    u16 volumeTrackMap;     // Bitmask mapping of MIDI Tracks to primary or secondary volume levels.
    s8  key;                // Output MIDI key offset.
    s8  panning;            // Output panning offset.
    s16 pitch;              // Q8.8 output pitch offset.
    u16 unk8;               // Q8.8 unknown modifiable value (defaults to 20.0).
    u16 *tuningTable;       // MIDI key frequency table.
    union Instrument *soundBank;     // Instrument bank.
    u32 totalChannels:5;             // Total number of MidiChannels controlled by this MidiBus.
    u32 priority:27;                 // Priority value.
    struct MidiChannel *midiChannel; // MIDI Channel array.
    s8  keyModScale[12];             // Offsets for each key in an octave for randomised key modulation.
};

struct MidiTrackStream {
    u32 active:1;           // TRUE if active.
    u32 activeAtLoop:1;     // TRUE if active at Loop Start.
    u32 command:8;          // Buffered MIDI instruction.
    u32 commandAtLoop:8;    // Buffered MIDI instruction at Loop Start.
    u32 withinLoop:1;       // TRUE if this stream has been updated for the loop region.
    const u8 *startPos;     // Track start position.
    const u8 *currentPos;   // Current position.
    u32 clocksThisFrame;    // Clocks passed this frame.
    const u8 *loopStartPos; // Loop Start position.
    u32 unused;             // Unused value.
    u32 clocksPassed;       // Clocks passed in total.
};

struct SoundPlayer {
    u32 totalTracks:5;      // Maximum MIDI Tracks this SoundPlayer can process.
    u32 usedTracks:5;       // Total MIDI Tracks used by the current MIDI, no higher than the maximum.
    u32 withinLoop:1;       // Set to TRUE upon passing the Loop Start marker.
    u32 isPaused:1;         // Set to TRUE when paused.
    u32 midiTempo:9;        // Current MIDI tempo, in Beats Per Minute.
    u32 priorityEnabled:1;  // If TRUE, priority values will be checked before playing a new sound.
    u32 unused:5;           // Unused.
    u32 volumeFadeType:3;   // Current volume fade effect type.
    struct MidiBus *midiBus;            // Effect and playback manager for all MIDI Channels.
    struct MidiTrackStream *midiReader; // Array of MIDI Track streams.
    struct SongHeader *song;    // Current loaded SongHeader.
    u32 clocksPerFrame;         // Q24.8 MIDI clocks passed each frame, assuming 60FPS.
    const char *loopStartSym;   // String denoting Loop Start marker ("[").
    const char *loopEndSym;     // String denoting Loop End marker ("]").
    u8  loopStartSymLen;        // Length of the Loop Start marker string (1).
    u8  loopEndSymLen;          // Length of the Loop End marker string (1).
    u16 midiQuarterNote;        // Number of MIDI clocks per quarter note, as defined by the MIDI.
    u16 volumeA;            // Q8.8 primary volume envelope.
    u16 volumeB;            // Q8.8 secondary volume envelope.
    u16 volumeTrackMap;     // Bitmask mapping of MIDI Tracks to primary or secondary volume envelopes.
    u16 playerSpeed;        // Q8.8 playback speed envelope.
    u16 volumeFadeEnv;      // Q1.15 volume fade envelope.
    u16 volumeFadeSpd;      // Q1.15 volume fade increment per frame.
    u8  songVolume;         // Base volume, as specified by the SongHeader.
    s8  rvb1Wet;            // 64 + RVB1.
    s8  rvb2Phase;          // 64 + RVB2.
    s8  rvb3Decay;          // 64 + RVB3.
    s8  rvb4LowCut;         // 64 + RVB4.
    u32 clocksPassedAtLoop; // Clocks passed upon reaching the Loop Start marker.
};

// Sound Channel
struct SoundChannel {
    u32 active:1;       // TRUE if currently outputting a note.
    u32 key:7;          // MIDI key (0-127).
    u32 velocity:7;     // MIDI velocity (0-127).
    u32 frequency:17;   // Frequency, in hertz.
    union Instrument instrument;        // Current instrument.
    struct MidiBus *midiBus;            // Source channel bus.
    struct MidiChannel *midiChannel;    // Source MIDI Channel.
    u16 pitchDecFreq;   // Difference between the current frequency and the lowest frequency within range, in hertz.
    u16 pitchIncFreq;   // Difference between the highest frequency within range and the current frequency, in hertz.
    s16 modStepFreq;    // Frequency of a modulation output step, in hertz.
    u16 priority:15;    // Priority value.
    u16 justStarted:1;  // Set to TRUE between initialisation and the first update.
    s16 panning;        // Panning value.
    struct AdsrEnvelope {
        u32 stage:8;        // Current stage (starts on ATTACK).
        u32 envelope:24;    // Volume envelope.
    } adsr;             // ADSR controller.
};

// DirectSound Sample Reader/Stream
struct SampleStream {
    u8 active:1;        // TRUE if the stream is outputting samples.
    u8 hasFrequency:1;  // TRUE if sample output rate is not 1.0.
    u8 fastRead:1;      // Use Fast-Resample PCM read method.
    u8 equalize:1;      // Apply EQ filter.
    u8 volume;          // Volume envelope.
    s8 leftBias;        // Stereo left bias.
    s8 rightBias;       // Stereo right bias.
    const u32 *sample;  // PCM wave address.
    u32 length;         // Q18.14 sample length.
    u32 position;       // Q18.14 stream position.
    u32 loopStart;      // Q18.14 loop start offset.
    u32 loopEnd;        // Q18.14 loop end offset.
    u32 frequency;      // Q18.14 sample output rate.
    u32 rate;           // uh... something that helps convert note frequency to 13379Hz
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

// LFO - Low-Frequency Oscillator
extern struct LFO gMidiLFO;

// LFO - Mode { 0 = Disabled; 1 = Note Triggered; 2 = Constant }
extern u8 gMidiLFO_Mode;

// [D_08aa06f8] Song Table
extern struct SongTable {
    struct SongHeader *song;
    u16 player;
} D_08aa06f8[];

// [D_08aa4324] SoundPlayer List
extern struct SoundPlayer *sound_players[];

// [D_08aa4358] SoundPlayer Init. Table
extern struct SoundPlayerInitTable {
    u16 id:5;
    u16 totalTracks:5;
    u16 priorityEnabled:6; // FALSE for music; TRUE for sfx
    struct MidiChannel *midiChannels;
    struct MidiBus *midiBus;
    struct MidiTrackStream *trackStreams;
    struct SoundPlayer *soundPlayer;
} sound_player_init_table[];

// [D_08aa445c] SoundPlayer Count
extern u8 sound_player_count;

// [D_08aa4460] SoundPlayer Table
extern struct SoundPlayerTable {
    struct SoundPlayer *soundPlayer;
    u32 null4; // unused
    u16 totalTracks;
    u16 priorityEnabled;
} sound_player_table[];
