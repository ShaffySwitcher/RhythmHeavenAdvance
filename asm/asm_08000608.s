.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000608
/* 08000608 */ PUSH {LR}
/* 0800060a */ LDR R0, =D_03000000
/* 0800060c */ LDR R0, [R0]
/* 0800060e */ BL func_080005e0
/* 08000612 */ POP {R1}
/* 08000614 */ BX R1

.ltorg

.end
