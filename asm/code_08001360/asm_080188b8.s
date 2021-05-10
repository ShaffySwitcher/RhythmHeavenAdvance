asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080188b8 \n\
/* 080188b8 */ PUSH {LR} \n\
/* 080188ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080188bc */ BL func_0800c604 \n\
/* 080188c0 */ BL func_0800c3b8 \n\
/* 080188c4 */ LSLS R0, R0, 0x10 \n\
/* 080188c6 */ LSRS R0, R0, 0x10 \n\
/* 080188c8 */ LDR R1, =0x089d757c @ !PossiblePointer \n\
/* 080188ca */ BL func_080087b4 \n\
/* 080188ce */ LDR R1, =0x0800bd05 @ !PossiblePointer \n\
/* 080188d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080188d2 */ BL func_08005d38 \n\
/* 080188d6 */ POP {R0} \n\
/* 080188d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");