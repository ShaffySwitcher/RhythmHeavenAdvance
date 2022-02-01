asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020f88 \n\
/* 08020f88 */ LSRS R4, R4, 0x1 \n\
/* 08020f8a */ LSLS R0, R0, 0x0 \n\
/* 08020f8c */ PUSH {LR} \n\
/* 08020f8e */ BL func_0800e128 \n\
/* 08020f92 */ POP {R0} \n\
/* 08020f94 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");