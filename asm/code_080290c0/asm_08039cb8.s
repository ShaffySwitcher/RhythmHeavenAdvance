asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039cb8 \n\
/* 08039cb8 */ PUSH {R4, LR} \n\
/* 08039cba */ SUB SP, 0xC \n\
/* 08039cbc */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08039cbe */ BL func_080398b4 \n\
/* 08039cc2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039cc4 */ LDR R0, =0x03005380 @ !PossiblePointer \n\
/* 08039cc6 */ LDR R0, [R0] \n\
/* 08039cc8 */ LDR R4, =0x030055d0 @ !PossiblePointer \n\
/* 08039cca */ LDR R1, [R4] \n\
/* 08039ccc */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039cce */ LDRSH R1, [R1, R3] \n\
/* 08039cd0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039cd2 */ STR R3, [SP] \n\
/* 08039cd4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039cd6 */ STR R3, [SP, 0x4] \n\
/* 08039cd8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039cda */ STR R3, [SP, 0x8] \n\
/* 08039cdc */ BL func_0804d8f8 \n\
/* 08039ce0 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08039ce2 */ BL func_0800c3a4 \n\
/* 08039ce6 */ LDR R1, [R4] \n\
/* 08039ce8 */ STRH R0, [R1, 0x10] \n\
/* 08039cea */ LDR R2, =0x089e65f0 @ !PossiblePointer \n\
/* 08039cec */ LDRB R0, [R1] \n\
/* 08039cee */ LSLS R0, R0, 0x2 \n\
/* 08039cf0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08039cf2 */ LDR R0, [R0] \n\
/* 08039cf4 */ BL func_08002634 \n\
/* 08039cf8 */ BL func_0800bc40 \n\
/* 08039cfc */ ADD SP, 0xC \n\
/* 08039cfe */ POP {R4} \n\
/* 08039d00 */ POP {R0} \n\
/* 08039d02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
