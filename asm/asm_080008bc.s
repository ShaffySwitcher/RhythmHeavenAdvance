.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080008bc
/* 080008bc */ PUSH {LR}
/* 080008be */ LDR R0, =D_08935fb4
/* 080008c0 */ LDR R0, [R0]
/* 080008c2 */ BL func_08000868
/* 080008c6 */ POP {R1}
/* 080008c8 */ BX R1

.ltorg

.end
