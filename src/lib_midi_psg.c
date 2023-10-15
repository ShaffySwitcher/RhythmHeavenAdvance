#include "global.h"
#include "sound.h"
#include "lib_midi.h"


/* AUDIO LIBRARY - PSG SOUND CHANNELS */


// STATIC VARIABLES
static u8  D_03001578[4];   // Special Enable Flag (checked by TONE 1 and WAVE)
static u16 D_03001580[4];   // Initial Envelope Volume
static u16 D_03001588[4];   // Frequency
static u8 *D_03001590;      // Wave Pattern
static s32 D_03001594;      // Unused


// Reset All PSG SoundChannels
void midi_psg_init(void) {
    u32 i;

    for (i = 0; i < 4; i++) {
        gMidiPSGChannelPool[i].active = FALSE;
    }

    for (i = 0; i < 4; i++) {
        D_03001578[i] = FALSE;
    }

    *D_03001590 = 0;
}


// Start PSG SoundChannel
void midi_psg_trigger_id(u32 id) {
    D_03001578[id] = TRUE;
    D_03001580[id] = -1;
    D_03001588[id] = -1;
}


// Convert Pitch to PSG Frequency Register Variable
u32 midi_psg_pitch_to_freq(u32 freq) {
    s32 psgFreq;

    if (freq == 0) {
        return 0;
    }

    psgFreq = 0x800 - ((0x400000 / freq) >> 5);

    if (psgFreq < 0) psgFreq = 0;
    if (psgFreq > 0x7FF) psgFreq = 0x7FF;

    return psgFreq;
}


// Convert Volume to PSG Volume Register Variable
u32 midi_psg_volume_to_env(u32 vol) {
    u32 psgEnv = vol;

    psgEnv = (vol >> 3);
    vol = psgEnv >> 1;
    psgEnv += psgEnv >> 1;

    if (psgEnv > 0xF) psgEnv = 0xF;

    return psgEnv;
}


// Update PSG SoundChannel
void midi_psg_update_id(u32 id) {
    struct SoundChannel *soundChannel;
    struct InstrumentPSG *instrument;
    volatile u16 *envReg, *freqReg;
    u32 frequency, volume;
    u32 noise, sweep, reset;
    volatile u32 dummy;

    soundChannel = &gMidiPSGChannelPool[id];
    if (!soundChannel->active) {
        return;
    }

    envReg = midi_psg_env_regs[id];
    freqReg = midi_psg_freq_regs[id];
    instrument = soundChannel->instrument.psg;

    if (instrument->length != 0 && !D_03001578[id]) {
        u32 soundControls = REG_SOUNDCNT_X;

        if (((soundControls >> id) & 1) == 0) {
            D_03001580[id] = 0;
            *envReg = 0;
            D_03001588[id] = SOUNDCNTX_SOUND_RESET;
            *freqReg = SOUNDCNTX_SOUND_RESET;
            soundChannel->active = FALSE;
        }

        return;
    }

    switch (id) {
        case PSG_PULSE_CHANNEL_1:
        case PSG_PULSE_CHANNEL_2:
        case PSG_WAVE_CHANNEL:
            frequency = midi_psg_pitch_to_freq(midi_note_update_pitch(soundChannel));
            if (instrument->length != 0) {
                frequency |= SOUNDCNTX_TIMED_SOUND;
            }
            break;

        case PSG_NOISE_CHANNEL:
        default:
            noise = soundChannel->frequency;
            if (noise < 21) noise = 21;
            if (noise > 80) noise = 80;
            frequency = midi_psg_noise_freq_table[noise - 21];
            frequency |= (instrument->dutyNoise << 3);
            break;
    }

    volume = midi_psg_volume_to_env(midi_note_update_volume(soundChannel));
    reset = (volume != D_03001580[id]) << 15;

    if ((volume != D_03001580[id]) || (frequency != D_03001588[id])) {
        switch (id) {
            case PSG_PULSE_CHANNEL_1:
                if (D_03001578[id]) {
                    sweep = (instrument->sweep != 0) ? instrument->sweep : SOUNDCNT1_SWEEP_DECREASE;
                    REG_SOUND1CNT_L = sweep;
                    *envReg = (volume << 12) | (instrument->dutyTone << 6) | (instrument->length);
                    *freqReg = reset | frequency;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    dummy = 0;
                    *freqReg = frequency | SOUNDCNTX_SOUND_RESET;
                } else if (instrument->sweep == 0) {
                    *envReg = (volume << 12) | (instrument->dutyTone << 6) | (instrument->length);
                    *freqReg = reset | frequency;
                }
                break;

            case PSG_PULSE_CHANNEL_2:
                *envReg = (volume << 12) | (instrument->dutyTone << 6) | (instrument->length);
                *freqReg = reset | frequency;
                break;

            case PSG_WAVE_CHANNEL:
                if (D_03001578[id]) {
                    REG_SOUNDCNT_L = 0xFF77; // Enable Stereo for All PSG Channels
                    frequency |= SOUNDCNTX_SOUND_RESET;
                    if ((u32 *)D_03001590 != instrument->wavetable) {
                        volatile u32 *waveDest = &REG_SGWR0;
                        u32 *waveSrc = instrument->wavetable;
                        u32 waveSelect, waveControls;

                        *waveDest++ = *waveSrc++;
                        *waveDest++ = *waveSrc++;
                        *waveDest++ = *waveSrc++;
                        *waveDest++ = *waveSrc++;

                        waveSelect = REG_SOUND3CNT_L;
                        waveControls = SOUNDCNT3_BANK_SELECT;
                        waveControls &= ~waveSelect;
                        waveControls |= SOUNDCNT3_OUTPUT_ENABLE;
                        REG_SOUND3CNT_L = waveControls;
                    }
                }
                *envReg = (midi_psg_wave_vol_table[volume >> 2]) | (instrument->length);
                *freqReg = frequency;
                break;

            case PSG_NOISE_CHANNEL:
                *envReg = (volume << 12) | (instrument->length);
                *freqReg = reset | frequency;
                break;
        }

        D_03001580[id] = volume;
        D_03001588[id] = frequency;
    }

    D_03001578[id] = 0;

    if (midi_note_update_adsr(soundChannel)) {
        D_03001580[id] = 0;
        *envReg = 0;
        D_03001588[id] = SOUNDCNTX_SOUND_RESET;
        *freqReg = SOUNDCNTX_SOUND_RESET;
        soundChannel->active = FALSE;
    }
}


// Update All PSG SoundChannels
void midi_psg_update(void) {
    struct SoundChannel *channel = gMidiPSGChannelPool;
    u16 controls = 0;
    u32 i;

    for (i = 0; i < 4; i++) {
        midi_psg_update_id(i);
        controls >>= 1;
        if (channel->active) {
            if (channel->midiChannel->panning <= 64) {
                controls |= (1 << 15); // Set Enable Flag LEFT
            }

            if (channel->midiChannel->panning >= 64) {
                controls |= (1 << 11); // Set Enable Flag RIGHT
            }
        }
        channel++;
    }

    controls |= (SOUNDCNT_DMG_LEFT_VOLUME_MASK | SOUNDCNT_DMG_RIGHT_VOLUME_MASK);
    REG_SOUNDCNT_L = controls;
}
