asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039c60 \n\
/* 08039c60 */ PUSH {R4, R5, LR} \n\
/* 08039c62 */ SUB SP, 0xC \n\
/* 08039c64 */ LDR R5, =D_030055d0 \n\
/* 08039c66 */ LDR R0, [R5] \n\
/* 08039c68 */ LDRB R4, [R0, 0x14] \n\
/* 08039c6a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08039c6c */ BNE branch_08039ca0 \n\
/* 08039c6e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08039c70 */ BL func_080398b4 \n\
/* 08039c74 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039c76 */ LDR R0, =D_03005380 \n\
/* 08039c78 */ LDR R0, [R0] \n\
/* 08039c7a */ LDR R1, [R5] \n\
/* 08039c7c */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039c7e */ LDRSH R1, [R1, R3] \n\
/* 08039c80 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039c82 */ STR R3, [SP] \n\
/* 08039c84 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039c86 */ STR R3, [SP, 0x4] \n\
/* 08039c88 */ STR R4, [SP, 0x8] \n\
/* 08039c8a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039c8c */ BL func_0804d8f8 \n\
/* 08039c90 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 08039c92 */ BL func_0800c3a4 \n\
/* 08039c96 */ LDR R1, [R5] \n\
/* 08039c98 */ STRH R0, [R1, 0x10] \n\
/* 08039c9a */ LDR R0, =D_08a9bb54 \n\
/* 08039c9c */ BL func_08002634 \n\
 \n\
branch_08039ca0: \n\
/* 08039ca0 */ BL func_0800bc40 \n\
/* 08039ca4 */ ADD SP, 0xC \n\
/* 08039ca6 */ POP {R4, R5} \n\
/* 08039ca8 */ POP {R0} \n\
/* 08039caa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
