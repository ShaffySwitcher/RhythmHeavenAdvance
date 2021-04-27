asm("glabel func_080006f0 \n\
/* 080006f0 */ LDR R3, =D_03000080 \n\
/* 080006f2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080006f4 */ STRB R2, [R3] \n\
/* 080006f6 */ LDR R2, =D_03000084 \n\
/* 080006f8 */ STR R0, [R2] \n\
/* 080006fa */ LDR R0, =D_03000088 \n\
/* 080006fc */ STR R1, [R0] \n\
/* 080006fe */ BX LR \n\
 \n\
.ltorg \n\
");
