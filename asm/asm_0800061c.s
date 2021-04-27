.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800061c
/* 0800061c */ PUSH {LR}
/* 0800061e */ LDR R0, =D_03000000
/* 08000620 */ LDR R0, [R0]
/* 08000622 */ BL func_080005f4
/* 08000626 */ POP {R1}
/* 08000628 */ BX R1

.ltorg

.end
