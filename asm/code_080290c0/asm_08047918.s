asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08047918 \n\
/* 08047918 */ PUSH {LR} \n\
/* 0804791a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804791c */ BL func_0800c604 \n\
/* 08047920 */ BL func_08006d80 \n\
/* 08047924 */ BL func_0800c3b8 \n\
/* 08047928 */ LSLS R0, R0, 0x10 \n\
/* 0804792a */ LSRS R0, R0, 0x10 \n\
/* 0804792c */ LDR R1, =0x089ed820 @ !PossiblePointer \n\
/* 0804792e */ BL func_080087b4 \n\
/* 08047932 */ LDR R1, =0x080478e9 @ !PossiblePointer \n\
/* 08047934 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047936 */ BL func_08005d38 \n\
/* 0804793a */ POP {R0} \n\
/* 0804793c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
