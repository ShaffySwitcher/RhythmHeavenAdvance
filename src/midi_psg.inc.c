

/* AUDIO LIBRARY - PSG SOUND CHANNELS */


// Stop All PSG SoundChannels
void func_0804af30(void) {
    u32 i;

    for (i = 0; i < 4; i++) {
        D_030056a0[i].active = FALSE;
    }

    for (i = 0; i < 4; i++) {
        D_03001578[i] = 0;
    }

    *D_03001590 = 0;
}


// Initialise PSG SoundChannels
void func_0804af74(u32 id) {
    D_03001578[id] = 1;
    D_03001580[id] = -1;
    D_03001588[id] = -1;
}


// Convert Pitch Envelope to PSG Frequency Register Variable
u32 func_0804afa4(u32 freq) {
    s32 psgFreq;

    if (freq == 0) {
        return 0;
    }

    psgFreq = 0x800 - ((0x400000 / freq) >> 5);

    if (psgFreq < 0) psgFreq = 0;
    if (psgFreq > 0x7FF) psgFreq = 0x7FF;

    return psgFreq;
}


// Convert Volume Envelope to PSG Volume Register Variable
u32 func_0804afd8(u32 vol) {
    u32 psgEnv = vol;

    psgEnv = (vol >> 3);
    vol = psgEnv >> 1;
    psgEnv += psgEnv >> 1;

    if (psgEnv > 0xF) psgEnv = 0xF;

    return psgEnv;
}


// Update PSG SoundChannel
#include "asm/lib_08049144/asm_0804aff0.s"


// Update All PSG SoundChannels
void func_0804b2c4(void) {
    struct SoundChannel *channel = D_030056a0;
    u16 regControls = 0;
    u32 i;

    for (i = 0; i < 4; i++) {
        // Update PSG Channel
        func_0804aff0(i);

        // Set Panning
        regControls >>= 1;
        if (channel->active) {
            // Set Enable Flag LEFT
            if (channel->midiChannel->panning <= 64) {
                regControls |= (1 << 15);
            }
            // Set Enable Flag RIGHT
            if (channel->midiChannel->panning >= 64) {
                regControls |= (1 << 11);
            }
        }
        channel++;
    }

    // Set Master Volume to 7 (LEFT & RIGHT)
    regControls |= (SOUNDCNT_DMG_LEFT_VOLUME_MASK | SOUNDCNT_DMG_RIGHT_VOLUME_MASK);
    // Store to IO Register
    REG_SOUNDCNT_L = regControls;
}
