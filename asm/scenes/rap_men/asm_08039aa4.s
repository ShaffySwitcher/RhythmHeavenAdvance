asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039aa4 \n\
/* 08039aa4 */ PUSH {LR} \n\
/* 08039aa6 */ LDR R2, =D_030055d0 \n\
/* 08039aa8 */ LDR R1, [R2] \n\
/* 08039aaa */ LDRH R0, [R1, 0xE] \n\
/* 08039aac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08039aae */ BEQ branch_08039ab4 \n\
/* 08039ab0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08039ab2 */ STRH R0, [R1, 0xE] \n\
 \n\
branch_08039ab4: \n\
/* 08039ab4 */ LDR R1, [R2] \n\
/* 08039ab6 */ LDRH R0, [R1, 0x10] \n\
/* 08039ab8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08039aba */ BEQ branch_08039ac0 \n\
/* 08039abc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08039abe */ STRH R0, [R1, 0x10] \n\
 \n\
branch_08039ac0: \n\
/* 08039ac0 */ LDR R1, [R2] \n\
/* 08039ac2 */ LDRH R0, [R1, 0x12] \n\
/* 08039ac4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08039ac6 */ BEQ branch_08039acc \n\
/* 08039ac8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08039aca */ STRH R0, [R1, 0x12] \n\
 \n\
branch_08039acc: \n\
/* 08039acc */ POP {R0} \n\
/* 08039ace */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
