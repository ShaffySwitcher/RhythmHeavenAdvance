.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080005f4
/* 080005f4 */ PUSH {LR}
/* 080005f6 */ BL func_080005b8
/* 080005fa */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080005fc */ BEQ branch_08000602
/* 080005fe */ LDR R0, [R0, 0x8]
/* 08000600 */ B branch_08000604

branch_08000602:
/* 08000602 */ MOVS R0, 0x0 @ Set R0 to 0x0

branch_08000604:
/* 08000604 */ POP {R1}
/* 08000606 */ BX R1

.end
