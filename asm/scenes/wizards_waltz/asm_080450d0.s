asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080450d0 \n\
/* 080450d0 */ PUSH {LR} \n\
/* 080450d2 */ BL func_0800bc40 \n\
/* 080450d6 */ POP {R0} \n\
/* 080450d8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
