.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000718
/* 08000718 */ MOVS R3, 0x4 @ Set R3 to 0x4
/* 0800071a */ LDR R2, =0xFFFC
/* 0800071c */ LDR R1, =0xEC1
/* 0800071e */ LDR R0, =D_0300008c
/* 08000720 */ STRH R3, [R0]
/* 08000722 */ ADDS R3, R1, 0x4 @ Set R3 to R1 + 0x4
/* 08000724 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1
/* 08000726 */ LDR R0, =D_0300008e
/* 08000728 */ STRH R3, [R0]
/* 0800072a */ LDR R0, =D_03000090
/* 0800072c */ STRH R3, [R0]
/* 0800072e */ LDR R0, =D_03000092
/* 08000730 */ STRH R2, [R0]
/* 08000732 */ BX LR

.ltorg

.end
