asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080066f8 \n\
/* 080066f8 */ PUSH {R4-R7, LR} \n\
/* 080066fa */ LSLS R0, R0, 0x10 \n\
/* 080066fc */ LSRS R2, R0, 0x10 \n\
/* 080066fe */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006700 */ BEQ branch_08006740 \n\
/* 08006702 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08006704 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08006706 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08006708 */ LSLS R3, R3, 0x8 \n\
/* 0800670a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800670c */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800670e */ ORRS R6, R0 @ Set R6 to R6 | R0 \n\
/* 08006710 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08006712 */ LDR R0, =D_03000ea0 \n\
/* 08006714 */ LDR R0, [R0] \n\
/* 08006716 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08006718 */ BCS branch_08006740 \n\
/* 0800671a */ LDR R7, =D_03000e9c \n\
 \n\
branch_0800671c: \n\
/* 0800671c */ LDR R0, [R7] \n\
/* 0800671e */ LSLS R4, R5, 0x2 \n\
/* 08006720 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08006722 */ LDRH R0, [R0] \n\
/* 08006724 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08006726 */ BNE branch_0800672e \n\
/* 08006728 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800672a */ BL func_08006628 \n\
 \n\
branch_0800672e: \n\
/* 0800672e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08006730 */ LDR R0, [R7] \n\
/* 08006732 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08006734 */ LDRH R0, [R0, 0x2] \n\
/* 08006736 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08006738 */ LDR R0, =D_03000ea0 \n\
/* 0800673a */ LDR R0, [R0] \n\
/* 0800673c */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800673e */ BCC branch_0800671c \n\
 \n\
branch_08006740: \n\
/* 08006740 */ POP {R4-R7} \n\
/* 08006742 */ POP {R0} \n\
/* 08006744 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");