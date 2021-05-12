asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001f34 \n\
/* 08001f34 */ PUSH {R4, R5, LR} \n\
/* 08001f36 */ SUB SP, 0xC \n\
/* 08001f38 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001f3a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08001f3c */ BL func_08006580 \n\
/* 08001f40 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08001f42 */ LDRB R1, [R4] \n\
/* 08001f44 */ LDRB R2, [R4, 0x1] \n\
/* 08001f46 */ LDR R3, [R4, 0x4] \n\
/* 08001f48 */ LDR R0, [R4, 0x8] \n\
/* 08001f4a */ STR R0, [SP] \n\
/* 08001f4c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001f4e */ STR R0, [SP, 0x4] \n\
/* 08001f50 */ LDR R0, [R4, 0xC] \n\
/* 08001f52 */ STR R0, [SP, 0x8] \n\
/* 08001f54 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001f56 */ BL func_08001bf8 \n\
/* 08001f5a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001f5c */ ADD SP, 0xC \n\
/* 08001f5e */ POP {R4, R5} \n\
/* 08001f60 */ POP {R1} \n\
/* 08001f62 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
