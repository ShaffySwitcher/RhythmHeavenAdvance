.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800081c
/* 0800081c */ PUSH {R4, R5, LR}
/* 0800081e */ SUB SP, 0x4
/* 08000820 */ LDR R0, =0x030046a8 @ !PossiblePointer
/* 08000822 */ LDR R4, [R0]
/* 08000824 */ LDR R5, =0x00003b04 @ !PossiblePointer
/* 08000826 */ MOVS R0, 0x80 @ Set R0 to 0x80
/* 08000828 */ LSLS R0, R0, 0x1
/* 0800082a */ STR R0, [SP]
/* 0800082c */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 0800082e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0
/* 08000830 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0
/* 08000832 */ MOVS R3, 0x20 @ Set R3 to 0x20
/* 08000834 */ BL func_080018e0
/* 08000838 */ LDR R1, =0x08935fbc @ !PossiblePointer
/* 0800083a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 0800083c */ BL func_0804f270
/* 08000840 */ STR R5, [R4, 0x4]
/* 08000842 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 08000844 */ STR R0, [R4, 0x8]
/* 08000846 */ LDR R0, =0x26040000 @ !PossiblePointer
/* 08000848 */ STR R0, [R4, 0xC]
/* 0800084a */ BL func_080102f4
/* 0800084e */ ADD SP, 0x4
/* 08000850 */ POP {R4, R5}
/* 08000852 */ POP {R0}
/* 08000854 */ BX R0

.ltorg

.end
