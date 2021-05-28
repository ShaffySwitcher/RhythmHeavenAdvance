#include "global.h"

struct MidiData {
    const void *romAddress;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    void *unkC;
    s16 unk10;
};

extern const u32 Lesson1_mid;
const struct MidiData Lesson1MidiData = {
    /* ROM Address */ &Lesson1_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcbc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a530,
    /* unk10 */       0x3e8
};

extern const u32 Lesson2_mid;
const struct MidiData Lesson2MidiData = {
    /* ROM Address */ &Lesson2_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcbf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a534,
    /* unk10 */       0x3e9
};

extern const u32 Lesson3_mid;
const struct MidiData Lesson3MidiData = {
    /* ROM Address */ &Lesson3_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcb9,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a538,
    /* unk10 */       0x3ea
};

extern const u32 L1_pat01_mid;
const struct MidiData L1_pat01MidiData = {
    /* ROM Address */ &L1_pat01_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a53c,
    /* unk10 */       0x3eb
};

extern const u32 L1_pat02_mid;
const struct MidiData L1_pat02MidiData = {
    /* ROM Address */ &L1_pat02_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a540,
    /* unk10 */       0x3ec
};

extern const u32 L1_pat03_mid;
const struct MidiData L1_pat03MidiData = {
    /* ROM Address */ &L1_pat03_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a544,
    /* unk10 */       0x3ed
};

extern const u32 L1_pat04_mid;
const struct MidiData L1_pat04MidiData = {
    /* ROM Address */ &L1_pat04_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a548,
    /* unk10 */       0x3ee
};

extern const u32 L1_pat05_mid;
const struct MidiData L1_pat05MidiData = {
    /* ROM Address */ &L1_pat05_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a54c,
    /* unk10 */       0x3ef
};

extern const u32 L1_pat06_mid;
const struct MidiData L1_pat06MidiData = {
    /* ROM Address */ &L1_pat06_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a550,
    /* unk10 */       0x3f0
};

extern const u32 L1_pat07_mid;
const struct MidiData L1_pat07MidiData = {
    /* ROM Address */ &L1_pat07_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a554,
    /* unk10 */       0x3f1
};

extern const u32 L1_pat08_mid;
const struct MidiData L1_pat08MidiData = {
    /* ROM Address */ &L1_pat08_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a558,
    /* unk10 */       0x3f2
};

extern const u32 L1_pat09_mid;
const struct MidiData L1_pat09MidiData = {
    /* ROM Address */ &L1_pat09_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a55c,
    /* unk10 */       0x3f3
};

extern const u32 L1_pat10_mid;
const struct MidiData L1_pat10MidiData = {
    /* ROM Address */ &L1_pat10_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a560,
    /* unk10 */       0x3f4
};

extern const u32 L1_pat11_mid;
const struct MidiData L1_pat11MidiData = {
    /* ROM Address */ &L1_pat11_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a564,
    /* unk10 */       0x3f5
};

extern const u32 L1_pat12_mid;
const struct MidiData L1_pat12MidiData = {
    /* ROM Address */ &L1_pat12_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a568,
    /* unk10 */       0x3f6
};

extern const u32 L1_pat13_mid;
const struct MidiData L1_pat13MidiData = {
    /* ROM Address */ &L1_pat13_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a56c,
    /* unk10 */       0x3f7
};

extern const u32 L1_pat14_mid;
const struct MidiData L1_pat14MidiData = {
    /* ROM Address */ &L1_pat14_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a570,
    /* unk10 */       0x3f8
};

extern const u32 L1_pat15_mid;
const struct MidiData L1_pat15MidiData = {
    /* ROM Address */ &L1_pat15_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a574,
    /* unk10 */       0x3f9
};

extern const u32 L1_pat16_mid;
const struct MidiData L1_pat16MidiData = {
    /* ROM Address */ &L1_pat16_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a578,
    /* unk10 */       0x3fa
};

extern const u32 L2_pat00_mid;
const struct MidiData L2_pat00MidiData = {
    /* ROM Address */ &L2_pat00_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a57c,
    /* unk10 */       0x3fb
};

extern const u32 L2_pat01_mid;
const struct MidiData L2_pat01MidiData = {
    /* ROM Address */ &L2_pat01_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a580,
    /* unk10 */       0x3fc
};

extern const u32 L2_pat02_mid;
const struct MidiData L2_pat02MidiData = {
    /* ROM Address */ &L2_pat02_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a584,
    /* unk10 */       0x3fd
};

extern const u32 L2_pat03_mid;
const struct MidiData L2_pat03MidiData = {
    /* ROM Address */ &L2_pat03_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a588,
    /* unk10 */       0x3fe
};

extern const u32 L2_pat04_mid;
const struct MidiData L2_pat04MidiData = {
    /* ROM Address */ &L2_pat04_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a58c,
    /* unk10 */       0x3ff
};

extern const u32 L2_pat05_mid;
const struct MidiData L2_pat05MidiData = {
    /* ROM Address */ &L2_pat05_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a590,
    /* unk10 */       0x400
};

extern const u32 L2_pat06_mid;
const struct MidiData L2_pat06MidiData = {
    /* ROM Address */ &L2_pat06_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a594,
    /* unk10 */       0x401
};

extern const u32 L2_pat07_mid;
const struct MidiData L2_pat07MidiData = {
    /* ROM Address */ &L2_pat07_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a598,
    /* unk10 */       0x402
};

extern const u32 L2_pat08_mid;
const struct MidiData L2_pat08MidiData = {
    /* ROM Address */ &L2_pat08_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a59c,
    /* unk10 */       0x403
};

extern const u32 L2_pat09_mid;
const struct MidiData L2_pat09MidiData = {
    /* ROM Address */ &L2_pat09_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5a0,
    /* unk10 */       0x404
};

extern const u32 L2_pat10_mid;
const struct MidiData L2_pat10MidiData = {
    /* ROM Address */ &L2_pat10_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5a4,
    /* unk10 */       0x405
};

extern const u32 L2_pat11_mid;
const struct MidiData L2_pat11MidiData = {
    /* ROM Address */ &L2_pat11_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5a8,
    /* unk10 */       0x406
};

extern const u32 L2_pat12_mid;
const struct MidiData L2_pat12MidiData = {
    /* ROM Address */ &L2_pat12_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5ac,
    /* unk10 */       0x407
};

extern const u32 L2_pat13_mid;
const struct MidiData L2_pat13MidiData = {
    /* ROM Address */ &L2_pat13_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5b0,
    /* unk10 */       0x408
};

extern const u32 L2_pat14_mid;
const struct MidiData L2_pat14MidiData = {
    /* ROM Address */ &L2_pat14_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5b4,
    /* unk10 */       0x409
};

extern const u32 L2_pat15_mid;
const struct MidiData L2_pat15MidiData = {
    /* ROM Address */ &L2_pat15_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5b8,
    /* unk10 */       0x40a
};

extern const u32 L2_pat16_mid;
const struct MidiData L2_pat16MidiData = {
    /* ROM Address */ &L2_pat16_mid,
    /* unk4 */        0x83c0,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5bc,
    /* unk10 */       0x40b
};

extern const u32 L3_intro_mid;
const struct MidiData L3_introMidiData = {
    /* ROM Address */ &L3_intro_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5c0,
    /* unk10 */       0x40c
};

extern const u32 L3_C32_mid;
const struct MidiData L3_C32MidiData = {
    /* ROM Address */ &L3_C32_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5c4,
    /* unk10 */       0x40d
};

extern const u32 L3_C32_no_swing_mid;
const struct MidiData L3_C32_no_swingMidiData = {
    /* ROM Address */ &L3_C32_no_swing_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5c8,
    /* unk10 */       0x40e
};

extern const u32 L3_C33_mid;
const struct MidiData L3_C33MidiData = {
    /* ROM Address */ &L3_C33_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5cc,
    /* unk10 */       0x40f
};

extern const u32 L3_C34_mid;
const struct MidiData L3_C34MidiData = {
    /* ROM Address */ &L3_C34_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5d0,
    /* unk10 */       0x410
};

extern const u32 L3_C35_mid;
const struct MidiData L3_C35MidiData = {
    /* ROM Address */ &L3_C35_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5d4,
    /* unk10 */       0x411
};

extern const u32 L3_C36_mid;
const struct MidiData L3_C36MidiData = {
    /* ROM Address */ &L3_C36_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5d8,
    /* unk10 */       0x412
};

extern const u32 L3_C37_mid;
const struct MidiData L3_C37MidiData = {
    /* ROM Address */ &L3_C37_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5dc,
    /* unk10 */       0x413
};

extern const u32 L3_C38_mid;
const struct MidiData L3_C38MidiData = {
    /* ROM Address */ &L3_C38_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5e0,
    /* unk10 */       0x414
};

extern const u32 L3_C39_mid;
const struct MidiData L3_C39MidiData = {
    /* ROM Address */ &L3_C39_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5e4,
    /* unk10 */       0x415
};

extern const u32 L3_C40_mid;
const struct MidiData L3_C40MidiData = {
    /* ROM Address */ &L3_C40_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5e8,
    /* unk10 */       0x416
};

extern const u32 L3_C41_end_mid;
const struct MidiData L3_C41_endMidiData = {
    /* ROM Address */ &L3_C41_end_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5ec,
    /* unk10 */       0x417
};

extern const u32 s_aimu_bgm_mid;
const struct MidiData s_aimu_bgmMidiData = {
    /* ROM Address */ &s_aimu_bgm_mid,
    /* unk4 */        0x640,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5f0,
    /* unk10 */       0x418
};

extern const u32 s_menu_bgm_mid;
const struct MidiData s_menu_bgmMidiData = {
    /* ROM Address */ &s_menu_bgm_mid,
    /* unk4 */        0x660,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5f4,
    /* unk10 */       0x419
};

extern const u32 s_shibafu1_bgm_mid;
const struct MidiData s_shibafu1_bgmMidiData = {
    /* ROM Address */ &s_shibafu1_bgm_mid,
    /* unk4 */        0x8680,
    /* unk6 */        0xca5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5f8,
    /* unk10 */       0x41a
};

extern const u32 s_shibafu2_bgm_mid;
const struct MidiData s_shibafu2_bgmMidiData = {
    /* ROM Address */ &s_shibafu2_bgm_mid,
    /* unk4 */        0x6a0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a5fc,
    /* unk10 */       0x41b
};

extern const u32 s_tebyoushi_bgm_mid;
const struct MidiData s_tebyoushi_bgmMidiData = {
    /* ROM Address */ &s_tebyoushi_bgm_mid,
    /* unk4 */        0x6c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a600,
    /* unk10 */       0x41c
};

extern const u32 s_tebyoushi_dexy_bgm_mid;
const struct MidiData s_tebyoushi_dexy_bgmMidiData = {
    /* ROM Address */ &s_tebyoushi_dexy_bgm_mid,
    /* unk4 */        0x800,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a604,
    /* unk10 */       0x41d
};

extern const u32 s_tapdance_bgm_mid;
const struct MidiData s_tapdance_bgmMidiData = {
    /* ROM Address */ &s_tapdance_bgm_mid,
    /* unk4 */        0x6e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a608,
    /* unk10 */       0x41e
};

extern const u32 s_tapdance_ska_bgm_mid;
const struct MidiData s_tapdance_ska_bgmMidiData = {
    /* ROM Address */ &s_tapdance_ska_bgm_mid,
    /* unk4 */        0x820,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a60c,
    /* unk10 */       0x41f
};

extern const u32 s_trex_bgm_mid;
const struct MidiData s_trex_bgmMidiData = {
    /* ROM Address */ &s_trex_bgm_mid,
    /* unk4 */        0x700,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a610,
    /* unk10 */       0x420
};

extern const u32 s_trexnew_bgm1_mid;
const struct MidiData s_trexnew_bgm1MidiData = {
    /* ROM Address */ &s_trexnew_bgm1_mid,
    /* unk4 */        0x860,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a614,
    /* unk10 */       0x421
};

extern const u32 s_trexnew_bgm2_mid;
const struct MidiData s_trexnew_bgm2MidiData = {
    /* ROM Address */ &s_trexnew_bgm2_mid,
    /* unk4 */        0x860,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a618,
    /* unk10 */       0x422
};

extern const u32 s_poly_bgm_mid;
const struct MidiData s_poly_bgmMidiData = {
    /* ROM Address */ &s_poly_bgm_mid,
    /* unk4 */        0x720,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a61c,
    /* unk10 */       0x423
};

extern const u32 s_shuji_bgm1_mid;
const struct MidiData s_shuji_bgm1MidiData = {
    /* ROM Address */ &s_shuji_bgm1_mid,
    /* unk4 */        0x740,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a620,
    /* unk10 */       0x424
};

extern const u32 s_shuji_bgm2_mid;
const struct MidiData s_shuji_bgm2MidiData = {
    /* ROM Address */ &s_shuji_bgm2_mid,
    /* unk4 */        0x740,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a624,
    /* unk10 */       0x425
};

extern const u32 s_shuji_bgm3_mid;
const struct MidiData s_shuji_bgm3MidiData = {
    /* ROM Address */ &s_shuji_bgm3_mid,
    /* unk4 */        0x740,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a628,
    /* unk10 */       0x426
};

extern const u32 s_shuji_bgm_end_mid;
const struct MidiData s_shuji_bgm_endMidiData = {
    /* ROM Address */ &s_shuji_bgm_end_mid,
    /* unk4 */        0x740,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a62c,
    /* unk10 */       0x427
};

extern const u32 s_puipui_bgm_mid;
const struct MidiData s_puipui_bgmMidiData = {
    /* ROM Address */ &s_puipui_bgm_mid,
    /* unk4 */        0x760,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a630,
    /* unk10 */       0x428
};

extern const u32 s_puipui_intro_bgm_mid;
const struct MidiData s_puipui_intro_bgmMidiData = {
    /* ROM Address */ &s_puipui_intro_bgm_mid,
    /* unk4 */        0x760,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a634,
    /* unk10 */       0x429
};

extern const u32 s_naniwa_bgm_mid;
const struct MidiData s_naniwa_bgmMidiData = {
    /* ROM Address */ &s_naniwa_bgm_mid,
    /* unk4 */        0x780,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a638,
    /* unk10 */       0x42a
};

extern const u32 s_emanikanto_bgm_mid;
const struct MidiData s_emanikanto_bgmMidiData = {
    /* ROM Address */ &s_emanikanto_bgm_mid,
    /* unk4 */        0x7a0,
    /* unk6 */        0xc9e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a63c,
    /* unk10 */       0x42b
};

extern const u32 s_emanikanto_bgm_loop_mid;
const struct MidiData s_emanikanto_bgm_loopMidiData = {
    /* ROM Address */ &s_emanikanto_bgm_loop_mid,
    /* unk4 */        0x7a0,
    /* unk6 */        0xc9e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a640,
    /* unk10 */       0x42c
};

extern const u32 s_manza_bgm_mid;
const struct MidiData s_manza_bgmMidiData = {
    /* ROM Address */ &s_manza_bgm_mid,
    /* unk4 */        0x7c0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a644,
    /* unk10 */       0x42d
};

extern const u32 s_hitmegeton1_bgm_mid;
const struct MidiData s_hitmegeton1_bgmMidiData = {
    /* ROM Address */ &s_hitmegeton1_bgm_mid,
    /* unk4 */        0x7e0,
    /* unk6 */        0xc99,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a648,
    /* unk10 */       0x42e
};

extern const u32 s_hitmegeton2_bgm_mid;
const struct MidiData s_hitmegeton2_bgmMidiData = {
    /* ROM Address */ &s_hitmegeton2_bgm_mid,
    /* unk4 */        0x7e0,
    /* unk6 */        0xc99,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a64c,
    /* unk10 */       0x42f
};

extern const u32 s_bon_odori_bgm_mid;
const struct MidiData s_bon_odori_bgmMidiData = {
    /* ROM Address */ &s_bon_odori_bgm_mid,
    /* unk4 */        0x8c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a650,
    /* unk10 */       0x430
};

extern const u32 s_bon_dance_bgm_mid;
const struct MidiData s_bon_dance_bgmMidiData = {
    /* ROM Address */ &s_bon_dance_bgm_mid,
    /* unk4 */        0x8e0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a654,
    /* unk10 */       0x431
};

extern const u32 s_4beat_bgm_mid;
const struct MidiData s_4beat_bgmMidiData = {
    /* ROM Address */ &s_4beat_bgm_mid,
    /* unk4 */        0x880,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a658,
    /* unk10 */       0x432
};

extern const u32 s_toss_bgm_mid;
const struct MidiData s_toss_bgmMidiData = {
    /* ROM Address */ &s_toss_bgm_mid,
    /* unk4 */        0x900,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a65c,
    /* unk10 */       0x433
};

extern const u32 s_toss_bgm_end_mid;
const struct MidiData s_toss_bgm_endMidiData = {
    /* ROM Address */ &s_toss_bgm_end_mid,
    /* unk4 */        0x900,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a660,
    /* unk10 */       0x434
};

extern const u32 s_toss_bgm_loop_mid;
const struct MidiData s_toss_bgm_loopMidiData = {
    /* ROM Address */ &s_toss_bgm_loop_mid,
    /* unk4 */        0x900,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a664,
    /* unk10 */       0x435
};

extern const u32 s_title_bgm_mid;
const struct MidiData s_title_bgmMidiData = {
    /* ROM Address */ &s_title_bgm_mid,
    /* unk4 */        0x920,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a668,
    /* unk10 */       0x436
};

extern const u32 s_koihoney_bgm_mid;
const struct MidiData s_koihoney_bgmMidiData = {
    /* ROM Address */ &s_koihoney_bgm_mid,
    /* unk4 */        0x940,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a66c,
    /* unk10 */       0x437
};

extern const u32 s_wish_bgm_mid;
const struct MidiData s_wish_bgmMidiData = {
    /* ROM Address */ &s_wish_bgm_mid,
    /* unk4 */        0x960,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a670,
    /* unk10 */       0x438
};

extern const u32 L8_pat_intro_mid;
const struct MidiData L8_pat_introMidiData = {
    /* ROM Address */ &L8_pat_intro_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a674,
    /* unk10 */       0x439
};

extern const u32 L8_pat01_mid;
const struct MidiData L8_pat01MidiData = {
    /* ROM Address */ &L8_pat01_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a678,
    /* unk10 */       0x43a
};

extern const u32 L8_pat02_mid;
const struct MidiData L8_pat02MidiData = {
    /* ROM Address */ &L8_pat02_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a67c,
    /* unk10 */       0x43b
};

extern const u32 L8_pat03_mid;
const struct MidiData L8_pat03MidiData = {
    /* ROM Address */ &L8_pat03_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a680,
    /* unk10 */       0x43c
};

extern const u32 L8_pat04_mid;
const struct MidiData L8_pat04MidiData = {
    /* ROM Address */ &L8_pat04_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a684,
    /* unk10 */       0x43d
};

extern const u32 L8_pat05_mid;
const struct MidiData L8_pat05MidiData = {
    /* ROM Address */ &L8_pat05_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a688,
    /* unk10 */       0x43e
};

extern const u32 L8_pat06_mid;
const struct MidiData L8_pat06MidiData = {
    /* ROM Address */ &L8_pat06_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a68c,
    /* unk10 */       0x43f
};

extern const u32 L8_pat07_mid;
const struct MidiData L8_pat07MidiData = {
    /* ROM Address */ &L8_pat07_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a690,
    /* unk10 */       0x440
};

extern const u32 L8_pat08_mid;
const struct MidiData L8_pat08MidiData = {
    /* ROM Address */ &L8_pat08_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a694,
    /* unk10 */       0x441
};

extern const u32 L8_pat09_mid;
const struct MidiData L8_pat09MidiData = {
    /* ROM Address */ &L8_pat09_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a698,
    /* unk10 */       0x442
};

extern const u32 L8_pat10_mid;
const struct MidiData L8_pat10MidiData = {
    /* ROM Address */ &L8_pat10_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a69c,
    /* unk10 */       0x443
};

extern const u32 L8_pat11_mid;
const struct MidiData L8_pat11MidiData = {
    /* ROM Address */ &L8_pat11_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a6a0,
    /* unk10 */       0x444
};

extern const u32 L8_pat12_mid;
const struct MidiData L8_pat12MidiData = {
    /* ROM Address */ &L8_pat12_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a6a4,
    /* unk10 */       0x445
};

extern const u32 L8_pat_end_mid;
const struct MidiData L8_pat_endMidiData = {
    /* ROM Address */ &L8_pat_end_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a6a8,
    /* unk10 */       0x446
};

extern const u32 L8_pat_honki_mid;
const struct MidiData L8_pat_honkiMidiData = {
    /* ROM Address */ &L8_pat_honki_mid,
    /* unk4 */        0x9a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a6ac,
    /* unk10 */       0x447
};

extern const u32 s_menu_kettei0_mid;
const struct MidiData s_menu_kettei0MidiData = {
    /* ROM Address */ &s_menu_kettei0_mid,
    /* unk4 */        0x2e4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6b0,
    /* unk10 */       0x4af
};

extern const u32 s_menu_kettei1_mid;
const struct MidiData s_menu_kettei1MidiData = {
    /* ROM Address */ &s_menu_kettei1_mid,
    /* unk4 */        0x6c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6b4,
    /* unk10 */       0x4b0
};

extern const u32 s_menu_kettei2_mid;
const struct MidiData s_menu_kettei2MidiData = {
    /* ROM Address */ &s_menu_kettei2_mid,
    /* unk4 */        0x3c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6b8,
    /* unk10 */       0x4b1
};

extern const u32 s_menu_kettei3_mid;
const struct MidiData s_menu_kettei3MidiData = {
    /* ROM Address */ &s_menu_kettei3_mid,
    /* unk4 */        0x6c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6bc,
    /* unk10 */       0x4b2
};

