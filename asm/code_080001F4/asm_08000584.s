asm("glabel func_08000584 \n\
/* 08000584 */ PUSH {LR} \n\
/* 08000586 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08000588 */ LDR R0, =D_03000000 \n\
/* 0800058a */ LDR R0, [R0] \n\
/* 0800058c */ BL func_080006b0 @!Pointer \n\
/* 08000590 */ POP {R0} \n\
/* 08000592 */ BX R0 \n\
 \n\
.ltorg \n\
");
