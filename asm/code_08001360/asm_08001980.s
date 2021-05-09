asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001980 \n\
/* 08001980 */ LSLS R0, R0, 0x10 \n\
/* 08001982 */ LSRS R0, R0, 0x10 \n\
/* 08001984 */ LDR R2, =0x030000b4 @ !PossiblePointer \n\
/* 08001986 */ LDRH R3, [R2] \n\
/* 08001988 */ MOVS R1, 0x6D @ Set R1 to 0x6D \n\
/* 0800198a */ MULS R1, R3 @ Multiply R1 by R3 \n\
/* 0800198c */ LDR R3, =0x000003fd @ !PossiblePointer \n\
/* 0800198e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08001990 */ STRH R1, [R2] \n\
/* 08001992 */ LDRH R1, [R2] \n\
/* 08001994 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08001996 */ LSRS R0, R0, 0x10 \n\
/* 08001998 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");