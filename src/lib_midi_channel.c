#include "global.h"
#include "sound.h"
#include "lib_midi.h"

asm(".include \"include/gba.inc\"");//Temporary


/* AUDIO LIBRARY - MIDI CHANNELS */


// Update MidiChannel Modulation
void func_08049c34(struct MidiBus *midiBus, u32 track) {
    struct MidiChannel *midiChannel = &midiBus->midiChannel[track];
    s32 modVolume;
    u32 busVolume;
    u32 result;

    // Update Modulation
    if (midiChannel->modDelayCount != 0) {
        midiChannel->modDelayCount--;
        midiChannel->modCount = 0;
    } else {
        midiChannel->modCount += midiChannel->modSpeed;
    }

    midiChannel->modResult = (midiChannel->modDepth * midi_sine_table[(midiChannel->modCount >> 8)]) >> 8;

    // Update Volume Wheel
    modVolume = 128;
    if (midiChannel->modType == MOD_TYPE_TREMOLO) {
        modVolume += midiChannel->modResult;
        if (modVolume < 0) modVolume = 0;
        if (modVolume > 160) modVolume = 160;
    }

    if (midiChannel->modType == MOD_TYPE_PANNING) {
        func_0804aae0(midiBus, track);
    }

    busVolume = ((midiBus->trackMask >> track) & 1) ? midiBus->trackVolume : midiBus->busVolume;
    result = modVolume;
    result = (busVolume * midiChannel->volume * midiChannel->expression * result) >> 21;
    if (result > 0xFF) result = 0xFF;
    midiChannel->volumeWheel = result;

    // Update... this other modulation thing I still haven't figured out yet.
    if ((midiChannel->unk1C != 0) && (midiChannel->unk1D != 0)) {
        if (midiChannel->unk1E == 0) {
            midiChannel->unk1E = midiChannel->unk1D;
        }
        midiChannel->unk1E--;
    }
}


// Update MidiChannel Modulation (All)
void func_08049d08(struct MidiBus *midiBus) {
    u32 i;

    for (i = 0; i < midiBus->totalChannels; i++) {
        func_08049c34(midiBus, i);
    }
}


// SoundChannel Note Off
void func_08049d30(struct MidiBus *midiBus, u32 track) {
    struct MidiChannel *midiChannel = &midiBus->midiChannel[track];
    u32 i;

    if (midiChannel->volumeWheel == 0) {
        func_08049db8(midiBus, track);
        return;
    }

    for (i = 0; i < D_03005b8c; i++) {
        if (D_030064bc[i].active && (D_030064bc[i].midiChannel == midiChannel)) {
            D_030064bc[i].adsr.stage = ADSR_STAGE_FORCE_STOP;
        }
    }

    for (i = 0; i < 4; i++) {
        if (D_030056a0[i].active && (D_030056a0[i].midiChannel == midiChannel)) {
            D_030056a0[i].adsr.stage = ADSR_STAGE_FORCE_STOP;
        }
    }
}


// SoundChannel Close
void func_08049db8(struct MidiBus *midiBus, u32 track) {
    struct MidiChannel *midiChannel = &midiBus->midiChannel[track];
    u32 i;

    for (i = 0; i < D_03005b8c; i++) {
        if (D_030064bc[i].active && (D_030064bc[i].midiChannel == midiChannel)) {
            D_030064bc[i].active = FALSE;
            func_080493b0(i);
        }
    }

    for (i = 0; i < 4; i++) {
        if (D_030056a0[i].active && (D_030056a0[i].midiChannel == midiChannel)) {
            D_030056a0[i].adsr.stage = ADSR_STAGE_RELEASE;
            D_030056a0[i].adsr.envelope = 0;
        }
    }
}


// SoundChannel Note Off (All)
void func_08049e3c(struct MidiBus *midiBus) {
    u32 i;

    for (i = 0; i < midiBus->totalChannels; i++) {
        func_08049d30(midiBus, i);
    }
}


