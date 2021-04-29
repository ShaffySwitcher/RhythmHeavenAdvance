#ifndef GUARD_CODE_080001F4_H
#define GUARD_CODE_080001F4_H

#include "global.h"

struct struct_03000000 {
	s32 unk0;
	s32 unk4;
	s32 unk8;
	s32 unkC;
	s32 unk10;
	s32 unk14;
	u16 unk18;
};

extern struct struct_03000000 *D_03000000;
extern struct struct_03000000 *D_03000004;
extern u8 D_03000080;
extern s32 D_03000084;
extern s32 D_03000088;
extern u8 D_03004498;
extern s32 D_030046a0;
extern s32 D_030046a4;
extern s32 (*D_030046a8)[];

extern void *interrupt_handler;
extern void *interrupt_handler_intern;
extern void *D_0804F300;
extern void *D_03004460;
extern s32 D_089dda4c;
extern s32 D_08935fac;
extern s32 D_089dd97c;
extern struct struct_03000000 *D_08935fb0;

extern void func_080001f8(void);
extern void func_08000224(void);
extern void func_080002c4(void);
extern void func_0800046c(struct struct_03000000 *);
extern void func_08000490(void);

#endif
