asm("glabel func_080005f4 \n\
/* 080005f4 */ PUSH {LR} \n\
/* 080005f6 */ BL func_080005b8 \n\
/* 080005fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080005fc */ BEQ branch_08000602 \n\
/* 080005fe */ LDR R0, [R0, 0x8] \n\
/* 08000600 */ B branch_08000604 \n\
 \n\
branch_08000602: \n\
/* 08000602 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08000604: \n\
/* 08000604 */ POP {R1} \n\
/* 08000606 */ BX R1 \n\
");
