.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000788
/* 08000788 */ LDR R0, =D_03000092
/* 0800078a */ LDRH R0, [R0]
/* 0800078c */ LSLS R0, R0, 0x2
/* 0800078e */ BX LR

.ltorg

.end
