asm("glabel func_08000868 \n\
/* 08000868 */ PUSH {R4-R6, LR} \n\
/* 0800086a */ LDR R6, =D_030046a8 \n\
/* 0800086c */ LDR R4, [R6] \n\
/* 0800086e */ LDR R1, =D_030064c8 \n\
/* 08000870 */ LDR R5, =0x3B04 \n\
/* 08000872 */ LDR R3, [R1] \n\
/* 08000874 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08000876 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08000878 */ BL func_0804eaf8 \n\
/* 0800087c */ LDR R1, =D_08935fbc \n\
/* 0800087e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08000880 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08000882 */ BL func_0800820c \n\
/* 08000886 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08000888 */ BEQ branch_080008a0 \n\
/* 0800088a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800088c */ B branch_080008b6 \n\
 \n\
.ltorg \n\
 \n\
branch_080008a0: \n\
/* 080008a0 */ LDR R0, [R6] \n\
/* 080008a2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080008a4 */ BL func_08000794 \n\
/* 080008a8 */ LDR R1, [R4, 0x8] \n\
/* 080008aa */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080008ac */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080008ae */ BNE branch_080008b4 \n\
/* 080008b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080008b2 */ B branch_080008b6 \n\
 \n\
branch_080008b4: \n\
/* 080008b4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_080008b6: \n\
/* 080008b6 */ POP {R4-R6} \n\
/* 080008b8 */ POP {R1} \n\
/* 080008ba */ BX R1 \n\
");
