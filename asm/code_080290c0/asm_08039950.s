asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039950 \n\
/* 08039950 */ PUSH {R4-R7, LR} \n\
/* 08039952 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08039954 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08039956 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08039958 */ PUSH {R5-R7} \n\
/* 0803995a */ SUB SP, 0x14 \n\
/* 0803995c */ LDR R1, =0x030055d0 @ !PossiblePointer \n\
/* 0803995e */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08039960 */ LDR R1, [R1] \n\
/* 08039962 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08039964 */ STRB R0, [R1] \n\
/* 08039966 */ BL func_08039924 \n\
/* 0803996a */ BL func_0800e0ec \n\
/* 0803996e */ STR R4, [SP] \n\
/* 08039970 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08039972 */ STR R0, [SP, 0x4] \n\
/* 08039974 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08039976 */ STR R7, [SP, 0x8] \n\
/* 08039978 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803997a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803997c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803997e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039980 */ BL func_0800e0a0 \n\
/* 08039984 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08039986 */ LSLS R0, R0, 0x2 \n\
/* 08039988 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803998a */ BL func_0800c660 \n\
/* 0803998e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08039990 */ LDR R1, [R2] \n\
/* 08039992 */ STR R0, [R1, 0x4] \n\
/* 08039994 */ LDR R1, =0x0805a8b0 @ !PossiblePointer \n\
/* 08039996 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08039998 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0803999a */ BL func_08004c0c \n\
/* 0803999e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080399a0 */ LDR R5, =0x03005380 @ !PossiblePointer \n\
/* 080399a2 */ LDR R0, [R5] \n\
/* 080399a4 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 080399a6 */ STR R2, [SP] \n\
/* 080399a8 */ STR R4, [SP, 0x4] \n\
/* 080399aa */ STR R4, [SP, 0x8] \n\
/* 080399ac */ STR R4, [SP, 0xC] \n\
/* 080399ae */ STR R4, [SP, 0x10] \n\
/* 080399b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080399b2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080399b4 */ BL func_0804d160 \n\
/* 080399b8 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080399ba */ LDR R1, [R2] \n\
/* 080399bc */ STRH R0, [R1, 0xC] \n\
/* 080399be */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080399c0 */ BL func_080398b4 \n\
/* 080399c4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080399c6 */ LDR R0, [R5] \n\
/* 080399c8 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 080399ca */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080399cc */ STR R2, [SP] \n\
/* 080399ce */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080399d0 */ LSLS R2, R2, 0x7 \n\
/* 080399d2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080399d4 */ STR R2, [SP, 0x4] \n\
/* 080399d6 */ STR R7, [SP, 0x8] \n\
/* 080399d8 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 080399da */ STR R6, [SP, 0xC] \n\
/* 080399dc */ STR R4, [SP, 0x10] \n\
/* 080399de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080399e0 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 080399e2 */ BL func_0804d160 \n\
/* 080399e6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080399e8 */ LDR R1, [R2] \n\
/* 080399ea */ STRH R0, [R1, 0x8] \n\
/* 080399ec */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 080399ee */ BL func_080398b4 \n\
/* 080399f2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080399f4 */ LDR R0, [R5] \n\
/* 080399f6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080399f8 */ STR R2, [SP] \n\
/* 080399fa */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080399fc */ STR R2, [SP, 0x4] \n\
/* 080399fe */ STR R7, [SP, 0x8] \n\
/* 08039a00 */ STR R6, [SP, 0xC] \n\
/* 08039a02 */ STR R4, [SP, 0x10] \n\
/* 08039a04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039a06 */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 08039a08 */ BL func_0804d160 \n\
/* 08039a0c */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08039a0e */ LDR R1, [R2] \n\
/* 08039a10 */ STRH R0, [R1, 0xA] \n\
/* 08039a12 */ STRH R4, [R1, 0xE] \n\
/* 08039a14 */ STRH R4, [R1, 0x10] \n\
/* 08039a16 */ STRH R4, [R1, 0x12] \n\
/* 08039a18 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039a1a */ STRB R0, [R1, 0x14] \n\
/* 08039a1c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08039a1e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08039a20 */ BL func_08017338 \n\
/* 08039a24 */ ADD SP, 0x14 \n\
/* 08039a26 */ POP {R3-R5} \n\
/* 08039a28 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08039a2a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08039a2c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08039a2e */ POP {R4-R7} \n\
/* 08039a30 */ POP {R0} \n\
/* 08039a32 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
