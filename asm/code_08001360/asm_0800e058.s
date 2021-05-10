asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800e058 \n\
/* 0800e058 */ LDR R3, =0x03004b1c @ !PossiblePointer \n\
/* 0800e05a */ LSLS R0, R0, 0x2 \n\
/* 0800e05c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800e05e */ STRH R1, [R0] \n\
/* 0800e060 */ STRH R2, [R0, 0x2] \n\
/* 0800e062 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");