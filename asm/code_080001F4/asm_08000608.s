asm(".section .text \n\
\n\
.syntax unified \n\
\n\
.include \"include/gba.inc\" \n\
\n\
.balign 4, 0 \n\
glabel func_08000608 \n\
/* 08000608 */ PUSH {LR} \n\
/* 0800060a */ LDR R0, =D_03000000 \n\
/* 0800060c */ LDR R0, [R0] \n\
/* 0800060e */ BL func_080005e0 \n\
/* 08000612 */ POP {R1} \n\
/* 08000614 */ BX R1 \n\
 \n\
.ltorg \n\
");
