.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800091c
/* 0800091c */ LDR R1, =0x030046a8 @ !PossiblePointer
/* 0800091e */ LDR R1, [R1]
/* 08000920 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1
/* 08000922 */ BX LR

.ltorg

.end
