.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080009a0
/* 080009a0 */ PUSH {LR}
/* 080009a2 */ LDR R0, =0x08935fb4 @ !PossiblePointer
/* 080009a4 */ LDR R0, [R0]
/* 080009a6 */ BL func_080008e4
/* 080009aa */ POP {R0}
/* 080009ac */ BX R0

.ltorg

.end
