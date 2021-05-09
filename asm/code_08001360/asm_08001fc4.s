asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001fc4 \n\
/* 08001fc4 */ PUSH {R4, LR} \n\
/* 08001fc6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001fc8 */ BL func_08001b48 \n\
/* 08001fcc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001fce */ LDRB R0, [R4] \n\
/* 08001fd0 */ LSLS R0, R0, 0x1F \n\
/* 08001fd2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001fd4 */ BNE branch_08001fd8 \n\
/* 08001fd6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_08001fd8: \n\
/* 08001fd8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08001fda */ POP {R4} \n\
/* 08001fdc */ POP {R1} \n\
/* 08001fde */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");