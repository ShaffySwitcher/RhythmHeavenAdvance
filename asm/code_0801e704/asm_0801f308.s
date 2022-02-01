asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f308 \n\
/* 0801f308 */ STRB R0, [R2, R7] \n\
/* 0801f30a */ LSLS R0, R0, 0xC \n\
/* 0801f30c */ PUSH {LR} \n\
/* 0801f30e */ BL func_0801f194 \n\
/* 0801f312 */ POP {R0} \n\
/* 0801f314 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");