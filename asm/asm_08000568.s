.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000568
/* 08000568 */ PUSH {LR}
/* 0800056a */ LDR R2, =D_03000000
/* 0800056c */ MOVS R1, 0x0 @ Set R1 to 0x0
/* 0800056e */ STR R1, [R2]
/* 08000570 */ LDR R1, =D_03000004
/* 08000572 */ STR R0, [R1]
/* 08000574 */ BL func_08000598
/* 08000578 */ POP {R0}
/* 0800057a */ BX R0

.ltorg

.end
