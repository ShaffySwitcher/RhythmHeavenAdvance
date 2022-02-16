asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080398b4 \n\
/* 080398b4 */ LDR R1, =0x089e63f8 @ !PossiblePointer \n\
/* 080398b6 */ LSLS R0, R0, 0x2 \n\
/* 080398b8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080398ba */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 080398bc */ LDR R1, [R1] \n\
/* 080398be */ LDRB R1, [R1] \n\
/* 080398c0 */ LDR R0, [R0] \n\
/* 080398c2 */ LSLS R1, R1, 0x2 \n\
/* 080398c4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080398c6 */ LDR R0, [R1] \n\
/* 080398c8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
