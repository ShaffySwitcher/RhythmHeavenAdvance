asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801c9b8 \n\
/* 0801c9b8 */ LDR R0, =0x0300154c @ !PossiblePointer \n\
/* 0801c9ba */ LDRB R0, [R0] \n\
/* 0801c9bc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");