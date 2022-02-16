asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039b2c \n\
/* 08039b2c */ PUSH {R4, LR} \n\
/* 08039b2e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08039b30 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08039b32 */ BL func_0800c3a4 \n\
/* 08039b36 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08039b38 */ BHI branch_08039b3e \n\
/* 08039b3a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039b3c */ B branch_08039b40 \n\
 \n\
branch_08039b3e: \n\
/* 08039b3e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08039b40: \n\
/* 08039b40 */ POP {R4} \n\
/* 08039b42 */ POP {R1} \n\
/* 08039b44 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