// SoundChannel Close (All)
void func_08049e64(struct MidiBus *midiBus) {
    u32 i;

    for (i = 0; i < midiBus->totalChannels; i++) {
        func_08049db8(midiBus, i);
    }
}


// Set MidiBus Priority
void func_08049e8c(struct MidiBus *midiBus, u8 priority) {
    u32 i;

    midiBus->priority = priority;

    for (i = 0; i < midiBus->totalChannels; i++) {
        func_0804ad18(midiBus, i, 0);
    }
}


// Set MidiBus Track Volume & Mask
void func_08049ec4(struct MidiBus *midiBus, u8 volume, u16 mask) {
    midiBus->trackVolume = volume;
    midiBus->trackMask = mask;
}


// Initialise MidiChannel
void func_08049ecc(struct MidiChannel *midiChannel) {
    midiChannel->unk0_b0 = FALSE;
    midiChannel->unk0_b1 = FALSE;
    midiChannel->instPatch = 0;
    midiChannel->bankSelect = 0;
    midiChannel->volume = 100;
    midiChannel->panning = 64;
    midiChannel->expression = 127;
    midiChannel->unk4_b21 = 0;
    midiChannel->modDepth = 0;
    midiChannel->modType = 0;
    midiChannel->unkC = 1;
    midiChannel->modSpeed = (60 << 8);
    midiChannel->modCount = 0;
    midiChannel->modDelay = 0;
    midiChannel->modDelayCount = 0;
    midiChannel->modResult = 0;
    midiChannel->pitchWheel = 0x2000;
    midiChannel->modRange = 2;
    midiChannel->priority = 0;
    midiChannel->filterEQ = FALSE;
    midiChannel->stereo = FALSE;
    midiChannel->rndmPitch = (1 << 8);
    midiChannel->rndmPitchFloor = (1 << 8);
    midiChannel->rndmPitchRange = 0;
    midiChannel->unk1C = 0;
    midiChannel->unk1D = 0;
    midiChannel->unk1E = 0;
}


// Initialise MidiBus
void func_08049fa0(struct MidiBus *midiBus, u32 totalChannels, struct MidiChannel *midiChannelArray) {
    u32 i;

    midiBus->busVolume = 100;
    midiBus->trackVolume = 100;
    midiBus->trackMask = 0;
    midiBus->key = 0;
    midiBus->panning = 0;
    midiBus->pitch = 0;
    midiBus->unk8 = (20 << 8);
    midiBus->tuningTable = midi_tuning_table;
    midiBus->totalChannels = totalChannels;
    midiBus->midiChannel = midiChannelArray;

    for (i = 0; i < totalChannels; i++) {
        func_08049ecc(&midiChannelArray[i]);
    }

    midiBus->priority = 0;

    for (i = 0; i < 12; i++) {
        midiBus->unk1C[i] = 0;
    }
}


// Set MidiBus Sound Bank
void func_0804a014(struct MidiBus *midiBus, union Instrument *instrumentBank) {
    midiBus->soundBank = instrumentBank;
}


/* SOUND CHANNEL OPERATIONS */