extern const u32 s_menu_cancel1_mid;
const struct MidiData s_menu_cancel1MidiData = {
    /* ROM Address */ &s_menu_cancel1_mid,
    /* unk4 */        0x2e4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6c0,
    /* unk10 */       0x4b3
};

extern const u32 s_menu_cancel2_mid;
const struct MidiData s_menu_cancel2MidiData = {
    /* ROM Address */ &s_menu_cancel2_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6c4,
    /* unk10 */       0x4b4
};

extern const u32 s_menu_cancel3_mid;
const struct MidiData s_menu_cancel3MidiData = {
    /* ROM Address */ &s_menu_cancel3_mid,
    /* unk4 */        0x2e4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6c8,
    /* unk10 */       0x4b5
};

extern const u32 s_menu_cursor1_mid;
const struct MidiData s_menu_cursor1MidiData = {
    /* ROM Address */ &s_menu_cursor1_mid,
    /* unk4 */        0x3c5,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6cc,
    /* unk10 */       0x4b6
};

extern const u32 s_menu_cursor2_mid;
const struct MidiData s_menu_cursor2MidiData = {
    /* ROM Address */ &s_menu_cursor2_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6d0,
    /* unk10 */       0x4b7
};

extern const u32 s_menu_error_mid;
const struct MidiData s_menu_errorMidiData = {
    /* ROM Address */ &s_menu_error_mid,
    /* unk4 */        0x3c5,
    /* unk6 */        0x16ad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6d4,
    /* unk10 */       0x4b8
};

extern const u32 s_kansei_mid;
const struct MidiData s_kanseiMidiData = {
    /* ROM Address */ &s_kansei_mid,
    /* unk4 */        0x389,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6d8,
    /* unk10 */       0x4ce
};

extern const u32 s_kansei_solo_mid;
const struct MidiData s_kansei_soloMidiData = {
    /* ROM Address */ &s_kansei_solo_mid,
    /* unk4 */        0x389,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6dc,
    /* unk10 */       0x4cf
};

extern const u32 s_warai_mid;
const struct MidiData s_waraiMidiData = {
    /* ROM Address */ &s_warai_mid,
    /* unk4 */        0x389,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6e0,
    /* unk10 */       0x4d0
};

extern const u32 s_warai_little_mid;
const struct MidiData s_warai_littleMidiData = {
    /* ROM Address */ &s_warai_little_mid,
    /* unk4 */        0x389,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6e4,
    /* unk10 */       0x4d1
};

extern const u32 s_warai_solo_mid;
const struct MidiData s_warai_soloMidiData = {
    /* ROM Address */ &s_warai_solo_mid,
    /* unk4 */        0x389,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6e8,
    /* unk10 */       0x4d2
};

extern const u32 s_hakushu_solo_mid;
const struct MidiData s_hakushu_soloMidiData = {
    /* ROM Address */ &s_hakushu_solo_mid,
    /* unk4 */        0x38a,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6ec,
    /* unk10 */       0x4d3
};

extern const u32 s_BD1_mid;
const struct MidiData s_BD1MidiData = {
    /* ROM Address */ &s_BD1_mid,
    /* unk4 */        0x8648,
    /* unk6 */        0x143e,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6f0,
    /* unk10 */       0x4d8
};

extern const u32 s_BD2_mid;
const struct MidiData s_BD2MidiData = {
    /* ROM Address */ &s_BD2_mid,
    /* unk4 */        0x8648,
    /* unk6 */        0x1439,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6f4,
    /* unk10 */       0x4d9
};

extern const u32 s_BD3_mid;
const struct MidiData s_BD3MidiData = {
    /* ROM Address */ &s_BD3_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6f8,
    /* unk10 */       0x4da
};

extern const u32 s_BD4_mid;
const struct MidiData s_BD4MidiData = {
    /* ROM Address */ &s_BD4_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a6fc,
    /* unk10 */       0x4db
};

extern const u32 s_BD5_mid;
const struct MidiData s_BD5MidiData = {
    /* ROM Address */ &s_BD5_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a700,
    /* unk10 */       0x4dc
};

extern const u32 s_BD6_mid;
const struct MidiData s_BD6MidiData = {
    /* ROM Address */ &s_BD6_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a704,
    /* unk10 */       0x4dd
};

extern const u32 s_BD7_mid;
const struct MidiData s_BD7MidiData = {
    /* ROM Address */ &s_BD7_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a708,
    /* unk10 */       0x4de
};

extern const u32 s_BD8_mid;
const struct MidiData s_BD8MidiData = {
    /* ROM Address */ &s_BD8_mid,
    /* unk4 */        0x648,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a70c,
    /* unk10 */       0x4df
};

extern const u32 s_BD9_mid;
const struct MidiData s_BD9MidiData = {
    /* ROM Address */ &s_BD9_mid,
    /* unk4 */        0x8648,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a710,
    /* unk10 */       0x4e0
};

extern const u32 s_SD1_mid;
const struct MidiData s_SD1MidiData = {
    /* ROM Address */ &s_SD1_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a714,
    /* unk10 */       0x4e2
};

extern const u32 s_SD2_mid;
const struct MidiData s_SD2MidiData = {
    /* ROM Address */ &s_SD2_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a718,
    /* unk10 */       0x4e3
};

extern const u32 s_SD3_mid;
const struct MidiData s_SD3MidiData = {
    /* ROM Address */ &s_SD3_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x142d,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a71c,
    /* unk10 */       0x4e4
};

extern const u32 s_SD4_mid;
const struct MidiData s_SD4MidiData = {
    /* ROM Address */ &s_SD4_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a720,
    /* unk10 */       0x4e5
};

extern const u32 s_SD5_mid;
const struct MidiData s_SD5MidiData = {
    /* ROM Address */ &s_SD5_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a724,
    /* unk10 */       0x4e6
};

extern const u32 s_SD6_mid;
const struct MidiData s_SD6MidiData = {
    /* ROM Address */ &s_SD6_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a728,
    /* unk10 */       0x4e7
};

extern const u32 s_SD7_mid;
const struct MidiData s_SD7MidiData = {
    /* ROM Address */ &s_SD7_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x142d,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a72c,
    /* unk10 */       0x4e8
};

extern const u32 s_SD8_mid;
const struct MidiData s_SD8MidiData = {
    /* ROM Address */ &s_SD8_mid,
    /* unk4 */        0x8643,
    /* unk6 */        0x142a,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a730,
    /* unk10 */       0x4e9
};

extern const u32 s_SD9_mid;
const struct MidiData s_SD9MidiData = {
    /* ROM Address */ &s_SD9_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a734,
    /* unk10 */       0x4ea
};

extern const u32 s_tom_H_mid;
const struct MidiData s_tom_HMidiData = {
    /* ROM Address */ &s_tom_H_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a738,
    /* unk10 */       0x4ec
};

extern const u32 s_tom_M_mid;
const struct MidiData s_tom_MMidiData = {
    /* ROM Address */ &s_tom_M_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a73c,
    /* unk10 */       0x4ed
};

extern const u32 s_tom_L_mid;
const struct MidiData s_tom_LMidiData = {
    /* ROM Address */ &s_tom_L_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a740,
    /* unk10 */       0x4ee
};

extern const u32 s_close_HH_mid;
const struct MidiData s_close_HHMidiData = {
    /* ROM Address */ &s_close_HH_mid,
    /* unk4 */        0x83c7,
    /* unk6 */        0x16b9,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a744,
    /* unk10 */       0x4f6
};

extern const u32 s_open_HH_mid;
const struct MidiData s_open_HHMidiData = {
    /* ROM Address */ &s_open_HH_mid,
    /* unk4 */        0x83c7,
    /* unk6 */        0x16b9,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a748,
    /* unk10 */       0x4f7
};

extern const u32 s_CC1_mid;
const struct MidiData s_CC1MidiData = {
    /* ROM Address */ &s_CC1_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a74c,
    /* unk10 */       0x4f8
};

extern const u32 s_CC2_mid;
const struct MidiData s_CC2MidiData = {
    /* ROM Address */ &s_CC2_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a750,
    /* unk10 */       0x4f9
};

extern const u32 s_CC3_mid;
const struct MidiData s_CC3MidiData = {
    /* ROM Address */ &s_CC3_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a754,
    /* unk10 */       0x4fa
};

extern const u32 s_CC4_mid;
const struct MidiData s_CC4MidiData = {
    /* ROM Address */ &s_CC4_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a758,
    /* unk10 */       0x4fb
};

extern const u32 s_RC_mid;
const struct MidiData s_RCMidiData = {
    /* ROM Address */ &s_RC_mid,
    /* unk4 */        0x645,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a75c,
    /* unk10 */       0x4fc
};

extern const u32 s_HC_mid;
const struct MidiData s_HCMidiData = {
    /* ROM Address */ &s_HC_mid,
    /* unk4 */        0x8243,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a760,
    /* unk10 */       0x4fd
};

extern const u32 s_CC5_mid;
const struct MidiData s_CC5MidiData = {
    /* ROM Address */ &s_CC5_mid,
    /* unk4 */        0x8244,
    /* unk6 */        0x1420,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a764,
    /* unk10 */       0x4fe
};

extern const u32 s_CC6_mid;
const struct MidiData s_CC6MidiData = {
    /* ROM Address */ &s_CC6_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a768,
    /* unk10 */       0x4ff
};

extern const u32 s_KN_mid;
const struct MidiData s_KNMidiData = {
    /* ROM Address */ &s_KN_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a76c,
    /* unk10 */       0x500
};

extern const u32 s_HG_mid;
const struct MidiData s_HGMidiData = {
    /* ROM Address */ &s_HG_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a770,
    /* unk10 */       0x501
};

extern const u32 s_tran_jump_mid;
const struct MidiData s_tran_jumpMidiData = {
    /* ROM Address */ &s_tran_jump_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a774,
    /* unk10 */       0x514
};

extern const u32 s_tran_henge_mid;
const struct MidiData s_tran_hengeMidiData = {
    /* ROM Address */ &s_tran_henge_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a778,
    /* unk10 */       0x515
};

extern const u32 s_tran_seino_mid;
const struct MidiData s_tran_seinoMidiData = {
    /* ROM Address */ &s_tran_seino_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a77c,
    /* unk10 */       0x516
};

extern const u32 s_tran_hensin_mid;
const struct MidiData s_tran_hensinMidiData = {
    /* ROM Address */ &s_tran_hensin_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a780,
    /* unk10 */       0x517
};

extern const u32 s_tran_jump_se_mid;
const struct MidiData s_tran_jump_seMidiData = {
    /* ROM Address */ &s_tran_jump_se_mid,
    /* unk4 */        0x3c5,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a784,
    /* unk10 */       0x518
};

extern const u32 s_toss_red_blue1_mid;
const struct MidiData s_toss_red_blue1MidiData = {
    /* ROM Address */ &s_toss_red_blue1_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a788,
    /* unk10 */       0x528
};

extern const u32 s_toss_red_blue2_mid;
const struct MidiData s_toss_red_blue2MidiData = {
    /* ROM Address */ &s_toss_red_blue2_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a78c,
    /* unk10 */       0x529
};

extern const u32 s_toss_red_blue3_mid;
const struct MidiData s_toss_red_blue3MidiData = {
    /* ROM Address */ &s_toss_red_blue3_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a790,
    /* unk10 */       0x52a
};

extern const u32 s_toss_red_yelw1_mid;
const struct MidiData s_toss_red_yelw1MidiData = {
    /* ROM Address */ &s_toss_red_yelw1_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a794,
    /* unk10 */       0x52b
};

extern const u32 s_toss_red_yelw2_mid;
const struct MidiData s_toss_red_yelw2MidiData = {
    /* ROM Address */ &s_toss_red_yelw2_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a798,
    /* unk10 */       0x52c
};

extern const u32 s_toss_red_yelw3_mid;
const struct MidiData s_toss_red_yelw3MidiData = {
    /* ROM Address */ &s_toss_red_yelw3_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a79c,
    /* unk10 */       0x52d
};

extern const u32 s_toss_red_red_mid;
const struct MidiData s_toss_red_redMidiData = {
    /* ROM Address */ &s_toss_red_red_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7a0,
    /* unk10 */       0x531
};

extern const u32 s_toss_red_before_mid;
const struct MidiData s_toss_red_beforeMidiData = {
    /* ROM Address */ &s_toss_red_before_mid,
    /* unk4 */        0x343,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7a4,
    /* unk10 */       0x532
};

extern const u32 s_toss_red_break_mid;
const struct MidiData s_toss_red_breakMidiData = {
    /* ROM Address */ &s_toss_red_break_mid,
    /* unk4 */        0x8343,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7a8,
    /* unk10 */       0x533
};

extern const u32 s_toss_blue_red1_mid;
const struct MidiData s_toss_blue_red1MidiData = {
    /* ROM Address */ &s_toss_blue_red1_mid,
    /* unk4 */        0x344,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7ac,
    /* unk10 */       0x534
};

extern const u32 s_toss_blue_red2_mid;
const struct MidiData s_toss_blue_red2MidiData = {
    /* ROM Address */ &s_toss_blue_red2_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16b9,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7b0,
    /* unk10 */       0x535
};

extern const u32 s_toss_blue_red3_mid;
const struct MidiData s_toss_blue_red3MidiData = {
    /* ROM Address */ &s_toss_blue_red3_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7b4,
    /* unk10 */       0x536
};

extern const u32 s_toss_blue_yelw1_mid;
const struct MidiData s_toss_blue_yelw1MidiData = {
    /* ROM Address */ &s_toss_blue_yelw1_mid,
    /* unk4 */        0x344,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7b8,
    /* unk10 */       0x537
};

extern const u32 s_toss_blue_yelw2_mid;
const struct MidiData s_toss_blue_yelw2MidiData = {
    /* ROM Address */ &s_toss_blue_yelw2_mid,
    /* unk4 */        0x344,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7bc,
    /* unk10 */       0x538
};

extern const u32 s_toss_blue_yelw3_mid;
const struct MidiData s_toss_blue_yelw3MidiData = {
    /* ROM Address */ &s_toss_blue_yelw3_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16b9,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7c0,
    /* unk10 */       0x539
};

extern const u32 s_toss_blue_blue_mid;
const struct MidiData s_toss_blue_blueMidiData = {
    /* ROM Address */ &s_toss_blue_blue_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7c4,
    /* unk10 */       0x53d
};

extern const u32 s_toss_blue_before_mid;
const struct MidiData s_toss_blue_beforeMidiData = {
    /* ROM Address */ &s_toss_blue_before_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7c8,
    /* unk10 */       0x53e
};

extern const u32 s_toss_blue_break_mid;
const struct MidiData s_toss_blue_breakMidiData = {
    /* ROM Address */ &s_toss_blue_break_mid,
    /* unk4 */        0x8344,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7cc,
    /* unk10 */       0x53f
};

extern const u32 s_toss_yelw_red1_mid;
const struct MidiData s_toss_yelw_red1MidiData = {
    /* ROM Address */ &s_toss_yelw_red1_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7d0,
    /* unk10 */       0x540
};

extern const u32 s_toss_yelw_red2_mid;
const struct MidiData s_toss_yelw_red2MidiData = {
    /* ROM Address */ &s_toss_yelw_red2_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7d4,
    /* unk10 */       0x541
};

extern const u32 s_toss_yelw_red3_mid;
const struct MidiData s_toss_yelw_red3MidiData = {
    /* ROM Address */ &s_toss_yelw_red3_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7d8,
    /* unk10 */       0x542
};

extern const u32 s_toss_yelw_blue1_mid;
const struct MidiData s_toss_yelw_blue1MidiData = {
    /* ROM Address */ &s_toss_yelw_blue1_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7dc,
    /* unk10 */       0x543
};

extern const u32 s_toss_yelw_blue2_mid;
const struct MidiData s_toss_yelw_blue2MidiData = {
    /* ROM Address */ &s_toss_yelw_blue2_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7e0,
    /* unk10 */       0x544
};

extern const u32 s_toss_yelw_blue3_mid;
const struct MidiData s_toss_yelw_blue3MidiData = {
    /* ROM Address */ &s_toss_yelw_blue3_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7e4,
    /* unk10 */       0x545
};

extern const u32 s_toss_yelw_yelw_mid;
const struct MidiData s_toss_yelw_yelwMidiData = {
    /* ROM Address */ &s_toss_yelw_yelw_mid,
    /* unk4 */        0x345,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7e8,
    /* unk10 */       0x549
};

extern const u32 s_toss_yelw_before_mid;
const struct MidiData s_toss_yelw_beforeMidiData = {
    /* ROM Address */ &s_toss_yelw_before_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7ec,
    /* unk10 */       0x54a
};

extern const u32 s_toss_yelw_break_mid;
const struct MidiData s_toss_yelw_breakMidiData = {
    /* ROM Address */ &s_toss_yelw_break_mid,
    /* unk4 */        0x8345,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7f0,
    /* unk10 */       0x54b
};

extern const u32 s_toss_ball_red_mid;
const struct MidiData s_toss_ball_redMidiData = {
    /* ROM Address */ &s_toss_ball_red_mid,
    /* unk4 */        0x8646,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7f4,
    /* unk10 */       0x54c
};

extern const u32 s_toss_ball_blue_mid;
const struct MidiData s_toss_ball_blueMidiData = {
    /* ROM Address */ &s_toss_ball_blue_mid,
    /* unk4 */        0x8646,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7f8,
    /* unk10 */       0x54d
};

extern const u32 s_toss_ball_yelw_mid;
const struct MidiData s_toss_ball_yelwMidiData = {
    /* ROM Address */ &s_toss_ball_yelw_mid,
    /* unk4 */        0x8646,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a7fc,
    /* unk10 */       0x54e
};

extern const u32 s_toss_ball_haretu_mid;
const struct MidiData s_toss_ball_haretuMidiData = {
    /* ROM Address */ &s_toss_ball_haretu_mid,
    /* unk4 */        0x346,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a800,
    /* unk10 */       0x54f
};

extern const u32 s_shuji_ho_mid;
const struct MidiData s_shuji_hoMidiData = {
    /* ROM Address */ &s_shuji_ho_mid,
    /* unk4 */        0x743,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a804,
    /* unk10 */       0x560
};

extern const u32 s_shuji_tame_mid;
const struct MidiData s_shuji_tameMidiData = {
    /* ROM Address */ &s_shuji_tame_mid,
    /* unk4 */        0x743,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a808,
    /* unk10 */       0x561
};

extern const u32 s_iai_yarare_mid;
const struct MidiData s_iai_yarareMidiData = {
    /* ROM Address */ &s_iai_yarare_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a80c,
    /* unk10 */       0x562
};

extern const u32 s_iai_miss_mid;
const struct MidiData s_iai_missMidiData = {
    /* ROM Address */ &s_iai_miss_mid,
    /* unk4 */        0x525,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a810,
    /* unk10 */       0x563
};

extern const u32 s_mario1_mid;
const struct MidiData s_mario1MidiData = {
    /* ROM Address */ &s_mario1_mid,
    /* unk4 */        0x8260,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a814,
    /* unk10 */       0x564
};

extern const u32 s_mario2_mid;
const struct MidiData s_mario2MidiData = {
    /* ROM Address */ &s_mario2_mid,
    /* unk4 */        0x8260,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a818,
    /* unk10 */       0x565
};

extern const u32 s_mario1_2_mid;
const struct MidiData s_mario1_2MidiData = {
    /* ROM Address */ &s_mario1_2_mid,
    /* unk4 */        0x8260,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a81c,
    /* unk10 */       0x566
};

extern const u32 s_mario2_4_mid;
const struct MidiData s_mario2_4MidiData = {
    /* ROM Address */ &s_mario2_4_mid,
    /* unk4 */        0x8260,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a820,
    /* unk10 */       0x567
};

extern const u32 s_mario_melo1_mid;
const struct MidiData s_mario_melo1MidiData = {
    /* ROM Address */ &s_mario_melo1_mid,
    /* unk4 */        0x8381,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a824,
    /* unk10 */       0x568
};

extern const u32 s_mario_melo2_mid;
const struct MidiData s_mario_melo2MidiData = {
    /* ROM Address */ &s_mario_melo2_mid,
    /* unk4 */        0x8381,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a828,
    /* unk10 */       0x569
};

extern const u32 s_sword_orya_mid;
const struct MidiData s_sword_oryaMidiData = {
    /* ROM Address */ &s_sword_orya_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a82c,
    /* unk10 */       0x56a
};

extern const u32 s_furi_mid;
const struct MidiData s_furiMidiData = {
    /* ROM Address */ &s_furi_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a830,
    /* unk10 */       0x56b
};

extern const u32 s_sword_hi_mid;
const struct MidiData s_sword_hiMidiData = {
    /* ROM Address */ &s_sword_hi_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a834,
    /* unk10 */       0x56c
};

extern const u32 s_sword_ho_mid;
const struct MidiData s_sword_hoMidiData = {
    /* ROM Address */ &s_sword_ho_mid,
    /* unk4 */        0x8263,
    /* unk6 */        0x16b4,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a838,
    /* unk10 */       0x56d
};

extern const u32 s_iai_result_mid;
const struct MidiData s_iai_resultMidiData = {
    /* ROM Address */ &s_iai_result_mid,
    /* unk4 */        0x261,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a83c,
    /* unk10 */       0x56e
};

extern const u32 s_iai_bgm1_mid;
const struct MidiData s_iai_bgm1MidiData = {
    /* ROM Address */ &s_iai_bgm1_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a840,
    /* unk10 */       0x56f
};

extern const u32 s_iai_bgm2_mid;
const struct MidiData s_iai_bgm2MidiData = {
    /* ROM Address */ &s_iai_bgm2_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a844,
    /* unk10 */       0x570
};

extern const u32 s_iai_bgm3_mid;
const struct MidiData s_iai_bgm3MidiData = {
    /* ROM Address */ &s_iai_bgm3_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a848,
    /* unk10 */       0x571
};

