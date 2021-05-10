asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080013a8 \n\
/* 080013a8 */ PUSH {LR} \n\
/* 080013aa */ SUB SP, 0x4 \n\
/* 080013ac */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080013ae */ LSLS R0, R0, 0x13 \n\
/* 080013b0 */ LDRH R1, [R0] \n\
/* 080013b2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080013b4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080013b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080013b8 */ BNE branch_080013d6 \n\
/* 080013ba */ B branch_080013ce \n\
 \n\
branch_080013bc: \n\
/* 080013bc */ BL func_08001964 \n\
/* 080013c0 */ LSLS R0, R0, 0x10 \n\
/* 080013c2 */ LSRS R0, R0, 0xE \n\
/* 080013c4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080013c6 */ LSLS R1, R1, 0x14 \n\
/* 080013c8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080013ca */ LDR R0, [R0] \n\
/* 080013cc */ STR R0, [SP] \n\
 \n\
branch_080013ce: \n\
/* 080013ce */ LDR R0, =D_03000098 \n\
/* 080013d0 */ LDRH R0, [R0] \n\
/* 080013d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080013d4 */ BEQ branch_080013bc \n\
 \n\
branch_080013d6: \n\
/* 080013d6 */ LDR R1, =0x03000098 @ !PossiblePointer \n\
/* 080013d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080013da */ STRH R0, [R1] \n\
/* 080013dc */ ADD SP, 0x4 \n\
/* 080013de */ POP {R0} \n\
/* 080013e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");