// Update SoundChannel Pitch (https://decomp.me/scratch/Tms2v)
u32 func_0804a018(struct SoundChannel *soundChannel) {
    struct MidiBus *midiBus;
    struct MidiChannel *midiChannel;
    s32 freq;
    u32 modRange;
    u32 unk1C;
    s32 r5;
    u32 r8;
    u32 r0;
    u32 r3;
    s32 index;
    s32 what;

    // Do not calculate pitch envelope for unpitched instruments.
    if (*soundChannel->instrument.type == INSTRUMENT_PCM_FIXED) {
        return 0;
    }

    midiBus = soundChannel->midiBus;
    midiChannel = soundChannel->midiChannel;
    freq = soundChannel->frequency;

    // If... whatever this flag is, bypass all pitch envelopes, returning sndChnl->frequency.
    if (midiChannel->unk0_b1) {
        return freq;
    }

    // Pitch Envelope: ???
    unk1C = midiChannel->unk1C;
    if ((unk1C != 0) && (midiChannel->unk1D != 0) && (midiChannel->unk1E == 0)) {
        r5 = soundChannel->key + midi_random((unk1C * 2) + 1) - unk1C + midiBus->key;

        what = r5;
        while (what < 0) r5 += 12; // ????????
        r5 += midiBus->unk1C[what % 12];

        while (r5 < 0) {
            r5 += 12;
        }
        while (r5 > 127) {
            r5 -= 12;
        }

        freq = func_0804a690(midiBus, r5);
        soundChannel->frequency = freq;
        modRange = midiChannel->modRange;
        soundChannel->unk10 = soundChannel->frequency - func_0804a690(midiBus, r5 - modRange);
        soundChannel->unk12 = func_0804a690(midiBus, r5 + modRange) - soundChannel->frequency;
        soundChannel->unk14 = func_0804a690(midiBus, r5 + midiChannel->unkC) - soundChannel->frequency;
    }

    // Pitch Envelope: MidiChannel Pitch Wheel (14 Bits)
    r5 = midiChannel->pitchWheel;
    if (r5 != 0x2000) {
        r8 = (r5 < 0x2000) ? soundChannel->unk10 : soundChannel->unk12;

        if (r5 < 0x2000) {
            freq -= r8;
        } else {
            r5 -= 0x2000;
        }

        index = (r5 / 682);
        r3 = r5 - (index * 682); // pitchWheel - ((pitchWheel / 682) * 682) = margin of error?
        r5 = midi_step_freq_table[index];
        r0 = midi_step_freq_table[index + 1] - r5;
        r0 = r5 + ((r0 * r3) / 682);
        freq += ((r0 * r8) >> 16);
    }

    // Pitch Envelope: MidiBus Fine-Pitch (Q24.8)
    if (midiBus->pitch != 0) {
        index = (midiBus->pitch >> 8);
        r3 = midiBus->pitch & 0xFF;
        while ((u32) index >= 12) {
            if (index < 0) {
                freq >>= 1;
                index += 12;
            } else {
                freq <<= 1;
                index -= 12;
            }
        }
        r5 = midi_step_freq_table[index];
        r0 = midi_step_freq_table[index + 1] - r5;
        r0 = r5 + ((r0 * r3) >> 8);
        freq += ((r0 * freq) >> 16);
    }

    // Pitch Envelope: Modulation
    if (midiChannel->modType == MOD_TYPE_VIBRATO) {
        freq += ((midiChannel->modResult * soundChannel->unk14) >> 5);
    }

    // Pitch Envelope: Random Pitch
    if (midiChannel->rndmPitch != (1 << 8)) {
        freq = ((freq * midiChannel->rndmPitch) >> 8);
    }

    return freq;
}


// Update SoundChannel Volume
u32 func_0804a1f4(struct SoundChannel *soundChannel) {
    u32 volume;

    if (soundChannel->midiChannel == NULL) {
        return (soundChannel->velocity * (soundChannel->adsr.envelope >> 16)) >> 7;
    } else {
        volume = soundChannel->midiChannel->volumeWheel * soundChannel->velocity * (soundChannel->adsr.envelope >> 16);
        return volume >> 14;
    }
}


