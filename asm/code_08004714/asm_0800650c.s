asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800650c \n\
/* 0800650c */ PUSH {R4, LR} \n\
/* 0800650e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08006510 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08006512 */ LDR R0, =D_03000e9c \n\
/* 08006514 */ STR R2, [R0] \n\
/* 08006516 */ LDR R1, =D_03000ea0 \n\
/* 08006518 */ LSRS R0, R4, 0x2 \n\
/* 0800651a */ STR R0, [R1] \n\
/* 0800651c */ LDR R3, =0xffff \n\
/* 0800651e */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08006520 */ BLS branch_08006524 \n\
/* 08006522 */ STR R3, [R1] \n\
 \n\
branch_08006524: \n\
/* 08006524 */ LDR R0, [R1] \n\
/* 08006526 */ LSLS R0, R0, 0x10 \n\
/* 08006528 */ STR R0, [R2] \n\
/* 0800652a */ LDR R0, =D_03004ad0 \n\
/* 0800652c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800652e */ STR R1, [R0] \n\
/* 08006530 */ STR R2, [R0, 0x4] \n\
/* 08006532 */ STR R4, [R0, 0x8] \n\
/* 08006534 */ STR R1, [R0, 0x10] \n\
/* 08006536 */ STR R1, [R0, 0xC] \n\
/* 08006538 */ LDR R2, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 0800653a */ LDR R1, =D_0800112c \n\
/* 0800653c */ STR R1, [R2] \n\
/* 0800653e */ LDR R3, =D_03000e48 \n\
/* 08006540 */ STR R3, [R2, 0x4] \n\
/* 08006542 */ LDR R0, =D_0800116c \n\
/* 08006544 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08006546 */ LSRS R0, R0, 0x2 \n\
/* 08006548 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 0800654a */ LSLS R1, R1, 0x18 \n\
/* 0800654c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800654e */ STR R0, [R2, 0x8] \n\
/* 08006550 */ LDR R0, [R2, 0x8] \n\
/* 08006552 */ LDR R0, =D_03000e98 \n\
/* 08006554 */ STR R3, [R0] \n\
/* 08006556 */ POP {R4} \n\
/* 08006558 */ POP {R0} \n\
/* 0800655a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
