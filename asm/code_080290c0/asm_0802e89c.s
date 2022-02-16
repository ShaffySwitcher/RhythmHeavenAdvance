asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802e89c \n\
/* 0802e89c */ PUSH {LR} \n\
/* 0802e89e */ LDR R0, =0x08a9dfa8 @ !PossiblePointer \n\
/* 0802e8a0 */ BL func_08002634 \n\
/* 0802e8a4 */ POP {R0} \n\
/* 0802e8a6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
