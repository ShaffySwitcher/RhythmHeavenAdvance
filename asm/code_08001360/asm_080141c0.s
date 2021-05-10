asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080141c0 \n\
/* 080141c0 */ LDR R2, =0x030055d4 @ !PossiblePointer \n\
/* 080141c2 */ STR R0, [R2] \n\
/* 080141c4 */ LDR R0, =0x03005590 @ !PossiblePointer \n\
/* 080141c6 */ STR R1, [R0] \n\
/* 080141c8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");