asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025220 \n\
/* 08025220 */ LDR R0, =s_f_drumdr_missMidiInfo \n\
/* 08025222 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
