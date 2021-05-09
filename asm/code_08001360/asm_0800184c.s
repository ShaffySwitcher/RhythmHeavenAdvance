asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800184c \n\
/* 0800184c */ PUSH {LR} \n\
/* 0800184e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08001850 */ LDR R0, =D_030053b4 \n\
/* 08001852 */ LDR R1, =D_03005374 \n\
/* 08001854 */ LDR R2, [R0] \n\
/* 08001856 */ LDR R0, [R1] \n\
/* 08001858 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0800185a */ BCC branch_0800185e \n\
/* 0800185c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_0800185e: \n\
/* 0800185e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08001860 */ POP {R1} \n\
/* 08001862 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");