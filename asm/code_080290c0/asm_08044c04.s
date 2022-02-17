asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044c04 \n\
/* 08044c04 */ PUSH {R4-R7, LR} \n\
/* 08044c06 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08044c08 */ PUSH {R7} \n\
/* 08044c0a */ SUB SP, 0x8 \n\
/* 08044c0c */ LDR R0, =D_03004afc \n\
/* 08044c0e */ LDRH R1, [R0] \n\
/* 08044c10 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044c12 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08044c14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044c16 */ BEQ branch_08044c3c \n\
/* 08044c18 */ LDR R2, =D_030055d0 \n\
/* 08044c1a */ LDR R1, [R2] \n\
/* 08044c1c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044c1e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044c20 */ STRB R0, [R1, 0x8] \n\
/* 08044c22 */ LDR R0, [R2] \n\
/* 08044c24 */ LDR R0, [R0, 0x4] \n\
/* 08044c26 */ LDR R1, =0x08932c14 @ !PossiblePointer \n\
/* 08044c28 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08044c2a */ STR R2, [SP] \n\
/* 08044c2c */ STR R3, [SP, 0x4] \n\
/* 08044c2e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044c30 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08044c32 */ BL func_08010064 \n\
/* 08044c36 */ LDR R0, =0x08a9ca54 @ !PossiblePointer \n\
/* 08044c38 */ BL func_08002634 \n\
 \n\
branch_08044c3c: \n\
/* 08044c3c */ LDR R4, =D_030055d0 \n\
/* 08044c3e */ LDR R1, [R4] \n\
/* 08044c40 */ LDRB R0, [R1, 0x8] \n\
/* 08044c42 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08044c44 */ BNE branch_08044c6a \n\
/* 08044c46 */ LDR R0, [R1, 0x4] \n\
/* 08044c48 */ BL func_08010198 \n\
/* 08044c4c */ LSLS R0, R0, 0x18 \n\
/* 08044c4e */ ASRS R0, R0, 0x18 \n\
/* 08044c50 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08044c52 */ BLE branch_08044c6a \n\
/* 08044c54 */ LDR R0, [R4] \n\
/* 08044c56 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044c58 */ STRB R2, [R0, 0x8] \n\
/* 08044c5a */ LDR R0, [R4] \n\
/* 08044c5c */ LDR R0, [R0, 0x4] \n\
/* 08044c5e */ LDR R1, =0x08932bec @ !PossiblePointer \n\
/* 08044c60 */ STR R2, [SP] \n\
/* 08044c62 */ STR R2, [SP, 0x4] \n\
/* 08044c64 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08044c66 */ BL func_08010064 \n\
 \n\
branch_08044c6a: \n\
/* 08044c6a */ LDR R0, =D_030055d0 \n\
/* 08044c6c */ LDR R4, [R0] \n\
/* 08044c6e */ MOVS R1, 0xD2 @ Set R1 to 0xD2 \n\
/* 08044c70 */ LSLS R1, R1, 0x1 \n\
/* 08044c72 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08044c74 */ LDR R0, [R0] \n\
/* 08044c76 */ LSLS R0, R0, 0xB \n\
/* 08044c78 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044c7a */ LSLS R2, R2, 0x1 \n\
/* 08044c7c */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08044c7e */ LDR R1, [R1] \n\
/* 08044c80 */ BL __divsi3 \n\
/* 08044c84 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08044c86 */ STR R2, [R4, 0xC] \n\
/* 08044c88 */ LDR R6, =0x08936cac @ !PossiblePointer \n\
/* 08044c8a */ LDR R5, =0x000007ff @ !PossiblePointer \n\
/* 08044c8c */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08044c8e */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 08044c90 */ LSLS R0, R3, 0x1 \n\
/* 08044c92 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08044c94 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08044c96 */ LDRSH R1, [R0, R7] \n\
/* 08044c98 */ LSLS R0, R1, 0x3 \n\
/* 08044c9a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08044c9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044c9e */ BGE branch_08044ca2 \n\
/* 08044ca0 */ ADDS R0, 0xF @ Add 0xF to R0 \n\
 \n\
