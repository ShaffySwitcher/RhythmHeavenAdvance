asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080179f4 \n\
/* 080179f4 */ PUSH {R4-R7, LR} \n\
/* 080179f6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080179f8 */ PUSH {R7} \n\
/* 080179fa */ SUB SP, 0x4 \n\
/* 080179fc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080179fe */ LDR R0, =0x030046a4 @ !PossiblePointer \n\
/* 08017a00 */ LDR R2, [R0] \n\
/* 08017a02 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08017a04 */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 08017a06 */ LDRB R0, [R0] \n\
/* 08017a08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017a0a */ BNE branch_08017a0e \n\
/* 08017a0c */ B branch_08017b28 \n\
 \n\
branch_08017a0e: \n\
/* 08017a0e */ LSLS R1, R1, 0x2 \n\
/* 08017a10 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08017a12 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 08017a14 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08017a16 */ LDR R7, [R0] \n\
/* 08017a18 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08017a1a */ BNE branch_08017a1e \n\
/* 08017a1c */ B branch_08017b28 \n\
 \n\
branch_08017a1e: \n\
/* 08017a1e */ MOVS R0, 0x6C @ Set R0 to 0x6C \n\
/* 08017a20 */ BL func_08006580 \n\
/* 08017a24 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017a26 */ LDR R0, [R7, 0xC] \n\
/* 08017a28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017a2a */ BEQ branch_08017a30 \n\
/* 08017a2c */ BL func_08006580 \n\
 \n\
branch_08017a30: \n\
/* 08017a30 */ STR R0, [R4, 0x64] \n\
/* 08017a32 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08017a34 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08017a36 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08017a38 */ LSLS R0, R0, 0x2 \n\
/* 08017a3a */ STR R0, [SP] \n\
/* 08017a3c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08017a3e */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08017a40 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08017a42 */ BL func_0800186c \n\
/* 08017a46 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08017a48 */ ADDS R2, 0x48 @ Add 0x48 to R2 \n\
/* 08017a4a */ LDRB R1, [R2] \n\
/* 08017a4c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08017a4e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08017a50 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017a52 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08017a54 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08017a56 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017a58 */ STRB R0, [R2] \n\
/* 08017a5a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017a5c */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08017a5e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08017a60 */ STRH R6, [R0] \n\
/* 08017a62 */ LDR R5, =0x030046a4 @ !PossiblePointer \n\
/* 08017a64 */ LDR R0, [R5] \n\
/* 08017a66 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017a68 */ ADDS R1, 0x86 @ Add 0x86 to R1 \n\
/* 08017a6a */ LDRH R0, [R1] \n\
/* 08017a6c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017a6e */ BEQ branch_08017a88 \n\
/* 08017a70 */ BL func_0800c3a4 \n\
/* 08017a74 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08017a76 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08017a78 */ STRH R0, [R1] \n\
/* 08017a7a */ LDR R0, [R5] \n\
/* 08017a7c */ ADDS R0, 0x86 @ Add 0x86 to R0 \n\
/* 08017a7e */ STRH R6, [R0] \n\
/* 08017a80 */ B branch_08017a94 \n\
\n\
.ltorg \n\
 \n\
branch_08017a88: \n\
/* 08017a88 */ LDRH R0, [R7, 0x4] \n\
/* 08017a8a */ BL func_0800c3a4 \n\
/* 08017a8e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08017a90 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08017a92 */ STRH R0, [R1] \n\
 \n\
branch_08017a94: \n\
/* 08017a94 */ LDR R0, =0x030046a4 @ !PossiblePointer \n\
/* 08017a96 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08017a98 */ LDR R0, [R0] \n\
/* 08017a9a */ LDR R1, [R0, 0x68] \n\
/* 08017a9c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017a9e */ BNE branch_08017aa2 \n\
/* 08017aa0 */ LDR R1, [R7, 0x2C] \n\
 \n\
