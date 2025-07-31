extern struct SampleData s_debug_palmtree_drums_data;
struct InstrumentPCM instrument_pcm_dpt0 = {
    /* Type      */ INSTRUMENT_PCM_FIXED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_drums_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(127.0f),
};

extern struct SampleData s_debug_palmtree_ep1_data;
struct InstrumentPCM instrument_pcm_dpt1 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_ep1_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(5.875f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(64.0f),
};

extern struct SampleData s_debug_palmtree_bass_data;
struct InstrumentPCM instrument_pcm_dpt2 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x24,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_bass_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(127.0f),
};

extern struct SampleData s_debug_palmtree_flute_data;
struct InstrumentPCM instrument_pcm_dpt3 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x48,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_flute_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(90.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(30.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(4.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(1.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(125.0f),
};

extern struct SampleData s_debug_palmtree_strings_data;
struct InstrumentPCM instrument_pcm_dpt5 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x48,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_strings_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(70.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(20.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(6.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(63.0f),
};

extern struct SampleData s_debug_palmtree_piano_data;
struct InstrumentPCM instrument_pcm_dpt4 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x48,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_debug_palmtree_piano_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(15.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(125.0f),
};

struct InstrumentPSG instrument_psg_dpt0 = {
    /* Type      */ INSTRUMENT_PSG,
    /* Key       */ 0x3C,
    /* Panning   */ 127,
    /* PSG Wave  */ psg_wave_sine,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(127.0f),
    /* PSG Chnl  */ PSG_WAVE_CHANNEL,
    /* PSG Len   */ 0,
    /* PSG Sweep */ 0,
    /* PSG Tone  */ 0,
    /* PSG Noise */ 0,
};

struct InstrumentPSG instrument_psg_dpt1 = {
    /* Type      */ INSTRUMENT_PSG,
    /* Key       */ 0x3C,
    /* Panning   */ 127,
    /* PSG Wave  */ NULL,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(127.0f),
    /* PSG Chnl  */ PSG_PULSE_CHANNEL_1,
    /* PSG Len   */ 0,
    /* PSG Sweep */ 0,
    /* PSG Tone  */ PSG_TONE_DUTY_50,
    /* PSG Noise */ 0,
};