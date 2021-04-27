asm("glabel func_08000774 \n\
/* 08000774 */ LDR R0, =D_03000090 \n\
/* 08000776 */ LDRH R0, [R0] \n\
/* 08000778 */ LSLS R0, R0, 0x2 \n\
/* 0800077a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800077c */ LSLS R1, R1, 0x12 \n\
/* 0800077e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08000780 */ BX LR \n\
 \n\
.ltorg \n\
");
