asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080449b4 \n\
/* 080449b4 */ PUSH {LR} \n\
/* 080449b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080449b8 */ BL func_0800c604 \n\
/* 080449bc */ BL func_0800c3b8 \n\
/* 080449c0 */ LSLS R0, R0, 0x10 \n\
/* 080449c2 */ LSRS R0, R0, 0x10 \n\
/* 080449c4 */ LDR R1, =0x089e9f14 @ !PossiblePointer \n\
/* 080449c6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080449c8 */ LSLS R2, R2, 0x6 \n\
/* 080449ca */ BL func_08002ee0 \n\
/* 080449ce */ LDR R1, =0x080449a5 @ !PossiblePointer \n\
/* 080449d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080449d2 */ BL func_08005d38 \n\
/* 080449d6 */ POP {R0} \n\
/* 080449d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
