.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800074c
/* 0800074c */ LDR R0, =D_0300008c
/* 0800074e */ LDRH R0, [R0]
/* 08000750 */ LSLS R0, R0, 0x2
/* 08000752 */ MOVS R1, 0x80 @ Set R1 to 0x80
/* 08000754 */ LSLS R1, R1, 0x12
/* 08000756 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1
/* 08000758 */ BX LR

.ltorg

.end
