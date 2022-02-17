asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080251fc \n\
/* 080251fc */ LDR R0, =s_f_drumdr_missMidiInfo \n\
/* 080251fe */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
