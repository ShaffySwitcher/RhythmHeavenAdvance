asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080091c4 \n\
/* 080091c4 */ LDR R2, =0x030010fc @ !PossiblePointer \n\
/* 080091c6 */ STR R0, [R2] \n\
/* 080091c8 */ LDR R0, =0x03001100 @ !PossiblePointer \n\
/* 080091ca */ STR R1, [R0] \n\
/* 080091cc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");