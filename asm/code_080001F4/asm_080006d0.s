asm("glabel func_080006d0 \n\
/* 080006d0 */ PUSH {R4, R5, LR} \n\
/* 080006d2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080006d4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080006d6 */ BL func_080005b8 \n\
/* 080006da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080006dc */ BNE branch_080006e8 \n\
/* 080006de */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080006e0 */ BL func_08000630 \n\
/* 080006e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080006e6 */ BEQ branch_080006ea \n\
 \n\
branch_080006e8: \n\
/* 080006e8 */ STR R5, [R0, 0x8] \n\
 \n\
branch_080006ea: \n\
/* 080006ea */ POP {R4, R5} \n\
/* 080006ec */ POP {R0} \n\
/* 080006ee */ BX R0 \n\
");