branch_08044ca2: \n\
/* 08044ca2 */ ASRS R0, R0, 0x4 \n\
/* 08044ca4 */ STR R0, [R4, 0x10] \n\
/* 08044ca6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08044ca8 */ LSLS R1, R1, 0x2 \n\
/* 08044caa */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044cac */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 08044cae */ LSLS R0, R0, 0x1 \n\
/* 08044cb0 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08044cb2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044cb4 */ LDRSH R0, [R0, R2] \n\
/* 08044cb6 */ LSRS R1, R0, 0x1F \n\
/* 08044cb8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044cba */ ASRS R0, R0, 0x1 \n\
/* 08044cbc */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08044cbe */ STR R0, [R4, 0x18] \n\
/* 08044cc0 */ LDR R7, =0xfffffe00 @ !PossiblePointer \n\
/* 08044cc2 */ ADDS R1, R3, R7 @ Set R1 to R3 + R7 \n\
/* 08044cc4 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 08044cc6 */ LSLS R0, R0, 0x2 \n\
/* 08044cc8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08044cca */ BLS branch_08044cf8 \n\
/* 08044ccc */ LDR R0, [R4, 0x4] \n\
/* 08044cce */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044cd0 */ BL func_0800ff44 \n\
/* 08044cd4 */ B branch_08044d00 \n\
\n\
.ltorg \n\
 \n\
branch_08044cf8: \n\
/* 08044cf8 */ LDR R0, [R4, 0x4] \n\
/* 08044cfa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044cfc */ BL func_0800ff44 \n\
 \n\
branch_08044d00: \n\
/* 08044d00 */ LDR R5, =D_030055d0 \n\
/* 08044d02 */ LDR R3, [R5] \n\
/* 08044d04 */ LDR R0, [R3, 0x4] \n\
/* 08044d06 */ LDR R1, [R3, 0x10] \n\
/* 08044d08 */ LDR R2, [R3, 0x14] \n\
/* 08044d0a */ LDR R3, [R3, 0x18] \n\
/* 08044d0c */ BL func_08044ba8 \n\
/* 08044d10 */ LDR R2, [R5] \n\
/* 08044d12 */ LDR R0, [R2, 0x24] \n\
/* 08044d14 */ LDR R1, [R2, 0x10] \n\
/* 08044d16 */ LDR R3, [R2, 0x18] \n\
/* 08044d18 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08044d1a */ BL func_08044ba8 \n\
/* 08044d1e */ LDR R0, [R5] \n\
/* 08044d20 */ MOVS R1, 0xC2 @ Set R1 to 0xC2 \n\
/* 08044d22 */ LSLS R1, R1, 0x1 \n\
/* 08044d24 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044d26 */ LDR R0, [R0] \n\
/* 08044d28 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044d2a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08044d2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044d2e */ BL func_08044ba8 \n\
/* 08044d32 */ LDR R1, [R5] \n\
/* 08044d34 */ MOVS R2, 0xD2 @ Set R2 to 0xD2 \n\
/* 08044d36 */ LSLS R2, R2, 0x1 \n\
/* 08044d38 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08044d3a */ LDR R4, [R0] \n\
/* 08044d3c */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08044d3e */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08044d40 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08044d42 */ BNE branch_08044d6a \n\
/* 08044d44 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08044d46 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08044d48 */ LDRB R0, [R0] \n\
/* 08044d4a */ LSLS R0, R0, 0x5 \n\
/* 08044d4c */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08044d4e */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08044d50 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044d52 */ STRB R1, [R0] \n\
/* 08044d54 */ LDR R1, [R5] \n\
/* 08044d56 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044d58 */ LDRB R0, [R1] \n\
/* 08044d5a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08044d5c */ STRB R0, [R1] \n\
/* 08044d5e */ LDR R0, [R5] \n\
/* 08044d60 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08044d62 */ LDRB R0, [R1] \n\
/* 08044d64 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 08044d66 */ BLS branch_08044d6a \n\
/* 08044d68 */ STRB R4, [R1] \n\
 \n\
branch_08044d6a: \n\
/* 08044d6a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08044d6c */ LDR R6, =D_030055d0 \n\
/* 08044d6e */ MOV R8, R5 @ Set R8 to R5 \n\
 \n\
