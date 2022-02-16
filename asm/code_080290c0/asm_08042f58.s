asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08042f58 \n\
/* 08042f58 */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 08042f5a */ LDR R1, [R1] \n\
/* 08042f5c */ LDR R2, =0x0000012f @ !PossiblePointer \n\
/* 08042f5e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042f60 */ STRB R0, [R1] \n\
/* 08042f62 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
