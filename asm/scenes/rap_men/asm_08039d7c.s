asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039d7c \n\
/* 08039d7c */ PUSH {R4-R6, LR} \n\
/* 08039d7e */ SUB SP, 0xC \n\
/* 08039d80 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08039d82 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08039d84 */ BNE branch_08039da4 \n\
/* 08039d86 */ LDR R0, =D_03005380 \n\
/* 08039d88 */ LDR R0, [R0] \n\
/* 08039d8a */ LDR R1, =D_030055d0 \n\
/* 08039d8c */ LDR R1, [R1] \n\
/* 08039d8e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08039d90 */ LDRSH R1, [R1, R2] \n\
/* 08039d92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039d94 */ BL func_0804d770 \n\
/* 08039d98 */ B branch_08039de8 \n\
\n\
.ltorg \n\
 \n\
branch_08039da4: \n\
/* 08039da4 */ LDR R4, =D_030055d0 \n\
/* 08039da6 */ LDR R0, [R4] \n\
/* 08039da8 */ LDR R0, [R0, 0x4] \n\
/* 08039daa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08039dac */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08039dae */ BL func_08004b98 \n\
/* 08039db2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08039db4 */ LDR R1, [R4] \n\
/* 08039db6 */ LDR R0, [R1, 0x4] \n\
/* 08039db8 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08039dba */ LDRSH R1, [R1, R2] \n\
/* 08039dbc */ BL func_08007b04 \n\
/* 08039dc0 */ LDR R5, =D_03005380 \n\
/* 08039dc2 */ LDR R0, [R5] \n\
/* 08039dc4 */ LDR R1, [R4] \n\
/* 08039dc6 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08039dc8 */ LDRSH R1, [R1, R2] \n\
/* 08039dca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039dcc */ STR R2, [SP] \n\
/* 08039dce */ STR R2, [SP, 0x4] \n\
/* 08039dd0 */ STR R2, [SP, 0x8] \n\
/* 08039dd2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08039dd4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039dd6 */ BL func_0804d8f8 \n\
/* 08039dda */ LDR R0, [R5] \n\
/* 08039ddc */ LDR R1, [R4] \n\
/* 08039dde */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08039de0 */ LDRSH R1, [R1, R2] \n\
/* 08039de2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08039de4 */ BL func_0804d770 \n\
 \n\
branch_08039de8: \n\
/* 08039de8 */ ADD SP, 0xC \n\
/* 08039dea */ POP {R4-R6} \n\
/* 08039dec */ POP {R0} \n\
/* 08039dee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
