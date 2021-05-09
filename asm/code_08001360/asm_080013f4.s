asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080013f4 \n\
/* 080013f4 */ LSLS R0, R0, 0x10 \n\
/* 080013f6 */ LSRS R0, R0, 0x10 \n\
/* 080013f8 */ LDR R1, =D_03004ac0 \n\
/* 080013fa */ STRH R0, [R1] \n\
/* 080013fc */ LDR R1, =D_03004afc \n\
/* 080013fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08001400 */ STRH R2, [R1] \n\
/* 08001402 */ LDR R1, =D_030053b8 \n\
/* 08001404 */ STRH R2, [R1] \n\
/* 08001406 */ LDR R1, =D_03004b00 \n\
/* 08001408 */ STRH R2, [R1] \n\
/* 0800140a */ LDR R1, =D_030000a0 \n\
/* 0800140c */ STRH R0, [R1] \n\
/* 0800140e */ LDR R0, =D_030000a2 \n\
/* 08001410 */ STRH R2, [R0] \n\
/* 08001412 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");