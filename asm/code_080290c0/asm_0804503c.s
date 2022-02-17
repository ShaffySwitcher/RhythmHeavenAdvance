asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0804503c \n\
/* 0804503c */ PUSH {R4, R5, LR} \n\
/* 0804503e */ SUB SP, 0x8 \n\
/* 08045040 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08045042 */ BL func_08018054 \n\
/* 08045046 */ MVNS R0, R0 @ Set R0 to ~R0 \n\
/* 08045048 */ LSRS R4, R0, 0x1F \n\
/* 0804504a */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804504c */ LDRSH R1, [R5, R0] \n\
/* 0804504e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08045050 */ LSLS R0, R0, 0x2 \n\
/* 08045052 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08045054 */ BLE branch_0804505a \n\
/* 08045056 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045058 */ EORS R4, R0 @ Set R4 to R4 ^ R0 \n\
 \n\
branch_0804505a: \n\
/* 0804505a */ LDR R0, [R5] \n\
/* 0804505c */ LDR R1, =0x08932cbc @ !PossiblePointer \n\
/* 0804505e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08045060 */ STR R2, [SP] \n\
/* 08045062 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045064 */ STR R2, [SP, 0x4] \n\
/* 08045066 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08045068 */ BL func_08010064 \n\
/* 0804506c */ LDR R0, [R5] \n\
/* 0804506e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08045070 */ BL func_0800ff44 \n\
/* 08045074 */ LDR R2, =D_030055d0 \n\
/* 08045076 */ LDR R1, [R2] \n\
/* 08045078 */ MOVS R3, 0xD9 @ Set R3 to 0xD9 \n\
/* 0804507a */ LSLS R3, R3, 0x1 \n\
/* 0804507c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0804507e */ LDRB R3, [R0] \n\
/* 08045080 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08045082 */ BNE branch_080450b8 \n\
/* 08045084 */ MOVS R4, 0xC4 @ Set R4 to 0xC4 \n\
/* 08045086 */ LSLS R4, R4, 0x1 \n\
/* 08045088 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0804508a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804508c */ STRB R1, [R0] \n\
/* 0804508e */ LDR R0, [R2] \n\
/* 08045090 */ ADDS R4, 0x29 @ Add 0x29 to R4 \n\
/* 08045092 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 08045094 */ LDRB R0, [R1] \n\
/* 08045096 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08045098 */ BEQ branch_0804509e \n\
/* 0804509a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0804509c */ STRB R0, [R1] \n\
 \n\
branch_0804509e: \n\
/* 0804509e */ LDR R2, [R2] \n\
/* 080450a0 */ MOVS R1, 0xC2 @ Set R1 to 0xC2 \n\
/* 080450a2 */ LSLS R1, R1, 0x1 \n\
/* 080450a4 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 080450a6 */ LDR R0, [R0] \n\
/* 080450a8 */ LDR R1, =0x08932ea4 @ !PossiblePointer \n\
/* 080450aa */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080450ac */ LDRB R2, [R2] \n\
/* 080450ae */ STR R3, [SP] \n\
/* 080450b0 */ STR R3, [SP, 0x4] \n\
/* 080450b2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080450b4 */ BL func_08010064 \n\
 \n\
branch_080450b8: \n\
/* 080450b8 */ BL func_0800bc40 \n\
/* 080450bc */ ADD SP, 0x8 \n\
/* 080450be */ POP {R4, R5} \n\
/* 080450c0 */ POP {R0} \n\
/* 080450c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
