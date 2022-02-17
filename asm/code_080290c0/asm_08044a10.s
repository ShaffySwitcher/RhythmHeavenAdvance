asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044a10 \n\
/* 08044a10 */ PUSH {R4-R7, LR} \n\
/* 08044a12 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08044a14 */ PUSH {R7} \n\
/* 08044a16 */ SUB SP, 0x1C \n\
/* 08044a18 */ LDR R5, =D_030055d0 \n\
/* 08044a1a */ LDR R1, [R5] \n\
/* 08044a1c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08044a1e */ STRB R0, [R1] \n\
/* 08044a20 */ BL func_080449e4 \n\
/* 08044a24 */ BL func_0800e0ec \n\
/* 08044a28 */ STR R4, [SP] \n\
/* 08044a2a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08044a2c */ STR R0, [SP, 0x4] \n\
/* 08044a2e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044a30 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08044a32 */ STR R0, [SP, 0x8] \n\
/* 08044a34 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044a36 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044a38 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044a3a */ BL func_0800e0a0 \n\
/* 08044a3e */ LDR R2, [R5] \n\
/* 08044a40 */ MOVS R0, 0xD6 @ Set R0 to 0xD6 \n\
/* 08044a42 */ LSLS R0, R0, 0x1 \n\
/* 08044a44 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08044a46 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08044a48 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08044a4a */ STR R0, [R1] \n\
/* 08044a4c */ MOVS R1, 0xD2 @ Set R1 to 0xD2 \n\
/* 08044a4e */ LSLS R1, R1, 0x1 \n\
/* 08044a50 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044a52 */ STR R4, [R0] \n\
/* 08044a54 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08044a56 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044a58 */ STRB R4, [R0] \n\
/* 08044a5a */ LDR R0, [R5] \n\
/* 08044a5c */ LDR R2, =0x1b1 \n\
/* 08044a5e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044a60 */ STRB R4, [R0] \n\
/* 08044a62 */ LDR R1, [R5] \n\
/* 08044a64 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 08044a66 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08044a68 */ STR R0, [R1, 0x14] \n\
/* 08044a6a */ STRB R4, [R1, 0x8] \n\
/* 08044a6c */ LDR R0, =D_08932bec \n\
/* 08044a6e */ LDR R1, [R5] \n\
/* 08044a70 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08044a72 */ LDRSH R3, [R1, R2] \n\
/* 08044a74 */ LDR R1, =0x4001 \n\
/* 08044a76 */ STR R1, [SP] \n\
/* 08044a78 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08044a7a */ STR R6, [SP, 0x4] \n\
/* 08044a7c */ STR R4, [SP, 0x8] \n\
/* 08044a7e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08044a80 */ STR R1, [SP, 0xC] \n\
/* 08044a82 */ STR R4, [SP, 0x10] \n\
/* 08044a84 */ STR R4, [SP, 0x14] \n\
/* 08044a86 */ STR R1, [SP, 0x18] \n\
/* 08044a88 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044a8a */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08044a8c */ BL func_0800fa6c \n\
/* 08044a90 */ LDR R1, [R5] \n\
/* 08044a92 */ STR R0, [R1, 0x4] \n\
/* 08044a94 */ LDR R0, =D_08932edc \n\
/* 08044a96 */ LDR R1, =0x4082 \n\
/* 08044a98 */ STR R1, [SP] \n\
/* 08044a9a */ STR R6, [SP, 0x4] \n\
/* 08044a9c */ STR R4, [SP, 0x8] \n\
/* 08044a9e */ STR R4, [SP, 0xC] \n\
/* 08044aa0 */ STR R4, [SP, 0x10] \n\
/* 08044aa2 */ STR R4, [SP, 0x14] \n\
/* 08044aa4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08044aa6 */ STR R2, [SP, 0x18] \n\
/* 08044aa8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044aaa */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08044aac */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08044aae */ BL func_0800fa6c \n\
/* 08044ab2 */ LDR R1, [R5] \n\
/* 08044ab4 */ STR R0, [R1, 0x24] \n\
/* 08044ab6 */ MOVS R0, 0xC4 @ Set R0 to 0xC4 \n\
/* 08044ab8 */ LSLS R0, R0, 0x1 \n\
/* 08044aba */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08044abc */ STRB R4, [R1] \n\
/* 08044abe */ LDR R0, =D_08932e3c \n\
/* 08044ac0 */ LDR R1, =0x4040 \n\
/* 08044ac2 */ STR R1, [SP] \n\
/* 08044ac4 */ STR R6, [SP, 0x4] \n\
/* 08044ac6 */ STR R4, [SP, 0x8] \n\
/* 08044ac8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08044aca */ STR R1, [SP, 0xC] \n\
/* 08044acc */ STR R4, [SP, 0x10] \n\
/* 08044ace */ STR R4, [SP, 0x14] \n\
/* 08044ad0 */ STR R1, [SP, 0x18] \n\
/* 08044ad2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044ad4 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08044ad6 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08044ad8 */ BL func_0800fa6c \n\
/* 08044adc */ LDR R1, [R5] \n\
/* 08044ade */ MOVS R2, 0xC2 @ Set R2 to 0xC2 \n\
/* 08044ae0 */ LSLS R2, R2, 0x1 \n\
/* 08044ae2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044ae4 */ STR R0, [R1] \n\
/* 08044ae6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08044ae8 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_08044aea: \n\
/* 08044aea */ LDR R0, [R5] \n\
/* 08044aec */ LSLS R4, R7, 0x5 \n\
/* 08044aee */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044af0 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08044af2 */ STRB R6, [R0] \n\
/* 08044af4 */ STR R6, [SP] \n\
/* 08044af6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08044af8 */ STR R0, [SP, 0x4] \n\
/* 08044afa */ STR R6, [SP, 0x8] \n\
/* 08044afc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044afe */ STR R0, [SP, 0xC] \n\
/* 08044b00 */ STR R6, [SP, 0x10] \n\
/* 08044b02 */ STR R6, [SP, 0x14] \n\
/* 08044b04 */ STR R6, [SP, 0x18] \n\
/* 08044b06 */ LDR R0, =D_08932c8c \n\
/* 08044b08 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044b0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044b0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044b0e */ BL func_0800fa6c \n\
/* 08044b12 */ LDR R1, [R5] \n\
/* 08044b14 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08044b16 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044b18 */ STR R0, [R1] \n\
/* 08044b1a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044b1c */ BL func_08010040 \n\
/* 08044b20 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 08044b22 */ LSLS R0, R0, 0x18 \n\
/* 08044b24 */ LSRS R7, R0, 0x18 \n\
/* 08044b26 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08044b28 */ BLS branch_08044aea \n\
/* 08044b2a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044b2c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044b2e */ BL func_08017338 \n\
/* 08044b32 */ LDR R4, =D_030055d0 \n\
/* 08044b34 */ LDR R0, [R4] \n\
/* 08044b36 */ MOVS R2, 0xD9 @ Set R2 to 0xD9 \n\
/* 08044b38 */ LSLS R2, R2, 0x1 \n\
/* 08044b3a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08044b3c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044b3e */ STRB R0, [R1] \n\
/* 08044b40 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08044b42 */ BL func_0800c3a4 \n\
/* 08044b46 */ LDR R1, [R4] \n\
/* 08044b48 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044b4a */ LSLS R2, R2, 0x1 \n\
/* 08044b4c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044b4e */ STR R0, [R1] \n\
/* 08044b50 */ ADD SP, 0x1C \n\
/* 08044b52 */ POP {R3} \n\
/* 08044b54 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08044b56 */ POP {R4-R7} \n\
/* 08044b58 */ POP {R0} \n\
/* 08044b5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
