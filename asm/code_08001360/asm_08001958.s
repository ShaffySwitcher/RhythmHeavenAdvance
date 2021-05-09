asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001958 \n\
/* 08001958 */ LDR R1, =0x030000b4 @ !PossiblePointer \n\
/* 0800195a */ STRH R0, [R1] \n\
/* 0800195c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");