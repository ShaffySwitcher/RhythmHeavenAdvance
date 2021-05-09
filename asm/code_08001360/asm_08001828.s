asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001828 \n\
/* 08001828 */ PUSH {LR} \n\
/* 0800182a */ LDR R0, =D_030053b4 \n\
/* 0800182c */ LDR R1, =D_03005374 \n\
/* 0800182e */ LDR R2, [R0] \n\
/* 08001830 */ LDR R0, [R1] \n\
/* 08001832 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08001834 */ BCC branch_08001844 \n\
/* 08001836 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08001838 */ B branch_08001846 \n\
\n\
.ltorg \n\
 \n\
branch_08001844: \n\
/* 08001844 */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
 \n\
branch_08001846: \n\
/* 08001846 */ POP {R1} \n\
/* 08001848 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");