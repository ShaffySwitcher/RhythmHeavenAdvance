.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000584
/* 08000584 */ PUSH {LR}
/* 08000586 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0
/* 08000588 */ LDR R0, =D_03000000
/* 0800058a */ LDR R0, [R0]
/* 0800058c */ BL func_080006b0 @!Pointer
/* 08000590 */ POP {R0}
/* 08000592 */ BX R0

.ltorg

.end
