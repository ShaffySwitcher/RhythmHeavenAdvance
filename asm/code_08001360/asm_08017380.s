asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08017380 \n\
/* 08017380 */ LDR R1, =D_030046a4 \n\
/* 08017382 */ LDR R1, [R1] \n\
/* 08017384 */ STR R0, [R1, 0x60] \n\
/* 08017386 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");