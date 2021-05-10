asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801c960 \n\
/* 0801c960 */ LDR R1, =0x0300154c @ !PossiblePointer \n\
/* 0801c962 */ STRB R0, [R1] \n\
/* 0801c964 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");