extern const u32 s_iai_frase1a_mid;
const struct MidiData s_iai_frase1aMidiData = {
    /* ROM Address */ &s_iai_frase1a_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a84c,
    /* unk10 */       0x572
};

extern const u32 s_iai_frase2a_mid;
const struct MidiData s_iai_frase2aMidiData = {
    /* ROM Address */ &s_iai_frase2a_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a850,
    /* unk10 */       0x573
};

extern const u32 s_iai_frase3a_mid;
const struct MidiData s_iai_frase3aMidiData = {
    /* ROM Address */ &s_iai_frase3a_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a854,
    /* unk10 */       0x574
};

extern const u32 s_iai_frase1b_mid;
const struct MidiData s_iai_frase1bMidiData = {
    /* ROM Address */ &s_iai_frase1b_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a858,
    /* unk10 */       0x575
};

extern const u32 s_iai_frase2b_mid;
const struct MidiData s_iai_frase2bMidiData = {
    /* ROM Address */ &s_iai_frase2b_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a85c,
    /* unk10 */       0x576
};

extern const u32 s_iai_frase3b_mid;
const struct MidiData s_iai_frase3bMidiData = {
    /* ROM Address */ &s_iai_frase3b_mid,
    /* unk4 */        0x261,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a860,
    /* unk10 */       0x577
};

extern const u32 s_ninja_wind_mid;
const struct MidiData s_ninja_windMidiData = {
    /* ROM Address */ &s_ninja_wind_mid,
    /* unk4 */        0x383,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a864,
    /* unk10 */       0x578
};

extern const u32 s_ninja_chakuti_mid;
const struct MidiData s_ninja_chakutiMidiData = {
    /* ROM Address */ &s_ninja_chakuti_mid,
    /* unk4 */        0x264,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a868,
    /* unk10 */       0x579
};

extern const u32 s_ninja_kamae_mid;
const struct MidiData s_ninja_kamaeMidiData = {
    /* ROM Address */ &s_ninja_kamae_mid,
    /* unk4 */        0x385,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a86c,
    /* unk10 */       0x57a
};

extern const u32 s_ninja_furu_mid;
const struct MidiData s_ninja_furuMidiData = {
    /* ROM Address */ &s_ninja_furu_mid,
    /* unk4 */        0x265,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a870,
    /* unk10 */       0x57b
};

extern const u32 s_ninja_kin_mid;
const struct MidiData s_ninja_kinMidiData = {
    /* ROM Address */ &s_ninja_kin_mid,
    /* unk4 */        0x383,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a874,
    /* unk10 */       0x57c
};

extern const u32 s_ninja_hit_mid;
const struct MidiData s_ninja_hitMidiData = {
    /* ROM Address */ &s_ninja_hit_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a878,
    /* unk10 */       0x57d
};

extern const u32 s_ninja_yumi_mid;
const struct MidiData s_ninja_yumiMidiData = {
    /* ROM Address */ &s_ninja_yumi_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a87c,
    /* unk10 */       0x57e
};

extern const u32 s_ninja_kabe_mid;
const struct MidiData s_ninja_kabeMidiData = {
    /* ROM Address */ &s_ninja_kabe_mid,
    /* unk4 */        0x523,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a880,
    /* unk10 */       0x57f
};

extern const u32 s_ninja_bgm1_mid;
const struct MidiData s_ninja_bgm1MidiData = {
    /* ROM Address */ &s_ninja_bgm1_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a884,
    /* unk10 */       0x580
};

extern const u32 s_ninja_bgm2_mid;
const struct MidiData s_ninja_bgm2MidiData = {
    /* ROM Address */ &s_ninja_bgm2_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a888,
    /* unk10 */       0x581
};

extern const u32 s_rat_bgm1_mid;
const struct MidiData s_rat_bgm1MidiData = {
    /* ROM Address */ &s_rat_bgm1_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcb2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a88c,
    /* unk10 */       0x58c
};

extern const u32 s_rat_bgm2_mid;
const struct MidiData s_rat_bgm2MidiData = {
    /* ROM Address */ &s_rat_bgm2_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcb2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a890,
    /* unk10 */       0x58d
};

extern const u32 s_rat_cat_mid;
const struct MidiData s_rat_catMidiData = {
    /* ROM Address */ &s_rat_cat_mid,
    /* unk4 */        0x2e3,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a894,
    /* unk10 */       0x58e
};

extern const u32 s_rat_crush_R_mid;
const struct MidiData s_rat_crush_RMidiData = {
    /* ROM Address */ &s_rat_crush_R_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a898,
    /* unk10 */       0x58f
};

extern const u32 s_rat_crush_L_mid;
const struct MidiData s_rat_crush_LMidiData = {
    /* ROM Address */ &s_rat_crush_L_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a89c,
    /* unk10 */       0x590
};

extern const u32 s_rat_signal_mid;
const struct MidiData s_rat_signalMidiData = {
    /* ROM Address */ &s_rat_signal_mid,
    /* unk4 */        0x2e4,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8a0,
    /* unk10 */       0x591
};

extern const u32 s_rat_dash_mid;
const struct MidiData s_rat_dashMidiData = {
    /* ROM Address */ &s_rat_dash_mid,
    /* unk4 */        0x2e4,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8a4,
    /* unk10 */       0x592
};

extern const u32 s_rat_stop_mid;
const struct MidiData s_rat_stopMidiData = {
    /* ROM Address */ &s_rat_stop_mid,
    /* unk4 */        0x2e7,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8a8,
    /* unk10 */       0x593
};

extern const u32 s_tebyoushi_pati_mid;
const struct MidiData s_tebyoushi_patiMidiData = {
    /* ROM Address */ &s_tebyoushi_pati_mid,
    /* unk4 */        0x8306,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8ac,
    /* unk10 */       0x5a0
};

extern const u32 s_bon_dondon1_mid;
const struct MidiData s_bon_dondon1MidiData = {
    /* ROM Address */ &s_bon_dondon1_mid,
    /* unk4 */        0x8c1,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8b0,
    /* unk10 */       0x5aa
};

extern const u32 s_bon_dondon1_1_mid;
const struct MidiData s_bon_dondon1_1MidiData = {
    /* ROM Address */ &s_bon_dondon1_1_mid,
    /* unk4 */        0x8c1,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8b4,
    /* unk10 */       0x5ab
};

extern const u32 s_bon_dondon1_2_mid;
const struct MidiData s_bon_dondon1_2MidiData = {
    /* ROM Address */ &s_bon_dondon1_2_mid,
    /* unk4 */        0x8c1,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8b8,
    /* unk10 */       0x5ac
};

extern const u32 s_bon_dondon2_mid;
const struct MidiData s_bon_dondon2MidiData = {
    /* ROM Address */ &s_bon_dondon2_mid,
    /* unk4 */        0x8c1,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8bc,
    /* unk10 */       0x5ad
};

extern const u32 s_hanabi_hyu_mid;
const struct MidiData s_hanabi_hyuMidiData = {
    /* ROM Address */ &s_hanabi_hyu_mid,
    /* unk4 */        0x303,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8c0,
    /* unk10 */       0x5b5
};

extern const u32 s_hanabi_don_mid;
const struct MidiData s_hanabi_donMidiData = {
    /* ROM Address */ &s_hanabi_don_mid,
    /* unk4 */        0x306,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8c4,
    /* unk10 */       0x5b6
};

extern const u32 s_hanabi_pon_mid;
const struct MidiData s_hanabi_ponMidiData = {
    /* ROM Address */ &s_hanabi_pon_mid,
    /* unk4 */        0x305,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8c8,
    /* unk10 */       0x5b9
};

extern const u32 s_hanabi_utiage_mid;
const struct MidiData s_hanabi_utiageMidiData = {
    /* ROM Address */ &s_hanabi_utiage_mid,
    /* unk4 */        0x304,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8cc,
    /* unk10 */       0x5ba
};

extern const u32 s_hanabi_utiage_v_mid;
const struct MidiData s_hanabi_utiage_vMidiData = {
    /* ROM Address */ &s_hanabi_utiage_v_mid,
    /* unk4 */        0x8304,
    /* unk6 */        0x1425,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8d0,
    /* unk10 */       0x5bb
};

extern const u32 s_hanabi_bgm_mid;
const struct MidiData s_hanabi_bgmMidiData = {
    /* ROM Address */ &s_hanabi_bgm_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a8d4,
    /* unk10 */       0x5bc
};

extern const u32 s_hanabi_1_mid;
const struct MidiData s_hanabi_1MidiData = {
    /* ROM Address */ &s_hanabi_1_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8d8,
    /* unk10 */       0x5bd
};

extern const u32 s_hanabi_2_mid;
const struct MidiData s_hanabi_2MidiData = {
    /* ROM Address */ &s_hanabi_2_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8dc,
    /* unk10 */       0x5be
};

extern const u32 s_hanabi_3_mid;
const struct MidiData s_hanabi_3MidiData = {
    /* ROM Address */ &s_hanabi_3_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8e0,
    /* unk10 */       0x5bf
};

extern const u32 s_hanabi_hai_mid;
const struct MidiData s_hanabi_haiMidiData = {
    /* ROM Address */ &s_hanabi_hai_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x142d,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8e4,
    /* unk10 */       0x5c0
};

extern const u32 s_hanabi_ah_mid;
const struct MidiData s_hanabi_ahMidiData = {
    /* ROM Address */ &s_hanabi_ah_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1423,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8e8,
    /* unk10 */       0x5c1
};

extern const u32 s_hanabi_wish1_mid;
const struct MidiData s_hanabi_wish1MidiData = {
    /* ROM Address */ &s_hanabi_wish1_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8ec,
    /* unk10 */       0x5c2
};

extern const u32 s_hanabi_wish2_mid;
const struct MidiData s_hanabi_wish2MidiData = {
    /* ROM Address */ &s_hanabi_wish2_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8f0,
    /* unk10 */       0x5c3
};

extern const u32 s_hanabi_wish3_mid;
const struct MidiData s_hanabi_wish3MidiData = {
    /* ROM Address */ &s_hanabi_wish3_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8f4,
    /* unk10 */       0x5c4
};

extern const u32 s_hanabi_wish4_mid;
const struct MidiData s_hanabi_wish4MidiData = {
    /* ROM Address */ &s_hanabi_wish4_mid,
    /* unk4 */        0x308,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8f8,
    /* unk10 */       0x5c5
};

extern const u32 s_intro_stick_mid;
const struct MidiData s_intro_stickMidiData = {
    /* ROM Address */ &s_intro_stick_mid,
    /* unk4 */        0x321,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a8fc,
    /* unk10 */       0x5c8
};

extern const u32 s_intro_a_mid;
const struct MidiData s_intro_aMidiData = {
    /* ROM Address */ &s_intro_a_mid,
    /* unk4 */        0x321,
    /* unk6 */        0x141e,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a900,
    /* unk10 */       0x5c9
};

extern const u32 s_intro_one_mid;
const struct MidiData s_intro_oneMidiData = {
    /* ROM Address */ &s_intro_one_mid,
    /* unk4 */        0x8321,
    /* unk6 */        0x1425,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a904,
    /* unk10 */       0x5ca
};

extern const u32 s_intro_two_mid;
const struct MidiData s_intro_twoMidiData = {
    /* ROM Address */ &s_intro_two_mid,
    /* unk4 */        0x8321,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a908,
    /* unk10 */       0x5cb
};

extern const u32 s_intro_three_mid;
const struct MidiData s_intro_threeMidiData = {
    /* ROM Address */ &s_intro_three_mid,
    /* unk4 */        0x8321,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a90c,
    /* unk10 */       0x5cc
};

extern const u32 s_intro_four_mid;
const struct MidiData s_intro_fourMidiData = {
    /* ROM Address */ &s_intro_four_mid,
    /* unk4 */        0x8321,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a910,
    /* unk10 */       0x5cd
};

extern const u32 s_intro_uh_mid;
const struct MidiData s_intro_uhMidiData = {
    /* ROM Address */ &s_intro_uh_mid,
    /* unk4 */        0x321,
    /* unk6 */        0x1423,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a914,
    /* unk10 */       0x5ce
};

extern const u32 s_intro_comeon_mid;
const struct MidiData s_intro_comeonMidiData = {
    /* ROM Address */ &s_intro_comeon_mid,
    /* unk4 */        0x321,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a918,
    /* unk10 */       0x5cf
};

extern const u32 s_intro_pat1_mid;
const struct MidiData s_intro_pat1MidiData = {
    /* ROM Address */ &s_intro_pat1_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a91c,
    /* unk10 */       0x5d0
};

extern const u32 s_intro_pat2_mid;
const struct MidiData s_intro_pat2MidiData = {
    /* ROM Address */ &s_intro_pat2_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcb2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a920,
    /* unk10 */       0x5d1
};

extern const u32 s_intro_pat3_mid;
const struct MidiData s_intro_pat3MidiData = {
    /* ROM Address */ &s_intro_pat3_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a924,
    /* unk10 */       0x5d2
};

extern const u32 s_ghost_walk_mid;
const struct MidiData s_ghost_walkMidiData = {
    /* ROM Address */ &s_ghost_walk_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x1428,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a928,
    /* unk10 */       0x5dc
};

extern const u32 s_ghost_just_hit_mid;
const struct MidiData s_ghost_just_hitMidiData = {
    /* ROM Address */ &s_ghost_just_hit_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a92c,
    /* unk10 */       0x5dd
};

extern const u32 s_ghost_miss_hit_mid;
const struct MidiData s_ghost_miss_hitMidiData = {
    /* ROM Address */ &s_ghost_miss_hit_mid,
    /* unk4 */        0x644,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a930,
    /* unk10 */       0x5de
};

extern const u32 s_ghost_dash_mid;
const struct MidiData s_ghost_dashMidiData = {
    /* ROM Address */ &s_ghost_dash_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a934,
    /* unk10 */       0x5df
};

extern const u32 s_ghost_warai_mid;
const struct MidiData s_ghost_waraiMidiData = {
    /* ROM Address */ &s_ghost_warai_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a938,
    /* unk10 */       0x5e0
};

extern const u32 s_ghost_gosha_mid;
const struct MidiData s_ghost_goshaMidiData = {
    /* ROM Address */ &s_ghost_gosha_mid,
    /* unk4 */        0x645,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a93c,
    /* unk10 */       0x5e1
};

extern const u32 s_ghost_rain_mid;
const struct MidiData s_ghost_rainMidiData = {
    /* ROM Address */ &s_ghost_rain_mid,
    /* unk4 */        0x642,
    /* unk6 */        0x140f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a940,
    /* unk10 */       0x5e2
};

extern const u32 s_space_ikeo_turn_mid;
const struct MidiData s_space_ikeo_turnMidiData = {
    /* ROM Address */ &s_space_ikeo_turn_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x1439,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a944,
    /* unk10 */       0x5f0
};

extern const u32 s_space_ikeo_right_mid;
const struct MidiData s_space_ikeo_rightMidiData = {
    /* ROM Address */ &s_space_ikeo_right_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x1439,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a948,
    /* unk10 */       0x5f1
};

extern const u32 s_space_ikeo_lets_mid;
const struct MidiData s_space_ikeo_letsMidiData = {
    /* ROM Address */ &s_space_ikeo_lets_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a94c,
    /* unk10 */       0x5f2
};

extern const u32 s_space_ikeo_sit_mid;
const struct MidiData s_space_ikeo_sitMidiData = {
    /* ROM Address */ &s_space_ikeo_sit_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a950,
    /* unk10 */       0x5f3
};

extern const u32 s_space_ikeo_down_mid;
const struct MidiData s_space_ikeo_downMidiData = {
    /* ROM Address */ &s_space_ikeo_down_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a954,
    /* unk10 */       0x5f4
};

extern const u32 s_space_ikeo_pa_mid;
const struct MidiData s_space_ikeo_paMidiData = {
    /* ROM Address */ &s_space_ikeo_pa_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a958,
    /* unk10 */       0x5f5
};

extern const u32 s_space_ikeo_punch_mid;
const struct MidiData s_space_ikeo_punchMidiData = {
    /* ROM Address */ &s_space_ikeo_punch_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a95c,
    /* unk10 */       0x5f6
};

extern const u32 s_space_kou_turn_mid;
const struct MidiData s_space_kou_turnMidiData = {
    /* ROM Address */ &s_space_kou_turn_mid,
    /* unk4 */        0x83a5,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a960,
    /* unk10 */       0x5f7
};

extern const u32 s_space_kou_right_mid;
const struct MidiData s_space_kou_rightMidiData = {
    /* ROM Address */ &s_space_kou_right_mid,
    /* unk4 */        0x83a5,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a964,
    /* unk10 */       0x5f8
};

extern const u32 s_space_kou_lets_mid;
const struct MidiData s_space_kou_letsMidiData = {
    /* ROM Address */ &s_space_kou_lets_mid,
    /* unk4 */        0x83a5,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a968,
    /* unk10 */       0x5f9
};

extern const u32 s_space_kou_sit_mid;
const struct MidiData s_space_kou_sitMidiData = {
    /* ROM Address */ &s_space_kou_sit_mid,
    /* unk4 */        0x83a5,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a96c,
    /* unk10 */       0x5fa
};

extern const u32 s_space_kou_down_mid;
const struct MidiData s_space_kou_downMidiData = {
    /* ROM Address */ &s_space_kou_down_mid,
    /* unk4 */        0x83a5,
    /* unk6 */        0x143f,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a970,
    /* unk10 */       0x5fb
};

extern const u32 s_space_kou_pa_mid;
const struct MidiData s_space_kou_paMidiData = {
    /* ROM Address */ &s_space_kou_pa_mid,
    /* unk4 */        0x3a5,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a974,
    /* unk10 */       0x5fc
};

extern const u32 s_space_kou_punch_mid;
const struct MidiData s_space_kou_punchMidiData = {
    /* ROM Address */ &s_space_kou_punch_mid,
    /* unk4 */        0x3a5,
    /* unk6 */        0x1437,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a978,
    /* unk10 */       0x5fd
};

extern const u32 s_space_miss_mid;
const struct MidiData s_space_missMidiData = {
    /* ROM Address */ &s_space_miss_mid,
    /* unk4 */        0x643,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a97c,
    /* unk10 */       0x5fe
};

extern const u32 s_space_ikeo_turn_swing_mid;
const struct MidiData s_space_ikeo_turn_swingMidiData = {
    /* ROM Address */ &s_space_ikeo_turn_swing_mid,
    /* unk4 */        0x83a4,
    /* unk6 */        0x1439,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a980,
    /* unk10 */       0x5ff
};

extern const u32 s_space_kou_turn_swing_mid;
const struct MidiData s_space_kou_turn_swingMidiData = {
    /* ROM Address */ &s_space_kou_turn_swing_mid,
    /* unk4 */        0x3a5,
    /* unk6 */        0x1432,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a984,
    /* unk10 */       0x600
};

extern const u32 s_guntai1_mid;
const struct MidiData s_guntai1MidiData = {
    /* ROM Address */ &s_guntai1_mid,
    /* unk4 */        0x2a0,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a988,
    /* unk10 */       0x604
};

extern const u32 s_guntai2_mid;
const struct MidiData s_guntai2MidiData = {
    /* ROM Address */ &s_guntai2_mid,
    /* unk4 */        0x2a0,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a98c,
    /* unk10 */       0x605
};

extern const u32 s_guntai_foot1_mid;
const struct MidiData s_guntai_foot1MidiData = {
    /* ROM Address */ &s_guntai_foot1_mid,
    /* unk4 */        0x2a3,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a990,
    /* unk10 */       0x606
};

extern const u32 s_guntai_foot2_mid;
const struct MidiData s_guntai_foot2MidiData = {
    /* ROM Address */ &s_guntai_foot2_mid,
    /* unk4 */        0x2a3,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a994,
    /* unk10 */       0x607
};

extern const u32 s_guntai_v_zentai1_mid;
const struct MidiData s_guntai_v_zentai1MidiData = {
    /* ROM Address */ &s_guntai_v_zentai1_mid,
    /* unk4 */        0x82a4,
    /* unk6 */        0x16b9,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a998,
    /* unk10 */       0x608
};

extern const u32 s_guntai_v_zentai2_mid;
const struct MidiData s_guntai_v_zentai2MidiData = {
    /* ROM Address */ &s_guntai_v_zentai2_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a99c,
    /* unk10 */       0x609
};

extern const u32 s_guntai_v_susume_mid;
const struct MidiData s_guntai_v_susumeMidiData = {
    /* ROM Address */ &s_guntai_v_susume_mid,
    /* unk4 */        0x82a4,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9a0,
    /* unk10 */       0x60a
};

extern const u32 s_guntai_v_tomare_mid;
const struct MidiData s_guntai_v_tomareMidiData = {
    /* ROM Address */ &s_guntai_v_tomare_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9a4,
    /* unk10 */       0x60b
};

extern const u32 s_guntai_v_migi_muke1_mid;
const struct MidiData s_guntai_v_migi_muke1MidiData = {
    /* ROM Address */ &s_guntai_v_migi_muke1_mid,
    /* unk4 */        0x82a4,
    /* unk6 */        0x16b4,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9a8,
    /* unk10 */       0x60c
};

extern const u32 s_guntai_v_migi_muke2_mid;
const struct MidiData s_guntai_v_migi_muke2MidiData = {
    /* ROM Address */ &s_guntai_v_migi_muke2_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9ac,
    /* unk10 */       0x60d
};

extern const u32 s_guntai_v_hidari_muke1_mid;
const struct MidiData s_guntai_v_hidari_muke1MidiData = {
    /* ROM Address */ &s_guntai_v_hidari_muke1_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9b0,
    /* unk10 */       0x60e
};

