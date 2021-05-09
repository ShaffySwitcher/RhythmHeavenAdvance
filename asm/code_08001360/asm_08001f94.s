asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001f94 \n\
/* 08001f94 */ PUSH {R4, R5, LR} \n\
/* 08001f96 */ SUB SP, 0xC \n\
/* 08001f98 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001f9a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08001f9c */ BL func_08006580 \n\
/* 08001fa0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08001fa2 */ LDRB R1, [R4] \n\
/* 08001fa4 */ LDRB R2, [R4, 0x1] \n\
/* 08001fa6 */ LDR R3, [R4, 0x4] \n\
/* 08001fa8 */ LDR R0, [R4, 0x8] \n\
/* 08001faa */ STR R0, [SP] \n\
/* 08001fac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001fae */ STR R0, [SP, 0x4] \n\
/* 08001fb0 */ LDR R0, [R4, 0xC] \n\
/* 08001fb2 */ STR R0, [SP, 0x8] \n\
/* 08001fb4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001fb6 */ BL func_08001cd8 \n\
/* 08001fba */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001fbc */ ADD SP, 0xC \n\
/* 08001fbe */ POP {R4, R5} \n\
/* 08001fc0 */ POP {R1} \n\
/* 08001fc2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");