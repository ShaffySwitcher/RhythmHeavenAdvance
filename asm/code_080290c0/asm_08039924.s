asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039924 \n\
/* 08039924 */ PUSH {LR} \n\
/* 08039926 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039928 */ BL func_0800c604 \n\
/* 0803992c */ BL func_0800c3b8 \n\
/* 08039930 */ LSLS R0, R0, 0x10 \n\
/* 08039932 */ LSRS R0, R0, 0x10 \n\
/* 08039934 */ LDR R1, =0x089e6424 @ !PossiblePointer \n\
/* 08039936 */ BL func_080087b4 \n\
/* 0803993a */ LDR R1, =0x080398e5 @ !PossiblePointer \n\
/* 0803993c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803993e */ BL func_08005d38 \n\
/* 08039942 */ POP {R0} \n\
/* 08039944 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
