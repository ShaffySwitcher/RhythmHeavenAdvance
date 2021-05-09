asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800921c \n\
/* 0800921c */ LDR R2, =0x04000200 @ !PossiblePointer \n\
/* 0800921e */ LDRH R1, [R2] \n\
/* 08009220 */ LDR R0, =0x0000fffb @ !PossiblePointer \n\
/* 08009222 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08009224 */ STRH R0, [R2] \n\
/* 08009226 */ LDR R2, =0x04000004 @ !PossiblePointer \n\
/* 08009228 */ LDRH R1, [R2] \n\
/* 0800922a */ MOVS R0, 0xDF @ Set R0 to 0xDF \n\
/* 0800922c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800922e */ STRH R0, [R2] \n\
/* 08009230 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");