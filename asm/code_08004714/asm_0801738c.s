asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801738c \n\
/* 0801738c */ PUSH {R4, R5, LR} \n\
/* 0801738e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08017390 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08017392 */ LDR R1, =D_030046a4 \n\
/* 08017394 */ LDR R3, [R1] \n\
/* 08017396 */ LDR R2, [R3, 0x10] \n\
/* 08017398 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0801739a */ BEQ branch_080173a4 \n\
/* 0801739c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801739e */ B branch_080173be \n\
\n\
.ltorg \n\
 \n\
branch_080173a4: \n\
/* 080173a4 */ LDR R1, [R2, 0x18] \n\
/* 080173a6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080173a8 */ BEQ branch_080173bc \n\
/* 080173aa */ LSLS R0, R4, 0x2 \n\
/* 080173ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080173ae */ LDR R1, [R0] \n\
/* 080173b0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080173b2 */ BEQ branch_080173bc \n\
/* 080173b4 */ LDR R0, [R3, 0x60] \n\
/* 080173b6 */ BL func_0804eaf0 \n\
/* 080173ba */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_080173bc: \n\
/* 080173bc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
 \n\
branch_080173be: \n\
/* 080173be */ POP {R4, R5} \n\
/* 080173c0 */ POP {R1} \n\
/* 080173c2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
