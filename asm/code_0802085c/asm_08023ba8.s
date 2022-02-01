asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08023ba8 \n\
/* 08023ba8 */ LDR R1, [PC, 0x260] @ 0x08023e0c \n\
/* 08023baa */ LSRS R1, R2, 0x2 \n\
/* 08023bac */ LDR R1, [PC, 0x80] @ 0x08023c30 \n\
/* 08023bae */ LSRS R1, R2, 0x2 \n\
/* 08023bb0 */ LDR R0, [PC, 0x320] @ 0x08023ed4 \n\
/* 08023bb2 */ LSRS R1, R2, 0x2 \n\
/* 08023bb4 */ LDR R1, [PC, 0x3E0] @ 0x08023f98 \n\
/* 08023bb6 */ LSRS R1, R2, 0x2 \n\
/* 08023bb8 */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 08023bba */ LDR R1, [R1] \n\
/* 08023bbc */ MOVS R2, 0xEB @ Set R2 to 0xEB \n\
/* 08023bbe */ LSLS R2, R2, 0x2 \n\
/* 08023bc0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023bc2 */ STR R0, [R1] \n\
/* 08023bc4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");