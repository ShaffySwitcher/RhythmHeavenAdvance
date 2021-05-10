asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801911c \n\
/* 0801911c */ LDR R1, =0x03001330 @ !PossiblePointer \n\
/* 0801911e */ STR R0, [R1] \n\
/* 08019120 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");