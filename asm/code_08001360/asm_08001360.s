asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001360 \n\
/* 08001360 */ PUSH {LR} \n\
/* 08001362 */ BL func_08003f28 \n\
/* 08001366 */ LDR R1, =D_03000098 \n\
/* 08001368 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800136a */ STRH R0, [R1] \n\
/* 0800136c */ LDR R1, =D_0300009c \n\
/* 0800136e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001370 */ STR R0, [R1] \n\
/* 08001372 */ POP {R0} \n\
/* 08001374 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
