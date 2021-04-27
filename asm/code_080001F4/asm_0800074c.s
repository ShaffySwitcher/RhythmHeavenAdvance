asm("glabel func_0800074c \n\
/* 0800074c */ LDR R0, =D_0300008c \n\
/* 0800074e */ LDRH R0, [R0] \n\
/* 08000750 */ LSLS R0, R0, 0x2 \n\
/* 08000752 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08000754 */ LSLS R1, R1, 0x12 \n\
/* 08000756 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08000758 */ BX LR \n\
 \n\
.ltorg \n\
");
