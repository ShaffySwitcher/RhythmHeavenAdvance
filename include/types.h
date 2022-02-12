#ifndef GUARD_TYPES_H
#define GUARD_TYPES_H

typedef s32 (*struct_030046a4_func)(s32);

struct struct_030046a4_sub { // might be a list
    u8 pad00[0x18];
    struct_030046a4_func *unk18;
};

struct struct_030046a4;
typedef void (*struct_030046a4_sub_func)(struct struct_030046a4 *,struct struct_030046a4 *,s32);

typedef union {
        u8 asU8[4];
        struct struct_030046a4_sub *asPoint;
    } struct_030046a4_union;
	
struct struct_030046a4_sub3 {
	struct_030046a4_union unk0;
    struct struct_030046a4 *unk4;
    struct_030046a4_union unk8;
    s32 unkC;
};

struct struct_030046a4_sub2 {
    u8 pad00[0x4];
    u16 unk4;
    u8 pad06[0x6];
    u32 unkC;
    struct_030046a4_sub_func unk10;
    s32 unk14;
    u8 pad18[0x14];
    struct struct_030046a4_sub3 unk2C;
};

struct struct_030046a4 {
    struct struct_030046a4 *unk0;
    struct struct_030046a4 *unk4;
    s32 unk8;
    s16 unkC;
    s16 unkE;
    struct_030046a4_union unk10;
    u8 pad14[4];
    struct struct_030046a4 *unk18;
    struct struct_030046a4_sub2 *unk1C[11]; // size unknown
	s8 unk48;
    u8 pad49[3];
    u16 unk4C;
    u16 unk4E;
	u8 pad50[4];
	struct struct_030046a4_sub3 unk54;
    struct struct_030046a4 *unk64;
    struct struct_030046a4_sub3 unk68;
    u8 pad78[0x2];
    u8 unk7A;
    u8 pad7B[0xB];
    u16 unk86;
};

extern struct struct_030046a4 *D_030046a4;
extern s32 D_03005380;

struct SampleInfo {
	u32 length;
	u32 sampleRate;
	u32 pitch;
	u32 loopStart;
	u32 loopEnd;
	const u32 *romAddress;
};

#endif
