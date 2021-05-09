asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800a05c \n\
/* 0800a05c */ LDR R0, =0x030012f8 @ !PossiblePointer \n\
/* 0800a05e */ LDR R0, [R0] \n\
/* 0800a060 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");