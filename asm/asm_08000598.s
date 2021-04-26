.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000598
/* 08000598 */ PUSH {LR}
/* 0800059a */ MOVS R2, 0x0 @ Set R2 to 0x0
/* 0800059c */ MOVS R1, 0x0 @ Set R1 to 0x0
/* 0800059e */ LDR R0, =D_03000008

branch_080005a0:
/* 080005a0 */ STR R1, [R0]
/* 080005a2 */ STR R1, [R0, 0x4]
/* 080005a4 */ STR R1, [R0, 0x8]
/* 080005a6 */ ADDS R0, 0xC @ Add 0xC to R0
/* 080005a8 */ ADDS R2, 0x1 @ Add 0x1 to R2
/* 080005aa */ CMP R2, 0x9 @ Compare R2 and 0x9
/* 080005ac */ BLS branch_080005a0
/* 080005ae */ POP {R0}
/* 080005b0 */ BX R0

.ltorg

.end
