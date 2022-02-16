asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802e3a4 \n\
/* 0802e3a4 */ LDR R2, =0x00000219 @ !PossiblePointer \n\
/* 0802e3a6 */ STR R2, [R0] \n\
/* 0802e3a8 */ LDR R0, =0xfffffdf6 @ !PossiblePointer \n\
/* 0802e3aa */ STR R0, [R1] \n\
/* 0802e3ac */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
