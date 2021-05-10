asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080127fc \n\
/* 080127fc */ LDR R1, =0x0300131c @ !PossiblePointer \n\
/* 080127fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012800 */ STRB R0, [R1] \n\
/* 08012802 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");