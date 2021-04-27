asm("glabel func_08000804 \n\
/* 08000804 */ PUSH {R4, LR} \n\
/* 08000806 */ BL func_0804c96c \n\
/* 0800080a */ LDR R4, =D_030046a8 \n\
/* 0800080c */ BL func_0800074c \n\
/* 08000810 */ STR R0, [R4] \n\
/* 08000812 */ POP {R4} \n\
/* 08000814 */ POP {R0} \n\
/* 08000816 */ BX R0 \n\
 \n\
.ltorg \n\
");
