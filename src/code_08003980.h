#ifndef GUARD_CODE_08003980_H
#define GUARD_CODE_08003980_H

typedef s32 (*functype_03000e98)(u32 *, s32, s32);

struct struct_03004ad0 {
    u32 unk0;
    u32 *unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

void *D_03000e48; // functype_03000e98
functype_03000e98 D_03000e98;
u32 *D_03000e9c;
u32 D_03000ea0;

extern void *D_0800112c;
extern void *D_0800116c;
extern struct struct_03004ad0 D_03004ad0;


extern void func_0800650c(u32 *, u32);
extern struct struct_030046a4 *func_08006590(u16, u32);

#endif
