asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08004574 \n\
/* 08004574 */ PUSH {R4, LR} \n\
/* 08004576 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004578 */ LDR R0, [R4, 0xC] \n\
/* 0800457a */ BL func_08006694 \n\
/* 0800457e */ LDR R0, [R4, 0x10] \n\
/* 08004580 */ BL func_08006694 \n\
/* 08004584 */ LDR R0, [R4, 0x18] \n\
/* 08004586 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004588 */ BEQ branch_0800458e \n\
/* 0800458a */ BL func_08006694 \n\
 \n\
branch_0800458e: \n\
/* 0800458e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004590 */ BL func_08006694 \n\
/* 08004594 */ POP {R4} \n\
/* 08004596 */ POP {R0} \n\
/* 08004598 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
