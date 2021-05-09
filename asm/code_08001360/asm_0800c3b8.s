asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800c3b8 \n\
/* 0800c3b8 */ LDR R0, =0x03001310 @ !PossiblePointer \n\
/* 0800c3ba */ LDR R0, [R0] \n\
/* 0800c3bc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");