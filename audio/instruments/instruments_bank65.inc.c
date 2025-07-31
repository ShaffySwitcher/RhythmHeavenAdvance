extern struct SampleData s_extra_game_fm_data;
struct InstrumentPCM instrument_pcm_egs0 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x48,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_extra_game_fm_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(127.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(31.0f),
};

extern struct SampleData s_extra_game_oboe_data;
struct InstrumentPCM instrument_pcm_egs1 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x54,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_extra_game_oboe_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(70.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(20.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(6.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(63.0f),
};

extern struct SampleData s_extra_game_marimba_data;
struct InstrumentPCM instrument_pcm_egs2 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x60,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_extra_game_marimba_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(70.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(20.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(6.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(63.0f),
};

extern struct SampleData s_extra_game_bass_data;
struct InstrumentPCM instrument_pcm_egs3 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x1E,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_extra_game_bass_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(70.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(20.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(6.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(0.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(63.0f),
};

extern struct SampleData s_extra_game_organ_data;
struct InstrumentPCM instrument_pcm_egs4 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x4F,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &s_extra_game_organ_data,
    /* ADSR Init */ FLOAT_TO_Q8_16(90.0f),
    /* ADSR Sus  */ FLOAT_TO_Q8_16(80.0f),
    /* ADSR Atk  */ FLOAT_TO_Q8_16(20.0f),
    /* ADSR Dec  */ FLOAT_TO_Q8_16(6.0f),
    /* ADSR Fade */ FLOAT_TO_Q8_16(1.0f),
    /* ADSR Rel  */ FLOAT_TO_Q8_16(63.0f),
};

struct InstrumentPSG instrument_psg_egs0 = {
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

struct InstrumentPSG instrument_psg_egs1 = {
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