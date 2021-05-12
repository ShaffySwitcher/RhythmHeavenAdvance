asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08013b98 \n\
/* 08013b98 */ PUSH {R4-R7, LR} \n\
/* 08013b9a */ SUB SP, 0x4 \n\
/* 08013b9c */ LDR R5, =D_030046a4 \n\
/* 08013b9e */ LDR R2, [R5] \n\
/* 08013ba0 */ STRB R0, [R2, 0x10] \n\
/* 08013ba2 */ LDR R2, [R5] \n\
/* 08013ba4 */ STRB R1, [R2, 0x11] \n\
/* 08013ba6 */ MOV R4, SP @ Set R4 to SP \n\
/* 08013ba8 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08013baa */ MOV R2, SP @ Set R2 to SP \n\
/* 08013bac */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013bae */ BL func_0801332c \n\
/* 08013bb2 */ MOV R1, SP @ Set R1 to SP \n\
/* 08013bb4 */ MOV R0, SP @ Set R0 to SP \n\
/* 08013bb6 */ LDRH R0, [R0] \n\
/* 08013bb8 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08013bba */ STRH R0, [R1] \n\
/* 08013bbc */ LDRH R0, [R4] \n\
/* 08013bbe */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08013bc0 */ STRH R0, [R4] \n\
/* 08013bc2 */ LDR R6, =D_03005380 \n\
/* 08013bc4 */ LDR R0, [R6] \n\
/* 08013bc6 */ LDR R1, [R5] \n\
/* 08013bc8 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08013bca */ LDRSH R1, [R1, R2] \n\
/* 08013bcc */ MOV R2, SP @ Set R2 to SP \n\
/* 08013bce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013bd0 */ LDRSH R2, [R2, R3] \n\
/* 08013bd2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08013bd4 */ LDRSH R3, [R4, R7] \n\
/* 08013bd6 */ BL func_0804d5d4 \n\
/* 08013bda */ LDR R0, [R6] \n\
/* 08013bdc */ LDR R1, [R5] \n\
/* 08013bde */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08013be0 */ LDRSH R1, [R1, R2] \n\
/* 08013be2 */ MOV R2, SP @ Set R2 to SP \n\
/* 08013be4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013be6 */ LDRSH R2, [R2, R3] \n\
/* 08013be8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08013bea */ LDRSH R3, [R4, R5] \n\
/* 08013bec */ BL func_0804d5d4 \n\
/* 08013bf0 */ BL func_08013b48 \n\
/* 08013bf4 */ ADD SP, 0x4 \n\
/* 08013bf6 */ POP {R4-R7} \n\
/* 08013bf8 */ POP {R0} \n\
/* 08013bfa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
