.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_0800096c
/* 0800096c */ PUSH {R4-R6, LR}
/* 0800096e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0
/* 08000970 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0
/* 08000972 */ LDR R5, =0x08935fb4 @ !PossiblePointer
/* 08000974 */ LDR R0, [R5]
/* 08000976 */ BL func_08000928
/* 0800097a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 0800097c */ BL func_0800091c
/* 08000980 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0
/* 08000982 */ LDR R0, =0x030046a8 @ !PossiblePointer
/* 08000984 */ LDR R0, [R0]
/* 08000986 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2
/* 08000988 */ LDR R1, [R5]
/* 0800098a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2
/* 0800098c */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0
/* 0800098e */ BL func_0804c8b0
/* 08000992 */ POP {R4-R6}
/* 08000994 */ POP {R0}
/* 08000996 */ BX R0

.ltorg

.end
