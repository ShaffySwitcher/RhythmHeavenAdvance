.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000928
/* 08000928 */ PUSH {R4-R6, LR}
/* 0800092a */ MOV R6, R8 @ Set R6 to R8
/* 0800092c */ PUSH {R6}
/* 0800092e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0
/* 08000930 */ LDR R5, =D_030046a8
/* 08000932 */ LDR R4, [R5]
/* 08000934 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 08000936 */ BL func_0800091c
/* 0800093a */ MOV R8, R0 @ Set R8 to R0
/* 0800093c */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 0800093e */ STR R0, [R4, 0x8]
/* 08000940 */ LDR R0, [R5]
/* 08000942 */ LDR R1, =0x3B04
/* 08000944 */ BL func_08000794
/* 08000948 */ STR R0, [R4, 0x8]
/* 0800094a */ LDR R0, [R5]
/* 0800094c */ ADD R0, R8 @ Add R8 to R0
/* 0800094e */ ADD R6, R8 @ Add R8 to R6
/* 08000950 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0
/* 08000952 */ MOVS R2, 0x10 @ Set R2 to 0x10
/* 08000954 */ BL func_0804c8b0
/* 08000958 */ POP {R3}
/* 0800095a */ MOV R8, R3 @ Set R8 to R3
/* 0800095c */ POP {R4-R6}
/* 0800095e */ POP {R0}
/* 08000960 */ BX R0

.ltorg

.end
