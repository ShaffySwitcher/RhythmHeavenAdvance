asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800917c \n\
/* 0800917c */ LDR R2, =0x04000200 @ !PossiblePointer \n\
/* 0800917e */ LDRH R1, [R2] \n\
/* 08009180 */ LDR R0, =0x0000fffd @ !PossiblePointer \n\
/* 08009182 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08009184 */ STRH R0, [R2] \n\
/* 08009186 */ LDR R2, =0x04000004 @ !PossiblePointer \n\
/* 08009188 */ LDRH R1, [R2] \n\
/* 0800918a */ LDR R0, =0x0000ffef @ !PossiblePointer \n\
/* 0800918c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800918e */ STRH R0, [R2] \n\
/* 08009190 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");