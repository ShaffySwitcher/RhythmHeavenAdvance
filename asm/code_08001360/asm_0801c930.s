asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801c930 \n\
/* 0801c930 */ LDR R0, =D_030046a4 \n\
/* 0801c932 */ LDR R0, [R0] \n\
/* 0801c934 */ LDR R1, =0x0000049c @ !PossiblePointer \n\
/* 0801c936 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c938 */ LDR R0, [R0] \n\
/* 0801c93a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");