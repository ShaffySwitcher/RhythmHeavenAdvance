asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039c00 \n\
/* 08039c00 */ PUSH {R4, LR} \n\
/* 08039c02 */ SUB SP, 0xC \n\
/* 08039c04 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08039c06 */ BL func_080398b4 \n\
/* 08039c0a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039c0c */ LDR R0, =D_03005380 \n\
/* 08039c0e */ LDR R0, [R0] \n\
/* 08039c10 */ LDR R4, =D_030055d0 \n\
/* 08039c12 */ LDR R1, [R4] \n\
/* 08039c14 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039c16 */ LDRSH R1, [R1, R3] \n\
/* 08039c18 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039c1a */ STR R3, [SP] \n\
/* 08039c1c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039c1e */ STR R3, [SP, 0x4] \n\
/* 08039c20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039c22 */ STR R3, [SP, 0x8] \n\
/* 08039c24 */ BL func_0804d8f8 \n\
/* 08039c28 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08039c2a */ BL func_0800c3a4 \n\
/* 08039c2e */ LDR R1, [R4] \n\
/* 08039c30 */ STRH R0, [R1, 0x10] \n\
/* 08039c32 */ LDR R2, =D_089e652c \n\
/* 08039c34 */ LDRB R0, [R1] \n\
/* 08039c36 */ LSLS R0, R0, 0x3 \n\
/* 08039c38 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08039c3a */ LDR R0, [R0] \n\
/* 08039c3c */ BL func_08002634 \n\
/* 08039c40 */ LDR R0, =s_tom_MMidiInfo \n\
/* 08039c42 */ BL func_08002634 \n\
/* 08039c46 */ ADD SP, 0xC \n\
/* 08039c48 */ POP {R4} \n\
/* 08039c4a */ POP {R0} \n\
/* 08039c4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
