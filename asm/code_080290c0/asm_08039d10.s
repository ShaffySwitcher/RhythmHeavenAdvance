asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039d10 \n\
/* 08039d10 */ PUSH {R4, R5, LR} \n\
/* 08039d12 */ SUB SP, 0xC \n\
/* 08039d14 */ LDR R5, =D_030055d0 \n\
/* 08039d16 */ LDR R0, [R5] \n\
/* 08039d18 */ LDRH R4, [R0, 0xE] \n\
/* 08039d1a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08039d1c */ BNE branch_08039d40 \n\
/* 08039d1e */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08039d20 */ BL func_080398b4 \n\
/* 08039d24 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039d26 */ LDR R0, =D_03005380 \n\
/* 08039d28 */ LDR R0, [R0] \n\
/* 08039d2a */ LDR R1, [R5] \n\
/* 08039d2c */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08039d2e */ LDRSH R1, [R1, R3] \n\
/* 08039d30 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039d32 */ STR R3, [SP] \n\
/* 08039d34 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039d36 */ STR R3, [SP, 0x4] \n\
/* 08039d38 */ STR R4, [SP, 0x8] \n\
/* 08039d3a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039d3c */ BL func_0804d8f8 \n\
 \n\
branch_08039d40: \n\
/* 08039d40 */ LDR R0, [R5] \n\
/* 08039d42 */ LDRH R4, [R0, 0x10] \n\
/* 08039d44 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08039d46 */ BNE branch_08039d6a \n\
/* 08039d48 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08039d4a */ BL func_080398b4 \n\
/* 08039d4e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039d50 */ LDR R0, =D_03005380 \n\
/* 08039d52 */ LDR R0, [R0] \n\
/* 08039d54 */ LDR R1, [R5] \n\
/* 08039d56 */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08039d58 */ LDRSH R1, [R1, R3] \n\
/* 08039d5a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08039d5c */ STR R3, [SP] \n\
/* 08039d5e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039d60 */ STR R3, [SP, 0x4] \n\
/* 08039d62 */ STR R4, [SP, 0x8] \n\
/* 08039d64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039d66 */ BL func_0804d8f8 \n\
 \n\
branch_08039d6a: \n\
/* 08039d6a */ ADD SP, 0xC \n\
/* 08039d6c */ POP {R4, R5} \n\
/* 08039d6e */ POP {R0} \n\
/* 08039d70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