// Update SoundChannel ADSR
u32 func_0804a224(struct SoundChannel *soundChannel) {
    struct InstrumentPCM *instrument;
    struct BufferADSR *adsr;
    u32 finished;
    s32 envelope;
    u32 release;

    finished = FALSE;
    instrument = soundChannel->instrument.pcm;
    adsr = &soundChannel->adsr;
    envelope = adsr->envelope;

    switch (adsr->stage) {
        /* ATTACK:
            Trigger: Note On
            Increment: inst->attack
            Target: 127 (Q8.16)
        */
        case ADSR_STAGE_ATTACK:
            envelope += instrument->attack;
            if (envelope >= (127 << 16)) {
                envelope = (127 << 16);
                adsr->stage = ADSR_STAGE_DECAY;
            }
            break;

        /* DECAY:
            Trigger: Attack End
            Decrement: inst->decay
            Target: inst->sustain
        */
        case ADSR_STAGE_DECAY:
            envelope -= instrument->decay;
            if (envelope <= instrument->sustain) {
                envelope = instrument->sustain;
                adsr->stage = ADSR_STAGE_SUSTAIN;
            }
            break;

        /* FADE:
            Trigger: Decay End
            Decrement: inst->fade
            Target: 0
        */
        case ADSR_STAGE_SUSTAIN:
            envelope -= instrument->fade;
            if (envelope >= (127 << 16)) {
                envelope = (127 << 16);
            } else if (envelope <= 0) {
                envelope = 0;
                finished = TRUE;
            }
            break;

        /* RELEASE:
            Trigger: Note Off, Muted Note
            Decrement: inst->release
            Target: 0
        */
        case ADSR_STAGE_RELEASE:
            envelope -= instrument->release;
            if (envelope <= 0) {
                envelope = 0;
                finished = TRUE;
            }
            break;

        /* RELEASE (Note Cut):
            Trigger: Note Override, End of Loop Region, End of Track
            Decrement: inst->unk1C (or default of 0x60000 if not set)
            Target: 0
        */
        case ADSR_STAGE_FORCE_STOP:
            release = instrument->release;
            if (instrument->release == 0) {
                release = (6 << 16);
            }
            envelope -= release;
            if (envelope <= 0) {
                envelope = 0;
                finished = TRUE;
            }
            break;
    }

    adsr->envelope = envelope;
    return finished;
}


// Update PCM SoundChannel
void func_0804a2c4(u32 id) {
    struct SoundChannel *soundChannel = &D_030064bc[id];

    if (!soundChannel->active) {
        return;
    }

    if (func_08049b5c(id)) {
        soundChannel->unk17_b7 = FALSE;
        if (!soundChannel->midiChannel->unk0_b1) {
            func_080493f4(id, func_0804a018(soundChannel));
        }

        func_080493e4(id, func_0804a1f4(soundChannel));
        if (func_0804a224(soundChannel) == FALSE) {
            return;
        }

        func_080493b0(id);
    }

    soundChannel->active = FALSE;
}


// Update PCM SoundChannel (All)
void func_0804a334(void) {
    u32 i;

    for (i = 0; i < D_03005b8c; i++) {
        func_0804a2c4(i);
    }

    midi_psg_update();
}


// Initialise PCM SoundChannels
void func_0804a360(u32 totalChannels, struct SoundChannel *soundChannelArray) {
    u32 i;

    D_03005b8c = totalChannels;
    D_030064bc = soundChannelArray;

    for (i = 0; i < D_03005b8c; i++) {
        D_030064bc[i].active = FALSE;
    }
}


// Get First Active PCM SoundChannel not at ADSR Stage RELEASE.
s32 func_0804a3a0(struct MidiChannel *midiChannel, u8 key) {
    struct SoundChannel *soundChannel = D_030064bc;
    struct BufferADSR *adsr;
    s32 i;

    for (i = 0; i < D_03005b8c; i++, soundChannel++) {
        if (soundChannel->active && (soundChannel->midiChannel == midiChannel) && (soundChannel->key == key)) {
            adsr = &D_030064bc[i].adsr;
            if (adsr->stage != ADSR_STAGE_RELEASE) {
                return i;
            }
        }
    }
    return -1;
}


// Get First Inactive PCM SoundChannel
s32 func_0804a3fc(void) {
    s32 i;

    for (i = 0; i < D_03005b8c; i++) {
        if (!D_030064bc[i].active) {
            return i;
        }
    }

    return -1;
}


