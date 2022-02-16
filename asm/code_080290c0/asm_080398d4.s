asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080398d4 \n\
/* 080398d4 */ PUSH {LR} \n\
/* 080398d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080398d8 */ BL func_0800c604 \n\
/* 080398dc */ BL func_08017578 \n\
/* 080398e0 */ POP {R0} \n\
/* 080398e2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
