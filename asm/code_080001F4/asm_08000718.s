asm(".section .text \n\
\n\
.syntax unified \n\
\n\
.include \"include/gba.inc\" \n\
\n\
.balign 4, 0 \n\
glabel func_08000718 \n\
/* 08000718 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0800071a */ LDR R2, =0xFFFC \n\
/* 0800071c */ LDR R1, =0xEC1 \n\
/* 0800071e */ LDR R0, =D_0300008c \n\
/* 08000720 */ STRH R3, [R0] \n\
/* 08000722 */ ADDS R3, R1, 0x4 @ Set R3 to R1 + 0x4 \n\
/* 08000724 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 08000726 */ LDR R0, =D_0300008e \n\
/* 08000728 */ STRH R3, [R0] \n\
/* 0800072a */ LDR R0, =D_03000090 \n\
/* 0800072c */ STRH R3, [R0] \n\
/* 0800072e */ LDR R0, =D_03000092 \n\
/* 08000730 */ STRH R2, [R0] \n\
/* 08000732 */ BX LR \n\
 \n\
.ltorg \n\
");
