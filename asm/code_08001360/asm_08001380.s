asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001380 \n\
/* 08001380 */ PUSH {LR} \n\
/* 08001382 */ BL func_08006e00 \n\
/* 08001386 */ BL func_08003f50 \n\
/* 0800138a */ LDR R0, =D_0300009c \n\
/* 0800138c */ LDR R0, [R0] \n\
/* 0800138e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001390 */ BEQ branch_08001396 \n\
/* 08001392 */ BL func_0804eaec \n\
 \n\
branch_08001396: \n\
/* 08001396 */ LDR R1, =D_03000098 \n\
/* 08001398 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800139a */ STRH R0, [R1] \n\
/* 0800139c */ POP {R0} \n\
/* 0800139e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");