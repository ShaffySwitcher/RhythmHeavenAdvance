asm(".section .text \n\
\n\
.syntax unified \n\
\n\
.include \"include/gba.inc\" \n\
\n\
glabel func_080001F4_stub \n\
/* 080001f4 */ BX LR \n\
\n\
.hword 0 \n\
");
