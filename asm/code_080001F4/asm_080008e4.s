asm("glabel func_080008e4 \n\
/* 080008e4 */ PUSH {R4-R6, LR} \n\
/* 080008e6 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080008e8 */ PUSH {R6} \n\
/* 080008ea */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080008ec */ LDR R6, =D_030046a8 \n\
/* 080008ee */ LDR R4, [R6] \n\
/* 080008f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080008f2 */ STR R0, [R4, 0x8] \n\
/* 080008f4 */ LDR R5, =0x3B04 \n\
/* 080008f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080008f8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080008fa */ BL func_08000794 \n\
/* 080008fe */ STR R0, [R4, 0x8] \n\
/* 08000900 */ LDR R0, [R6] \n\
/* 08000902 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08000904 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08000906 */ BL func_0804c8b0 \n\
/* 0800090a */ POP {R3} \n\
/* 0800090c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800090e */ POP {R4-R6} \n\
/* 08000910 */ POP {R0} \n\
/* 08000912 */ BX R0 \n\
 \n\
.ltorg \n\
");
