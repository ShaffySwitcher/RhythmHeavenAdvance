asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080449a4 \n\
/* 080449a4 */ PUSH {LR} \n\
/* 080449a6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080449a8 */ BL func_0800c604 \n\
/* 080449ac */ BL func_08017578 \n\
/* 080449b0 */ POP {R0} \n\
/* 080449b2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
