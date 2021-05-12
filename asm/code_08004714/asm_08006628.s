asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08006628 \n\
/* 08006628 */ PUSH {R4-R7, LR} \n\
/* 0800662a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800662c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800662e */ LDR R0, =D_03000e9c \n\
/* 08006630 */ LDR R6, [R0] \n\
/* 08006632 */ LSLS R1, R4, 0x2 \n\
/* 08006634 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08006636 */ LDR R3, [R1] \n\
/* 08006638 */ LDR R2, =0xffff0000 \n\
/* 0800663a */ ANDS R3, R2 @ Set R3 to R3 & R2 \n\
/* 0800663c */ STR R3, [R1] \n\
/* 0800663e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08006640 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08006642 */ BLT branch_0800665a \n\
/* 08006644 */ LSLS R0, R5, 0x2 \n\
/* 08006646 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 08006648 */ LDR R1, [R2] \n\
/* 0800664a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800664c */ LSLS R0, R0, 0x8 \n\
/* 0800664e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006650 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006652 */ BNE branch_0800665a \n\
/* 08006654 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08006656 */ STR R0, [R2] \n\
/* 08006658 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
 \n\
branch_0800665a: \n\
/* 0800665a */ LDR R2, [R7] \n\
/* 0800665c */ LSLS R0, R4, 0x2 \n\
/* 0800665e */ ADDS R5, R0, R2 @ Set R5 to R0 + R2 \n\
/* 08006660 */ LDR R3, [R5] \n\
/* 08006662 */ LSRS R0, R3, 0x10 \n\
/* 08006664 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 08006666 */ LDR R0, =D_03000ea0 \n\
/* 08006668 */ LDR R0, [R0] \n\
/* 0800666a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800666c */ BCS branch_08006682 \n\
/* 0800666e */ LSLS R0, R1, 0x2 \n\
/* 08006670 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08006672 */ LDR R1, [R0] \n\
/* 08006674 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08006676 */ LSLS R0, R0, 0x8 \n\
/* 08006678 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800667a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800667c */ BNE branch_08006682 \n\
/* 0800667e */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08006680 */ STR R0, [R5] \n\
 \n\
branch_08006682: \n\
/* 08006682 */ POP {R4-R7} \n\
/* 08006684 */ POP {R0} \n\
/* 08006686 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