extern const u32 s_guntai_v_hidari_muke2_mid;
const struct MidiData s_guntai_v_hidari_muke2MidiData = {
    /* ROM Address */ &s_guntai_v_hidari_muke2_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9b4,
    /* unk10 */       0x60f
};

extern const u32 s_guntai_v_migi_mid;
const struct MidiData s_guntai_v_migiMidiData = {
    /* ROM Address */ &s_guntai_v_migi_mid,
    /* unk4 */        0x82a4,
    /* unk6 */        0x16bf,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9b8,
    /* unk10 */       0x610
};

extern const u32 s_guntai_v_hidari_mid;
const struct MidiData s_guntai_v_hidariMidiData = {
    /* ROM Address */ &s_guntai_v_hidari_mid,
    /* unk4 */        0x2a4,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9bc,
    /* unk10 */       0x611
};

extern const u32 s_guntai_v_yoh_mid;
const struct MidiData s_guntai_v_yohMidiData = {
    /* ROM Address */ &s_guntai_v_yoh_mid,
    /* unk4 */        0x2a5,
    /* unk6 */        0x16b7,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9c0,
    /* unk10 */       0x612
};

extern const u32 s_guntai_v_es_mid;
const struct MidiData s_guntai_v_esMidiData = {
    /* ROM Address */ &s_guntai_v_es_mid,
    /* unk4 */        0x82a5,
    /* unk6 */        0x16b9,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9c4,
    /* unk10 */       0x613
};

extern const u32 s_guntai_v_ka_mid;
const struct MidiData s_guntai_v_kaMidiData = {
    /* ROM Address */ &s_guntai_v_ka_mid,
    /* unk4 */        0x82a5,
    /* unk6 */        0x16b9,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9c8,
    /* unk10 */       0x614
};

extern const u32 s_guntai_ikari_mid;
const struct MidiData s_guntai_ikariMidiData = {
    /* ROM Address */ &s_guntai_ikari_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x1699,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9cc,
    /* unk10 */       0x616
};

extern const u32 s_block_gotin_mid;
const struct MidiData s_block_gotinMidiData = {
    /* ROM Address */ &s_block_gotin_mid,
    /* unk4 */        0x2c6,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9d0,
    /* unk10 */       0x618
};

extern const u32 s_block_hit_mid;
const struct MidiData s_block_hitMidiData = {
    /* ROM Address */ &s_block_hit_mid,
    /* unk4 */        0x2c5,
    /* unk6 */        0x16ad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9d4,
    /* unk10 */       0x619
};

extern const u32 s_block_walk_mid;
const struct MidiData s_block_walkMidiData = {
    /* ROM Address */ &s_block_walk_mid,
    /* unk4 */        0x366,
    /* unk6 */        0x168f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9d8,
    /* unk10 */       0x61a
};

extern const u32 s_kawasemi_bgm_mid;
const struct MidiData s_kawasemi_bgmMidiData = {
    /* ROM Address */ &s_kawasemi_bgm_mid,
    /* unk4 */        0x380,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9dc,
    /* unk10 */       0x61d
};

extern const u32 s_kawasemi_frase_mid;
const struct MidiData s_kawasemi_fraseMidiData = {
    /* ROM Address */ &s_kawasemi_frase_mid,
    /* unk4 */        0x381,
    /* unk6 */        0x16ad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9a9e0,
    /* unk10 */       0x61e
};

extern const u32 s_heat_v_jituhane_mid;
const struct MidiData s_heat_v_jituhaneMidiData = {
    /* ROM Address */ &s_heat_v_jituhane_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9e4,
    /* unk10 */       0x623
};

extern const u32 s_heat_v_watasine_mid;
const struct MidiData s_heat_v_watasineMidiData = {
    /* ROM Address */ &s_heat_v_watasine_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9e8,
    /* unk10 */       0x624
};

extern const u32 s_heat_v_watasitara_mid;
const struct MidiData s_heat_v_watasitaraMidiData = {
    /* ROM Address */ &s_heat_v_watasitara_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9ec,
    /* unk10 */       0x625
};

extern const u32 s_heat_v_anataga_mid;
const struct MidiData s_heat_v_anatagaMidiData = {
    /* ROM Address */ &s_heat_v_anataga_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9f0,
    /* unk10 */       0x626
};

extern const u32 s_heat_v_anatatara_mid;
const struct MidiData s_heat_v_anatataraMidiData = {
    /* ROM Address */ &s_heat_v_anatatara_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16ba,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9f4,
    /* unk10 */       0x627
};

extern const u32 s_heat_v_kimiga_mid;
const struct MidiData s_heat_v_kimigaMidiData = {
    /* ROM Address */ &s_heat_v_kimiga_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16ba,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9f8,
    /* unk10 */       0x628
};

extern const u32 s_heat_v_doji_mid;
const struct MidiData s_heat_v_dojiMidiData = {
    /* ROM Address */ &s_heat_v_doji_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9a9fc,
    /* unk10 */       0x629
};

extern const u32 s_heat_v_sugoi_mid;
const struct MidiData s_heat_v_sugoiMidiData = {
    /* ROM Address */ &s_heat_v_sugoi_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa00,
    /* unk10 */       0x62a
};

extern const u32 s_heat_v_koumietemo_mid;
const struct MidiData s_heat_v_koumietemoMidiData = {
    /* ROM Address */ &s_heat_v_koumietemo_mid,
    /* unk4 */        0x9c4,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa04,
    /* unk10 */       0x62b
};

extern const u32 s_heat_v_okubyo_mid;
const struct MidiData s_heat_v_okubyoMidiData = {
    /* ROM Address */ &s_heat_v_okubyo_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa08,
    /* unk10 */       0x62c
};

extern const u32 s_heat_v_majime_mid;
const struct MidiData s_heat_v_majimeMidiData = {
    /* ROM Address */ &s_heat_v_majime_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa0c,
    /* unk10 */       0x62d
};

extern const u32 s_heat_v_kouitta_mid;
const struct MidiData s_heat_v_kouittaMidiData = {
    /* ROM Address */ &s_heat_v_kouitta_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa10,
    /* unk10 */       0x62e
};

extern const u32 s_heat_v_demo_mid;
const struct MidiData s_heat_v_demoMidiData = {
    /* ROM Address */ &s_heat_v_demo_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa14,
    /* unk10 */       0x62f
};

extern const u32 s_heat_v_yappari_mid;
const struct MidiData s_heat_v_yappariMidiData = {
    /* ROM Address */ &s_heat_v_yappari_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa18,
    /* unk10 */       0x630
};

extern const u32 s_heat_v_dakedo_mid;
const struct MidiData s_heat_v_dakedoMidiData = {
    /* ROM Address */ &s_heat_v_dakedo_mid,
    /* unk4 */        0x89c4,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa1c,
    /* unk10 */       0x631
};

extern const u32 s_heat_v_suki_mid;
const struct MidiData s_heat_v_sukiMidiData = {
    /* ROM Address */ &s_heat_v_suki_mid,
    /* unk4 */        0x89c5,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa20,
    /* unk10 */       0x632
};

extern const u32 s_heat_v_kirai_mid;
const struct MidiData s_heat_v_kiraiMidiData = {
    /* ROM Address */ &s_heat_v_kirai_mid,
    /* unk4 */        0x89c5,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa24,
    /* unk10 */       0x633
};

extern const u32 s_heat_v_seki_mid;
const struct MidiData s_heat_v_sekiMidiData = {
    /* ROM Address */ &s_heat_v_seki_mid,
    /* unk4 */        0x89c5,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa28,
    /* unk10 */       0x634
};

extern const u32 s_heat_machine_bgm_mid;
const struct MidiData s_heat_machine_bgmMidiData = {
    /* ROM Address */ &s_heat_machine_bgm_mid,
    /* unk4 */        0x9c0,
    /* unk6 */        0xc94,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa2c,
    /* unk10 */       0x635
};

extern const u32 s_metro_tin_mid;
const struct MidiData s_metro_tinMidiData = {
    /* ROM Address */ &s_metro_tin_mid,
    /* unk4 */        0x384,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa30,
    /* unk10 */       0x640
};

extern const u32 s_metro_count1_mid;
const struct MidiData s_metro_count1MidiData = {
    /* ROM Address */ &s_metro_count1_mid,
    /* unk4 */        0x83e3,
    /* unk6 */        0x168c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa34,
    /* unk10 */       0x641
};

extern const u32 s_metro_count2_mid;
const struct MidiData s_metro_count2MidiData = {
    /* ROM Address */ &s_metro_count2_mid,
    /* unk4 */        0x83e3,
    /* unk6 */        0x168c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa38,
    /* unk10 */       0x642
};

extern const u32 s_metro_hato_mid;
const struct MidiData s_metro_hatoMidiData = {
    /* ROM Address */ &s_metro_hato_mid,
    /* unk4 */        0x385,
    /* unk6 */        0x1694,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa3c,
    /* unk10 */       0x643
};

extern const u32 s_metro_hit_mid;
const struct MidiData s_metro_hitMidiData = {
    /* ROM Address */ &s_metro_hit_mid,
    /* unk4 */        0x386,
    /* unk6 */        0x169e,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa40,
    /* unk10 */       0x644
};

extern const u32 s_batter_hit_mid;
const struct MidiData s_batter_hitMidiData = {
    /* ROM Address */ &s_batter_hit_mid,
    /* unk4 */        0x3a4,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa44,
    /* unk10 */       0x654
};

extern const u32 s_batter_mit_mid;
const struct MidiData s_batter_mitMidiData = {
    /* ROM Address */ &s_batter_mit_mid,
    /* unk4 */        0x3a4,
    /* unk6 */        0x16b2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa48,
    /* unk10 */       0x655
};

extern const u32 s_keytoy_count1_mid;
const struct MidiData s_keytoy_count1MidiData = {
    /* ROM Address */ &s_keytoy_count1_mid,
    /* unk4 */        0x83e3,
    /* unk6 */        0x1691,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa4c,
    /* unk10 */       0x65e
};

extern const u32 s_keytoy_count2_mid;
const struct MidiData s_keytoy_count2MidiData = {
    /* ROM Address */ &s_keytoy_count2_mid,
    /* unk4 */        0x83e3,
    /* unk6 */        0x1691,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa50,
    /* unk10 */       0x65f
};

extern const u32 s_mitubati_mid;
const struct MidiData s_mitubatiMidiData = {
    /* ROM Address */ &s_mitubati_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xcad,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa54,
    /* unk10 */       0x668
};

extern const u32 s_witch_candy_mid;
const struct MidiData s_witch_candyMidiData = {
    /* ROM Address */ &s_witch_candy_mid,
    /* unk4 */        0x8264,
    /* unk6 */        0x16a5,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa58,
    /* unk10 */       0x669
};

extern const u32 s_witch_furu_mid;
const struct MidiData s_witch_furuMidiData = {
    /* ROM Address */ &s_witch_furu_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x1414,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa5c,
    /* unk10 */       0x66a
};

extern const u32 s_witch_cake_mid;
const struct MidiData s_witch_cakeMidiData = {
    /* ROM Address */ &s_witch_cake_mid,
    /* unk4 */        0x26b,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa60,
    /* unk10 */       0x66b
};

extern const u32 s_witch_donats_mid;
const struct MidiData s_witch_donatsMidiData = {
    /* ROM Address */ &s_witch_donats_mid,
    /* unk4 */        0x26c,
    /* unk6 */        0x1699,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aa64,
    /* unk10 */       0x66c
};

extern const u32 s_rabbit_jet_mid;
const struct MidiData s_rabbit_jetMidiData = {
    /* ROM Address */ &s_rabbit_jet_mid,
    /* unk4 */        0x2e6,
    /* unk6 */        0x1f4f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa68,
    /* unk10 */       0x67c
};

extern const u32 s_rabbit_break2_mid;
const struct MidiData s_rabbit_break2MidiData = {
    /* ROM Address */ &s_rabbit_break2_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x1f77,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa6c,
    /* unk10 */       0x67d
};

extern const u32 s_rabbit_c7_brass_mid;
const struct MidiData s_rabbit_c7_brassMidiData = {
    /* ROM Address */ &s_rabbit_c7_brass_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa70,
    /* unk10 */       0x67e
};

extern const u32 s_rabbit_break_mid;
const struct MidiData s_rabbit_breakMidiData = {
    /* ROM Address */ &s_rabbit_break_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x1f77,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa74,
    /* unk10 */       0x67f
};

extern const u32 s_rabbit_HC_mid;
const struct MidiData s_rabbit_HCMidiData = {
    /* ROM Address */ &s_rabbit_HC_mid,
    /* unk4 */        0x2e5,
    /* unk6 */        0x1ffc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa78,
    /* unk10 */       0x680
};

extern const u32 s_rabbit_bgm_mid;
const struct MidiData s_rabbit_bgmMidiData = {
    /* ROM Address */ &s_rabbit_bgm_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0x11ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa7c,
    /* unk10 */       0x681
};

extern const u32 s_rabbit_c7_mid;
const struct MidiData s_rabbit_c7MidiData = {
    /* ROM Address */ &s_rabbit_c7_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa80,
    /* unk10 */       0x682
};

extern const u32 s_rabbit_f7_mid;
const struct MidiData s_rabbit_f7MidiData = {
    /* ROM Address */ &s_rabbit_f7_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa84,
    /* unk10 */       0x683
};

extern const u32 s_rabbit_g7f7_1_mid;
const struct MidiData s_rabbit_g7f7_1MidiData = {
    /* ROM Address */ &s_rabbit_g7f7_1_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa88,
    /* unk10 */       0x684
};

extern const u32 s_rabbit_g7f7_2_mid;
const struct MidiData s_rabbit_g7f7_2MidiData = {
    /* ROM Address */ &s_rabbit_g7f7_2_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa8c,
    /* unk10 */       0x685
};

extern const u32 s_rabbit_c7g7_mid;
const struct MidiData s_rabbit_c7g7MidiData = {
    /* ROM Address */ &s_rabbit_c7g7_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa90,
    /* unk10 */       0x686
};

extern const u32 s_rabbit_fill_1_mid;
const struct MidiData s_rabbit_fill_1MidiData = {
    /* ROM Address */ &s_rabbit_fill_1_mid,
    /* unk4 */        0x2e2,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa94,
    /* unk10 */       0x687
};

extern const u32 s_rabbit_fill_2_mid;
const struct MidiData s_rabbit_fill_2MidiData = {
    /* ROM Address */ &s_rabbit_fill_2_mid,
    /* unk4 */        0x2e2,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa98,
    /* unk10 */       0x688
};

extern const u32 s_rabbit_fill_3_mid;
const struct MidiData s_rabbit_fill_3MidiData = {
    /* ROM Address */ &s_rabbit_fill_3_mid,
    /* unk4 */        0x2e2,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aa9c,
    /* unk10 */       0x689
};

extern const u32 s_rabbit_fill_4_mid;
const struct MidiData s_rabbit_fill_4MidiData = {
    /* ROM Address */ &s_rabbit_fill_4_mid,
    /* unk4 */        0x2e2,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaa0,
    /* unk10 */       0x68a
};

extern const u32 s_rabbit_atama_mid;
const struct MidiData s_rabbit_atamaMidiData = {
    /* ROM Address */ &s_rabbit_atama_mid,
    /* unk4 */        0x82e3,
    /* unk6 */        0x1e3f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaa4,
    /* unk10 */       0x68b
};

extern const u32 s_rabbit_moon_mid;
const struct MidiData s_rabbit_moonMidiData = {
    /* ROM Address */ &s_rabbit_moon_mid,
    /* unk4 */        0x8363,
    /* unk6 */        0x1e3f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaa8,
    /* unk10 */       0x68c
};

extern const u32 s_tap_monky1_mid;
const struct MidiData s_tap_monky1MidiData = {
    /* ROM Address */ &s_tap_monky1_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaac,
    /* unk10 */       0x690
};

extern const u32 s_tap_monky2_mid;
const struct MidiData s_tap_monky2MidiData = {
    /* ROM Address */ &s_tap_monky2_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aab0,
    /* unk10 */       0x691
};

extern const u32 s_tap_monky3_1_mid;
const struct MidiData s_tap_monky3_1MidiData = {
    /* ROM Address */ &s_tap_monky3_1_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aab4,
    /* unk10 */       0x692
};

extern const u32 s_tap_monky3_2_mid;
const struct MidiData s_tap_monky3_2MidiData = {
    /* ROM Address */ &s_tap_monky3_2_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aab8,
    /* unk10 */       0x693
};

extern const u32 s_tap_monky4_mid;
const struct MidiData s_tap_monky4MidiData = {
    /* ROM Address */ &s_tap_monky4_mid,
    /* unk4 */        0x2c4,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aabc,
    /* unk10 */       0x694
};

extern const u32 s_tap_kick_monky_mid;
const struct MidiData s_tap_kick_monkyMidiData = {
    /* ROM Address */ &s_tap_kick_monky_mid,
    /* unk4 */        0x265,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aac0,
    /* unk10 */       0x695
};

extern const u32 s_tap_kick_lady_mid;
const struct MidiData s_tap_kick_ladyMidiData = {
    /* ROM Address */ &s_tap_kick_lady_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aac4,
    /* unk10 */       0x696
};

extern const u32 s_uma_walk1_mid;
const struct MidiData s_uma_walk1MidiData = {
    /* ROM Address */ &s_uma_walk1_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aac8,
    /* unk10 */       0x6a4
};

extern const u32 s_uma_walk2_mid;
const struct MidiData s_uma_walk2MidiData = {
    /* ROM Address */ &s_uma_walk2_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aacc,
    /* unk10 */       0x6a5
};

extern const u32 s_uma_walk3_mid;
const struct MidiData s_uma_walk3MidiData = {
    /* ROM Address */ &s_uma_walk3_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aad0,
    /* unk10 */       0x6a6
};

extern const u32 s_uma_walk4_mid;
const struct MidiData s_uma_walk4MidiData = {
    /* ROM Address */ &s_uma_walk4_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aad4,
    /* unk10 */       0x6a7
};

extern const u32 s_uma_trot1_mid;
const struct MidiData s_uma_trot1MidiData = {
    /* ROM Address */ &s_uma_trot1_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aad8,
    /* unk10 */       0x6a8
};

extern const u32 s_uma_trot2_mid;
const struct MidiData s_uma_trot2MidiData = {
    /* ROM Address */ &s_uma_trot2_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aadc,
    /* unk10 */       0x6a9
};

extern const u32 s_uma_canter1_mid;
const struct MidiData s_uma_canter1MidiData = {
    /* ROM Address */ &s_uma_canter1_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aae0,
    /* unk10 */       0x6aa
};

extern const u32 s_uma_canter2_mid;
const struct MidiData s_uma_canter2MidiData = {
    /* ROM Address */ &s_uma_canter2_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aae4,
    /* unk10 */       0x6ab
};

extern const u32 s_uma_canter3_mid;
const struct MidiData s_uma_canter3MidiData = {
    /* ROM Address */ &s_uma_canter3_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aae8,
    /* unk10 */       0x6ac
};

extern const u32 s_uma_galop1_mid;
const struct MidiData s_uma_galop1MidiData = {
    /* ROM Address */ &s_uma_galop1_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaec,
    /* unk10 */       0x6ad
};

extern const u32 s_uma_galop2_mid;
const struct MidiData s_uma_galop2MidiData = {
    /* ROM Address */ &s_uma_galop2_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaf0,
    /* unk10 */       0x6ae
};

extern const u32 s_uma_galop3_mid;
const struct MidiData s_uma_galop3MidiData = {
    /* ROM Address */ &s_uma_galop3_mid,
    /* unk4 */        0x283,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaf4,
    /* unk10 */       0x6af
};

extern const u32 s_uma_galop4_mid;
const struct MidiData s_uma_galop4MidiData = {
    /* ROM Address */ &s_uma_galop4_mid,
    /* unk4 */        0x8283,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aaf8,
    /* unk10 */       0x6b0
};

extern const u32 s_uma_hihin_mid;
const struct MidiData s_uma_hihinMidiData = {
    /* ROM Address */ &s_uma_hihin_mid,
    /* unk4 */        0x284,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aafc,
    /* unk10 */       0x6b1
};

extern const u32 s_uma_bulu_mid;
const struct MidiData s_uma_buluMidiData = {
    /* ROM Address */ &s_uma_bulu_mid,
    /* unk4 */        0x284,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab00,
    /* unk10 */       0x6b2
};

extern const u32 s_uma_hi_muti_mid;
const struct MidiData s_uma_hi_mutiMidiData = {
    /* ROM Address */ &s_uma_hi_muti_mid,
    /* unk4 */        0x284,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab04,
    /* unk10 */       0x6b3
};

extern const u32 s_uma_ng_mid;
const struct MidiData s_uma_ngMidiData = {
    /* ROM Address */ &s_uma_ng_mid,
    /* unk4 */        0x284,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab08,
    /* unk10 */       0x6b4
};

extern const u32 s_uma_walk1_t_mid;
const struct MidiData s_uma_walk1_tMidiData = {
    /* ROM Address */ &s_uma_walk1_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab0c,
    /* unk10 */       0x6b5
};

extern const u32 s_uma_walk2_t_mid;
const struct MidiData s_uma_walk2_tMidiData = {
    /* ROM Address */ &s_uma_walk2_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab10,
    /* unk10 */       0x6b6
};

extern const u32 s_uma_walk3_t_mid;
const struct MidiData s_uma_walk3_tMidiData = {
    /* ROM Address */ &s_uma_walk3_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab14,
    /* unk10 */       0x6b7
};

extern const u32 s_uma_walk4_t_mid;
const struct MidiData s_uma_walk4_tMidiData = {
    /* ROM Address */ &s_uma_walk4_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab18,
    /* unk10 */       0x6b8
};

extern const u32 s_uma_trot1_t_mid;
const struct MidiData s_uma_trot1_tMidiData = {
    /* ROM Address */ &s_uma_trot1_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab1c,
    /* unk10 */       0x6b9
};

