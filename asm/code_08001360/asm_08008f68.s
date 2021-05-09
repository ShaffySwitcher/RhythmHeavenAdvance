asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08008f68 \n\
/* 08008f68 */ LDR R0, =0x030010f4 @ !PossiblePointer \n\
/* 08008f6a */ LDR R0, [R0] \n\
/* 08008f6c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");