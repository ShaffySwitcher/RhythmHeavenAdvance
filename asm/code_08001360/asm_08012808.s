asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08012808 \n\
/* 08012808 */ LDR R1, =0x0300131c @ !PossiblePointer \n\
/* 0801280a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801280c */ STRB R0, [R1] \n\
/* 0801280e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");