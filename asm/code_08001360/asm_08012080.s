asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08012080 \n\
/* 08012080 */ STRH R0, [R0, R6] \n\
/* 08012082 */ LSLS R0, R0, 0xC \n\
/* 08012084 */ PUSH {LR} \n\
/* 08012086 */ BL func_08011fa8 \n\
/* 0801208a */ POP {R0} \n\
/* 0801208c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");