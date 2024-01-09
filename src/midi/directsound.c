#include "global.h"
#include "sound.h"
#include "midi.h"

asm(".include \"include/gba.inc\"");//Temporary

extern u32 __udivmoddi4(u64, u64);


/* AUDIO LIBRARY - DIRECTSOUND */


// INTERRUPT_DMA2
void midi_interrupt_dma2(void) {
    volatile u32 dummy;
    u32 samples;
    u32 resetDMA;

    if (!gMidiDirectSoundEnabled) {
        return;
    }

    resetDMA = FALSE;

    D_030064a0 += 4;
    if (D_030064a0 >= gMidiPCMBufSize32) {
        D_030064a0 -= gMidiPCMBufSize32;
    }

    // Buffer Underrun Handler
    if (D_030064a0 == D_03005b40) {
        D_030064a0 = (D_030064a0 != 0) ? D_030064a0 - 4 : gMidiPCMBufSize32 - 4;

        // Write the last-read sample across all of the previous 16 samples.
        samples = gMidiPCMBufR[D_030064a0 + 3] >> 24;
        samples |= (samples << 8);
        samples |= (samples << 16);
        gMidiPCMBufR[D_030064a0 + 0] = gMidiPCMBufR[D_030064a0 + 1] = gMidiPCMBufR[D_030064a0 + 2] = gMidiPCMBufR[D_030064a0 + 3] = samples;
        samples = gMidiPCMBufL[D_030064a0 + 3] >> 24;
        samples |= (samples << 8);
        samples |= (samples << 16);
        gMidiPCMBufL[D_030064a0 + 0] = gMidiPCMBufL[D_030064a0 + 1] = gMidiPCMBufL[D_030064a0 + 2] = gMidiPCMBufL[D_030064a0 + 3] = samples;

        resetDMA = TRUE;
    }

    if (D_030064a0 == 0) {
        resetDMA = TRUE;
    }

    if (!resetDMA) {
        return;
    }

    switch (gMidiSoundMode) {
        case DIRECTSOUND_MODE_STEREO:
            REG_DMA1CNT_H = 0;
            REG_DMA2CNT_H = 0;
            REG_DMA1SAD = (u32)&gMidiPCMBufR[D_030064a0];
            REG_DMA2SAD = (u32)&gMidiPCMBufL[D_030064a0];
            REG_DMA1CNT_H = (DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_INCREMENT
                                | DMACNT_START_MODE_VBLANK | DMACNT_START_MODE_FIFO_EMPTY
                                | DMACNT_REPEAT | DMACNT_SIZE | DMACNT_ENABLE);
            dummy = 0;
            dummy = 0;
            REG_DMA2CNT_H = (DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_INCREMENT
                                | DMACNT_START_MODE_VBLANK | DMACNT_START_MODE_FIFO_EMPTY
                                | DMACNT_REPEAT | DMACNT_SIZE | DMACNT_IRQ | DMACNT_ENABLE);
            dummy = 0;
            dummy = 0;
            break;

        case DIRECTSOUND_MODE_MONO1:
            REG_DMA2CNT_H = 0;
            REG_DMA2SAD = (u32)&gMidiPCMBufR[D_030064a0];
            REG_DMA2CNT_H = (DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_INCREMENT
                                | DMACNT_START_MODE_VBLANK | DMACNT_START_MODE_FIFO_EMPTY
                                | DMACNT_REPEAT | DMACNT_SIZE | DMACNT_IRQ | DMACNT_ENABLE);
            dummy = 0;
            dummy = 0;
            break;

        case DIRECTSOUND_MODE_MONO2:
            REG_DMA1CNT_H = 0;
            REG_DMA2CNT_H = 0;
            REG_DMA1SAD = (u32)&gMidiPCMBufR[D_030064a0];
            REG_DMA2SAD = (u32)&gMidiPCMBufR[D_030064a0];
            REG_DMA1CNT_H = (DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_INCREMENT
                                | DMACNT_START_MODE_VBLANK | DMACNT_START_MODE_FIFO_EMPTY
                                | DMACNT_REPEAT | DMACNT_SIZE | DMACNT_ENABLE);
            dummy = 0;
            dummy = 0;
            REG_DMA2CNT_H = (DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_INCREMENT
                                | DMACNT_START_MODE_VBLANK | DMACNT_START_MODE_FIFO_EMPTY
                                | DMACNT_REPEAT | DMACNT_SIZE | DMACNT_IRQ | DMACNT_ENABLE);
            dummy = 0;
            dummy = 0;
            break;
    }
}


