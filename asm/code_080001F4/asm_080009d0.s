asm("glabel func_080009d0 \n\
/* 080009d0 */ PUSH {R4, LR} \n\
/* 080009d2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080009d4 */ LDR R1, =D_08935fc4 \n\
/* 080009d6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080009d8 */ BL func_0800820c \n\
/* 080009dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080009de */ BNE branch_080009f4 \n\
/* 080009e0 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080009e2 */ LDRSH R1, [R4, R0] \n\
/* 080009e4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080009e6 */ LDRSH R0, [R4, R2] \n\
/* 080009e8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080009ea */ BNE branch_080009f4 \n\
/* 080009ec */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080009ee */ B branch_080009f6 \n\
 \n\
.ltorg \n\
 \n\
branch_080009f4: \n\
/* 080009f4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080009f6: \n\
/* 080009f6 */ POP {R4} \n\
/* 080009f8 */ POP {R1} \n\
/* 080009fa */ BX R1 \n\
");
