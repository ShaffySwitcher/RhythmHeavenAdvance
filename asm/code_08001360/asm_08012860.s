asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08012860 \n\
/* 08012860 */ LDR R1, =0x03001320 @ !PossiblePointer \n\
/* 08012862 */ STRB R0, [R1] \n\
/* 08012864 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");