extern const u32 s_uma_trot2_t_mid;
const struct MidiData s_uma_trot2_tMidiData = {
    /* ROM Address */ &s_uma_trot2_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab20,
    /* unk10 */       0x6ba
};

extern const u32 s_uma_canter1_t_mid;
const struct MidiData s_uma_canter1_tMidiData = {
    /* ROM Address */ &s_uma_canter1_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab24,
    /* unk10 */       0x6bb
};

extern const u32 s_uma_canter2_t_mid;
const struct MidiData s_uma_canter2_tMidiData = {
    /* ROM Address */ &s_uma_canter2_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab28,
    /* unk10 */       0x6bc
};

extern const u32 s_uma_canter3_t_mid;
const struct MidiData s_uma_canter3_tMidiData = {
    /* ROM Address */ &s_uma_canter3_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16a0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab2c,
    /* unk10 */       0x6bd
};

extern const u32 s_uma_galop1_t_mid;
const struct MidiData s_uma_galop1_tMidiData = {
    /* ROM Address */ &s_uma_galop1_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab30,
    /* unk10 */       0x6be
};

extern const u32 s_uma_galop2_t_mid;
const struct MidiData s_uma_galop2_tMidiData = {
    /* ROM Address */ &s_uma_galop2_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab34,
    /* unk10 */       0x6bf
};

extern const u32 s_uma_galop3_t_mid;
const struct MidiData s_uma_galop3_tMidiData = {
    /* ROM Address */ &s_uma_galop3_t_mid,
    /* unk4 */        0x285,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab38,
    /* unk10 */       0x6c0
};

extern const u32 s_uma_galop4_t_mid;
const struct MidiData s_uma_galop4_tMidiData = {
    /* ROM Address */ &s_uma_galop4_t_mid,
    /* unk4 */        0x8285,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab3c,
    /* unk10 */       0x6c1
};

extern const u32 s_uma_bgm1_mid;
const struct MidiData s_uma_bgm1MidiData = {
    /* ROM Address */ &s_uma_bgm1_mid,
    /* unk4 */        0x280,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab40,
    /* unk10 */       0x6c2
};

extern const u32 s_uma_bgm2_mid;
const struct MidiData s_uma_bgm2MidiData = {
    /* ROM Address */ &s_uma_bgm2_mid,
    /* unk4 */        0x8280,
    /* unk6 */        0xcaf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab44,
    /* unk10 */       0x6c3
};

extern const u32 s_uma_bgm3_mid;
const struct MidiData s_uma_bgm3MidiData = {
    /* ROM Address */ &s_uma_bgm3_mid,
    /* unk4 */        0x280,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab48,
    /* unk10 */       0x6c4
};

extern const u32 s_uma_bgm4_mid;
const struct MidiData s_uma_bgm4MidiData = {
    /* ROM Address */ &s_uma_bgm4_mid,
    /* unk4 */        0x280,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab4c,
    /* unk10 */       0x6c5
};

extern const u32 s_karate_bgm_mid;
const struct MidiData s_karate_bgmMidiData = {
    /* ROM Address */ &s_karate_bgm_mid,
    /* unk4 */        0x240,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab50,
    /* unk10 */       0x6c7
};

extern const u32 s_karate_fan_mid;
const struct MidiData s_karate_fanMidiData = {
    /* ROM Address */ &s_karate_fan_mid,
    /* unk4 */        0x241,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab54,
    /* unk10 */       0x6c8
};

extern const u32 s_datumo_nuki_mid;
const struct MidiData s_datumo_nukiMidiData = {
    /* ROM Address */ &s_datumo_nuki_mid,
    /* unk4 */        0x8263,
    /* unk6 */        0x16b9,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab58,
    /* unk10 */       0x6c9
};

extern const u32 s_datumo_kegire_mid;
const struct MidiData s_datumo_kegireMidiData = {
    /* ROM Address */ &s_datumo_kegire_mid,
    /* unk4 */        0x263,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab5c,
    /* unk10 */       0x6ca
};

extern const u32 s_datumo_bgm_mid;
const struct MidiData s_datumo_bgmMidiData = {
    /* ROM Address */ &s_datumo_bgm_mid,
    /* unk4 */        0x8360,
    /* unk6 */        0xcbf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab60,
    /* unk10 */       0x6cb
};

extern const u32 s_rap_bgm_renshu_mid;
const struct MidiData s_rap_bgm_renshuMidiData = {
    /* ROM Address */ &s_rap_bgm_renshu_mid,
    /* unk4 */        0x400,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab64,
    /* unk10 */       0x6d5
};

extern const u32 s_rap_bgm_mid;
const struct MidiData s_rap_bgmMidiData = {
    /* ROM Address */ &s_rap_bgm_mid,
    /* unk4 */        0x400,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab68,
    /* unk10 */       0x6d6
};

extern const u32 s_rap_jazz_bgm_mid;
const struct MidiData s_rap_jazz_bgmMidiData = {
    /* ROM Address */ &s_rap_jazz_bgm_mid,
    /* unk4 */        0x8400,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab6c,
    /* unk10 */       0x6d7
};

extern const u32 s_rap_15ji_desuka_mid;
const struct MidiData s_rap_15ji_desukaMidiData = {
    /* ROM Address */ &s_rap_15ji_desuka_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab70,
    /* unk10 */       0x6d8
};

extern const u32 s_rap_oyatu_desuka_mid;
const struct MidiData s_rap_oyatu_desukaMidiData = {
    /* ROM Address */ &s_rap_oyatu_desuka_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab74,
    /* unk10 */       0x6d9
};

extern const u32 s_rap_honto_desuka_mid;
const struct MidiData s_rap_honto_desukaMidiData = {
    /* ROM Address */ &s_rap_honto_desuka_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab78,
    /* unk10 */       0x6da
};

extern const u32 s_rap_wakari_desuka_mid;
const struct MidiData s_rap_wakari_desukaMidiData = {
    /* ROM Address */ &s_rap_wakari_desuka_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab7c,
    /* unk10 */       0x6db
};

extern const u32 s_rap_oisi_kamone_mid;
const struct MidiData s_rap_oisi_kamoneMidiData = {
    /* ROM Address */ &s_rap_oisi_kamone_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab80,
    /* unk10 */       0x6dc
};

extern const u32 s_rap_herusi_kamone_mid;
const struct MidiData s_rap_herusi_kamoneMidiData = {
    /* ROM Address */ &s_rap_herusi_kamone_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab84,
    /* unk10 */       0x6dd
};

extern const u32 s_rap_orenosei_kamone_mid;
const struct MidiData s_rap_orenosei_kamoneMidiData = {
    /* ROM Address */ &s_rap_orenosei_kamone_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab88,
    /* unk10 */       0x6de
};

extern const u32 s_rap_soremoso_kamone_mid;
const struct MidiData s_rap_soremoso_kamoneMidiData = {
    /* ROM Address */ &s_rap_soremoso_kamone_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab8c,
    /* unk10 */       0x6df
};

extern const u32 s_rap_tanosi_kamone_mid;
const struct MidiData s_rap_tanosi_kamoneMidiData = {
    /* ROM Address */ &s_rap_tanosi_kamone_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab90,
    /* unk10 */       0x6e0
};

extern const u32 s_rap_oyatuha_saiko_mid;
const struct MidiData s_rap_oyatuha_saikoMidiData = {
    /* ROM Address */ &s_rap_oyatuha_saiko_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab94,
    /* unk10 */       0x6e1
};

extern const u32 s_rap_kibunha_saiko_mid;
const struct MidiData s_rap_kibunha_saikoMidiData = {
    /* ROM Address */ &s_rap_kibunha_saiko_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab98,
    /* unk10 */       0x6e2
};

extern const u32 s_rap_orette_saiko_mid;
const struct MidiData s_rap_orette_saikoMidiData = {
    /* ROM Address */ &s_rap_orette_saiko_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ab9c,
    /* unk10 */       0x6e3
};

extern const u32 s_rap_kimitte_saiko_mid;
const struct MidiData s_rap_kimitte_saikoMidiData = {
    /* ROM Address */ &s_rap_kimitte_saiko_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aba0,
    /* unk10 */       0x6e4
};

extern const u32 s_rap_oyatuga_naiyo_mid;
const struct MidiData s_rap_oyatuga_naiyoMidiData = {
    /* ROM Address */ &s_rap_oyatuga_naiyo_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aba4,
    /* unk10 */       0x6e5
};

extern const u32 s_rap_oresira_naiyo_mid;
const struct MidiData s_rap_oresira_naiyoMidiData = {
    /* ROM Address */ &s_rap_oresira_naiyo_mid,
    /* unk4 */        0x404,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aba8,
    /* unk10 */       0x6e6
};

extern const u32 s_rap_un_mid;
const struct MidiData s_rap_unMidiData = {
    /* ROM Address */ &s_rap_un_mid,
    /* unk4 */        0x8405,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abac,
    /* unk10 */       0x6e7
};

extern const u32 s_rap_uun_mid;
const struct MidiData s_rap_uunMidiData = {
    /* ROM Address */ &s_rap_uun_mid,
    /* unk4 */        0x8405,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abb0,
    /* unk10 */       0x6e8
};

extern const u32 s_rap_yeah_mid;
const struct MidiData s_rap_yeahMidiData = {
    /* ROM Address */ &s_rap_yeah_mid,
    /* unk4 */        0x406,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abb4,
    /* unk10 */       0x6e9
};

extern const u32 s_sindan_manzai_mid;
const struct MidiData s_sindan_manzaiMidiData = {
    /* ROM Address */ &s_sindan_manzai_mid,
    /* unk4 */        0x9c0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abb8,
    /* unk10 */       0x6ea
};

extern const u32 s_sindan_mail_mid;
const struct MidiData s_sindan_mailMidiData = {
    /* ROM Address */ &s_sindan_mail_mid,
    /* unk4 */        0x9c0,
    /* unk6 */        0xc94,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abbc,
    /* unk10 */       0x6eb
};

extern const u32 s_esa_pengin1_1_mid;
const struct MidiData s_esa_pengin1_1MidiData = {
    /* ROM Address */ &s_esa_pengin1_1_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abc0,
    /* unk10 */       0x6f4
};

extern const u32 s_esa_pengin1_2_mid;
const struct MidiData s_esa_pengin1_2MidiData = {
    /* ROM Address */ &s_esa_pengin1_2_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abc4,
    /* unk10 */       0x6f5
};

extern const u32 s_esa_pengin1_3_mid;
const struct MidiData s_esa_pengin1_3MidiData = {
    /* ROM Address */ &s_esa_pengin1_3_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abc8,
    /* unk10 */       0x6f6
};

extern const u32 s_esa_pengin2_1_mid;
const struct MidiData s_esa_pengin2_1MidiData = {
    /* ROM Address */ &s_esa_pengin2_1_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abcc,
    /* unk10 */       0x6f7
};

extern const u32 s_esa_pengin2_2_mid;
const struct MidiData s_esa_pengin2_2MidiData = {
    /* ROM Address */ &s_esa_pengin2_2_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abd0,
    /* unk10 */       0x6f8
};

extern const u32 s_esa_pengin2_3_mid;
const struct MidiData s_esa_pengin2_3MidiData = {
    /* ROM Address */ &s_esa_pengin2_3_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abd4,
    /* unk10 */       0x6f9
};

extern const u32 s_esa_pengin3_1_mid;
const struct MidiData s_esa_pengin3_1MidiData = {
    /* ROM Address */ &s_esa_pengin3_1_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abd8,
    /* unk10 */       0x6fa
};

extern const u32 s_esa_pengin3_2_mid;
const struct MidiData s_esa_pengin3_2MidiData = {
    /* ROM Address */ &s_esa_pengin3_2_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abdc,
    /* unk10 */       0x6fb
};

extern const u32 s_esa_pengin3_3_mid;
const struct MidiData s_esa_pengin3_3MidiData = {
    /* ROM Address */ &s_esa_pengin3_3_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abe0,
    /* unk10 */       0x6fc
};

extern const u32 s_esa_catch_mid;
const struct MidiData s_esa_catchMidiData = {
    /* ROM Address */ &s_esa_catch_mid,
    /* unk4 */        0x307,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abe4,
    /* unk10 */       0x6fd
};

extern const u32 s_quiz_bgm_mid;
const struct MidiData s_quiz_bgmMidiData = {
    /* ROM Address */ &s_quiz_bgm_mid,
    /* unk4 */        0x6e0,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abe8,
    /* unk10 */       0x6fe
};

extern const u32 s_quiz_fan_good_mid;
const struct MidiData s_quiz_fan_goodMidiData = {
    /* ROM Address */ &s_quiz_fan_good_mid,
    /* unk4 */        0x681,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abec,
    /* unk10 */       0x6ff
};

extern const u32 s_quiz_fan_bad_mid;
const struct MidiData s_quiz_fan_badMidiData = {
    /* ROM Address */ &s_quiz_fan_bad_mid,
    /* unk4 */        0x721,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abf0,
    /* unk10 */       0x700
};

extern const u32 s_virus_fork_mid;
const struct MidiData s_virus_forkMidiData = {
    /* ROM Address */ &s_virus_fork_mid,
    /* unk4 */        0x265,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abf4,
    /* unk10 */       0x701
};

extern const u32 s_virus_dash_mid;
const struct MidiData s_virus_dashMidiData = {
    /* ROM Address */ &s_virus_dash_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x143c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abf8,
    /* unk10 */       0x702
};

extern const u32 s_virus_miss_mid;
const struct MidiData s_virus_missMidiData = {
    /* ROM Address */ &s_virus_miss_mid,
    /* unk4 */        0x3a7,
    /* unk6 */        0x141e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9abfc,
    /* unk10 */       0x703
};

extern const u32 s_virus_hit_mid;
const struct MidiData s_virus_hitMidiData = {
    /* ROM Address */ &s_virus_hit_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac00,
    /* unk10 */       0x704
};

extern const u32 s_virus_osii_mid;
const struct MidiData s_virus_osiiMidiData = {
    /* ROM Address */ &s_virus_osii_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac04,
    /* unk10 */       0x705
};

extern const u32 s_check_result_bgm_mid;
const struct MidiData s_check_result_bgmMidiData = {
    /* ROM Address */ &s_check_result_bgm_mid,
    /* unk4 */        0x240,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac08,
    /* unk10 */       0x706
};

extern const u32 s_lesson_sel_bgm_mid;
const struct MidiData s_lesson_sel_bgmMidiData = {
    /* ROM Address */ &s_lesson_sel_bgm_mid,
    /* unk4 */        0x9c0,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac0c,
    /* unk10 */       0x707
};

extern const u32 s_toys_bgm_mid;
const struct MidiData s_toys_bgmMidiData = {
    /* ROM Address */ &s_toys_bgm_mid,
    /* unk4 */        0x89c0,
    /* unk6 */        0xca5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac10,
    /* unk10 */       0x708
};

extern const u32 s_rap_machine_bgm_mid;
const struct MidiData s_rap_machine_bgmMidiData = {
    /* ROM Address */ &s_rap_machine_bgm_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac14,
    /* unk10 */       0x709
};

extern const u32 s_mini_game_bgm_mid;
const struct MidiData s_mini_game_bgmMidiData = {
    /* ROM Address */ &s_mini_game_bgm_mid,
    /* unk4 */        0x3e0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac18,
    /* unk10 */       0x70a
};

extern const u32 s_remix_all_bgm_mid;
const struct MidiData s_remix_all_bgmMidiData = {
    /* ROM Address */ &s_remix_all_bgm_mid,
    /* unk4 */        0x980,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac1c,
    /* unk10 */       0x70b
};

extern const u32 s_sindan_sea_mid;
const struct MidiData s_sindan_seaMidiData = {
    /* ROM Address */ &s_sindan_sea_mid,
    /* unk4 */        0x7a0,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac20,
    /* unk10 */       0x70c
};

extern const u32 s_drum_lesson_bgm_mid;
const struct MidiData s_drum_lesson_bgmMidiData = {
    /* ROM Address */ &s_drum_lesson_bgm_mid,
    /* unk4 */        0x980,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac24,
    /* unk10 */       0x70d
};

extern const u32 s_counseling_bgm_mid;
const struct MidiData s_counseling_bgmMidiData = {
    /* ROM Address */ &s_counseling_bgm_mid,
    /* unk4 */        0x860,
    /* unk6 */        0xcb7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac28,
    /* unk10 */       0x70e
};

extern const u32 s_gameover_fan_mid;
const struct MidiData s_gameover_fanMidiData = {
    /* ROM Address */ &s_gameover_fan_mid,
    /* unk4 */        0x6e0,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac2c,
    /* unk10 */       0x70f
};

extern const u32 s_studio_bgm_mid;
const struct MidiData s_studio_bgmMidiData = {
    /* ROM Address */ &s_studio_bgm_mid,
    /* unk4 */        0x380,
    /* unk6 */        0xc8a,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac30,
    /* unk10 */       0x710
};

extern const u32 s_nyuka_fan_mid;
const struct MidiData s_nyuka_fanMidiData = {
    /* ROM Address */ &s_nyuka_fan_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac34,
    /* unk10 */       0x711
};

extern const u32 s_siryo_bgm_mid;
const struct MidiData s_siryo_bgmMidiData = {
    /* ROM Address */ &s_siryo_bgm_mid,
    /* unk4 */        0x360,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac38,
    /* unk10 */       0x712
};

extern const u32 s_dr_sam_bgm_mid;
const struct MidiData s_dr_sam_bgmMidiData = {
    /* ROM Address */ &s_dr_sam_bgm_mid,
    /* unk4 */        0x360,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac3c,
    /* unk10 */       0x713
};

extern const u32 s_renshu_bgm1_mid;
const struct MidiData s_renshu_bgm1MidiData = {
    /* ROM Address */ &s_renshu_bgm1_mid,
    /* unk4 */        0x760,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac40,
    /* unk10 */       0x714
};

extern const u32 s_renshu_bgm2_mid;
const struct MidiData s_renshu_bgm2MidiData = {
    /* ROM Address */ &s_renshu_bgm2_mid,
    /* unk4 */        0x760,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac44,
    /* unk10 */       0x715
};

extern const u32 s_renshu_bgm3_mid;
const struct MidiData s_renshu_bgm3MidiData = {
    /* ROM Address */ &s_renshu_bgm3_mid,
    /* unk4 */        0x760,
    /* unk6 */        0xca3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac48,
    /* unk10 */       0x716
};

extern const u32 s_kekka_bgm_good_mid;
const struct MidiData s_kekka_bgm_goodMidiData = {
    /* ROM Address */ &s_kekka_bgm_good_mid,
    /* unk4 */        0x360,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac4c,
    /* unk10 */       0x717
};

extern const u32 s_kekka_bgm_common_mid;
const struct MidiData s_kekka_bgm_commonMidiData = {
    /* ROM Address */ &s_kekka_bgm_common_mid,
    /* unk4 */        0x800,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac50,
    /* unk10 */       0x718
};

extern const u32 s_kekka_bgm_bad_mid;
const struct MidiData s_kekka_bgm_badMidiData = {
    /* ROM Address */ &s_kekka_bgm_bad_mid,
    /* unk4 */        0x2a0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac54,
    /* unk10 */       0x719
};

extern const u32 s_epilogue_fan1_mid;
const struct MidiData s_epilogue_fan1MidiData = {
    /* ROM Address */ &s_epilogue_fan1_mid,
    /* unk4 */        0x761,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac58,
    /* unk10 */       0x71a
};

extern const u32 s_epilogue_fan2_mid;
const struct MidiData s_epilogue_fan2MidiData = {
    /* ROM Address */ &s_epilogue_fan2_mid,
    /* unk4 */        0x761,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac5c,
    /* unk10 */       0x71b
};

extern const u32 s_perfect_fan_mid;
const struct MidiData s_perfect_fanMidiData = {
    /* ROM Address */ &s_perfect_fan_mid,
    /* unk4 */        0x2e1,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac60,
    /* unk10 */       0x71c
};

extern const u32 s_poly_rakka_mid;
const struct MidiData s_poly_rakkaMidiData = {
    /* ROM Address */ &s_poly_rakka_mid,
    /* unk4 */        0x526,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac64,
    /* unk10 */       0x71d
};

extern const u32 s_poly_shototu_mid;
const struct MidiData s_poly_shototuMidiData = {
    /* ROM Address */ &s_poly_shototu_mid,
    /* unk4 */        0x526,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac68,
    /* unk10 */       0x71e
};

extern const u32 s_block2_block_mid;
const struct MidiData s_block2_blockMidiData = {
    /* ROM Address */ &s_block2_block_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac6c,
    /* unk10 */       0x721
};

extern const u32 s_block2_fast_mid;
const struct MidiData s_block2_fastMidiData = {
    /* ROM Address */ &s_block2_fast_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac70,
    /* unk10 */       0x722
};

extern const u32 s_uki_water1_mid;
const struct MidiData s_uki_water1MidiData = {
    /* ROM Address */ &s_uki_water1_mid,
    /* unk4 */        0x365,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac74,
    /* unk10 */       0x726
};

extern const u32 s_uki_water2_mid;
const struct MidiData s_uki_water2MidiData = {
    /* ROM Address */ &s_uki_water2_mid,
    /* unk4 */        0x365,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac78,
    /* unk10 */       0x727
};

extern const u32 s_uki_water3_mid;
const struct MidiData s_uki_water3MidiData = {
    /* ROM Address */ &s_uki_water3_mid,
    /* unk4 */        0x445,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac7c,
    /* unk10 */       0x728
};

extern const u32 s_kuma_hit_mid;
const struct MidiData s_kuma_hitMidiData = {
    /* ROM Address */ &s_kuma_hit_mid,
    /* unk4 */        0x646,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac80,
    /* unk10 */       0x730
};

