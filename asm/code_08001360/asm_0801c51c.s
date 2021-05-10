asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801c51c \n\
/* 0801c51c */ LDR R2, =0x03001545 @ !PossiblePointer \n\
/* 0801c51e */ STRB R0, [R2] \n\
/* 0801c520 */ LDR R0, =0x03001546 @ !PossiblePointer \n\
/* 0801c522 */ STRB R1, [R0] \n\
/* 0801c524 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");