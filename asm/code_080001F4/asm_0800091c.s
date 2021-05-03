asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
glabel func_0800091c \n\
/* 0800091c */ LDR R1, =D_030046a8 \n\
/* 0800091e */ LDR R1, [R1] \n\
/* 08000920 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08000922 */ BX LR \n\
 \n\
.ltorg \n\
");
