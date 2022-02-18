asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080450e8 \n\
/* 080450e8 */ PUSH {R4, LR} \n\
/* 080450ea */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080450ec */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080450ee */ BEQ branch_080450fe \n\
/* 080450f0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080450f2 */ BL func_08017448 \n\
/* 080450f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080450f8 */ BL func_08017458 \n\
/* 080450fc */ B branch_08045104 \n\
 \n\
branch_080450fe: \n\
/* 080450fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045100 */ BL func_08017448 \n\
 \n\
branch_08045104: \n\
/* 08045104 */ POP {R4} \n\
/* 08045106 */ POP {R0} \n\
/* 08045108 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
