.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080008d0
/* 080008d0 */ PUSH {LR}
/* 080008d2 */ LDR R0, =0x08935fb8 @ !PossiblePointer
/* 080008d4 */ LDR R0, [R0]
/* 080008d6 */ BL func_08000868
/* 080008da */ POP {R1}
/* 080008dc */ BX R1

.ltorg

.end
