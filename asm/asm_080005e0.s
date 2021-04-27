.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080005e0
/* 080005e0 */ PUSH {LR}
/* 080005e2 */ BL func_080005b8
/* 080005e6 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080005e8 */ BEQ branch_080005ee
/* 080005ea */ LDR R0, [R0, 0x4]
/* 080005ec */ B branch_080005f0

branch_080005ee:
/* 080005ee */ MOVS R0, 0x0 @ Set R0 to 0x0

branch_080005f0:
/* 080005f0 */ POP {R1}
/* 080005f2 */ BX R1

.end
