#include "global.h"
#include "sound.h"
#include "lib_midi.h"


/* AUDIO LIBRARY - LOW-FREQUENCY OSCILLATOR */


// Initialise LFO
void midi_lfo_init(struct LFO *lfo, u8 preDelay, u8 attack, u8 arg3, u8 offset, u8 duration) {
    lfo->stage = LFO_STAGE_DISABLED;
    lfo->output = 0;
    lfo->ticks = 0;
    lfo->preDelay = preDelay;
    lfo->attack = attack;
    lfo->rate = 0x10000 / arg3;
    lfo->offset = offset;
    lfo->duration = duration;
}


// Start LFO [Ctrl_49]
void midi_lfo_start(struct LFO *lfo) {
    lfo->stage = LFO_STAGE_PRE_DELAY;
    lfo->ticks = 0;
    lfo->output = 0;
}


// Stop LFO [Ctrl_49; Ctrl_4A]
void midi_lfo_stop(struct LFO *lfo) {
    lfo->stage = LFO_STAGE_DISABLED;
    lfo->ticks = 0;
    lfo->output = 0;
}


// Update LFO
void midi_lfo_update(struct LFO *lfo, u32 delta) {
    u32 pos;
    s32 time, result;

    switch (lfo->stage) {
        case LFO_STAGE_DISABLED:
            lfo->output = 0;
            break;

        case LFO_STAGE_PRE_DELAY:
            lfo->ticks += delta;
            lfo->output = 0;
            if ((lfo->ticks >> 8) >= lfo->preDelay) {
                lfo->ticks = 0;
                lfo->stage = LFO_STAGE_ATTACK;
            }
            break;

        case LFO_STAGE_ATTACK:
        case LFO_STAGE_SUSTAIN:
            lfo->ticks += delta;
            time = (lfo->ticks >> 8);
            pos = (time * lfo->rate) >> 8;
            if (lfo->duration != 0) {
                if (pos > lfo->duration) pos = lfo->duration;
            }
            pos += lfo->offset;
            result = midi_sine_table[pos & 0xFF] >> 1;
            if (result > 0x7F) result = 0x7F;
            if (result < -0x80) result = -0x80;
            if (lfo->stage == LFO_STAGE_ATTACK) {
                if (time < lfo->attack) {
                    result = result * time / lfo->attack;
                } else {
                    lfo->stage = LFO_STAGE_SUSTAIN;
                }
            }
            lfo->output = result;
            break;
    }
}
