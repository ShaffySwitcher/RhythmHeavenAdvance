.section .text
.thumb
.syntax unified

.include "include/gba.inc"

/* 0800046c */ PUSH {LR}
/* 0800046e */ LDR R1, =0x03000000
/* 08000470 */ MOVS R2, 0x0 @ Set R2 to 0x0
/* 08000472 */ STR R2, [R1]
/* 08000474 */ LDR R1, =0x03000004
/* 08000476 */ STR R0, [R1]
/* 08000478 */ LDR R0, =0x030046A4
/* 0800047a */ STR R2, [R0]
/* 0800047c */ BL 0x08000598 @!Pointer
/* 08000480 */ POP {R0}
/* 08000482 */ BX R0

.ltorg

.end

