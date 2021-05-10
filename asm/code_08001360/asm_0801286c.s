asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801286c \n\
/* 0801286c */ LDR R0, =0x03001320 @ !PossiblePointer \n\
/* 0801286e */ LDRB R0, [R0] \n\
/* 08012870 */ LSLS R0, R0, 0x18 \n\
/* 08012872 */ ASRS R0, R0, 0x18 \n\
/* 08012874 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");