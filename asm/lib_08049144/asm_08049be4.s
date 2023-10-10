asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start midi_equalizer_reset \n\
/* 08049be4 */ PUSH {LR} \n\
/* 08049be6 */ LDR R0, =D_03005b44 \n\
/* 08049be8 */ LDRB R0, [R0] \n\
/* 08049bea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049bec */ BNE branch_08049bf2 \n\
/* 08049bee */ BL midi_equalizer_init \n\
 \n\
branch_08049bf2: \n\
/* 08049bf2 */ POP {R0} \n\
/* 08049bf4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
