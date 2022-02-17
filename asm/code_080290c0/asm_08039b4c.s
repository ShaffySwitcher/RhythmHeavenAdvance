asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039b4c \n\
/* 08039b4c */ PUSH {R4-R6, LR} \n\
/* 08039b4e */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08039b50 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08039b52 */ PUSH {R5, R6} \n\
/* 08039b54 */ SUB SP, 0x14 \n\
/* 08039b56 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08039b58 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039b5a */ BL func_080398b4 \n\
/* 08039b5e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039b60 */ LDR R6, =D_03005380 \n\
/* 08039b62 */ LDR R0, [R6] \n\
/* 08039b64 */ LDR R4, =D_030055d0 \n\
/* 08039b66 */ LDR R1, [R4] \n\
/* 08039b68 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039b6a */ LDRSH R1, [R1, R3] \n\
/* 08039b6c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039b6e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08039b70 */ STR R3, [SP] \n\
/* 08039b72 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039b74 */ STR R3, [SP, 0x4] \n\
/* 08039b76 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08039b78 */ STR R5, [SP, 0x8] \n\
/* 08039b7a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039b7c */ BL func_0804d8f8 \n\
/* 08039b80 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08039b82 */ BL func_0800c3a4 \n\
/* 08039b86 */ LDR R1, [R4] \n\
/* 08039b88 */ STRH R0, [R1, 0x10] \n\
/* 08039b8a */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08039b8c */ BL func_080398b4 \n\
/* 08039b90 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08039b92 */ LDR R0, [R6] \n\
/* 08039b94 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08039b96 */ STR R2, [SP] \n\
/* 08039b98 */ LDR R2, =0x47f6 \n\
/* 08039b9a */ STR R2, [SP, 0x4] \n\
/* 08039b9c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08039b9e */ STR R2, [SP, 0x8] \n\
/* 08039ba0 */ STR R5, [SP, 0xC] \n\
/* 08039ba2 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08039ba4 */ STR R2, [SP, 0x10] \n\
/* 08039ba6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039ba8 */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 08039baa */ BL func_0804d160 \n\
/* 08039bae */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08039bb0 */ BL func_08039a44 \n\
/* 08039bb4 */ LDR R2, =D_089e652c \n\
/* 08039bb6 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08039bb8 */ LDR R1, [R3] \n\
/* 08039bba */ LSLS R1, R1, 0x2 \n\
/* 08039bbc */ LDR R0, [R4] \n\
/* 08039bbe */ LDRB R0, [R0] \n\
/* 08039bc0 */ LSLS R0, R0, 0x3 \n\
/* 08039bc2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08039bc4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08039bc6 */ LDR R0, [R1] \n\
/* 08039bc8 */ BL func_08002634 \n\
/* 08039bcc */ LDR R0, =s_SD1MidiInfo \n\
/* 08039bce */ BL func_08002634 \n\
/* 08039bd2 */ LDR R0, =s_CC4MidiInfo \n\
/* 08039bd4 */ BL func_08002634 \n\
/* 08039bd8 */ ADD SP, 0x14 \n\
/* 08039bda */ POP {R3, R4} \n\
/* 08039bdc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08039bde */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08039be0 */ POP {R4-R6} \n\
/* 08039be2 */ POP {R0} \n\
/* 08039be4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