branch_08044d70: \n\
/* 08044d70 */ LDR R2, [R6] \n\
/* 08044d72 */ LSLS R1, R5, 0x5 \n\
/* 08044d74 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044d76 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08044d78 */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 08044d7a */ LDRB R0, [R3] \n\
/* 08044d7c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08044d7e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044d80 */ BEQ branch_08044e36 \n\
/* 08044d82 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08044d84 */ BNE branch_08044ddc \n\
/* 08044d86 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08044d88 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 08044d8a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044d8c */ LDR R0, [R2, 0xC] \n\
/* 08044d8e */ LDR R7, =0xfffffe00 @ !PossiblePointer \n\
/* 08044d90 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08044d92 */ STR R0, [R1] \n\
/* 08044d94 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08044d96 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08044d98 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044d9a */ LDR R1, [R2, 0x10] \n\
/* 08044d9c */ STR R1, [R0] \n\
/* 08044d9e */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08044da0 */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 08044da2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044da4 */ LDR R0, [R2, 0x14] \n\
/* 08044da6 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08044da8 */ STR R0, [R1] \n\
/* 08044daa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08044dac */ ADDS R0, 0x58 @ Add 0x58 to R0 \n\
/* 08044dae */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044db0 */ LDR R1, [R2, 0x18] \n\
/* 08044db2 */ STR R1, [R0] \n\
/* 08044db4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08044db6 */ STRB R0, [R3] \n\
/* 08044db8 */ LDR R1, [R6] \n\
/* 08044dba */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08044dbc */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 08044dbe */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044dc0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08044dc2 */ STR R2, [R0] \n\
/* 08044dc4 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08044dc6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044dc8 */ LDR R0, [R1] \n\
/* 08044dca */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044dcc */ BL func_08010040 \n\
/* 08044dd0 */ B branch_08044e12 \n\
\n\
.ltorg \n\
 \n\
branch_08044ddc: \n\
/* 08044ddc */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08044dde */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 08044de0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044de2 */ LDR R0, [R1] \n\
/* 08044de4 */ LSLS R0, R0, 0x8 \n\
/* 08044de6 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 08044de8 */ LSLS R7, R7, 0x1 \n\
/* 08044dea */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08044dec */ ASRS R0, R0, 0x8 \n\
/* 08044dee */ STR R0, [R1] \n\
/* 08044df0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08044df2 */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 08044df4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044df6 */ LDR R0, [R1] \n\
/* 08044df8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08044dfa */ STR R0, [R1] \n\
/* 08044dfc */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 08044dfe */ BLS branch_08044e12 \n\
/* 08044e00 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08044e02 */ STRB R0, [R3] \n\
/* 08044e04 */ LDR R0, [R6] \n\
/* 08044e06 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08044e08 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044e0a */ LDR R0, [R0] \n\
/* 08044e0c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044e0e */ BL func_08010040 \n\
 \n\
branch_08044e12: \n\
/* 08044e12 */ LDR R3, [R6] \n\
/* 08044e14 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08044e16 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08044e18 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044e1a */ LDR R0, [R0] \n\
/* 08044e1c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08044e1e */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08044e20 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044e22 */ LDR R1, [R1] \n\
/* 08044e24 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08044e26 */ ADDS R2, 0x54 @ Add 0x54 to R2 \n\
/* 08044e28 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08044e2a */ LDR R2, [R2] \n\
/* 08044e2c */ ADDS R3, 0x58 @ Add 0x58 to R3 \n\
/* 08044e2e */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08044e30 */ LDR R3, [R3] \n\
/* 08044e32 */ BL func_08044ba8 \n\
 \n\
branch_08044e36: \n\
/* 08044e36 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 08044e38 */ LSLS R0, R0, 0x18 \n\
/* 08044e3a */ LSRS R5, R0, 0x18 \n\
/* 08044e3c */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 08044e3e */ BLS branch_08044d70 \n\
/* 08044e40 */ LDR R0, =D_030055d0 \n\
/* 08044e42 */ LDR R1, [R0] \n\
/* 08044e44 */ MOVS R2, 0xD2 @ Set R2 to 0xD2 \n\
/* 08044e46 */ LSLS R2, R2, 0x1 \n\
/* 08044e48 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044e4a */ LDR R0, [R1] \n\
/* 08044e4c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08044e4e */ STR R0, [R1] \n\
/* 08044e50 */ ADD SP, 0x8 \n\
/* 08044e52 */ POP {R3} \n\
/* 08044e54 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08044e56 */ POP {R4-R7} \n\
/* 08044e58 */ POP {R0} \n\
/* 08044e5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
