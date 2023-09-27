

/* AUDIO LIBRARY - SOUNDPLAYER */


// Evaluate Big-Endian Short
u16 func_0804b324(const u8 *stream) {
    return (stream[0] << 8) | stream[1];
}


// Evaluate Big-Endian Integer
u32 func_0804b330(const u8 *stream) {
    return (stream[0] << 24) | (stream[1] << 16) | (stream[2] << 8) | stream[3];
}


// Get SoundPlayer Loop Marker Symbol Length
u32 func_0804b348(const char *loopMarker) {
    u8 i;

    for (i = 0; loopMarker[i] != '\0'; i++);

    return i;
}


// Play
void func_0804b368(struct SoundPlayer *soundPlayer, struct SequenceData *sound) {
    struct MidiBus *midiBus;
    struct MidiTrackStream *mTrkReader;
    const u8 *mTrkStream;
    const u8 *mTrkStart;
    u32 chunkLength;
    u32 trackTotal;
    u32 deltaTime;
    u32 i;

    // Reading Sequence Data:
    if (func_0804b5a0(soundPlayer)) {
        if (soundPlayer->priorityEnabled && !soundPlayer->isPaused) {
            if (soundPlayer->sequence->priority > sound->priority) {
                return;
            }
        }
    }

    midiBus = soundPlayer->midiBus;
    func_08049e64(midiBus);
    func_08049fa0(midiBus, midiBus->totalChannels, midiBus->midiChannel);
    func_0804a014(midiBus, instrument_banks[sound->soundBank]);
    func_0804adb4(midiBus, sound->volume);
    func_08049e8c(midiBus, sound->priority);
    soundPlayer->sequence = sound;
    soundPlayer->sequenceVolume = sound->volume;

    // Reading MIDI Data:
    mTrkStream = sound->midiSequence;

    // Header:
    mTrkStream += 4; // Skip (Header: "MThd")
    chunkLength = func_0804b330(mTrkStream);
    mTrkStream += 4; // Skip (Header: Length)
    trackTotal = func_0804b324(mTrkStream + 2); // Header: Number of MIDI Tracks
    soundPlayer->nTracksUsed = trackTotal;

    if (soundPlayer->nTracksUsed > soundPlayer->nTracksMax) {
        soundPlayer->nTracksUsed = soundPlayer->nTracksMax;
    }
    soundPlayer->midiQuarterNote = func_0804b324(mTrkStream + 4); // Header: Division
    mTrkStream += chunkLength; // Skip (Header: Data)

    // Track:
    mTrkReader = soundPlayer->midiReader;
    for (i = 0; i < soundPlayer->nTracksUsed; i++) {
        mTrkStream += 4; // Skip (Track: Header)
        chunkLength = func_0804b330(mTrkStream);
        mTrkStream += 4; // Skip (Track: Length)
        mTrkStart = mTrkStream;
        mTrkStream += chunkLength;
        mTrkReader->active_curr = TRUE;
        mTrkReader->stream_start = mTrkStart;
        deltaTime = func_0804c398(&mTrkStart);
        mTrkReader->unkC = deltaTime << 8;
        mTrkReader->stream_curr = mTrkStart;
        mTrkReader->runningTime = deltaTime;
        mTrkReader->active_loop = FALSE;
        mTrkReader->inLoop = FALSE;
        mTrkReader++;
    }

    // Other Data:
    soundPlayer->inLoop = FALSE;
    soundPlayer->isPaused = FALSE;
    soundPlayer->deltaTime = 1;
    soundPlayer->playerVolume = 1 << 8;
    soundPlayer->playerSpeed = 1 << 8;
    soundPlayer->trackVolume = 1 << 8;
    soundPlayer->volumeFadeType = 0;
    soundPlayer->volumeFadeEnv = 0x8000;
    soundPlayer->volumeFadeSpd = 0;
    soundPlayer->loopStartSym = &D_08a865a4[0];
    soundPlayer->loopStartSymSize = func_0804b348(D_08a865a4);
    soundPlayer->loopEndSym = &D_08a865a8[0];
    soundPlayer->loopEndSymSize = func_0804b348(D_08a865a8);
    soundPlayer->midiController4E = 64;
    soundPlayer->midiController4F = 64;
    soundPlayer->midiController50 = 64;
    soundPlayer->midiController51 = 64;
    soundPlayer->unk34 = 0;
}


// Play from SoundTable
void func_0804b534(u16 soundIndex) {
    struct SoundPlayer *soundPlayer;
    struct SequenceData *sound;

    soundPlayer = D_08aa4460[D_08aa06f8[soundIndex].player].soundPlayer;
    sound = D_08aa06f8[soundIndex].sound;
    func_0804b368(soundPlayer, sound);
}


// Stop
void func_0804b560(struct SoundPlayer *soundPlayer) {
    func_08049e3c(soundPlayer->midiBus);
    soundPlayer->sequence = NULL;
}


// Set Pause
void func_0804b574(struct SoundPlayer *soundPlayer, u8 pause) {
    soundPlayer->isPaused = pause;

    if (pause) {
        func_08049e64(soundPlayer->midiBus);
    }
}


// Check for Active Midi Readers
u32 func_0804b5a0(struct SoundPlayer *soundPlayer) {
    u32 i;

    if (soundPlayer->sequence == NULL) {
        return FALSE;
    }

    for (i = 0; i < soundPlayer->nTracksUsed; i++) {
        if (soundPlayer->midiReader[i].active_curr) {
            return TRUE;
        }
    }

    return FALSE;
}


// Pause
void func_0804b5d8(struct SoundPlayer *soundPlayer) {
    func_0804b574(soundPlayer, TRUE);
}


// Unpause
void func_0804b5e4(struct SoundPlayer *soundPlayer) {
    func_0804b574(soundPlayer, FALSE);
}


