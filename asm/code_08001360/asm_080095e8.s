asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080095e8 \n\
/* 080095e8 */ LDR R1, =0x03005370 @ !PossiblePointer \n\
/* 080095ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080095ec */ STRH R2, [R1] \n\
/* 080095ee */ LDR R1, =0x03004af4 @ !PossiblePointer \n\
/* 080095f0 */ STRH R2, [R1] \n\
/* 080095f2 */ LDR R1, =0x030046b0 @ !PossiblePointer \n\
/* 080095f4 */ STRH R0, [R1] \n\
/* 080095f6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");