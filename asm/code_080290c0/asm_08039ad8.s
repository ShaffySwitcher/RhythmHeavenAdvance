asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039ad8 \n\
/* 08039ad8 */ PUSH {R4-R6, LR} \n\
/* 08039ada */ SUB SP, 0xC \n\
/* 08039adc */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08039ade */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08039ae0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08039ae2 */ BL func_080398b4 \n\
/* 08039ae6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039ae8 */ LDR R0, =0x03005380 @ !PossiblePointer \n\
/* 08039aea */ LDR R0, [R0] \n\
/* 08039aec */ LDR R4, =0x030055d0 @ !PossiblePointer \n\
/* 08039aee */ LDR R1, [R4] \n\
/* 08039af0 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039af2 */ LDRSH R1, [R1, R3] \n\
/* 08039af4 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039af6 */ STR R3, [SP] \n\
/* 08039af8 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039afa */ STR R3, [SP, 0x4] \n\
/* 08039afc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039afe */ STR R3, [SP, 0x8] \n\
/* 08039b00 */ BL func_0804d8f8 \n\
/* 08039b04 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08039b06 */ BL func_0800c3a4 \n\
/* 08039b0a */ LDR R1, [R4] \n\
/* 08039b0c */ STRH R0, [R1, 0x10] \n\
/* 08039b0e */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08039b10 */ BL func_0800c3a4 \n\
/* 08039b14 */ LDR R1, [R4] \n\
/* 08039b16 */ STRH R0, [R1, 0x12] \n\
/* 08039b18 */ STR R5, [R6] \n\
/* 08039b1a */ ADD SP, 0xC \n\
/* 08039b1c */ POP {R4-R6} \n\
/* 08039b1e */ POP {R0} \n\
/* 08039b20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
