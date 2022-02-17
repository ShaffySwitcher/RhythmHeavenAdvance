asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044f94 \n\
/* 08044f94 */ PUSH {R4, LR} \n\
/* 08044f96 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08044f98 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08044f9a */ BL func_0800c3a4 \n\
/* 08044f9e */ LDR R1, =D_030055d0 \n\
/* 08044fa0 */ LDR R1, [R1] \n\
/* 08044fa2 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044fa4 */ LSLS R2, R2, 0x1 \n\
/* 08044fa6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044fa8 */ LDR R1, [R1] \n\
/* 08044faa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08044fac */ CMP R4, R1 @ Check R4 - R1 \n\
/* 08044fae */ BHI branch_08044fb8 \n\
/* 08044fb0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044fb2 */ B branch_08044fba \n\
\n\
.ltorg \n\
 \n\
branch_08044fb8: \n\
/* 08044fb8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08044fba: \n\
/* 08044fba */ POP {R4} \n\
/* 08044fbc */ POP {R1} \n\
/* 08044fbe */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
