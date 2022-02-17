asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044fcc \n\
/* 08044fcc */ PUSH {R4, LR} \n\
/* 08044fce */ SUB SP, 0x8 \n\
/* 08044fd0 */ LDR R0, [R1] \n\
/* 08044fd2 */ LDR R1, =0x08932d2c @ !PossiblePointer \n\
/* 08044fd4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08044fd6 */ STR R2, [SP] \n\
/* 08044fd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044fda */ STR R2, [SP, 0x4] \n\
/* 08044fdc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08044fde */ BL func_08010064 \n\
/* 08044fe2 */ LDR R2, =D_030055d0 \n\
/* 08044fe4 */ LDR R1, [R2] \n\
/* 08044fe6 */ MOVS R3, 0xD9 @ Set R3 to 0xD9 \n\
/* 08044fe8 */ LSLS R3, R3, 0x1 \n\
/* 08044fea */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08044fec */ LDRB R3, [R0] \n\
/* 08044fee */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08044ff0 */ BNE branch_08045026 \n\
/* 08044ff2 */ MOVS R4, 0xC4 @ Set R4 to 0xC4 \n\
/* 08044ff4 */ LSLS R4, R4, 0x1 \n\
/* 08044ff6 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 08044ff8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044ffa */ STRB R1, [R0] \n\
/* 08044ffc */ LDR R0, [R2] \n\
/* 08044ffe */ ADDS R4, 0x29 @ Add 0x29 to R4 \n\
/* 08045000 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 08045002 */ LDRB R0, [R1] \n\
/* 08045004 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08045006 */ BHI branch_0804500c \n\
/* 08045008 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804500a */ STRB R0, [R1] \n\
 \n\
branch_0804500c: \n\
/* 0804500c */ LDR R2, [R2] \n\
/* 0804500e */ MOVS R1, 0xC2 @ Set R1 to 0xC2 \n\
/* 08045010 */ LSLS R1, R1, 0x1 \n\
/* 08045012 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08045014 */ LDR R0, [R0] \n\
/* 08045016 */ LDR R1, =0x08932e64 @ !PossiblePointer \n\
/* 08045018 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804501a */ LDRB R2, [R2] \n\
/* 0804501c */ STR R3, [SP] \n\
/* 0804501e */ STR R3, [SP, 0x4] \n\
/* 08045020 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045022 */ BL func_08010064 \n\
 \n\
branch_08045026: \n\
/* 08045026 */ ADD SP, 0x8 \n\
/* 08045028 */ POP {R4} \n\
/* 0804502a */ POP {R0} \n\
/* 0804502c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
