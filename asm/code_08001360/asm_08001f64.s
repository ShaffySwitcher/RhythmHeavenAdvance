asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001f64 \n\
/* 08001f64 */ PUSH {R4, R5, LR} \n\
/* 08001f66 */ SUB SP, 0xC \n\
/* 08001f68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001f6a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08001f6c */ BL func_08006580 \n\
/* 08001f70 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08001f72 */ LDRB R1, [R4] \n\
/* 08001f74 */ LDRB R2, [R4, 0x1] \n\
/* 08001f76 */ LDR R3, [R4, 0x4] \n\
/* 08001f78 */ LDR R0, [R4, 0x8] \n\
/* 08001f7a */ STR R0, [SP] \n\
/* 08001f7c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001f7e */ STR R0, [SP, 0x4] \n\
/* 08001f80 */ LDR R0, [R4, 0xC] \n\
/* 08001f82 */ STR R0, [SP, 0x8] \n\
/* 08001f84 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001f86 */ BL func_08001c64 \n\
/* 08001f8a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001f8c */ ADD SP, 0xC \n\
/* 08001f8e */ POP {R4, R5} \n\
/* 08001f90 */ POP {R1} \n\
/* 08001f92 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");