.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080006b0
/* 080006b0 */ PUSH {R4, R5, LR}
/* 080006b2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0
/* 080006b4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0
/* 080006b6 */ BL func_080005b8
/* 080006ba */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080006bc */ BNE branch_080006c8
/* 080006be */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 080006c0 */ BL func_08000630
/* 080006c4 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080006c6 */ BEQ branch_080006ca

branch_080006c8:
/* 080006c8 */ STR R5, [R0, 0x4]

branch_080006ca:
/* 080006ca */ POP {R4, R5}
/* 080006cc */ POP {R0}
/* 080006ce */ BX R0

.end
