asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039a98 \n\
/* 08039a98 */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 08039a9a */ LDR R1, [R1] \n\
/* 08039a9c */ STRB R0, [R1, 0x14] \n\
/* 08039a9e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
