asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08006590 \n\
/* 08006590 */ PUSH {R4-R7, LR} \n\
/* 08006592 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08006594 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08006596 */ PUSH {R6, R7} \n\
/* 08006598 */ LSLS R0, R0, 0x10 \n\
/* 0800659a */ LSRS R0, R0, 0x10 \n\
/* 0800659c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800659e */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 080065a0 */ LSRS R1, R1, 0x2 \n\
/* 080065a2 */ ADDS R4, R1, 0x1 @ Set R4 to R1 + 0x1 \n\
/* 080065a4 */ LDR R2, =D_03000e98 \n\
/* 080065a6 */ LDR R0, =D_03000e9c \n\
/* 080065a8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080065aa */ LDR R0, [R0] \n\
/* 080065ac */ LDR R1, =D_03000ea0 \n\
/* 080065ae */ LDR R1, [R1] \n\
/* 080065b0 */ LDR R3, [R2] \n\
/* 080065b2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080065b4 */ BL func_0804eaf8 \n\
/* 080065b8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080065ba */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080065bc */ BGE branch_080065d8 \n\
/* 080065be */ LDR R1, =D_03004ad0 \n\
/* 080065c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080065c2 */ STR R0, [R1] \n\
/* 080065c4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080065c6 */ B branch_08006616 \n\
\n\
.ltorg \n\
 \n\
branch_080065d8: \n\
/* 080065d8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080065da */ LDR R6, [R1] \n\
/* 080065dc */ LSLS R7, R3, 0x2 \n\
/* 080065de */ MOV R12, R7 @ Set R12 to R7 \n\
/* 080065e0 */ ADDS R2, R7, R6 @ Set R2 to R7 + R6 \n\
/* 080065e2 */ LDRH R5, [R2, 0x2] \n\
/* 080065e4 */ LSLS R1, R4, 0x10 \n\
/* 080065e6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080065e8 */ LSLS R0, R0, 0x8 \n\
/* 080065ea */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080065ec */ ORRS R0, R7 @ Set R0 to R0 | R7 \n\
/* 080065ee */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080065f0 */ STR R1, [R2] \n\
/* 080065f2 */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 080065f4 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 080065f6 */ BCS branch_08006602 \n\
/* 080065f8 */ LSLS R1, R2, 0x2 \n\
/* 080065fa */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080065fc */ SUBS R0, R5, R4 @ Set R0 to R5 - R4 \n\
/* 080065fe */ LSLS R0, R0, 0x10 \n\
/* 08006600 */ STR R0, [R1] \n\
 \n\
branch_08006602: \n\
/* 08006602 */ LSLS R1, R2, 0x2 \n\
/* 08006604 */ LDR R2, =D_03004ad0 \n\
/* 08006606 */ LDR R0, [R2, 0x10] \n\
/* 08006608 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800660a */ BLS branch_0800660e \n\
/* 0800660c */ STR R1, [R2, 0x10] \n\
 \n\
branch_0800660e: \n\
/* 0800660e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08006610 */ LDR R0, [R1] \n\
/* 08006612 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 08006614 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
 \n\
branch_08006616: \n\
/* 08006616 */ POP {R3, R4} \n\
/* 08006618 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800661a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800661c */ POP {R4-R7} \n\
/* 0800661e */ POP {R1} \n\
/* 08006620 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");