#ifndef GUARD_TYPES_H
#define GUARD_TYPES_H

typedef s32 (*struct_030046a4_func)(s32);

struct struct_030046a4_sub {
    u8 pad00[0x18];
    struct_030046a4_func *unk18;
};

struct struct_080179f4 {
    struct struct_080179f4 *unk0;
    struct struct_080179f4 **unk4;
    s32 unk8;
    u8 pad0C[0x3C];
    s8 unk48;
    u8 pad49[3];
    u16 unk4C;
    u16 unk4E;
    u8 pad50[0x4];
    s32 unk54;
    s32 unk58;
    s32 unk5C;
    s32 unk60;
    struct struct_080179f4 *unk64;
    u8 unk68;
};

typedef void (*struct_030046a4_sub_func)(struct struct_080179f4 *,struct struct_080179f4 *,s32);

struct struct_030046a4_sub2 {
    u8 pad00[0x4];
    u16 unk4;
    u8 pad06[0x6];
    s32 unkC;
    struct_030046a4_sub_func unk10;
    s32 unk14;
    u8 pad18[0x14];
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
};

struct struct_030046a4 {
    u8 pad00[0xC];
    s16 unkC;
    s16 unkE;
    union {
        u8 asU8[4];
        struct struct_030046a4_sub *asPoint;
    } unk10;
    u8 pad14[4];
    struct struct_080179f4 **unk18;
    struct struct_030046a4_sub2 *unk1C[15]; // size unknown
    struct struct_080179f4 *unk58;
    u8 unk5C;
    u8 unk5D;
    s32 unk60;
    u8 pad64[4];
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
    u8 pad78[0x2];
    u8 unk7A;
    u8 pad7B[0xB];
    u16 unk86;
};

extern struct struct_030046a4 *D_030046a4;
extern s32 D_03005380;

#endif
