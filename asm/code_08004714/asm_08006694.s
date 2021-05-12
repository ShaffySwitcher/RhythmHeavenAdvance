asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08006694 \n\
/* 08006694 */ PUSH {R4-R6, LR} \n\
/* 08006696 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08006698 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0800669a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800669c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800669e */ BNE branch_080066f2 \n\
/* 080066a0 */ LDR R1, =D_03000e9c \n\
/* 080066a2 */ LDR R0, [R1] \n\
/* 080066a4 */ SUBS R0, R2, R0 @ Set R0 to R2 - R0 \n\
/* 080066a6 */ LSRS R0, R0, 0x2 \n\
/* 080066a8 */ SUBS R3, R0, 0x1 @ Set R3 to R0 - 0x1 \n\
/* 080066aa */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080066ac */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080066ae */ BLT branch_080066f2 \n\
/* 080066b0 */ LDR R0, =D_03000ea0 \n\
/* 080066b2 */ LDR R1, [R0] \n\
/* 080066b4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080066b6 */ CMP R3, R1 @ Check R3 - R1 \n\
/* 080066b8 */ BCS branch_080066f2 \n\
/* 080066ba */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080066bc */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 080066be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080066c0 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 080066c2 */ BCS branch_080066f2 \n\
 \n\
branch_080066c4: \n\
/* 080066c4 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 080066c6 */ BGT branch_080066f2 \n\
/* 080066c8 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 080066ca */ BNE branch_080066e0 \n\
/* 080066cc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080066ce */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080066d0 */ BL func_08006628 \n\
/* 080066d4 */ B branch_080066f2 \n\
\n\
.ltorg \n\
 \n\
branch_080066e0: \n\
/* 080066e0 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080066e2 */ LDR R1, [R6] \n\
/* 080066e4 */ LSLS R0, R2, 0x2 \n\
/* 080066e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080066e8 */ LDRH R0, [R0, 0x2] \n\
/* 080066ea */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080066ec */ LDR R0, [R5] \n\
/* 080066ee */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080066f0 */ BCC branch_080066c4 \n\
 \n\
branch_080066f2: \n\
/* 080066f2 */ POP {R4-R6} \n\
/* 080066f4 */ POP {R0} \n\
/* 080066f6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");