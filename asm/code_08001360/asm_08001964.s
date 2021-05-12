asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001964 \n\
/* 08001964 */ LDR R1, =D_030000b4 \n\
/* 08001966 */ LDRH R2, [R1] \n\
/* 08001968 */ MOVS R0, 0x6D @ Set R0 to 0x6D \n\
/* 0800196a */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800196c */ LDR R2, =0x3fd \n\
/* 0800196e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08001970 */ STRH R0, [R1] \n\
/* 08001972 */ LDRH R0, [R1] \n\
/* 08001974 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
