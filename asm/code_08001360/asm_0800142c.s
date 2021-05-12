asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800142c \n\
/* 0800142c */ LSLS R0, R0, 0x10 \n\
/* 0800142e */ LSRS R0, R0, 0x10 \n\
/* 08001430 */ LDR R1, =D_030046b8 \n\
/* 08001432 */ STRH R0, [R1] \n\
/* 08001434 */ LDR R1, =D_03005378 \n\
/* 08001436 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08001438 */ STRH R2, [R1] \n\
/* 0800143a */ LDR R1, =D_0300537c \n\
/* 0800143c */ STRH R2, [R1] \n\
/* 0800143e */ LDR R1, =D_030046b4 \n\
/* 08001440 */ STRH R2, [R1] \n\
/* 08001442 */ LDR R1, =D_030000a4 \n\
/* 08001444 */ STRH R0, [R1] \n\
/* 08001446 */ LDR R0, =D_030000a6 \n\
/* 08001448 */ STRH R2, [R0] \n\
/* 0800144a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
