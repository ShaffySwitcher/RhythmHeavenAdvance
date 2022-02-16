asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039a44 \n\
/* 08039a44 */ PUSH {R4, R5, LR} \n\
/* 08039a46 */ SUB SP, 0xC \n\
/* 08039a48 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08039a4a */ LDR R0, =0x089e6520 @ !PossiblePointer \n\
/* 08039a4c */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08039a4e */ LDRB R0, [R0] \n\
/* 08039a50 */ BL func_080398b4 \n\
/* 08039a54 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039a56 */ LDR R0, =0x03005380 @ !PossiblePointer \n\
/* 08039a58 */ LDR R0, [R0] \n\
/* 08039a5a */ LDR R5, =0x030055d0 @ !PossiblePointer \n\
/* 08039a5c */ LDR R1, [R5] \n\
/* 08039a5e */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08039a60 */ LDRSH R1, [R1, R3] \n\
/* 08039a62 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039a64 */ STR R3, [SP] \n\
/* 08039a66 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039a68 */ STR R3, [SP, 0x4] \n\
/* 08039a6a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039a6c */ STR R3, [SP, 0x8] \n\
/* 08039a6e */ BL func_0804d8f8 \n\
/* 08039a72 */ LDR R0, =0x089e6525 @ !PossiblePointer \n\
/* 08039a74 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08039a76 */ LDRB R0, [R4] \n\
/* 08039a78 */ BL func_0800c3a4 \n\
/* 08039a7c */ LDR R1, [R5] \n\
/* 08039a7e */ STRH R0, [R1, 0xE] \n\
/* 08039a80 */ ADD SP, 0xC \n\
/* 08039a82 */ POP {R4, R5} \n\
/* 08039a84 */ POP {R0} \n\
/* 08039a86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
