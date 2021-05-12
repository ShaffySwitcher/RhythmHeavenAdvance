asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001464 \n\
/* 08001464 */ PUSH {LR} \n\
/* 08001466 */ LDR R0, =0x04000130 @ !Hardware REG_KEY \n\
/* 08001468 */ LDRH R0, [R0] \n\
/* 0800146a */ MVNS R0, R0 @ Set R0 to ~R0 \n\
/* 0800146c */ LSLS R0, R0, 0x10 \n\
/* 0800146e */ LSRS R0, R0, 0x10 \n\
/* 08001470 */ BL func_080013f4 \n\
/* 08001474 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001476 */ BL func_0800142c \n\
/* 0800147a */ LDR R1, =D_030000a8 \n\
/* 0800147c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800147e */ STRB R0, [R1] \n\
/* 08001480 */ LDR R1, =D_030000ac \n\
/* 08001482 */ LDR R2, =0x3ff \n\
/* 08001484 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08001486 */ STRH R0, [R1] \n\
/* 08001488 */ POP {R0} \n\
/* 0800148a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
