asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080180a0 \n\
/* 080180a0 */ LDR R0, [R0, 0x5C] \n\
/* 080180a2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");