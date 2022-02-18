asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044e60 \n\
/* 08044e60 */ LDR R1, =D_030055d0 \n\
/* 08044e62 */ LDR R1, [R1] \n\
/* 08044e64 */ MOVS R2, 0xD9 @ Set R2 to 0xD9 \n\
/* 08044e66 */ LSLS R2, R2, 0x1 \n\
/* 08044e68 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044e6a */ STRB R0, [R1] \n\
/* 08044e6c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
