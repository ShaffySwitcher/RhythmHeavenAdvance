asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800674c \n\
/* 0800674c */ LSRS R4, R3, 0x1A \n\
/* 0800674e */ LSLS R0, R0, 0xC \n\
/* 08006750 */ PUSH {R4-R7, LR} \n\
/* 08006752 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08006754 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08006756 */ LDR R0, =0x03000ea0 @ !PossiblePointer \n\
/* 08006758 */ LDR R1, [R0] \n\
/* 0800675a */ LDR R7, =0x03004ad0 @ !PossiblePointer \n\
/* 0800675c */ CMP R3, R1 @ Check R3 - R1 \n\
/* 0800675e */ BCS branch_08006784 \n\
/* 08006760 */ LDR R0, =0x03000e9c @ !PossiblePointer \n\
/* 08006762 */ LDR R5, [R0] \n\
/* 08006764 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08006766 */ LSLS R6, R6, 0x8 \n\
/* 08006768 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
 \n\
branch_0800676a: \n\
/* 0800676a */ LSLS R0, R2, 0x2 \n\
/* 0800676c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0800676e */ LDR R1, [R0] \n\
/* 08006770 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08006772 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08006774 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006776 */ BEQ branch_0800677c \n\
/* 08006778 */ LSRS R0, R1, 0x10 \n\
/* 0800677a */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
 \n\
branch_0800677c: \n\
/* 0800677c */ LSRS R0, R1, 0x10 \n\
/* 0800677e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08006780 */ CMP R2, R4 @ Check R2 - R4 \n\
/* 08006782 */ BCC branch_0800676a \n\
 \n\
branch_08006784: \n\
/* 08006784 */ LSLS R0, R3, 0x2 \n\
/* 08006786 */ STR R0, [R7, 0xC] \n\
/* 08006788 */ POP {R4-R7} \n\
/* 0800678a */ POP {R0} \n\
/* 0800678c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");