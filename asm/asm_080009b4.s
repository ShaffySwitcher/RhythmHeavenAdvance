.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080009b4
/* 080009b4 */ PUSH {LR}
/* 080009b6 */ LDR R0, =0x08935fb8 @ !PossiblePointer
/* 080009b8 */ LDR R0, [R0]
/* 080009ba */ BL func_080008e4
/* 080009be */ POP {R0}
/* 080009c0 */ BX R0

.ltorg

.end
