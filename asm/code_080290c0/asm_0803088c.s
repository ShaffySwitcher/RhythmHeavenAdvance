asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0803088c \n\
/* 0803088c */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 0803088e */ LDR R1, [R1] \n\
/* 08030890 */ STRH R0, [R1, 0x18] \n\
/* 08030892 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
