asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800181c \n\
/* 0800181c */ LDR R1, =D_030000a9 \n\
/* 0800181e */ STRB R0, [R1] \n\
/* 08001820 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
