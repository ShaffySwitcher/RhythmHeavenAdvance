asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026b18 \n\
/* 08026b18 */ LDR R0, =0x03001564 @ !PossiblePointer \n\
/* 08026b1a */ LDRB R0, [R0] \n\
/* 08026b1c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");