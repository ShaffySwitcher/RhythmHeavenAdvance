asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080386e0 \n\
/* 080386e0 */ PUSH {LR} \n\
/* 080386e2 */ LDRB R0, [R1] \n\
/* 080386e4 */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 080386e6 */ BHI branch_080387bc \n\
/* 080386e8 */ LSLS R0, R0, 0x2 \n\
/* 080386ea */ LDR R1, =0x080386f8 @ !PossiblePointer \n\
/* 080386ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080386ee */ LDR R0, [R0] \n\
/* 080386f0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
.word 0x0803871c @ !Jumptable \n\
.word 0x0803872a @ !Jumptable \n\
.word 0x08038738 @ !Jumptable \n\
.word 0x08038720 @ !Jumptable \n\
.word 0x0803874c @ !Jumptable \n\
.word 0x08038764 @ !Jumptable \n\
.word 0x0803877c @ !Jumptable \n\
.word 0x08038794 @ !Jumptable \n\
.word 0x080387ac @ !Jumptable \n\
/* 0803871c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803871e */ B branch_08038722 \n\
/* 08038720 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
 \n\
branch_08038722: \n\
/* 08038722 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08038724 */ BL func_08038fbc \n\
/* 08038728 */ B branch_080387bc \n\
/* 0803872a */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 0803872c */ LDR R0, [R0] \n\
/* 0803872e */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038730 */ B branch_0803873e \n\
\n\
.ltorg \n\
/* 08038738 */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 0803873a */ LDR R0, [R0] \n\
/* 0803873c */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
 \n\
branch_0803873e: \n\
/* 0803873e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08038740 */ STRB R1, [R0] \n\
/* 08038742 */ BL func_0803843c \n\
/* 08038746 */ B branch_080387bc \n\
\n\
.ltorg \n\
/* 0803874c */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 0803874e */ LDR R0, [R0] \n\
/* 08038750 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038752 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08038754 */ STRB R1, [R0] \n\
/* 08038756 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038758 */ BL func_080384b8 \n\
/* 0803875c */ B branch_080387bc \n\
\n\
.ltorg \n\
/* 08038764 */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 08038766 */ LDR R0, [R0] \n\
/* 08038768 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 0803876a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803876c */ STRB R1, [R0] \n\
/* 0803876e */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08038770 */ BL func_080384b8 \n\
/* 08038774 */ B branch_080387bc \n\
\n\
.ltorg \n\
/* 0803877c */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 0803877e */ LDR R0, [R0] \n\
/* 08038780 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038782 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08038784 */ STRB R1, [R0] \n\
/* 08038786 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08038788 */ BL func_080384b8 \n\
/* 0803878c */ B branch_080387bc \n\
\n\
.ltorg \n\
/* 08038794 */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 08038796 */ LDR R0, [R0] \n\
/* 08038798 */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
/* 0803879a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803879c */ STRB R1, [R0] \n\
/* 0803879e */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080387a0 */ BL func_080384b8 \n\
/* 080387a4 */ B branch_080387bc \n\
\n\
.ltorg \n\
/* 080387ac */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 080387ae */ LDR R0, [R0] \n\
/* 080387b0 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 080387b2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080387b4 */ STRB R1, [R0] \n\
/* 080387b6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080387b8 */ BL func_080384b8 \n\
 \n\
branch_080387bc: \n\
/* 080387bc */ POP {R0} \n\
/* 080387be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
