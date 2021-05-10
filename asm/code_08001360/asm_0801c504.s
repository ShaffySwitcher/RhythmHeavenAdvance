asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801c504 \n\
/* 0801c504 */ LDR R0, =0x03001544 @ !PossiblePointer \n\
/* 0801c506 */ LDRB R0, [R0] \n\
/* 0801c508 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");