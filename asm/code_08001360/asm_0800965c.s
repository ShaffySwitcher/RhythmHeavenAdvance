asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800965c \n\
/* 0800965c */ LDR R0, =0x03004af4 @ !PossiblePointer \n\
/* 0800965e */ LDRH R0, [R0] \n\
/* 08009660 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");