extern const u32 s_kuma_miss_mid;
const struct MidiData s_kuma_missMidiData = {
    /* ROM Address */ &s_kuma_miss_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac84,
    /* unk10 */       0x731
};

extern const u32 s_kuma_sakana_mid;
const struct MidiData s_kuma_sakanaMidiData = {
    /* ROM Address */ &s_kuma_sakana_mid,
    /* unk4 */        0x2e6,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac88,
    /* unk10 */       0x732
};

extern const u32 s_yuri_naki_mid;
const struct MidiData s_yuri_nakiMidiData = {
    /* ROM Address */ &s_yuri_naki_mid,
    /* unk4 */        0x266,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac8c,
    /* unk10 */       0x733
};

extern const u32 s_yuri_yurasi_mid;
const struct MidiData s_yuri_yurasiMidiData = {
    /* ROM Address */ &s_yuri_yurasi_mid,
    /* unk4 */        0x2c6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac90,
    /* unk10 */       0x734
};

extern const u32 s_4beat_open_mid;
const struct MidiData s_4beat_openMidiData = {
    /* ROM Address */ &s_4beat_open_mid,
    /* unk4 */        0x526,
    /* unk6 */        0x1419,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac94,
    /* unk10 */       0x735
};

extern const u32 s_4beat_jiban_mid;
const struct MidiData s_4beat_jibanMidiData = {
    /* ROM Address */ &s_4beat_jiban_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1419,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac98,
    /* unk10 */       0x736
};

extern const u32 s_rythm_bat_miss_mid;
const struct MidiData s_rythm_bat_missMidiData = {
    /* ROM Address */ &s_rythm_bat_miss_mid,
    /* unk4 */        0x3e5,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ac9c,
    /* unk10 */       0x73a
};

extern const u32 s_dontan_count_mid;
const struct MidiData s_dontan_countMidiData = {
    /* ROM Address */ &s_dontan_count_mid,
    /* unk4 */        0x365,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aca0,
    /* unk10 */       0x73f
};

extern const u32 s_dontan_water_mid;
const struct MidiData s_dontan_waterMidiData = {
    /* ROM Address */ &s_dontan_water_mid,
    /* unk4 */        0x365,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aca4,
    /* unk10 */       0x740
};

extern const u32 s_change_a_mid;
const struct MidiData s_change_aMidiData = {
    /* ROM Address */ &s_change_a_mid,
    /* unk4 */        0x3e8,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aca8,
    /* unk10 */       0x744
};

extern const u32 s_change_b_mid;
const struct MidiData s_change_bMidiData = {
    /* ROM Address */ &s_change_b_mid,
    /* unk4 */        0x3e8,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acac,
    /* unk10 */       0x745
};

extern const u32 s_change_ball_mid;
const struct MidiData s_change_ballMidiData = {
    /* ROM Address */ &s_change_ball_mid,
    /* unk4 */        0x525,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acb0,
    /* unk10 */       0x746
};

extern const u32 s_change_hit_a_mid;
const struct MidiData s_change_hit_aMidiData = {
    /* ROM Address */ &s_change_hit_a_mid,
    /* unk4 */        0x526,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acb4,
    /* unk10 */       0x747
};

extern const u32 s_change_hit_b_mid;
const struct MidiData s_change_hit_bMidiData = {
    /* ROM Address */ &s_change_hit_b_mid,
    /* unk4 */        0x527,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acb8,
    /* unk10 */       0x748
};

extern const u32 s_change_goal_mid;
const struct MidiData s_change_goalMidiData = {
    /* ROM Address */ &s_change_goal_mid,
    /* unk4 */        0x364,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acbc,
    /* unk10 */       0x749
};

extern const u32 s_check_machine_mid;
const struct MidiData s_check_machineMidiData = {
    /* ROM Address */ &s_check_machine_mid,
    /* unk4 */        0x3e0,
    /* unk6 */        0x142d,
    /* unk8 */        0x50,
    /* unkC */        (void *)0x08a9acc0,
    /* unk10 */       0x74a
};

extern const u32 s_check_trick1_mid;
const struct MidiData s_check_trick1MidiData = {
    /* ROM Address */ &s_check_trick1_mid,
    /* unk4 */        0x641,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acc4,
    /* unk10 */       0x74b
};

extern const u32 s_check_trick2_mid;
const struct MidiData s_check_trick2MidiData = {
    /* ROM Address */ &s_check_trick2_mid,
    /* unk4 */        0x641,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acc8,
    /* unk10 */       0x74c
};

extern const u32 s_check_trick3_mid;
const struct MidiData s_check_trick3MidiData = {
    /* ROM Address */ &s_check_trick3_mid,
    /* unk4 */        0x641,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9accc,
    /* unk10 */       0x74d
};

extern const u32 s_menu_se1_mid;
const struct MidiData s_menu_se1MidiData = {
    /* ROM Address */ &s_menu_se1_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acd0,
    /* unk10 */       0x74e
};

extern const u32 s_menu_se2_mid;
const struct MidiData s_menu_se2MidiData = {
    /* ROM Address */ &s_menu_se2_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acd4,
    /* unk10 */       0x74f
};

extern const u32 s_menu_se3_mid;
const struct MidiData s_menu_se3MidiData = {
    /* ROM Address */ &s_menu_se3_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acd8,
    /* unk10 */       0x750
};

extern const u32 s_menu_se5_mid;
const struct MidiData s_menu_se5MidiData = {
    /* ROM Address */ &s_menu_se5_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acdc,
    /* unk10 */       0x752
};

extern const u32 s_menu_se6_mid;
const struct MidiData s_menu_se6MidiData = {
    /* ROM Address */ &s_menu_se6_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ace0,
    /* unk10 */       0x753
};

extern const u32 s_menu_se7_mid;
const struct MidiData s_menu_se7MidiData = {
    /* ROM Address */ &s_menu_se7_mid,
    /* unk4 */        0x666,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ace4,
    /* unk10 */       0x754
};

extern const u32 s_menu_se8_mid;
const struct MidiData s_menu_se8MidiData = {
    /* ROM Address */ &s_menu_se8_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ace8,
    /* unk10 */       0x755
};

extern const u32 s_menu_se9_mid;
const struct MidiData s_menu_se9MidiData = {
    /* ROM Address */ &s_menu_se9_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acec,
    /* unk10 */       0x756
};

extern const u32 s_menu_se10_mid;
const struct MidiData s_menu_se10MidiData = {
    /* ROM Address */ &s_menu_se10_mid,
    /* unk4 */        0x526,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acf0,
    /* unk10 */       0x757
};

extern const u32 s_menu_se11_mid;
const struct MidiData s_menu_se11MidiData = {
    /* ROM Address */ &s_menu_se11_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acf4,
    /* unk10 */       0x758
};

extern const u32 s_menu_se12_mid;
const struct MidiData s_menu_se12MidiData = {
    /* ROM Address */ &s_menu_se12_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acf8,
    /* unk10 */       0x759
};

extern const u32 s_menu_se13_mid;
const struct MidiData s_menu_se13MidiData = {
    /* ROM Address */ &s_menu_se13_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9acfc,
    /* unk10 */       0x75a
};

extern const u32 s_menu_se14_mid;
const struct MidiData s_menu_se14MidiData = {
    /* ROM Address */ &s_menu_se14_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad00,
    /* unk10 */       0x75b
};

extern const u32 s_menu_se15_mid;
const struct MidiData s_menu_se15MidiData = {
    /* ROM Address */ &s_menu_se15_mid,
    /* unk4 */        0x525,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad04,
    /* unk10 */       0x75c
};

extern const u32 s_menu_se16_mid;
const struct MidiData s_menu_se16MidiData = {
    /* ROM Address */ &s_menu_se16_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad08,
    /* unk10 */       0x75d
};

extern const u32 s_menu_se17_mid;
const struct MidiData s_menu_se17MidiData = {
    /* ROM Address */ &s_menu_se17_mid,
    /* unk4 */        0x2e6,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad0c,
    /* unk10 */       0x75e
};

extern const u32 s_menu_woodblock_mid;
const struct MidiData s_menu_woodblockMidiData = {
    /* ROM Address */ &s_menu_woodblock_mid,
    /* unk4 */        0x366,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad10,
    /* unk10 */       0x75f
};

extern const u32 s_menu_se19_mid;
const struct MidiData s_menu_se19MidiData = {
    /* ROM Address */ &s_menu_se19_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad14,
    /* unk10 */       0x760
};

extern const u32 s_menu_se20_mid;
const struct MidiData s_menu_se20MidiData = {
    /* ROM Address */ &s_menu_se20_mid,
    /* unk4 */        0x366,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad18,
    /* unk10 */       0x761
};

extern const u32 s_menu_se22_mid;
const struct MidiData s_menu_se22MidiData = {
    /* ROM Address */ &s_menu_se22_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad1c,
    /* unk10 */       0x764
};

extern const u32 s_menu_se23_mid;
const struct MidiData s_menu_se23MidiData = {
    /* ROM Address */ &s_menu_se23_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad20,
    /* unk10 */       0x765
};

extern const u32 s_menu_se24_mid;
const struct MidiData s_menu_se24MidiData = {
    /* ROM Address */ &s_menu_se24_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad24,
    /* unk10 */       0x766
};

extern const u32 s_menu_se25_mid;
const struct MidiData s_menu_se25MidiData = {
    /* ROM Address */ &s_menu_se25_mid,
    /* unk4 */        0x3e6,
    /* unk6 */        0x1437,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad28,
    /* unk10 */       0x767
};

extern const u32 s_jingle_rat_mid;
const struct MidiData s_jingle_ratMidiData = {
    /* ROM Address */ &s_jingle_rat_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad2c,
    /* unk10 */       0x76c
};

extern const u32 s_jingle_march_mid;
const struct MidiData s_jingle_marchMidiData = {
    /* ROM Address */ &s_jingle_march_mid,
    /* unk4 */        0x2a0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad30,
    /* unk10 */       0x76d
};

extern const u32 s_jingle_iai_mid;
const struct MidiData s_jingle_iaiMidiData = {
    /* ROM Address */ &s_jingle_iai_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad34,
    /* unk10 */       0x76e
};

extern const u32 s_jingle_ghost_mid;
const struct MidiData s_jingle_ghostMidiData = {
    /* ROM Address */ &s_jingle_ghost_mid,
    /* unk4 */        0x640,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad38,
    /* unk10 */       0x76f
};

extern const u32 s_jingle_poli_mid;
const struct MidiData s_jingle_poliMidiData = {
    /* ROM Address */ &s_jingle_poli_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad3c,
    /* unk10 */       0x770
};

extern const u32 s_jingle_handclap_mid;
const struct MidiData s_jingle_handclapMidiData = {
    /* ROM Address */ &s_jingle_handclap_mid,
    /* unk4 */        0x6c0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad40,
    /* unk10 */       0x771
};

extern const u32 s_jingle_tap_mid;
const struct MidiData s_jingle_tapMidiData = {
    /* ROM Address */ &s_jingle_tap_mid,
    /* unk4 */        0x6e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad44,
    /* unk10 */       0x772
};

extern const u32 s_jingle_baseball_mid;
const struct MidiData s_jingle_baseballMidiData = {
    /* ROM Address */ &s_jingle_baseball_mid,
    /* unk4 */        0x420,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad48,
    /* unk10 */       0x773
};

extern const u32 s_jingle_toss_mid;
const struct MidiData s_jingle_tossMidiData = {
    /* ROM Address */ &s_jingle_toss_mid,
    /* unk4 */        0x800,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad4c,
    /* unk10 */       0x774
};

extern const u32 s_jingle_karate_mid;
const struct MidiData s_jingle_karateMidiData = {
    /* ROM Address */ &s_jingle_karate_mid,
    /* unk4 */        0x700,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad50,
    /* unk10 */       0x775
};

extern const u32 s_jingle_witch_mid;
const struct MidiData s_jingle_witchMidiData = {
    /* ROM Address */ &s_jingle_witch_mid,
    /* unk4 */        0x8260,
    /* unk6 */        0xca5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad54,
    /* unk10 */       0x776
};

extern const u32 s_jingle_datumo_mid;
const struct MidiData s_jingle_datumoMidiData = {
    /* ROM Address */ &s_jingle_datumo_mid,
    /* unk4 */        0x8360,
    /* unk6 */        0xca5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad58,
    /* unk10 */       0x777
};

extern const u32 s_jingle_quiz_mid;
const struct MidiData s_jingle_quizMidiData = {
    /* ROM Address */ &s_jingle_quiz_mid,
    /* unk4 */        0x6e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad5c,
    /* unk10 */       0x778
};

extern const u32 s_jingle_bon_mid;
const struct MidiData s_jingle_bonMidiData = {
    /* ROM Address */ &s_jingle_bon_mid,
    /* unk4 */        0x8c0,
    /* unk6 */        0xcad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad60,
    /* unk10 */       0x779
};

extern const u32 s_jingle_rap_mid;
const struct MidiData s_jingle_rapMidiData = {
    /* ROM Address */ &s_jingle_rap_mid,
    /* unk4 */        0x8400,
    /* unk6 */        0xcaa,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad64,
    /* unk10 */       0x77a
};

extern const u32 s_jingle_remix_mid;
const struct MidiData s_jingle_remixMidiData = {
    /* ROM Address */ &s_jingle_remix_mid,
    /* unk4 */        0x3c0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad68,
    /* unk10 */       0x77b
};

extern const u32 s_fanfare_drum1_mid;
const struct MidiData s_fanfare_drum1MidiData = {
    /* ROM Address */ &s_fanfare_drum1_mid,
    /* unk4 */        0x680,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad6c,
    /* unk10 */       0x77c
};

extern const u32 s_fanfare_drum2_mid;
const struct MidiData s_fanfare_drum2MidiData = {
    /* ROM Address */ &s_fanfare_drum2_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad70,
    /* unk10 */       0x77d
};

extern const u32 s_fanfare_drum3_mid;
const struct MidiData s_fanfare_drum3MidiData = {
    /* ROM Address */ &s_fanfare_drum3_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xca8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad74,
    /* unk10 */       0x77e
};

extern const u32 s_jingle_hi_level_mid;
const struct MidiData s_jingle_hi_levelMidiData = {
    /* ROM Address */ &s_jingle_hi_level_mid,
    /* unk4 */        0x360,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad78,
    /* unk10 */       0x77f
};

extern const u32 s_ending_bgm_mid;
const struct MidiData s_ending_bgmMidiData = {
    /* ROM Address */ &s_ending_bgm_mid,
    /* unk4 */        0x8a0,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad7c,
    /* unk10 */       0x780
};

extern const u32 s_iai_bgm_studio_mid;
const struct MidiData s_iai_bgm_studioMidiData = {
    /* ROM Address */ &s_iai_bgm_studio_mid,
    /* unk4 */        0x260,
    /* unk6 */        0xcb2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad80,
    /* unk10 */       0x781
};

extern const u32 s_rabbit_bgm_studio_mid;
const struct MidiData s_rabbit_bgm_studioMidiData = {
    /* ROM Address */ &s_rabbit_bgm_studio_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0x11ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad84,
    /* unk10 */       0x782
};

extern const u32 s_rat_bgm_studio_mid;
const struct MidiData s_rat_bgm_studioMidiData = {
    /* ROM Address */ &s_rat_bgm_studio_mid,
    /* unk4 */        0x2e0,
    /* unk6 */        0xcb2,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9ad88,
    /* unk10 */       0x783
};

extern const u32 s_f_dummy_mid;
const struct MidiData s_f_dummyMidiData = {
    /* ROM Address */ &s_f_dummy_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad8c,
    /* unk10 */       0x1c0
};

extern const u32 s_f_dummy_vol0_mid;
const struct MidiData s_f_dummy_vol0MidiData = {
    /* ROM Address */ &s_f_dummy_vol0_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad90,
    /* unk10 */       0x1c1
};

extern const u32 s_f_result_bad_mid;
const struct MidiData s_f_result_badMidiData = {
    /* ROM Address */ &s_f_result_bad_mid,
    /* unk4 */        0xd25,
    /* unk6 */        0x1bad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad94,
    /* unk10 */       0x1c2
};

extern const u32 s_f_result_normal_mid;
const struct MidiData s_f_result_normalMidiData = {
    /* ROM Address */ &s_f_result_normal_mid,
    /* unk4 */        0x8d25,
    /* unk6 */        0x1ba5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad98,
    /* unk10 */       0x1c3
};

extern const u32 s_f_result_mes_step1_mid;
const struct MidiData s_f_result_mes_step1MidiData = {
    /* ROM Address */ &s_f_result_mes_step1_mid,
    /* unk4 */        0x8d24,
    /* unk6 */        0x1920,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ad9c,
    /* unk10 */       0x1c4
};

extern const u32 s_f_result_mes_step2_mid;
const struct MidiData s_f_result_mes_step2MidiData = {
    /* ROM Address */ &s_f_result_mes_step2_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1928,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ada0,
    /* unk10 */       0x1c5
};

extern const u32 s_f_nyuuka_mid;
const struct MidiData s_f_nyuukaMidiData = {
    /* ROM Address */ &s_f_nyuuka_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x192d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ada4,
    /* unk10 */       0x1c6
};

extern const u32 s_f_campaign_notice_mid;
const struct MidiData s_f_campaign_noticeMidiData = {
    /* ROM Address */ &s_f_campaign_notice_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1e2d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ada8,
    /* unk10 */       0x1c7
};

extern const u32 s_f_open_game_mid;
const struct MidiData s_f_open_gameMidiData = {
    /* ROM Address */ &s_f_open_game_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1919,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adac,
    /* unk10 */       0x1c8
};

extern const u32 s_f_clear_game_mid;
const struct MidiData s_f_clear_gameMidiData = {
    /* ROM Address */ &s_f_clear_game_mid,
    /* unk4 */        0xd25,
    /* unk6 */        0x1bad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adb0,
    /* unk10 */       0x1c9
};

extern const u32 s_f_get_medal_mid;
const struct MidiData s_f_get_medalMidiData = {
    /* ROM Address */ &s_f_get_medal_mid,
    /* unk4 */        0xd26,
    /* unk6 */        0x1cf2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adb4,
    /* unk10 */       0x1ca
};

extern const u32 s_f_point_roll_mid;
const struct MidiData s_f_point_rollMidiData = {
    /* ROM Address */ &s_f_point_roll_mid,
    /* unk4 */        0xd27,
    /* unk6 */        0x141e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adb8,
    /* unk10 */       0x1cb
};

extern const u32 s_f_point_stop_mid;
const struct MidiData s_f_point_stopMidiData = {
    /* ROM Address */ &s_f_point_stop_mid,
    /* unk4 */        0xd27,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adbc,
    /* unk10 */       0x1cc
};

extern const u32 s_f_appear_game_mid;
const struct MidiData s_f_appear_gameMidiData = {
    /* ROM Address */ &s_f_appear_game_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1928,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adc0,
    /* unk10 */       0x1cd
};

extern const u32 s_f_fail_perfect_mid;
const struct MidiData s_f_fail_perfectMidiData = {
    /* ROM Address */ &s_f_fail_perfect_mid,
    /* unk4 */        0xd26,
    /* unk6 */        0x1fe8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adc4,
    /* unk10 */       0x1ce
};

extern const u32 s_f_result_mes_add_mid;
const struct MidiData s_f_result_mes_addMidiData = {
    /* ROM Address */ &s_f_result_mes_add_mid,
    /* unk4 */        0x8d24,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adc8,
    /* unk10 */       0x1cf
};

extern const u32 s_f_send_mes_mid;
const struct MidiData s_f_send_mesMidiData = {
    /* ROM Address */ &s_f_send_mes_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1928,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adcc,
    /* unk10 */       0x1d0
};

extern const u32 s_f_pause_on_mid;
const struct MidiData s_f_pause_onMidiData = {
    /* ROM Address */ &s_f_pause_on_mid,
    /* unk4 */        0xd25,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9add0,
    /* unk10 */       0x1d1
};

extern const u32 s_f_pause_cursor_mid;
const struct MidiData s_f_pause_cursorMidiData = {
    /* ROM Address */ &s_f_pause_cursor_mid,
    /* unk4 */        0xd26,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9add4,
    /* unk10 */       0x1d2
};

extern const u32 s_f_pause_continue_mid;
const struct MidiData s_f_pause_continueMidiData = {
    /* ROM Address */ &s_f_pause_continue_mid,
    /* unk4 */        0xd26,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9add8,
    /* unk10 */       0x1d3
};

extern const u32 s_f_pause_quit_mid;
const struct MidiData s_f_pause_quitMidiData = {
    /* ROM Address */ &s_f_pause_quit_mid,
    /* unk4 */        0xd26,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9addc,
    /* unk10 */       0x1d4
};

extern const u32 s_f_scratch_mid;
const struct MidiData s_f_scratchMidiData = {
    /* ROM Address */ &s_f_scratch_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1fe8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ade0,
    /* unk10 */       0x1d5
};

extern const u32 s_f_env_train_mid;
const struct MidiData s_f_env_trainMidiData = {
    /* ROM Address */ &s_f_env_train_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ade4,
    /* unk10 */       0x1d6
};

extern const u32 s_f_env_cherry_mid;
const struct MidiData s_f_env_cherryMidiData = {
    /* ROM Address */ &s_f_env_cherry_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ade8,
    /* unk10 */       0x1d7
};

extern const u32 s_f_env_haiku_mid;
const struct MidiData s_f_env_haikuMidiData = {
    /* ROM Address */ &s_f_env_haiku_mid,
    /* unk4 */        0x8d24,
    /* unk6 */        0x1fe5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adec,
    /* unk10 */       0x1d8
};