// Pause All
void func_0804b5f0(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        func_0804b574(D_08aa4324[i], TRUE);
    }
}


// Unpause All
void func_0804b620(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        func_0804b574(D_08aa4324[i], FALSE);
    }
}


// Set Volume
void func_0804b650(struct SoundPlayer *soundPlayer, u16 volume) {
    soundPlayer->playerVolume = volume;
}


// Set Volume for Selected Tracks
void func_0804b654(struct SoundPlayer *soundPlayer, u16 trackMask, u16 volume) {
    soundPlayer->trackVolume = volume;
    soundPlayer->trackMask = trackMask;
}


// Set Pitch
void func_0804b65c(struct SoundPlayer *soundPlayer, u16 unused, s16 pitch) {
    func_0804ade4(soundPlayer->midiBus, pitch);
}


// Set Panning
void func_0804b66c(struct SoundPlayer *soundPlayer, u16 unused, s8 panning) {
    func_0804adb8(soundPlayer->midiBus, panning);
}


// Pause from Index
void func_0804b67c(u16 soundIndex) {
    struct SequenceData *sound = D_08aa06f8[soundIndex].sound;
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        if ((D_08aa4324[i] != NULL) && (D_08aa4324[i]->sequence == sound)) {
            func_0804b5d8(D_08aa4324[i]);
        }
    }
}


// MidiStream.equals()
u32 func_0804b6c4(const u8 *stream1, const u8 *stream2, u32 length) {
    u32 i;

    for (i = 0; i < length; i++) {
        if (stream1[i] != stream2[i]) {
            return FALSE;
        }
    }

    return TRUE;
}


// Get MIDI Ticks Per Frame
u32 func_0804b6f0(u16 tempo, u16 speed, u16 quarterNote) {
    return (tempo * speed * quarterNote) / (60u * 60u);
}


// Set Speed
void func_0804b710(struct SoundPlayer *soundPlayer, u16 speed) {
    u32 delta;

    soundPlayer->playerSpeed = speed;
    delta = func_0804b6f0(soundPlayer->midiTempo, speed, soundPlayer->midiQuarterNote);
    if (delta == 0) {
        delta = 1;
    }
    soundPlayer->deltaTime = delta;
}


// Set Volume Fade { type = 0..3 }
void func_0804b734(struct SoundPlayer *soundPlayer, u16 type, u16 duration) {
    switch (type) {
        case VOL_FADE_RESET:
            soundPlayer->volumeFadeEnv = 0x8000;
            soundPlayer->volumeFadeSpd = 0;
            break;

        case VOL_FADE_IN:
            if (duration == 0) {
                duration = 1;
            }
            if (soundPlayer->volumeFadeType == 0) {
                soundPlayer->volumeFadeEnv = 0;
            }
            soundPlayer->volumeFadeSpd = 0x8000 / duration;
            soundPlayer->isPaused = FALSE;
            break;

        case VOL_FADE_OUT_CLEAR:
        case VOL_FADE_OUT_PAUSE:
            if (soundPlayer->volumeFadeType == VOL_FADE_RESET) {
                soundPlayer->volumeFadeEnv = 0x8000;
            }
            if (duration != 0) {
                soundPlayer->volumeFadeSpd = 0x8000 / duration;
            } else {
                soundPlayer->volumeFadeEnv = 0;
                soundPlayer->volumeFadeSpd = 1;
                if (type == VOL_FADE_OUT_CLEAR) {
                    type = VOL_FADE_RESET;
                    func_0804b560(soundPlayer);
                } else {
                    func_0804b574(soundPlayer, TRUE);
                }
            }
            break;
    }

    soundPlayer->volumeFadeType = type;
}


// Volume Fade-Out & Clear
void func_0804b7dc(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_OUT_CLEAR, duration);
}


// Volume Fade-Out & Pause
void func_0804b7ec(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_OUT_PAUSE, duration);
}


// Volume Fade-In
void func_0804b7fc(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_IN, duration);
}


// MidiStream System-Exclusive Message [Evnt_F0]
#include "asm/lib_08049144/asm_0804b80c.s"


// MidiStream Meta Event (Loop Start, Loop End, Track End, Set Tempo)
#include "asm/lib_08049144/asm_0804b898.s"


// MidiStream Controller Change [Evnt_B]
#include "asm/lib_08049144/asm_0804b95c.s"


// MidiStream Note Off/On [Evnt_8; Evnt_9]
#include "asm/lib_08049144/asm_0804bc5c.s"


// MidiStream Messages/Events
#include "asm/lib_08049144/asm_0804bcc0.s"


// Update MidiStream
#include "asm/lib_08049144/asm_0804bed0.s"


// Update SoundPlayer Volume
#include "asm/lib_08049144/asm_0804c040.s"


// Update SoundPlayer MidiStream
#include "asm/lib_08049144/asm_0804c0f8.s"


// Update Main
#include "asm/lib_08049144/asm_0804c170.s"


// Set Main Reverb Controller Scratch/Queue
#include "asm/lib_08049144/asm_0804c340.s"


// Stub
#include "asm/lib_08049144/asm_0804c358.s"


// Initialise SoundPlayer
#include "asm/lib_08049144/asm_0804c35c.s"


// Parse Midi Variable-Length Quantity
#include "asm/lib_08049144/asm_0804c398.s"


// Initialise DirectMidi Player
#include "asm/lib_08049144/asm_0804c3c0.s"


// Append DirectMidi Sequence Instructions
#include "asm/lib_08049144/asm_0804c4bc.s"


// Parse DirectMidi Sequence Instructions
#include "asm/lib_08049144/asm_0804c508.s"


// Update DirectMidi Player
#include "asm/lib_08049144/asm_0804c6c8.s"
