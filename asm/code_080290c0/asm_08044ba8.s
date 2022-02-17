asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044ba8 \n\
/* 08044ba8 */ PUSH {R4-R7, LR} \n\
/* 08044baa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08044bac */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08044bae */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08044bb0 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08044bb2 */ LDR R0, =D_030055d0 \n\
/* 08044bb4 */ LDR R0, [R0] \n\
/* 08044bb6 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 08044bb8 */ LSLS R2, R2, 0x1 \n\
/* 08044bba */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044bbc */ LDR R0, [R0] \n\
/* 08044bbe */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08044bc0 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08044bc2 */ LSLS R0, R0, 0x8 \n\
/* 08044bc4 */ BL func_08007b80 \n\
/* 08044bc8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08044bca */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08044bcc */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08044bce */ ASRS R6, R0, 0x8 \n\
/* 08044bd0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08044bd2 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08044bd4 */ ASRS R7, R0, 0x8 \n\
/* 08044bd6 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08044bd8 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 08044bda */ LSLS R1, R1, 0x10 \n\
/* 08044bdc */ ASRS R1, R1, 0x10 \n\
/* 08044bde */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08044be0 */ ADDS R2, 0x50 @ Add 0x50 to R2 \n\
/* 08044be2 */ LSLS R2, R2, 0x10 \n\
/* 08044be4 */ ASRS R2, R2, 0x10 \n\
/* 08044be6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08044be8 */ BL func_0800fddc \n\
/* 08044bec */ LSLS R4, R4, 0x10 \n\
/* 08044bee */ ASRS R4, R4, 0x10 \n\
/* 08044bf0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08044bf2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08044bf4 */ BL func_0800fe60 \n\
/* 08044bf8 */ POP {R4-R7} \n\
/* 08044bfa */ POP {R0} \n\
/* 08044bfc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
