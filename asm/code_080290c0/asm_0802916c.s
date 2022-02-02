asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802916c \n\
/* 0802916c */ LSLS R5, R1, 0xF \n\
/* 0802916e */ LSLS R0, R0, 0x0 \n\
/* 08029170 */ LSLS R7, R7, 0xF \n\
/* 08029172 */ LSLS R0, R0, 0x0 \n\
/* 08029174 */ CMP R2, 0xD4 @ Compare R2 and 0xD4 \n\
/* 08029176 */ LSRS R6, R3, 0x2 \n\
/* 08029178 */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 0802917a */ LDR R1, [R1] \n\
/* 0802917c */ LDR R2, =0x000003ce @ !PossiblePointer \n\
/* 0802917e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029180 */ STRB R0, [R1] \n\
/* 08029182 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");