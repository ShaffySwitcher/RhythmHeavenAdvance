asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08040f10 \n\
/* 08040f10 */ PUSH {LR} \n\
/* 08040f12 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040f14 */ BL func_0800c604 \n\
/* 08040f18 */ BL func_0800c3b8 \n\
/* 08040f1c */ LSLS R0, R0, 0x10 \n\
/* 08040f1e */ LSRS R0, R0, 0x10 \n\
/* 08040f20 */ LDR R1, =0x089e8dd0 @ !PossiblePointer \n\
/* 08040f22 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08040f24 */ LSLS R2, R2, 0x6 \n\
/* 08040f26 */ BL func_08002ee0 \n\
/* 08040f2a */ LDR R1, =0x08040f01 @ !PossiblePointer \n\
/* 08040f2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040f2e */ BL func_08005d38 \n\
/* 08040f32 */ POP {R0} \n\
/* 08040f34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
