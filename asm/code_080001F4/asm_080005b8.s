asm("glabel func_080005b8 \n\
/* 080005b8 */ PUSH {LR} \n\
/* 080005ba */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080005bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080005be */ LDR R1, =D_03000008 \n\
 \n\
branch_080005c0: \n\
/* 080005c0 */ LDR R0, [R1] \n\
/* 080005c2 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 080005c4 */ BNE branch_080005d0 \n\
/* 080005c6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080005c8 */ B branch_080005da \n\
 \n\
.ltorg \n\
 \n\
branch_080005d0: \n\
/* 080005d0 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080005d2 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080005d4 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 080005d6 */ BLS branch_080005c0 \n\
/* 080005d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080005da: \n\
/* 080005da */ POP {R1} \n\
/* 080005dc */ BX R1 \n\
 \n\
.hword 0 \n\
");
