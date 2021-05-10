asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080191ac \n\
/* 080191ac */ LDR R1, =0x03001540 @ !PossiblePointer \n\
/* 080191ae */ STRB R0, [R1] \n\
/* 080191b0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");