// Get PCM SoundChannel with Lowest Volume
s32 func_0804a434(void) {
    struct SoundChannel *soundChannel;
    u32 lowestVolume, channelVolume;
    s32 index, i;

    index = -1;
    lowestVolume = 0x10000;

    for (i = 0, soundChannel = D_030064bc; i < D_03005b8c; i++, soundChannel++) {
        if (soundChannel->active && (soundChannel->adsr.stage == ADSR_STAGE_RELEASE)) {
            channelVolume = soundChannel->midiChannel->volumeWheel * soundChannel->velocity;
            if (channelVolume < lowestVolume) {
                lowestVolume = channelVolume;
                index = i;
            }
        }

    }

    return index;
}


// Get PCM SoundChannel with Lowest Volume (exclude ADSR)
s32 func_0804a48c(void) {
    u32 lowestVolume, channelVolume;
    s32 index, i;

    index = -1;
    lowestVolume = 0x10000;

    for (i = 0; i < D_03005b8c; i++) {
        if (D_030064bc[i].active) {
            channelVolume = D_030064bc[i].midiChannel->volumeWheel * D_030064bc[i].velocity;
            if (channelVolume < lowestVolume) {
                lowestVolume = channelVolume;
                index = i;
            }
        }
    }

    return index;
}


// Get PCM SoundChannel with Lowest Priority (https://decomp.me/scratch/erQPa)
#include "asm/lib_08049144/asm_0804a4e0.s"


// SoundChannel Midi 'Note Off' Event
void func_0804a5b4(struct MidiBus *midiBus, u32 track, u8 key) {
    struct SoundChannel *psgChannel, *pcmChannel;
    struct BufferADSR *adsr;
    s32 adsrState;
    s32 i;

    // Set ADSR Stage to RELEASE for all relevant PCM SoundChannels.
    do {
        if ((i = func_0804a3a0(&midiBus->midiChannel[track], key)) < 0) {
            break;
        }

        adsr = &D_030064bc[i].adsr;
        adsr->stage = ADSR_STAGE_RELEASE;
    } while (TRUE);

    // Set ADSR Stage to RELEASE for all relevant PSG SoundChannels.
    psgChannel = D_030056a0;
    adsrState = ADSR_STAGE_RELEASE;
    for (i = 3; i >= 0; i--, psgChannel++) {
        if (psgChannel->active && (psgChannel->midiChannel == &midiBus->midiChannel[track]) && (psgChannel->key == key)) {
            adsr = &psgChannel->adsr;
            adsr->stage = adsrState;
        }
    }
}


// Return First Most Replaceable DirectSound Channel
s32 func_0804a628(struct MidiBus *midiBus, u32 track, u8 key, u8 velocity) {
    s32 channel;

    // Return the first inactive buffer.
    channel = func_0804a3fc();
    if (channel >= 0) {
        return channel;
    }

    // Return the quietest buffer (below threshold; see function).
    channel = func_0804a434();
    if (channel >= 0) {
        return channel;
    }

    // Return a buffer of a lower priority.
    channel = func_0804a4e0(midiBus, track, velocity);
    if (channel >= 0) {
        return channel;
    }

    return -1;
}


// Convert PCM SoundChannel Panning to SampleStream Right Volume
u8 func_0804a65c(u8 panning) {
    return (panning >= 64) ? 127 : (panning * 2);
}


// Convert PCM SoundChannel Panning to SampleStream Left Volume
u8 func_0804a674(u8 panning) {
    return (panning < 64) ? 127 : ((127 - panning) * 2);
}


// Get Frequency of Midi Key
u32 func_0804a690(struct MidiBus *midiBus, u32 key) {
    u8 u = key;
    s8 s = key;

    if (s < 0) {
        s = 0;
        if (u < 191) s = 127;
        u = s;
    }

    return midiBus->tuningTable[u];
}


// SoundChannel Midi 'Note On' Event
#include "asm/lib_08049144/asm_0804a6b0.s"


