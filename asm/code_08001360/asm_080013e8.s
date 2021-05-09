asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080013e8 \n\
/* 080013e8 */ LDR R1, =0x0300009c @ !PossiblePointer \n\
/* 080013ea */ STR R0, [R1] \n\
/* 080013ec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");