// Load Sample
void midi_sampler_load(u32 id, struct SampleData *sample) {
    struct SampleStream *stream = &gMidiSamplerPool[id];
    u32 baseKeyFrequency, baseKeySampleRate;
    u64 sampleRate;

    stream->active = FALSE;
    stream->sample = sample->waveform;
    stream->length = sample->length / 4;

    if ((sample->loopStart | sample->loopEnd) != 0) {
        stream->loopStart = sample->loopStart << 14;
        stream->loopEnd = sample->loopEnd << 14;
    } else {
        stream->loopStart = sample->length << 14;
        stream->loopEnd = sample->length << 14;
    }

    baseKeyFrequency = midi_tuning_table[sample->pitch];
    baseKeySampleRate = gMidiDMASampleRate * baseKeyFrequency;
    sampleRate = (u64)sample->sampleRate << 28;
    stream->rate = __udivmoddi4(sampleRate + baseKeySampleRate - 1, baseKeySampleRate);
}


// Start Sampler
void midi_sampler_start(u32 id) {
    gMidiSamplerPool[id].position = 0;
    gMidiSamplerPool[id].active = TRUE;
}


// Stop Sampler
void midi_sampler_stop(u32 id) {
    gMidiSamplerPool[id].active = FALSE;
}


// Set Sampler Stereo Bias
void midi_sampler_set_stereo_bias(u32 id, u32 left, u32 right) {
    gMidiSamplerPool[id].leftBias = left;
    gMidiSamplerPool[id].rightBias = right;
}


// Set Sampler Volume
void midi_sampler_set_volume(u32 id, u32 volume) {
    gMidiSamplerPool[id].volume = volume;
}


// Set Sampler Frequency
void midi_sampler_set_frequency(u32 id, u32 frequency) {
    struct SampleStream *stream = &gMidiSamplerPool[id];

    if (frequency == 0) {
        stream->frequency = 0x4000;
        stream->hasFrequency = FALSE;
    } else {
        stream->frequency = ((u64)stream->rate * frequency) >> 14;
        stream->hasFrequency = (stream->frequency != 0x4000);
    }
}


// Set Sampler Enable Fast Resample
void midi_sampler_set_enable_fast_resample(u32 id, u32 enable) {
    gMidiSamplerPool[id].fastRead = enable;
}


// Set Sampler Enable Equalizer
void midi_sampler_set_enable_eq(u32 id, u32 enable) {
    gMidiSamplerPool[id].equalize = enable;
}


/* DIRECTSOUND OPERATIONS */


// Initialise DirectSound (https://decomp.me/scratch/ohUd1)
#include "asm/lib_midi/asm_08049490.s"


// Update DirectSound (https://decomp.me/scratch/jRyYQ)
void midi_directsound_update(void) {
    ThumbFunc readPcmFixed, readPcmAccurate, readPcmFast;
    ThumbFunc applyEQ;
    u32 noSamplesProcessed;
    struct SampleStream *streams;
    s32 wordsPerFrame, unreadProcessedWords;
    u32 totalWordsToProcess, wordBatchSize;
    u32 sampleBufferPos;
    u32 eqWasUsed;
    u8 eqPosition;
    u16 eqHighGain;
    u32 eqSmoothing;
    u32 i;

    if (!gMidiDirectSoundEnabled) {
        return;
    }

    readPcmFixed = ALIGN_THUMB_FUNC(midi_asm_read_pcm_fixed);
    readPcmAccurate = ALIGN_THUMB_FUNC(midi_asm_read_pcm_accurate);
    readPcmFast = ALIGN_THUMB_FUNC(midi_asm_read_pcm_fast);
    applyEQ = ALIGN_THUMB_FUNC(midi_asm_apply_eq);
    streams = gMidiSamplerPool;

    wordsPerFrame = (gMidiSamplesPerFrame + 259) / 4;
    if (wordsPerFrame > gMidiPCMBufSize32) {
        wordsPerFrame = gMidiPCMBufSize32;
    }

    unreadProcessedWords = D_03005b40 - D_030064a0;
    if (unreadProcessedWords < 0) {
        unreadProcessedWords += gMidiPCMBufSize32;
    }

    totalWordsToProcess = (wordsPerFrame > unreadProcessedWords) ? (wordsPerFrame - unreadProcessedWords) : 0;

    eqPosition = gMidiEQ_Area[0];
    if ((gMidiEQ_PrevPos >= 0) && (eqPosition > 127)) { // High-Pass
        gMidiEQ_Area[1] = 0;
        gMidiEQ_Area[2] = 0;
    } else if ((gMidiEQ_PrevPos < 0) && (eqPosition <= 127)) { // Low-Pass
        gMidiEQ_Area[1] = gMidiSampleScratch[gMidiScratchSize - 2];
        gMidiEQ_Area[2] = gMidiSampleScratch[gMidiScratchSize - 1];
    }
    gMidiEQ_PrevPos = eqPosition;

    while (totalWordsToProcess != 0) {
        wordBatchSize = gMidiScratchSize / 4;
        if (wordBatchSize > totalWordsToProcess) {
            wordBatchSize = totalWordsToProcess;
        }

        (ALIGN_THUMB_FUNC(midi_asm_update_scratch))(wordBatchSize);

        noSamplesProcessed = TRUE;
        eqWasUsed = FALSE;
        eqPosition = gMidiEQ_Area[0];
        eqHighGain = 0;

        // Read samples that will be filtered by EQ.
        for (i = 0; i < gMidiSamplerCount; i++) {
            eqSmoothing = 256 - eqPosition;

            if (streams[i].active) {
                if (streams[i].equalize || gMidiEQ_IsGlobal) {
                    noSamplesProcessed = FALSE;
                    eqWasUsed = TRUE;
                    if (eqPosition > 127) {
                        eqHighGain = (streams[i].volume * eqSmoothing * gMidiEQ_HighGain) >> 7;
                    }
                    gMidiSamplerGain = eqHighGain;

                    if (!streams[i].hasFrequency) {
                        readPcmFixed(wordBatchSize, &streams[i]);
                    } else if (streams[i].fastRead) {
                        readPcmFast(wordBatchSize, &streams[i]);
                    } else {
                        readPcmAccurate(wordBatchSize, &streams[i]);
                    }
                }
            }
        }

        if (eqWasUsed) {
            applyEQ(wordBatchSize, gMidiEQ_Area);
        }
        gMidiSamplerGain = 0;

        // Read unfiltered samples.
        for (i = 0; i < gMidiSamplerCount; i++) {
            if (streams[i].active) {
                if (!streams[i].equalize && !gMidiEQ_IsGlobal) {
                    noSamplesProcessed = FALSE;

                    if (!streams[i].hasFrequency) {
                        readPcmFixed(wordBatchSize, &streams[i]);
                    } else if (streams[i].fastRead) {
                        readPcmFast(wordBatchSize, &streams[i]);
                    } else {
                        readPcmAccurate(wordBatchSize, &streams[i]);
                    }
                }
            }
        }

        gMidiSampleTable[0x3FF] = (noSamplesProcessed) ? 0 : -1;
        (ALIGN_THUMB_FUNC(midi_asm_update_buffer))(wordBatchSize);

        sampleBufferPos = D_03005b40 + wordBatchSize;
        while (sampleBufferPos >= gMidiPCMBufSize32) {
            sampleBufferPos -= gMidiPCMBufSize32;
        }
        D_03005b40 = sampleBufferPos;

        totalWordsToProcess -= wordBatchSize;
        gMidiVCOUNTAtSamplerEnd = REG_VCOUNT;
    }
}