/* MIDI CHANNEL OPERATIONS */


// Set MidiChannel Pitch Wheel [Evnt_E]
void func_0804aa40(struct MidiBus *midiBus, u32 track, u16 pitch) {
    midiBus->midiChannel[track].pitchWheel = pitch;
}


// Set MidiChannel Volume [Ctrl_07]
void func_0804aa5c(struct MidiBus *midiBus, u32 track, u8 volume) {
    midiBus->midiChannel[track].volume = volume;
}


// Set MidiChannel Panning [Ctrl_0A]
void func_0804aa7c(struct MidiBus *midiBus, u32 track, u8 panning) {
    midiBus->midiChannel[track].panning = panning;
    func_0804aae0(midiBus, track);
}


// Calculate MidiChannel Panning Envelope
u8 func_0804aaa4(struct MidiBus *midiBus, u32 track) {
    struct MidiChannel *midiChannel = &midiBus->midiChannel[track];
    s32 pan = midiChannel->panning + (midiBus->panning >> 1);

    if (midiChannel->modType == MOD_TYPE_PANNING) {
        pan += (midiChannel->modResult >> 1);
    }

    if (pan < 0) pan = 0;
    if (pan > 127) pan = 127;
    return pan;
}


// Update Sample Stream Panning
void func_0804aae0(struct MidiBus *midiBus, u32 track) {
    s32 pan, isStereo, i;
    struct MidiChannel *midiChannel;
    struct SoundChannel *soundChannel;

    pan = func_0804aaa4(midiBus, track);
    midiChannel = &midiBus->midiChannel[track];
    isStereo = (midiChannel->stereo) ? -1 : 1;

    for (i = 0, soundChannel = D_030064bc; i < D_03005b8c; i++, soundChannel++) {
        if (soundChannel->active && (soundChannel->midiChannel == midiChannel)) {
            pan += soundChannel->panning;
            if (pan < 0) pan = 0;
            if (pan > 127) pan = 127;
            func_080493c8(i, func_0804a674(pan), func_0804a65c(pan) * isStereo);
        }
    }
}


// Set MidiChannel Instrument/Patch [Evnt_C]
void func_0804ab88(struct MidiBus *midiBus, u32 track, u8 patch) {
    midiBus->midiChannel[track].instPatch = patch;
}


// Set MidiChannel Expression [Ctrl_0B]
void func_0804aba8(struct MidiBus *midiBus, u32 track, u8 expression) {
    midiBus->midiChannel[track].expression = expression;
}


// Set MidiChannel Bank Select [Ctrl_00; Ctrl_20]
void func_0804abc8(struct MidiBus *midiBus, u32 track, u16 select) {
    u16 bank = midiBus->midiChannel[track].bankSelect;

    // MIDI Controller 00 - ??
    if (select & 0x8000) {
        bank &= 0x3F80;         // Bits 0-6  = 0
        bank |= (select << 7);  // Bits 7-13 = var
    }
    // MIDI Controller 20 - ??
    else {
        bank &= 0x7F;   // Bits 7-13 = 0
        bank |= select; // Bits 0-6  = var
    }
    midiBus->midiChannel[track].bankSelect = bank;
}


// Set MidiChannel unk0_b0
void func_0804ac24(struct MidiBus *midiBus, u32 track, u8 arg) {
    midiBus->midiChannel[track].unk0_b0 = arg;
}


// Set MidiChannel Modulation Depth [Ctrl_01]
void func_0804ac40(struct MidiBus *midiBus, u32 track, u8 depth) {
    midiBus->midiChannel[track].modDepth = depth;
}


// Set MidiChannel unk4_b21
void func_0804ac60(struct MidiBus *midiBus, u32 track, u8 arg) {
    midiBus->midiChannel[track].unk4_b21 = arg;
}


// Set MidiChannel Filter EQ [Ctrl_48]
void func_0804ac80(struct MidiBus *midiBus, u32 track, u8 useFilter) {
    midiBus->midiChannel[track].filterEQ = useFilter;
}


