.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000804
/* 08000804 */ PUSH {R4, LR}
/* 08000806 */ BL func_0804c96c
/* 0800080a */ LDR R4, =0x030046a8 @ !PossiblePointer
/* 0800080c */ BL func_0800074c
/* 08000810 */ STR R0, [R4]
/* 08000812 */ POP {R4}
/* 08000814 */ POP {R0}
/* 08000816 */ BX R0

.ltorg

.end
