asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08017348 \n\
/* 08017348 */ PUSH {R4, LR} \n\
/* 0801734a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801734c */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801734e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08017350 */ LDR R0, =D_030046a4 \n\
/* 08017352 */ LDR R0, [R0] \n\
/* 08017354 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017356 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 08017358 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801735a */ BNE branch_08017364 \n\
/* 0801735c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801735e */ B branch_08017378 \n\
\n\
.ltorg \n\
 \n\
branch_08017364: \n\
/* 08017364 */ LSLS R0, R2, 0x2 \n\
/* 08017366 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08017368 */ LDR R1, [R0] \n\
/* 0801736a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801736c */ BEQ branch_08017376 \n\
/* 0801736e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08017370 */ BL func_0804eaf0 \n\
/* 08017374 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_08017376: \n\
/* 08017376 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_08017378: \n\
/* 08017378 */ POP {R4} \n\
/* 0801737a */ POP {R1} \n\
/* 0801737c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");