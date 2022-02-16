asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044b80 \n\
/* 08044b80 */ PUSH {R4, LR} \n\
/* 08044b82 */ LDR R4, =0x030055d0 @ !PossiblePointer \n\
/* 08044b84 */ LDR R1, [R4] \n\
/* 08044b86 */ MOVS R2, 0xD2 @ Set R2 to 0xD2 \n\
/* 08044b88 */ LSLS R2, R2, 0x1 \n\
/* 08044b8a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044b8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044b8e */ STR R2, [R1] \n\
/* 08044b90 */ BL func_0800c3a4 \n\
/* 08044b94 */ LDR R1, [R4] \n\
/* 08044b96 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044b98 */ LSLS R2, R2, 0x1 \n\
/* 08044b9a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044b9c */ STR R0, [R1] \n\
/* 08044b9e */ POP {R4} \n\
/* 08044ba0 */ POP {R0} \n\
/* 08044ba2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
