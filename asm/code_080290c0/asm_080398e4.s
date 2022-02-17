asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080398e4 \n\
/* 080398e4 */ PUSH {LR} \n\
/* 080398e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080398e8 */ BL func_0800c604 \n\
/* 080398ec */ BL func_0800c3b8 \n\
/* 080398f0 */ LSLS R0, R0, 0x10 \n\
/* 080398f2 */ LSRS R0, R0, 0x10 \n\
/* 080398f4 */ LDR R2, =D_089e6518 \n\
/* 080398f6 */ LDR R1, =D_030055d0 \n\
/* 080398f8 */ LDR R1, [R1] \n\
/* 080398fa */ LDRB R1, [R1] \n\
/* 080398fc */ LSLS R1, R1, 0x2 \n\
/* 080398fe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08039900 */ LDR R1, [R1] \n\
/* 08039902 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08039904 */ LSLS R2, R2, 0x6 \n\
/* 08039906 */ BL func_08002ee0 \n\
/* 0803990a */ LDR R1, =(func_080398d4 + 1) \n\
/* 0803990c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803990e */ BL func_08005d38 \n\
/* 08039912 */ POP {R0} \n\
/* 08039914 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
