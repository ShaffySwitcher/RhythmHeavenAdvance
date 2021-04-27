asm("glabel func_08000760 \n\
/* 08000760 */ LDR R0, =D_0300008e \n\
/* 08000762 */ LDRH R0, [R0] \n\
/* 08000764 */ LSLS R0, R0, 0x2 \n\
/* 08000766 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08000768 */ LSLS R1, R1, 0x12 \n\
/* 0800076a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800076c */ BX LR \n\
 \n\
.ltorg \n\
");
