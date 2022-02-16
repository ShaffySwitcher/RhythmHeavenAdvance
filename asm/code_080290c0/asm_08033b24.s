asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08033b24 \n\
/* 08033b24 */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 08033b26 */ LDR R1, [R1] \n\
/* 08033b28 */ ADDS R1, 0x90 @ Add 0x90 to R1 \n\
/* 08033b2a */ STRB R0, [R1] \n\
/* 08033b2c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
