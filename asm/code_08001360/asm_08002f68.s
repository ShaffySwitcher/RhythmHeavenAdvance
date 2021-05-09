asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08002f68 \n\
/* 08002f68 */ LDR R2, =0x040000d4 @ !PossiblePointer \n\
/* 08002f6a */ LDR R1, =0x08000b2c @ !PossiblePointer \n\
/* 08002f6c */ STR R1, [R2] \n\
/* 08002f6e */ LDR R3, =0x030003e8 @ !PossiblePointer \n\
/* 08002f70 */ STR R3, [R2, 0x4] \n\
/* 08002f72 */ LDR R0, =0x08000cfc @ !PossiblePointer \n\
/* 08002f74 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08002f76 */ LSRS R0, R0, 0x2 \n\
/* 08002f78 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 08002f7a */ LSLS R1, R1, 0x18 \n\
/* 08002f7c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002f7e */ STR R0, [R2, 0x8] \n\
/* 08002f80 */ LDR R0, [R2, 0x8] \n\
/* 08002f82 */ LDR R0, =0x03004ae4 @ !PossiblePointer \n\
/* 08002f84 */ STR R3, [R0] \n\
/* 08002f86 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");