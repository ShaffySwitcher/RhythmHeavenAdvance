asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08048150 \n\
/* 08048150 */ PUSH {LR} \n\
/* 08048152 */ LDR R1, =s_studio_bgmMidiInfo \n\
/* 08048154 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08048156 */ BL func_0800267c \n\
/* 0804815a */ POP {R0} \n\
/* 0804815c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
