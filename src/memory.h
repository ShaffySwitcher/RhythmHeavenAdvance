#ifndef GUARD_MEMORY_H
#define GUARD_MEMORY_H

#define UNKNOWN_SIZE 0x3B04 // Recurring amount, related to size of some kind of data structure

extern s32 *D_030046a8;

typedef void (struct_030064c8_func)(s32 *, s32 *, s32);
extern struct_030064c8_func *D_030064c8;

extern s32 *D_08935fb4;
extern s32 *D_08935fb8;
extern s32 D_08935fbc;
extern s32 D_08935fc4;

extern void func_08000718(void);
extern void *func_0800074c(void);
extern void *func_08000760(void);
extern void *func_08000774(void);
extern u32 func_08000788(void);
extern s32 func_08000794(s32 *, u32);
extern void func_08000804(void);
extern void func_0800081c(void);
extern s32 func_08000868(s32 *);
extern s32 func_080008bc(void);
extern s32 func_080008d0(void);
extern void func_080008e4(s32 *);
extern s32 func_0800091c(s32 *);
extern void func_08000928(s32 *);
extern void func_0800096c(s32 *, s32);
extern void func_080009a0(void);
extern void func_080009b4(void);
extern void func_080009c8_stub(void);
extern void func_080009cc_stub(void);
extern s32 func_080009d0(s16 *);
extern s32 func_080009fc(void);

#endif
