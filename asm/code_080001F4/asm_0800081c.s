asm("glabel func_0800081c \n\
/* 0800081c */ PUSH {R4, R5, LR} \n\
/* 0800081e */ SUB SP, 0x4 \n\
/* 08000820 */ LDR R0, =D_030046a8 \n\
/* 08000822 */ LDR R4, [R0] \n\
/* 08000824 */ LDR R5, =0x3B04 \n\
/* 08000826 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08000828 */ LSLS R0, R0, 0x1 \n\
/* 0800082a */ STR R0, [SP] \n\
/* 0800082c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800082e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08000830 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08000832 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08000834 */ BL func_080018e0 \n\
/* 08000838 */ LDR R1, =D_08935fbc \n\
/* 0800083a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800083c */ BL func_0804f270 \n\
/* 08000840 */ STR R5, [R4, 0x4] \n\
/* 08000842 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08000844 */ STR R0, [R4, 0x8] \n\
/* 08000846 */ LDR R0, =0x26040000 \n\
/* 08000848 */ STR R0, [R4, 0xC] \n\
/* 0800084a */ BL func_080102f4 \n\
/* 0800084e */ ADD SP, 0x4 \n\
/* 08000850 */ POP {R4, R5} \n\
/* 08000852 */ POP {R0} \n\
/* 08000854 */ BX R0 \n\
 \n\
.ltorg \n\
");