// Set MidiChannel Modulation Type [Ctrl_16]
void func_0804aca0(struct MidiBus *midiBus, u32 track, u8 type) {
    midiBus->midiChannel[track].modType = type;
}


// Set MidiChannel unkC
void func_0804acc0(struct MidiBus *midiBus, u32 track, u8 arg) {
    midiBus->midiChannel[track].unkC = arg;
}


// Set MidiChannel Modulation Speed [Ctrl_15]
void func_0804accc(struct MidiBus *midiBus, u32 track, u16 speed) {
    midiBus->midiChannel[track].modSpeed = speed << 8;
}


// Set MidiChannel Modulation Delay [Ctrl_1A]
void func_0804acd8(struct MidiBus *midiBus, u32 track, u8 delay) {
    midiBus->midiChannel[track].modDelay = delay;
}


// Set MidiChannel Modulation Range [Ctrl_14]
void func_0804ace4(struct MidiBus *midiBus, u32 track, u8 range) {
    midiBus->midiChannel[track].modRange = range;
}


// Set MidiChannel Offset/Split Stereo Effect [Ctrl_4B]
void func_0804acf0(struct MidiBus *midiBus, u32 track, u32 isStereo) {
    midiBus->midiChannel[track].stereo = isStereo;
    func_0804aa7c(midiBus, track, midiBus->midiChannel[track].panning);
}


// Set MidiChannel Priority [Ctrl_21]
void func_0804ad18(struct MidiBus *midiBus, u32 i, u8 priority) {
    midiBus->midiChannel[i].priority = priority + midiBus->priority;
}


// Set MidiChannel Random Pitch Variation [Ctrl_52]
void func_0804ad38(struct MidiBus *midiBus, u32 track, u8 range) {
    u32 min = 0x8000u / (0x80 + range);
    u32 max = 0x10000u / (0x100 - range);

    midiBus->midiChannel[track].rndmPitchFloor = min;
    midiBus->midiChannel[track].rndmPitchRange = max - min;
    midiBus->midiChannel[track].rndmPitch = 0x100;
}


// Set MidiChannel unk1C [Ctrl_53]
void func_0804ad90(struct MidiBus *midiBus, u32 track, u8 arg) {
    midiBus->midiChannel[track].unk1C = arg;
}


// Set MidiChannel unk1D & unk1E [Ctrl_54]
void func_0804ad9c(struct MidiBus *midiBus, u32 track, u8 arg) {
    midiBus->midiChannel[track].unk1D = arg;
    midiBus->midiChannel[track].unk1E = arg;
}


/* MIDI BUS OPERATIONS */


// Set MidiBus Key
void func_0804adb0(struct MidiBus *midiBus, s8 key) {
    midiBus->key = key;
}


// Set MidiBus Volume
void func_0804adb4(struct MidiBus *midiBus, u8 volume) {
    midiBus->busVolume = volume;
}


// Set MidiBus Panning
void func_0804adb8(struct MidiBus *midiBus, s8 panning) {
    u32 i;

    midiBus->panning = panning;
    for (i = 0; i < midiBus->totalChannels; i++) {
        func_0804aae0(midiBus, i);
    }
}


// Set MidiBus Pitch
void func_0804ade4(struct MidiBus *midiBus, s16 pitch) {
    midiBus->pitch = pitch;
}


// Set MidiBus Modulation Range
void func_0804ade8(struct MidiBus *midiBus, u8 range) {
    u32 i;

    for (i = 0; i < midiBus->totalChannels; i++) {
        midiBus->midiChannel[i].modRange = range;
    }
}


// Set MidiBus unk8
void func_0804ae14(struct MidiBus *midiBus, u16 arg) {
    midiBus->unk8 = arg;
}


// Set MidiBus Tuning
void func_0804ae18(struct MidiBus *midiBus, u16 *table) {
    midiBus->tuningTable = table;
}
