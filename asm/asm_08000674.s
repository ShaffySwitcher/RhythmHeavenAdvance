.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000674
/* 08000674 */ PUSH {R4-R7, LR}
/* 08000676 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0
/* 08000678 */ CMP R5, 0x0 @ Compare R5 and 0x0
/* 0800067a */ BEQ branch_080006a6
/* 0800067c */ MOVS R6, 0x0 @ Set R6 to 0x0
/* 0800067e */ LDR R0, =D_03000008
/* 08000680 */ MOVS R3, 0x0 @ Set R3 to 0x0
/* 08000682 */ ADDS R4, R0, 0x4 @ Set R4 to R0 + 0x4
/* 08000684 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0
/* 08000686 */ MOVS R2, 0x0 @ Set R2 to 0x0
/* 08000688 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0
/* 0800068a */ ADDS R7, 0x8 @ Add 0x8 to R7

branch_0800068c:
/* 0800068c */ LDR R0, [R1]
/* 0800068e */ CMP R0, R5 @ Check R0 - R5
/* 08000690 */ BNE branch_0800069a
/* 08000692 */ STR R3, [R1]
/* 08000694 */ STR R3, [R4]
/* 08000696 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7
/* 08000698 */ STR R3, [R0]

branch_0800069a:
/* 0800069a */ ADDS R4, 0xC @ Add 0xC to R4
/* 0800069c */ ADDS R1, 0xC @ Add 0xC to R1
/* 0800069e */ ADDS R2, 0xC @ Add 0xC to R2
/* 080006a0 */ ADDS R6, 0x1 @ Add 0x1 to R6
/* 080006a2 */ CMP R6, 0x9 @ Compare R6 and 0x9
/* 080006a4 */ BLS branch_0800068c

branch_080006a6:
/* 080006a6 */ POP {R4-R7}
/* 080006a8 */ POP {R0}
/* 080006aa */ BX R0

.ltorg

.end
