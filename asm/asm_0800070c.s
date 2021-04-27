.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800070c
/* 0800070c */ LDR R0, =D_03000000
/* 0800070e */ LDR R0, [R0]
/* 08000710 */ BX LR

.ltorg

.end