extern const u32 s_f_env_class_room_mid;
const struct MidiData s_f_env_class_roomMidiData = {
    /* ROM Address */ &s_f_env_class_room_mid,
    /* unk4 */        0xd24,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adf0,
    /* unk10 */       0x1d9
};

extern const u32 s_f_env_paper_mid;
const struct MidiData s_f_env_paperMidiData = {
    /* ROM Address */ &s_f_env_paper_mid,
    /* unk4 */        0xd25,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adf4,
    /* unk10 */       0x1da
};

extern const u32 s_f_env_paper_rev_mid;
const struct MidiData s_f_env_paper_revMidiData = {
    /* ROM Address */ &s_f_env_paper_rev_mid,
    /* unk4 */        0xd25,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adf8,
    /* unk10 */       0x1db
};

extern const u32 s_f_cafe_send_mes_mid;
const struct MidiData s_f_cafe_send_mesMidiData = {
    /* ROM Address */ &s_f_cafe_send_mes_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9adfc,
    /* unk10 */       0x1dc
};

extern const u32 s_f_drum_BD_1_mid;
const struct MidiData s_f_drum_BD_1MidiData = {
    /* ROM Address */ &s_f_drum_BD_1_mid,
    /* unk4 */        0xa2,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae00,
    /* unk10 */       0x1ec
};

extern const u32 s_f_drum_SD_1_mid;
const struct MidiData s_f_drum_SD_1MidiData = {
    /* ROM Address */ &s_f_drum_SD_1_mid,
    /* unk4 */        0xa3,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae04,
    /* unk10 */       0x1ed
};

extern const u32 s_f_drum_SD_Rim_Open_mid;
const struct MidiData s_f_drum_SD_Rim_OpenMidiData = {
    /* ROM Address */ &s_f_drum_SD_Rim_Open_mid,
    /* unk4 */        0xa3,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae08,
    /* unk10 */       0x1ee
};

extern const u32 s_f_drum_Sym_Crash_mid;
const struct MidiData s_f_drum_Sym_CrashMidiData = {
    /* ROM Address */ &s_f_drum_Sym_Crash_mid,
    /* unk4 */        0xa6,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae0c,
    /* unk10 */       0x1ef
};

extern const u32 s_f_test_drum_BD_A_mid;
const struct MidiData s_f_test_drum_BD_AMidiData = {
    /* ROM Address */ &s_f_test_drum_BD_A_mid,
    /* unk4 */        0x223,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae10,
    /* unk10 */       0x1f0
};

extern const u32 s_f_test_drum_BD_B_mid;
const struct MidiData s_f_test_drum_BD_BMidiData = {
    /* ROM Address */ &s_f_test_drum_BD_B_mid,
    /* unk4 */        0x223,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae14,
    /* unk10 */       0x1f1
};

extern const u32 s_f_test_drum_SD_A_mid;
const struct MidiData s_f_test_drum_SD_AMidiData = {
    /* ROM Address */ &s_f_test_drum_SD_A_mid,
    /* unk4 */        0x224,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae18,
    /* unk10 */       0x1f2
};

extern const u32 s_f_test_drum_SD_B_mid;
const struct MidiData s_f_test_drum_SD_BMidiData = {
    /* ROM Address */ &s_f_test_drum_SD_B_mid,
    /* unk4 */        0x224,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae1c,
    /* unk10 */       0x1f3
};

extern const u32 s_f_toss_miss1_mid;
const struct MidiData s_f_toss_miss1MidiData = {
    /* ROM Address */ &s_f_toss_miss1_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae20,
    /* unk10 */       0x1f4
};

extern const u32 s_f_toss_miss2_mid;
const struct MidiData s_f_toss_miss2MidiData = {
    /* ROM Address */ &s_f_toss_miss2_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae24,
    /* unk10 */       0x1f5
};

extern const u32 s_f_toss_miss3_mid;
const struct MidiData s_f_toss_miss3MidiData = {
    /* ROM Address */ &s_f_toss_miss3_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae28,
    /* unk10 */       0x1f6
};

extern const u32 s_f_toss_ball_mid;
const struct MidiData s_f_toss_ballMidiData = {
    /* ROM Address */ &s_f_toss_ball_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x192d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae2c,
    /* unk10 */       0x1f7
};

extern const u32 s_f_toss_swing_mid;
const struct MidiData s_f_toss_swingMidiData = {
    /* ROM Address */ &s_f_toss_swing_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae30,
    /* unk10 */       0x1f8
};

extern const u32 s_f_shuji_v_nuaa_mid;
const struct MidiData s_f_shuji_v_nuaaMidiData = {
    /* ROM Address */ &s_f_shuji_v_nuaa_mid,
    /* unk4 */        0x8ca6,
    /* unk6 */        0x16a5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae34,
    /* unk10 */       0x1fe
};

extern const u32 s_f_shuji_v_unuu_mid;
const struct MidiData s_f_shuji_v_unuuMidiData = {
    /* ROM Address */ &s_f_shuji_v_unuu_mid,
    /* unk4 */        0x8ca6,
    /* unk6 */        0x16a5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae38,
    /* unk10 */       0x1ff
};

extern const u32 s_f_shuji_v_ouch_mid;
const struct MidiData s_f_shuji_v_ouchMidiData = {
    /* ROM Address */ &s_f_shuji_v_ouch_mid,
    /* unk4 */        0x8ca6,
    /* unk6 */        0x16a5,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae3c,
    /* unk10 */       0x200
};

extern const u32 s_f_shuji_swing1_mid;
const struct MidiData s_f_shuji_swing1MidiData = {
    /* ROM Address */ &s_f_shuji_swing1_mid,
    /* unk4 */        0xca5,
    /* unk6 */        0x192d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae40,
    /* unk10 */       0x201
};

extern const u32 s_f_shuji_swing2_mid;
const struct MidiData s_f_shuji_swing2MidiData = {
    /* ROM Address */ &s_f_shuji_swing2_mid,
    /* unk4 */        0xca5,
    /* unk6 */        0x192d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae44,
    /* unk10 */       0x202
};

extern const u32 s_f_shuji_start_mid;
const struct MidiData s_f_shuji_startMidiData = {
    /* ROM Address */ &s_f_shuji_start_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x16ed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae48,
    /* unk10 */       0x203
};

extern const u32 s_f_shuji_v_ha1_mid;
const struct MidiData s_f_shuji_v_ha1MidiData = {
    /* ROM Address */ &s_f_shuji_v_ha1_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x192d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae4c,
    /* unk10 */       0x204
};

extern const u32 s_f_shuji_v_ha2_mid;
const struct MidiData s_f_shuji_v_ha2MidiData = {
    /* ROM Address */ &s_f_shuji_v_ha2_mid,
    /* unk4 */        0x8ca4,
    /* unk6 */        0x1920,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae50,
    /* unk10 */       0x205
};

extern const u32 s_f_shuji_v_ha3_mid;
const struct MidiData s_f_shuji_v_ha3MidiData = {
    /* ROM Address */ &s_f_shuji_v_ha3_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae54,
    /* unk10 */       0x206
};

extern const u32 s_f_shuji_v_funuue_mid;
const struct MidiData s_f_shuji_v_funuueMidiData = {
    /* ROM Address */ &s_f_shuji_v_funuue_mid,
    /* unk4 */        0xca6,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae58,
    /* unk10 */       0x207
};

extern const u32 s_f_shuji_v_nuahaha_mid;
const struct MidiData s_f_shuji_v_nuahahaMidiData = {
    /* ROM Address */ &s_f_shuji_v_nuahaha_mid,
    /* unk4 */        0xca6,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae5c,
    /* unk10 */       0x1f9
};

extern const u32 s_f_rat_goal_mid;
const struct MidiData s_f_rat_goalMidiData = {
    /* ROM Address */ &s_f_rat_goal_mid,
    /* unk4 */        0xcc4,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae60,
    /* unk10 */       0x208
};

extern const u32 s_f_rat_error_mid;
const struct MidiData s_f_rat_errorMidiData = {
    /* ROM Address */ &s_f_rat_error_mid,
    /* unk4 */        0xcc5,
    /* unk6 */        0x1963,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae64,
    /* unk10 */       0x209
};

extern const u32 s_f_rat_slip_mid;
const struct MidiData s_f_rat_slipMidiData = {
    /* ROM Address */ &s_f_rat_slip_mid,
    /* unk4 */        0xcc7,
    /* unk6 */        0x11b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae68,
    /* unk10 */       0x20a
};

extern const u32 s_f_hanabi_v_tamaya_mid;
const struct MidiData s_f_hanabi_v_tamayaMidiData = {
    /* ROM Address */ &s_f_hanabi_v_tamaya_mid,
    /* unk4 */        0xce3,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae6c,
    /* unk10 */       0x20d
};

extern const u32 s_f_hanabi_v_nuei_mid;
const struct MidiData s_f_hanabi_v_nueiMidiData = {
    /* ROM Address */ &s_f_hanabi_v_nuei_mid,
    /* unk4 */        0x8ce7,
    /* unk6 */        0x16b4,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae70,
    /* unk10 */       0x20f
};

extern const u32 s_f_hanabi_kansei_mid;
const struct MidiData s_f_hanabi_kanseiMidiData = {
    /* ROM Address */ &s_f_hanabi_kansei_mid,
    /* unk4 */        0x8ce4,
    /* unk6 */        0x1939,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae74,
    /* unk10 */       0x210
};

extern const u32 s_f_iai_cut_mid;
const struct MidiData s_f_iai_cutMidiData = {
    /* ROM Address */ &s_f_iai_cut_mid,
    /* unk4 */        0xd03,
    /* unk6 */        0x1937,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae78,
    /* unk10 */       0x212
};

extern const u32 s_f_iai_cut2_mid;
const struct MidiData s_f_iai_cut2MidiData = {
    /* ROM Address */ &s_f_iai_cut2_mid,
    /* unk4 */        0x8d03,
    /* unk6 */        0x1939,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae7c,
    /* unk10 */       0x213
};

extern const u32 s_f_iai_title_mid;
const struct MidiData s_f_iai_titleMidiData = {
    /* ROM Address */ &s_f_iai_title_mid,
    /* unk4 */        0x8d03,
    /* unk6 */        0x1939,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae80,
    /* unk10 */       0x214
};

extern const u32 s_f_virus_in_mid;
const struct MidiData s_f_virus_inMidiData = {
    /* ROM Address */ &s_f_virus_in_mid,
    /* unk4 */        0xd04,
    /* unk6 */        0x1419,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae84,
    /* unk10 */       0x217
};

extern const u32 s_f_virus_uhihi_mid;
const struct MidiData s_f_virus_uhihiMidiData = {
    /* ROM Address */ &s_f_virus_uhihi_mid,
    /* unk4 */        0xd03,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae88,
    /* unk10 */       0x218
};

extern const u32 s_f_virus_hit_mid;
const struct MidiData s_f_virus_hitMidiData = {
    /* ROM Address */ &s_f_virus_hit_mid,
    /* unk4 */        0xd04,
    /* unk6 */        0x16bc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae8c,
    /* unk10 */       0x219
};

extern const u32 s_f_virus_osii_mid;
const struct MidiData s_f_virus_osiiMidiData = {
    /* ROM Address */ &s_f_virus_osii_mid,
    /* unk4 */        0xd04,
    /* unk6 */        0x16b7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae90,
    /* unk10 */       0x21a
};

extern const u32 s_f_virus_face_fadeout_mid;
const struct MidiData s_f_virus_face_fadeoutMidiData = {
    /* ROM Address */ &s_f_virus_face_fadeout_mid,
    /* unk4 */        0xd04,
    /* unk6 */        0x1563,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae94,
    /* unk10 */       0x21b
};

extern const u32 s_f_virus_note_land_mid;
const struct MidiData s_f_virus_note_landMidiData = {
    /* ROM Address */ &s_f_virus_note_land_mid,
    /* unk4 */        0xd08,
    /* unk6 */        0x1432,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae98,
    /* unk10 */       0x216
};

extern const u32 s_f_hair_kegire_mid;
const struct MidiData s_f_hair_kegireMidiData = {
    /* ROM Address */ &s_f_hair_kegire_mid,
    /* unk4 */        0xc89,
    /* unk6 */        0x1577,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9ae9c,
    /* unk10 */       0x21c
};

extern const u32 s_f_hair_next_mid;
const struct MidiData s_f_hair_nextMidiData = {
    /* ROM Address */ &s_f_hair_next_mid,
    /* unk4 */        0xc88,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aea0,
    /* unk10 */       0x21d
};

extern const u32 s_f_hair_nuki_long_mid;
const struct MidiData s_f_hair_nuki_longMidiData = {
    /* ROM Address */ &s_f_hair_nuki_long_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aea4,
    /* unk10 */       0x21e
};

extern const u32 s_f_hair_tuneru_mid;
const struct MidiData s_f_hair_tuneruMidiData = {
    /* ROM Address */ &s_f_hair_tuneru_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aea8,
    /* unk10 */       0x21f
};

extern const u32 s_f_hair_appear_long_mid;
const struct MidiData s_f_hair_appear_longMidiData = {
    /* ROM Address */ &s_f_hair_appear_long_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aeac,
    /* unk10 */       0x220
};

extern const u32 s_f_poly_blast_mid;
const struct MidiData s_f_poly_blastMidiData = {
    /* ROM Address */ &s_f_poly_blast_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x1bbc,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aeb0,
    /* unk10 */       0x221
};

extern const u32 s_f_poly_withdraw_mid;
const struct MidiData s_f_poly_withdrawMidiData = {
    /* ROM Address */ &s_f_poly_withdraw_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aeb4,
    /* unk10 */       0x222
};

extern const u32 s_f_poly_close_mid;
const struct MidiData s_f_poly_closeMidiData = {
    /* ROM Address */ &s_f_poly_close_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aeb8,
    /* unk10 */       0x223
};

extern const u32 s_f_poly_appear_upside_mid;
const struct MidiData s_f_poly_appear_upsideMidiData = {
    /* ROM Address */ &s_f_poly_appear_upside_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aebc,
    /* unk10 */       0x224
};

extern const u32 s_f_poly_appear_downside_mid;
const struct MidiData s_f_poly_appear_downsideMidiData = {
    /* ROM Address */ &s_f_poly_appear_downside_mid,
    /* unk4 */        0xc82,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aec0,
    /* unk10 */       0x225
};

extern const u32 s_f_poly_open_upside_mid;
const struct MidiData s_f_poly_open_upsideMidiData = {
    /* ROM Address */ &s_f_poly_open_upside_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aec4,
    /* unk10 */       0x226
};

extern const u32 s_f_poly_open_downside_mid;
const struct MidiData s_f_poly_open_downsideMidiData = {
    /* ROM Address */ &s_f_poly_open_downside_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aec8,
    /* unk10 */       0x227
};

extern const u32 s_f_boxing_punch_mid;
const struct MidiData s_f_boxing_punchMidiData = {
    /* ROM Address */ &s_f_boxing_punch_mid,
    /* unk4 */        0xc82,
    /* unk6 */        0x16a8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aecc,
    /* unk10 */       0x22b
};

extern const u32 s_f_boxing_just_hati_mid;
const struct MidiData s_f_boxing_just_hatiMidiData = {
    /* ROM Address */ &s_f_boxing_just_hati_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aed0,
    /* unk10 */       0x22c
};

extern const u32 s_f_boxing_just_hati_nc_mid;
const struct MidiData s_f_boxing_just_hati_ncMidiData = {
    /* ROM Address */ &s_f_boxing_just_hati_nc_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aed4,
    /* unk10 */       0x22d
};

extern const u32 s_f_boxing_just_light_mid;
const struct MidiData s_f_boxing_just_lightMidiData = {
    /* ROM Address */ &s_f_boxing_just_light_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aed8,
    /* unk10 */       0x22e
};

extern const u32 s_f_boxing_just_light_nc_mid;
const struct MidiData s_f_boxing_just_light_ncMidiData = {
    /* ROM Address */ &s_f_boxing_just_light_nc_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aedc,
    /* unk10 */       0x22f
};

extern const u32 s_f_boxing_just_ball_mid;
const struct MidiData s_f_boxing_just_ballMidiData = {
    /* ROM Address */ &s_f_boxing_just_ball_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aee0,
    /* unk10 */       0x230
};

extern const u32 s_f_boxing_just_ball_nc_mid;
const struct MidiData s_f_boxing_just_ball_ncMidiData = {
    /* ROM Address */ &s_f_boxing_just_ball_nc_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e37,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aee4,
    /* unk10 */       0x231
};

extern const u32 s_f_boxing_just_rock_mid;
const struct MidiData s_f_boxing_just_rockMidiData = {
    /* ROM Address */ &s_f_boxing_just_rock_mid,
    /* unk4 */        0x8c83,
    /* unk6 */        0x1e3f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aee8,
    /* unk10 */       0x232
};

extern const u32 s_f_boxing_just_rock_nc_mid;
const struct MidiData s_f_boxing_just_rock_ncMidiData = {
    /* ROM Address */ &s_f_boxing_just_rock_nc_mid,
    /* unk4 */        0x8c83,
    /* unk6 */        0x1e3f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aeec,
    /* unk10 */       0x233
};

extern const u32 s_f_boxing_just_bomb_mid;
const struct MidiData s_f_boxing_just_bombMidiData = {
    /* ROM Address */ &s_f_boxing_just_bomb_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1e3c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aef0,
    /* unk10 */       0x234
};

extern const u32 s_f_boxing_normal_mid;
const struct MidiData s_f_boxing_normalMidiData = {
    /* ROM Address */ &s_f_boxing_normal_mid,
    /* unk4 */        0x8c83,
    /* unk6 */        0x1e2f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aef4,
    /* unk10 */       0x235
};

extern const u32 s_f_boxing_land_mid;
const struct MidiData s_f_boxing_landMidiData = {
    /* ROM Address */ &s_f_boxing_land_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aef8,
    /* unk10 */       0x236
};

extern const u32 s_f_boxing_fly_nml_mid;
const struct MidiData s_f_boxing_fly_nmlMidiData = {
    /* ROM Address */ &s_f_boxing_fly_nml_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x1428,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aefc,
    /* unk10 */       0x237
};

extern const u32 s_f_boxing_v_nua_mid;
const struct MidiData s_f_boxing_v_nuaMidiData = {
    /* ROM Address */ &s_f_boxing_v_nua_mid,
    /* unk4 */        0x8c85,
    /* unk6 */        0x1496,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af00,
    /* unk10 */       0x238
};

extern const u32 s_f_boxing_hard_mid;
const struct MidiData s_f_boxing_hardMidiData = {
    /* ROM Address */ &s_f_boxing_hard_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af04,
    /* unk10 */       0x239
};

extern const u32 s_f_boxing_score_reset_mid;
const struct MidiData s_f_boxing_score_resetMidiData = {
    /* ROM Address */ &s_f_boxing_score_reset_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1e25,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af08,
    /* unk10 */       0x23a
};

extern const u32 s_f_boxing_score_up_mid;
const struct MidiData s_f_boxing_score_upMidiData = {
    /* ROM Address */ &s_f_boxing_score_up_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1e25,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af0c,
    /* unk10 */       0x23b
};

extern const u32 s_f_boxing_score_down_mid;
const struct MidiData s_f_boxing_score_downMidiData = {
    /* ROM Address */ &s_f_boxing_score_down_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x1e23,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af10,
    /* unk10 */       0x23c
};

extern const u32 s_f_boxing_kansei_mid;
const struct MidiData s_f_boxing_kanseiMidiData = {
    /* ROM Address */ &s_f_boxing_kansei_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af14,
    /* unk10 */       0x23d
};

extern const u32 s_f_boxing_v_fresh_mid;
const struct MidiData s_f_boxing_v_freshMidiData = {
    /* ROM Address */ &s_f_boxing_v_fresh_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x1e00,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af18,
    /* unk10 */       0x23e
};

extern const u32 s_f_boxing_title_hit_mid;
const struct MidiData s_f_boxing_title_hitMidiData = {
    /* ROM Address */ &s_f_boxing_title_hit_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x1e2d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af1c,
    /* unk10 */       0x23f
};

extern const u32 s_f_boxing_honki_mid;
const struct MidiData s_f_boxing_honkiMidiData = {
    /* ROM Address */ &s_f_boxing_honki_mid,
    /* unk4 */        0xc88,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af20,
    /* unk10 */       0x240
};

extern const u32 s_f_boxing_fly_ext_mid;
const struct MidiData s_f_boxing_fly_extMidiData = {
    /* ROM Address */ &s_f_boxing_fly_ext_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x142d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af24,
    /* unk10 */       0x243
};

extern const u32 s_f_quiz_hit_ply_mid;
const struct MidiData s_f_quiz_hit_plyMidiData = {
    /* ROM Address */ &s_f_quiz_hit_ply_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af28,
    /* unk10 */       0x244
};

extern const u32 s_f_quiz_hit_com_mid;
const struct MidiData s_f_quiz_hit_comMidiData = {
    /* ROM Address */ &s_f_quiz_hit_com_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af2c,
    /* unk10 */       0x245
};

extern const u32 s_f_quiz_blast_ply_mid;
const struct MidiData s_f_quiz_blast_plyMidiData = {
    /* ROM Address */ &s_f_quiz_blast_ply_mid,
    /* unk4 */        0x8c86,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af30,
    /* unk10 */       0x246
};

extern const u32 s_f_quiz_blast_com_mid;
const struct MidiData s_f_quiz_blast_comMidiData = {
    /* ROM Address */ &s_f_quiz_blast_com_mid,
    /* unk4 */        0x8c86,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af34,
    /* unk10 */       0x247
};

extern const u32 s_f_quiz_blast_plate_mid;
const struct MidiData s_f_quiz_blast_plateMidiData = {
    /* ROM Address */ &s_f_quiz_blast_plate_mid,
    /* unk4 */        0x8c86,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af38,
    /* unk10 */       0x248
};

