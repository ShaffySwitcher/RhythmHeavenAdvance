asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800e100 \n\
/* 0800e100 */ LDR R2, =0x03004b10 @ !PossiblePointer \n\
/* 0800e102 */ LDRH R1, [R2] \n\
/* 0800e104 */ LDR R0, =0x0000efff @ !PossiblePointer \n\
/* 0800e106 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e108 */ STRH R0, [R2] \n\
/* 0800e10a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");