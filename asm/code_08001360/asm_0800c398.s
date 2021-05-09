asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800c398 \n\
/* 0800c398 */ LDR R0, =0x030053c0 @ !PossiblePointer \n\
/* 0800c39a */ LDR R0, [R0, 0x14] \n\
/* 0800c39c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");