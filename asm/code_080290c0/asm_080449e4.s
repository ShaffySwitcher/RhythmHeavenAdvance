asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080449e4 \n\
/* 080449e4 */ PUSH {LR} \n\
/* 080449e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080449e8 */ BL func_0800c604 \n\
/* 080449ec */ BL func_0800c3b8 \n\
/* 080449f0 */ LSLS R0, R0, 0x10 \n\
/* 080449f2 */ LSRS R0, R0, 0x10 \n\
/* 080449f4 */ LDR R1, =0x089e9f10 @ !PossiblePointer \n\
/* 080449f6 */ BL func_080087b4 \n\
/* 080449fa */ LDR R1, =0x080449b5 @ !PossiblePointer \n\
/* 080449fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080449fe */ BL func_08005d38 \n\
/* 08044a02 */ POP {R0} \n\
/* 08044a04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
