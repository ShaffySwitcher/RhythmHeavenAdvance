asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08006580 \n\
/* 08006580 */ PUSH {LR} \n\
/* 08006582 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08006584 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08006586 */ BL func_08006590 \n\
/* 0800658a */ POP {R1} \n\
/* 0800658c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