branch_08017aa2: \n\
/* 08017aa2 */ STR R1, [R4, 0x54] \n\
/* 08017aa4 */ LDR R1, [R0, 0x6C] \n\
/* 08017aa6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017aa8 */ BNE branch_08017aac \n\
/* 08017aaa */ LDR R1, [R7, 0x30] \n\
 \n\
branch_08017aac: \n\
/* 08017aac */ STR R1, [R4, 0x58] \n\
/* 08017aae */ LDR R1, [R0, 0x70] \n\
/* 08017ab0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017ab2 */ BNE branch_08017ab6 \n\
/* 08017ab4 */ LDR R1, [R7, 0x34] \n\
 \n\
branch_08017ab6: \n\
/* 08017ab6 */ STR R1, [R4, 0x5C] \n\
/* 08017ab8 */ LDR R1, [R0, 0x74] \n\
/* 08017aba */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017abc */ BNE branch_08017ac0 \n\
/* 08017abe */ LDR R1, [R7, 0x38] \n\
 \n\
branch_08017ac0: \n\
/* 08017ac0 */ STR R1, [R4, 0x60] \n\
/* 08017ac2 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 08017ac4 */ LDRB R1, [R0] \n\
/* 08017ac6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017ac8 */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08017aca */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08017acc */ STRB R1, [R0] \n\
/* 08017ace */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08017ad0 */ LDR R0, [R1] \n\
/* 08017ad2 */ STR R6, [R0, 0x68] \n\
/* 08017ad4 */ STR R6, [R0, 0x6C] \n\
/* 08017ad6 */ STR R6, [R0, 0x70] \n\
/* 08017ad8 */ STR R6, [R0, 0x74] \n\
/* 08017ada */ LDR R5, [R0, 0x18] \n\
/* 08017adc */ STR R6, [R4] \n\
/* 08017ade */ STR R5, [R4, 0x4] \n\
/* 08017ae0 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08017ae2 */ BEQ branch_08017ae6 \n\
/* 08017ae4 */ STR R4, [R5] \n\
 \n\
branch_08017ae6: \n\
/* 08017ae6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08017ae8 */ LDR R0, [R1] \n\
/* 08017aea */ STR R4, [R0, 0x18] \n\
/* 08017aec */ ADDS R0, 0x5D @ Add 0x5D to R0 \n\
/* 08017aee */ STRB R6, [R0] \n\
/* 08017af0 */ LDR R3, [R7, 0x10] \n\
/* 08017af2 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08017af4 */ BEQ branch_08017b00 \n\
/* 08017af6 */ LDR R1, [R4, 0x64] \n\
/* 08017af8 */ LDR R2, [R7, 0x14] \n\
/* 08017afa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017afc */ BL func_0804eaf8 \n\
 \n\
branch_08017b00: \n\
/* 08017b00 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08017b02 */ LDR R1, [R0] \n\
/* 08017b04 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08017b06 */ ADDS R0, 0x5D @ Add 0x5D to R0 \n\
/* 08017b08 */ LDRB R0, [R0] \n\
/* 08017b0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017b0c */ BEQ branch_08017b20 \n\
/* 08017b0e */ STR R5, [R1, 0x18] \n\
/* 08017b10 */ STR R6, [R5] \n\
/* 08017b12 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017b14 */ BL func_08006694 \n\
/* 08017b18 */ B branch_08017b28 \n\
\n\
.ltorg \n\
 \n\
branch_08017b20: \n\
/* 08017b20 */ STR R4, [R1, 0x58] \n\
/* 08017b22 */ LDR R0, [R4, 0x54] \n\
/* 08017b24 */ BL func_08016e54 \n\
 \n\
branch_08017b28: \n\
/* 08017b28 */ ADD SP, 0x4 \n\
/* 08017b2a */ POP {R3} \n\
/* 08017b2c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08017b2e */ POP {R4-R7} \n\
/* 08017b30 */ POP {R0} \n\
/* 08017b32 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");