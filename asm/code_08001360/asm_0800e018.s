asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800e018 \n\
/* 0800e018 */ LDR R3, =0x03004b10 @ !PossiblePointer \n\
/* 0800e01a */ LDRH R2, [R3] \n\
/* 0800e01c */ LDR R1, =0x0000fff8 @ !PossiblePointer \n\
/* 0800e01e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800e020 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800e022 */ STRH R1, [R3] \n\
/* 0800e024 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");