extern const u32 s_f_quiz_miss_mid;
const struct MidiData s_f_quiz_missMidiData = {
    /* ROM Address */ &s_f_quiz_miss_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x1bb7,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af3c,
    /* unk10 */       0x249
};

extern const u32 s_f_quiz_stop_mid;
const struct MidiData s_f_quiz_stopMidiData = {
    /* ROM Address */ &s_f_quiz_stop_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af40,
    /* unk10 */       0x24a
};

extern const u32 s_f_quiz_answer_mid;
const struct MidiData s_f_quiz_answerMidiData = {
    /* ROM Address */ &s_f_quiz_answer_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af44,
    /* unk10 */       0x24b
};

extern const u32 s_f_quiz_ok_mid;
const struct MidiData s_f_quiz_okMidiData = {
    /* ROM Address */ &s_f_quiz_ok_mid,
    /* unk4 */        0x8c86,
    /* unk6 */        0x193f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af48,
    /* unk10 */       0x24c
};

extern const u32 s_f_ninja_kabe_mid;
const struct MidiData s_f_ninja_kabeMidiData = {
    /* ROM Address */ &s_f_ninja_kabe_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af4c,
    /* unk10 */       0x24e
};

extern const u32 s_f_ninja_demo_mid;
const struct MidiData s_f_ninja_demoMidiData = {
    /* ROM Address */ &s_f_ninja_demo_mid,
    /* unk4 */        0xc80,
    /* unk6 */        0x2d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af50,
    /* unk10 */       0x24f
};

extern const u32 s_f_ninja_v_nanu_mid;
const struct MidiData s_f_ninja_v_nanuMidiData = {
    /* ROM Address */ &s_f_ninja_v_nanu_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16ad,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af54,
    /* unk10 */       0x250
};

extern const u32 s_f_rapW_v_YoOyatuDesuka_mid;
const struct MidiData s_f_rapW_v_YoOyatuDesukaMidiData = {
    /* ROM Address */ &s_f_rapW_v_YoOyatuDesuka_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af58,
    /* unk10 */       0x258
};

extern const u32 s_f_rapW_v_Yo10JiDesuka_mid;
const struct MidiData s_f_rapW_v_Yo10JiDesukaMidiData = {
    /* ROM Address */ &s_f_rapW_v_Yo10JiDesuka_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af5c,
    /* unk10 */       0x259
};

extern const u32 s_f_rapW_v_Naishodesuka_mid;
const struct MidiData s_f_rapW_v_NaishodesukaMidiData = {
    /* ROM Address */ &s_f_rapW_v_Naishodesuka_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af60,
    /* unk10 */       0x25a
};

extern const u32 s_f_rapW_v_KarenoOyatudane_mid;
const struct MidiData s_f_rapW_v_KarenoOyatudaneMidiData = {
    /* ROM Address */ &s_f_rapW_v_KarenoOyatudane_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x192f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af64,
    /* unk10 */       0x25b
};

extern const u32 s_f_rapW_v_TabeteIikamone_mid;
const struct MidiData s_f_rapW_v_TabeteIikamoneMidiData = {
    /* ROM Address */ &s_f_rapW_v_TabeteIikamone_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x192f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af68,
    /* unk10 */       0x25d
};

extern const u32 s_f_rapW_v_AketeIikamone_mid;
const struct MidiData s_f_rapW_v_AketeIikamoneMidiData = {
    /* ROM Address */ &s_f_rapW_v_AketeIikamone_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x192f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af6c,
    /* unk10 */       0x25e
};

extern const u32 s_f_rapW_v_OyatuwaSaiko_mid;
const struct MidiData s_f_rapW_v_OyatuwaSaikoMidiData = {
    /* ROM Address */ &s_f_rapW_v_OyatuwaSaiko_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af70,
    /* unk10 */       0x25f
};

extern const u32 s_f_rapW_v_KibunnwaSaiko_mid;
const struct MidiData s_f_rapW_v_KibunnwaSaikoMidiData = {
    /* ROM Address */ &s_f_rapW_v_KibunnwaSaiko_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af74,
    /* unk10 */       0x260
};

extern const u32 s_f_rapW_v_AmakuteSaiko_mid;
const struct MidiData s_f_rapW_v_AmakuteSaikoMidiData = {
    /* ROM Address */ &s_f_rapW_v_AmakuteSaiko_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af78,
    /* unk10 */       0x261
};

extern const u32 s_f_rapW_v_BetubaraSaiko_mid;
const struct MidiData s_f_rapW_v_BetubaraSaikoMidiData = {
    /* ROM Address */ &s_f_rapW_v_BetubaraSaiko_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af7c,
    /* unk10 */       0x262
};

extern const u32 s_f_rapW_v_KareniwaNaisho_mid;
const struct MidiData s_f_rapW_v_KareniwaNaishoMidiData = {
    /* ROM Address */ &s_f_rapW_v_KareniwaNaisho_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af80,
    /* unk10 */       0x263
};

extern const u32 s_f_rapW_v_DarenimoNaisho_mid;
const struct MidiData s_f_rapW_v_DarenimoNaishoMidiData = {
    /* ROM Address */ &s_f_rapW_v_DarenimoNaisho_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af84,
    /* unk10 */       0x264
};

extern const u32 s_f_rapW_v_Yeah_mid;
const struct MidiData s_f_rapW_v_YeahMidiData = {
    /* ROM Address */ &s_f_rapW_v_Yeah_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x1927,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af88,
    /* unk10 */       0x265
};

extern const u32 s_f_rapW_v_Un_mid;
const struct MidiData s_f_rapW_v_UnMidiData = {
    /* ROM Address */ &s_f_rapW_v_Un_mid,
    /* unk4 */        0xc88,
    /* unk6 */        0x1a67,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af8c,
    /* unk10 */       0x266
};

extern const u32 s_f_rapW_v_Uun_mid;
const struct MidiData s_f_rapW_v_UunMidiData = {
    /* ROM Address */ &s_f_rapW_v_Uun_mid,
    /* unk4 */        0xc88,
    /* unk6 */        0x1a67,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af90,
    /* unk10 */       0x267
};

extern const u32 s_f_rapW_v_CheckIt_mid;
const struct MidiData s_f_rapW_v_CheckItMidiData = {
    /* ROM Address */ &s_f_rapW_v_CheckIt_mid,
    /* unk4 */        0xc81,
    /* unk6 */        0x1917,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af94,
    /* unk10 */       0x268
};

extern const u32 s_f_rapW_v_OyatuwaSaiko_d_mid;
const struct MidiData s_f_rapW_v_OyatuwaSaiko_dMidiData = {
    /* ROM Address */ &s_f_rapW_v_OyatuwaSaiko_d_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af98,
    /* unk10 */       0x269
};

extern const u32 s_f_rapW_v_KibunnwaSaiko_d_mid;
const struct MidiData s_f_rapW_v_KibunnwaSaiko_dMidiData = {
    /* ROM Address */ &s_f_rapW_v_KibunnwaSaiko_d_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9af9c,
    /* unk10 */       0x26a
};

extern const u32 s_f_rapW_v_AmakuteSaiko_d_mid;
const struct MidiData s_f_rapW_v_AmakuteSaiko_dMidiData = {
    /* ROM Address */ &s_f_rapW_v_AmakuteSaiko_d_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afa0,
    /* unk10 */       0x26b
};

extern const u32 s_f_rapW_v_BetubaraSaiko_d_mid;
const struct MidiData s_f_rapW_v_BetubaraSaiko_dMidiData = {
    /* ROM Address */ &s_f_rapW_v_BetubaraSaiko_d_mid,
    /* unk4 */        0x8c87,
    /* unk6 */        0x1933,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afa4,
    /* unk10 */       0x26c
};

extern const u32 s_f_batter_ball_land_mid;
const struct MidiData s_f_batter_ball_landMidiData = {
    /* ROM Address */ &s_f_batter_ball_land_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x1423,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afa8,
    /* unk10 */       0x26f
};

extern const u32 s_f_batter_ball_high_mid;
const struct MidiData s_f_batter_ball_highMidiData = {
    /* ROM Address */ &s_f_batter_ball_high_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x1e2d,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afac,
    /* unk10 */       0x270
};

extern const u32 s_f_handclap_pi_G4_mid;
const struct MidiData s_f_handclap_pi_G4MidiData = {
    /* ROM Address */ &s_f_handclap_pi_G4_mid,
    /* unk4 */        0x8c84,
    /* unk6 */        0x169b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afb0,
    /* unk10 */       0x271
};

extern const u32 s_f_handclap_pi_E5_mid;
const struct MidiData s_f_handclap_pi_E5MidiData = {
    /* ROM Address */ &s_f_handclap_pi_E5_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x1699,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afb4,
    /* unk10 */       0x272
};

extern const u32 s_f_handclap_ready_mid;
const struct MidiData s_f_handclap_readyMidiData = {
    /* ROM Address */ &s_f_handclap_ready_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x16b2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afb8,
    /* unk10 */       0x273
};

extern const u32 s_f_aim_just_hit_mid;
const struct MidiData s_f_aim_just_hitMidiData = {
    /* ROM Address */ &s_f_aim_just_hit_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x143c,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afbc,
    /* unk10 */       0x275
};

extern const u32 s_f_aim_just_hit_voice_mid;
const struct MidiData s_f_aim_just_hit_voiceMidiData = {
    /* ROM Address */ &s_f_aim_just_hit_voice_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x1694,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afc0,
    /* unk10 */       0x276
};

extern const u32 s_f_space_hit_mid;
const struct MidiData s_f_space_hitMidiData = {
    /* ROM Address */ &s_f_space_hit_mid,
    /* unk4 */        0xc86,
    /* unk6 */        0x169e,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afc4,
    /* unk10 */       0x280
};

extern const u32 s_f_space_dancer_mid;
const struct MidiData s_f_space_dancerMidiData = {
    /* ROM Address */ &s_f_space_dancer_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16bc,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afc8,
    /* unk10 */       0x281
};

extern const u32 s_f_space_dancer_swing_mid;
const struct MidiData s_f_space_dancer_swingMidiData = {
    /* ROM Address */ &s_f_space_dancer_swing_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afcc,
    /* unk10 */       0x282
};

extern const u32 s_f_space_dancer_sit_mid;
const struct MidiData s_f_space_dancer_sitMidiData = {
    /* ROM Address */ &s_f_space_dancer_sit_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afd0,
    /* unk10 */       0x283
};

extern const u32 s_f_space_dancer_pa_mid;
const struct MidiData s_f_space_dancer_paMidiData = {
    /* ROM Address */ &s_f_space_dancer_pa_mid,
    /* unk4 */        0xc87,
    /* unk6 */        0x16a8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9afd4,
    /* unk10 */       0x284
};

extern const u32 s_f_esa_jump_mid;
const struct MidiData s_f_esa_jumpMidiData = {
    /* ROM Address */ &s_f_esa_jump_mid,
    /* unk4 */        0x8c84,
    /* unk6 */        0x16bf,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afd8,
    /* unk10 */       0x285
};

extern const u32 s_f_esa_splash_penguin_mid;
const struct MidiData s_f_esa_splash_penguinMidiData = {
    /* ROM Address */ &s_f_esa_splash_penguin_mid,
    /* unk4 */        0x8c83,
    /* unk6 */        0x193f,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afdc,
    /* unk10 */       0x286
};

extern const u32 s_f_esa_splash_ball_mid;
const struct MidiData s_f_esa_splash_ballMidiData = {
    /* ROM Address */ &s_f_esa_splash_ball_mid,
    /* unk4 */        0xc83,
    /* unk6 */        0x1937,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afe0,
    /* unk10 */       0x287
};

extern const u32 s_f_rabbit_ready_mid;
const struct MidiData s_f_rabbit_readyMidiData = {
    /* ROM Address */ &s_f_rabbit_ready_mid,
    /* unk4 */        0xc84,
    /* unk6 */        0x16e8,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afe4,
    /* unk10 */       0x28a
};

extern const u32 s_f_rabbit_miss_mid;
const struct MidiData s_f_rabbit_missMidiData = {
    /* ROM Address */ &s_f_rabbit_miss_mid,
    /* unk4 */        0xc85,
    /* unk6 */        0x1699,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afe8,
    /* unk10 */       0x28b
};

extern const u32 s_f_even_splash_mid;
const struct MidiData s_f_even_splashMidiData = {
    /* ROM Address */ &s_f_even_splash_mid,
    /* unk4 */        0x8c83,
    /* unk6 */        0x1420,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9afec,
    /* unk10 */       0x28f
};

extern const u32 s_f_even_road_mid;
const struct MidiData s_f_even_roadMidiData = {
    /* ROM Address */ &s_f_even_road_mid,
    /* unk4 */        0x8c82,
    /* unk6 */        0x1420,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9aff0,
    /* unk10 */       0x290
};

extern const u32 s_f_drumdr_miss_mid;
const struct MidiData s_f_drumdr_missMidiData = {
    /* ROM Address */ &s_f_drumdr_miss_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aff4,
    /* unk10 */       0x294
};

extern const u32 s_f_drumdr_ok_mid;
const struct MidiData s_f_drumdr_okMidiData = {
    /* ROM Address */ &s_f_drumdr_ok_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fe8,
    /* unk8 */        0x40,
    /* unkC */        (void *)0x08a9aff8,
    /* unk10 */       0x295
};

extern const u32 s_f_machine_click_mid;
const struct MidiData s_f_machine_clickMidiData = {
    /* ROM Address */ &s_f_machine_click_mid,
    /* unk4 */        0xca6,
    /* unk6 */        0x1fd4,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9affc,
    /* unk10 */       0x299
};

extern const u32 s_f_tap_miss1_mid;
const struct MidiData s_f_tap_miss1MidiData = {
    /* ROM Address */ &s_f_tap_miss1_mid,
    /* unk4 */        0xca7,
    /* unk6 */        0x1e23,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b000,
    /* unk10 */       0x29e
};

extern const u32 s_f_tap_miss2_mid;
const struct MidiData s_f_tap_miss2MidiData = {
    /* ROM Address */ &s_f_tap_miss2_mid,
    /* unk4 */        0xca7,
    /* unk6 */        0x1e23,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b004,
    /* unk10 */       0x29f
};

extern const u32 s_f_tap_jump_ready_mid;
const struct MidiData s_f_tap_jump_readyMidiData = {
    /* ROM Address */ &s_f_tap_jump_ready_mid,
    /* unk4 */        0xca7,
    /* unk6 */        0x0,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b008,
    /* unk10 */       0x2a0
};

extern const u32 s_f_tap_tap_mid;
const struct MidiData s_f_tap_tapMidiData = {
    /* ROM Address */ &s_f_tap_tap_mid,
    /* unk4 */        0xca3,
    /* unk6 */        0x1ff2,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b00c,
    /* unk10 */       0x2a1
};

extern const u32 s_f_tap_pig1_mid;
const struct MidiData s_f_tap_pig1MidiData = {
    /* ROM Address */ &s_f_tap_pig1_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b010,
    /* unk10 */       0x2a2
};

extern const u32 s_f_tap_pig2_mid;
const struct MidiData s_f_tap_pig2MidiData = {
    /* ROM Address */ &s_f_tap_pig2_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x16a3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b014,
    /* unk10 */       0x2a3
};

extern const u32 s_f_conveyer_hit_mid;
const struct MidiData s_f_conveyer_hitMidiData = {
    /* ROM Address */ &s_f_conveyer_hit_mid,
    /* unk4 */        0xca3,
    /* unk6 */        0x1932,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b018,
    /* unk10 */       0x2a7
};

extern const u32 s_f_lesson_s_mid;
const struct MidiData s_f_lesson_sMidiData = {
    /* ROM Address */ &s_f_lesson_s_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x193c,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b01c,
    /* unk10 */       0x2a8
};

extern const u32 s_f_lesson_a_mid;
const struct MidiData s_f_lesson_aMidiData = {
    /* ROM Address */ &s_f_lesson_a_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1937,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b020,
    /* unk10 */       0x2a9
};

extern const u32 s_f_lesson_b_mid;
const struct MidiData s_f_lesson_bMidiData = {
    /* ROM Address */ &s_f_lesson_b_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1937,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b024,
    /* unk10 */       0x2aa
};

extern const u32 s_f_lesson_c_mid;
const struct MidiData s_f_lesson_cMidiData = {
    /* ROM Address */ &s_f_lesson_c_mid,
    /* unk4 */        0xd23,
    /* unk6 */        0x1928,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b028,
    /* unk10 */       0x2ab
};

extern const u32 s_f_base_1note_mid;
const struct MidiData s_f_base_1noteMidiData = {
    /* ROM Address */ &s_f_base_1note_mid,
    /* unk4 */        0x8d23,
    /* unk6 */        0x1fdb,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b02c,
    /* unk10 */       0x2ad
};

extern const u32 s_f_drumtech_miss_mid;
const struct MidiData s_f_drumtech_missMidiData = {
    /* ROM Address */ &s_f_drumtech_miss_mid,
    /* unk4 */        0xd28,
    /* unk6 */        0x1fd9,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b030,
    /* unk10 */       0x2ae
};

extern const u32 s_f_drumtech_fall_mid;
const struct MidiData s_f_drumtech_fallMidiData = {
    /* ROM Address */ &s_f_drumtech_fall_mid,
    /* unk4 */        0xd28,
    /* unk6 */        0x1fe3,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b034,
    /* unk10 */       0x2af
};

extern const u32 s_f_drumtech_damage_mid;
const struct MidiData s_f_drumtech_damageMidiData = {
    /* ROM Address */ &s_f_drumtech_damage_mid,
    /* unk4 */        0xd29,
    /* unk6 */        0x1e36,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b038,
    /* unk10 */       0x2b0
};

extern const u32 s_f_neko1_mid;
const struct MidiData s_f_neko1MidiData = {
    /* ROM Address */ &s_f_neko1_mid,
    /* unk4 */        0x8d23,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b03c,
    /* unk10 */       0x2b7
};

extern const u32 s_f_neko2_mid;
const struct MidiData s_f_neko2MidiData = {
    /* ROM Address */ &s_f_neko2_mid,
    /* unk4 */        0x8d24,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b040,
    /* unk10 */       0x2b8
};

extern const u32 s_f_neko3_mid;
const struct MidiData s_f_neko3MidiData = {
    /* ROM Address */ &s_f_neko3_mid,
    /* unk4 */        0x8d25,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b044,
    /* unk10 */       0x2b9
};

extern const u32 s_f_neko4_mid;
const struct MidiData s_f_neko4MidiData = {
    /* ROM Address */ &s_f_neko4_mid,
    /* unk4 */        0x8d26,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b048,
    /* unk10 */       0x2ba
};

extern const u32 s_f_neko5_mid;
const struct MidiData s_f_neko5MidiData = {
    /* ROM Address */ &s_f_neko5_mid,
    /* unk4 */        0x8d27,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b04c,
    /* unk10 */       0x2bb
};

extern const u32 s_f_neko6_mid;
const struct MidiData s_f_neko6MidiData = {
    /* ROM Address */ &s_f_neko6_mid,
    /* unk4 */        0x8d28,
    /* unk6 */        0x191b,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b050,
    /* unk10 */       0x2bc
};

extern const u32 s_f_marcher2_v_zentai_mid;
const struct MidiData s_f_marcher2_v_zentaiMidiData = {
    /* ROM Address */ &s_f_marcher2_v_zentai_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b054,
    /* unk10 */       0x2bd
};

extern const u32 s_f_marcher2_v_susume_mid;
const struct MidiData s_f_marcher2_v_susumeMidiData = {
    /* ROM Address */ &s_f_marcher2_v_susume_mid,
    /* unk4 */        0x8ca4,
    /* unk6 */        0x1fea,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b058,
    /* unk10 */       0x2be
};

extern const u32 s_f_marcher2_v_tomare_mid;
const struct MidiData s_f_marcher2_v_tomareMidiData = {
    /* ROM Address */ &s_f_marcher2_v_tomare_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b05c,
    /* unk10 */       0x2bf
};

extern const u32 s_f_marcher2_v_migimukeL_mid;
const struct MidiData s_f_marcher2_v_migimukeLMidiData = {
    /* ROM Address */ &s_f_marcher2_v_migimukeL_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b060,
    /* unk10 */       0x2c0
};

extern const u32 s_f_marcher2_v_migimukeS_mid;
const struct MidiData s_f_marcher2_v_migimukeSMidiData = {
    /* ROM Address */ &s_f_marcher2_v_migimukeS_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b064,
    /* unk10 */       0x2c1
};

extern const u32 s_f_marcher2_v_migi_mid;
const struct MidiData s_f_marcher2_v_migiMidiData = {
    /* ROM Address */ &s_f_marcher2_v_migi_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b068,
    /* unk10 */       0x2c2
};

extern const u32 s_f_marcher2_v_hidarimukeL_mid;
const struct MidiData s_f_marcher2_v_hidarimukeLMidiData = {
    /* ROM Address */ &s_f_marcher2_v_hidarimukeL_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b06c,
    /* unk10 */       0x2c3
};

extern const u32 s_f_marcher2_v_hidarimukeS_mid;
const struct MidiData s_f_marcher2_v_hidarimukeSMidiData = {
    /* ROM Address */ &s_f_marcher2_v_hidarimukeS_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b070,
    /* unk10 */       0x2c4
};

extern const u32 s_f_marcher2_v_hidari_mid;
const struct MidiData s_f_marcher2_v_hidariMidiData = {
    /* ROM Address */ &s_f_marcher2_v_hidari_mid,
    /* unk4 */        0xca4,
    /* unk6 */        0x1fed,
    /* unk8 */        0xff,
    /* unkC */        (void *)0x08a9b074,
    /* unk10 */       0x2c5
};