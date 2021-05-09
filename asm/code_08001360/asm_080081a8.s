asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080081a8 \n\
/* 080081a8 */ PUSH {LR} \n\
/* 080081aa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080081ac */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 080081ae */ LDRB R0, [R3] \n\
/* 080081b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081b2 */ BEQ branch_080081c4 \n\
 \n\
branch_080081b4: \n\
/* 080081b4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080081b6 */ LDRB R0, [R2] \n\
/* 080081b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081ba */ BNE branch_080081b4 \n\
/* 080081bc */ B branch_080081c4 \n\
 \n\
branch_080081be: \n\
/* 080081be */ STRB R0, [R2] \n\
/* 080081c0 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080081c2 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_080081c4: \n\
/* 080081c4 */ LDRB R0, [R1] \n\
/* 080081c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081c8 */ BNE branch_080081be \n\
/* 080081ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080081cc */ STRB R0, [R2] \n\
/* 080081ce */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080081d0 */ POP {R1} \n\
/* 080081d2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");