asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800b564 \n\
/* 0800b564 */ LDR R0, =0x03001304 @ !PossiblePointer \n\
/* 0800b566 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800b568 */ STR R1, [R0] \n\
/* 0800b56a */ LDR R0, =0x03001308 @ !PossiblePointer \n\
/* 0800b56c */ STR R1, [R0] \n\
/* 0800b56e */ LDR R2, =0x0300130e @ !PossiblePointer \n\
/* 0800b570 */ LDR R0, =0x04000130 @ !PossiblePointer \n\
/* 0800b572 */ LDRH R0, [R0] \n\
/* 0800b574 */ STRH R0, [R2] \n\
/* 0800b576 */ LDR R0, =0x0300130c @ !PossiblePointer \n\
/* 0800b578 */ STRH R1, [R0] \n\
/* 0800b57a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");