// Flush(?) DirectSound (Unused)
void midi_directsound_flush(void) {
    volatile u32 dummy;

    gMidiDirectSoundEnabled = FALSE;

    if (gMidiSoundMode != DIRECTSOUND_MODE_MONO1) {
        REG_DMA1CNT = ((DMACNT_ENABLE | DMACNT_SIZE | DMACNT_DEST_INC_TYPE_UNCHANGED) << 16) + (16 / 4);
        dummy = 0;
        dummy = 1;
        REG_DMA1CNT_H = DMACNT_SIZE;
    }

    REG_DMA2CNT = ((DMACNT_ENABLE | DMACNT_SIZE | DMACNT_DEST_INC_TYPE_UNCHANGED) << 16) + (16 / 4);
    dummy = 0;
    dummy = 1;
    REG_DMA2CNT_H = DMACNT_SIZE;
}


// Set Reverb Controllers
void midi_directsound_set_reverb(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    gMidiRVB_Control1 = arg0;
    gMidiRVB_Control2 = arg1;
    gMidiRVB_Control3 = arg2;
    gMidiRVB_Control4 = arg3;
}


// Check if Sampler is Active
u32 midi_sampler_is_active(u32 id) {
    return gMidiSamplerPool[id].active;
}


// Set Equalizer Position
void midi_equalizer_set_position(u32 position) {
    if (!gMidiEQ_IsGlobal) {
        gMidiEQ_Area[0] = position;
    }
}


// Set Equalizer High Gain
void midi_equalizer_set_high_gain(u8 gain) {
    if (!gMidiEQ_IsGlobal) {
        gMidiEQ_HighGain = gain;
    }
}


// Initialise Equalizer
void midi_equalizer_init(void) {
    gMidiEQ_Area[2] = 0;
    gMidiEQ_Area[1] = 0;
    gMidiEQ_Area[0] = 0;
    gMidiEQ_PrevPos = 0;
    gMidiSampleScratch[gMidiScratchSize - 2] = gMidiSampleScratch[gMidiScratchSize - 1] = 0;
}


// Reset Equalizer
void midi_equalizer_reset(void) {
    if (!gMidiEQ_IsGlobal) {
        midi_equalizer_init();
    }
}


// Set Equalizer
void midi_equalizer_set(u32 enable, u32 position, u32 gain) {
    enable = (enable != FALSE);

    if (gMidiEQ_IsGlobal != enable) {
        midi_equalizer_init();
        gMidiEQ_IsGlobal = enable;
        gMidiEQ_Area[0] = position;
        gMidiEQ_HighGain = gain;
    }
}
