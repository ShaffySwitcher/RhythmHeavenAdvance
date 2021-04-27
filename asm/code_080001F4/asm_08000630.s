asm("glabel func_08000630 \n\
/* 08000630 */ PUSH {R4-R6, LR} \n\
/* 08000632 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08000634 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08000636 */ BNE branch_0800064e \n\
/* 08000638 */ B branch_08000668 \n\
 \n\
branch_0800063a: \n\
/* 0800063a */ STR R6, [R2] \n\
/* 0800063c */ ADDS R0, R5, 0x4 @ Set R0 to R5 + 0x4 \n\
/* 0800063e */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08000640 */ STR R1, [R0] \n\
/* 08000642 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08000644 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08000646 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08000648 */ STR R1, [R0] \n\
/* 0800064a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800064c */ B branch_0800066a \n\
 \n\
branch_0800064e: \n\
/* 0800064e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08000650 */ LDR R0, =D_03000008 \n\
/* 08000652 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08000654 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08000656 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08000658: \n\
/* 08000658 */ LDR R1, [R2] \n\
/* 0800065a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800065c */ BEQ branch_0800063a \n\
/* 0800065e */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08000660 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08000662 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08000664 */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 08000666 */ BLS branch_08000658 \n\
 \n\
branch_08000668: \n\
/* 08000668 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800066a: \n\
/* 0800066a */ POP {R4-R6} \n\
/* 0800066c */ POP {R1} \n\
/* 0800066e */ BX R1 \n\
 \n\
.ltorg \n\
");
