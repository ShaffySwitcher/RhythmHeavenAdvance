asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044fc0 \n\
/* 08044fc0 */ PUSH {LR} \n\
/* 08044fc2 */ LDR R0, [R1] \n\
/* 08044fc4 */ BL func_0800fc70 \n\
/* 08044fc8 */ POP {R0} \n\
/* 08044fca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
