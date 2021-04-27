asm("glabel func_08000794 \n\
/* 08000794 */ PUSH {R4, R5, LR} \n\
/* 08000796 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08000798 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800079a */ LSRS R1, R1, 0x2 \n\
/* 0800079c */ LSRS R4, R1, 0x4 \n\
/* 0800079e */ LSLS R0, R4, 0x4 \n\
/* 080007a0 */ SUBS R5, R1, R0 @ Set R5 to R1 - R0 \n\
/* 080007a2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080007a4 */ CMP R3, R4 @ Check R3 - R4 \n\
/* 080007a6 */ BCS branch_080007ec \n\
 \n\
branch_080007a8: \n\
/* 080007a8 */ LDR R0, [R2] \n\
/* 080007aa */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007ac */ LDR R0, [R2, 0x4] \n\
/* 080007ae */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007b0 */ LDR R0, [R2, 0x8] \n\
/* 080007b2 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007b4 */ LDR R0, [R2, 0x10] \n\
/* 080007b6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007b8 */ LDR R0, [R2, 0x14] \n\
/* 080007ba */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007bc */ LDR R0, [R2, 0x18] \n\
/* 080007be */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007c0 */ LDR R0, [R2, 0x1C] \n\
/* 080007c2 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007c4 */ LDR R0, [R2, 0x20] \n\
/* 080007c6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007c8 */ LDR R0, [R2, 0x24] \n\
/* 080007ca */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007cc */ LDR R0, [R2, 0x28] \n\
/* 080007ce */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007d0 */ LDR R0, [R2, 0x2C] \n\
/* 080007d2 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007d4 */ LDR R0, [R2, 0x30] \n\
/* 080007d6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007d8 */ LDR R0, [R2, 0x34] \n\
/* 080007da */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007dc */ LDR R0, [R2, 0x38] \n\
/* 080007de */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007e0 */ LDR R0, [R2, 0x3C] \n\
/* 080007e2 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007e4 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 080007e6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080007e8 */ CMP R1, R4 @ Check R1 - R4 \n\
/* 080007ea */ BCC branch_080007a8 \n\
 \n\
branch_080007ec: \n\
/* 080007ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080007ee */ CMP R1, R5 @ Check R1 - R5 \n\
/* 080007f0 */ BCS branch_080007fc \n\
 \n\
branch_080007f2: \n\
/* 080007f2 */ LDMIA R2!, {R0} \n\
/* 080007f4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080007f6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080007f8 */ CMP R1, R5 @ Check R1 - R5 \n\
/* 080007fa */ BCC branch_080007f2 \n\
 \n\
branch_080007fc: \n\
/* 080007fc */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080007fe */ POP {R4, R5} \n\
/* 08000800 */ POP {R1} \n\
/* 08000802 */ BX R1 \n\
");
