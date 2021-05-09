asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08001724 \n\
/* 08001724 */ PUSH {R4-R7, LR} \n\
/* 08001726 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08001728 */ PUSH {R7} \n\
/* 0800172a */ SUB SP, 0x4 \n\
/* 0800172c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800172e */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08001730 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08001732 */ LSLS R1, R1, 0x10 \n\
/* 08001734 */ LSRS R7, R1, 0x10 \n\
/* 08001736 */ LDR R0, =0x04000130 @ !PossiblePointer \n\
/* 08001738 */ LDRH R0, [R0] \n\
/* 0800173a */ MVNS R0, R0 @ Set R0 to ~R0 \n\
/* 0800173c */ LSLS R0, R0, 0x10 \n\
/* 0800173e */ LSRS R4, R0, 0x10 \n\
/* 08001740 */ LDR R0, =0x030000a8 @ !PossiblePointer \n\
/* 08001742 */ STRB R6, [R0] \n\
/* 08001744 */ LDR R0, =0x030000ac @ !PossiblePointer \n\
/* 08001746 */ STRH R7, [R0] \n\
/* 08001748 */ LDR R1, =0x030000a9 @ !PossiblePointer \n\
/* 0800174a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800174c */ STRB R0, [R1] \n\
/* 0800174e */ LDR R0, =0x030000b0 @ !PossiblePointer \n\
/* 08001750 */ STR R5, [R0] \n\
/* 08001752 */ LDR R0, =0x03005374 @ !PossiblePointer \n\
/* 08001754 */ STR R3, [R0] \n\
/* 08001756 */ LDR R0, =0x030053b4 @ !PossiblePointer \n\
/* 08001758 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800175a */ STR R1, [R0] \n\
/* 0800175c */ LDR R0, =0x030000aa @ !PossiblePointer \n\
/* 0800175e */ STRB R1, [R0] \n\
/* 08001760 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08001762 */ BL func_0800142c \n\
/* 08001766 */ CMP R6, 0x4 @ Compare R6 and 0x4 \n\
/* 08001768 */ BHI branch_080017fe \n\
/* 0800176a */ LSLS R0, R6, 0x2 \n\
/* 0800176c */ LDR R1, =0x08001798 @ !PossiblePointer \n\
/* 0800176e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001770 */ LDR R0, [R0] \n\
/* 08001772 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
/* 08001798 */ ASRS R6, R7, 0x1F \n\
/* 0800179a */ LSRS R0, R0, 0x20 \n\
/* 0800179c */ ASRS R4, R5, 0x1E \n\
/* 0800179e */ LSRS R0, R0, 0x20 \n\
/* 080017a0 */ ASRS R0, R1, 0x1F \n\
/* 080017a2 */ LSRS R0, R0, 0x20 \n\
/* 080017a4 */ ASRS R4, R2, 0x1F \n\
/* 080017a6 */ LSRS R0, R0, 0x20 \n\
/* 080017a8 */ ASRS R0, R6, 0x1F \n\
/* 080017aa */ LSRS R0, R0, 0x20 \n\
/* 080017ac */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080017ae */ LSLS R2, R0, 0x1 \n\
/* 080017b0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080017b2 */ LSLS R0, R0, 0x2 \n\
/* 080017b4 */ STR R0, [SP] \n\
/* 080017b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080017b8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080017ba */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080017bc */ BL func_080018e0 \n\
/* 080017c0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080017c2 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 080017c4 */ STRH R0, [R5] \n\
/* 080017c6 */ B branch_080017fe \n\
/* 080017c8 */ LDRH R0, [R5] \n\
/* 080017ca */ LDR R4, =0x000003ff @ !PossiblePointer \n\
/* 080017cc */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080017ce */ B branch_080017f8 \n\
\n\
.ltorg \n\
/* 080017d4 */ LDRH R1, [R5] \n\
/* 080017d6 */ LDR R0, =0x000003ff @ !PossiblePointer \n\
/* 080017d8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080017da */ LDR R2, =0x030000aa @ !PossiblePointer \n\
/* 080017dc */ LSRS R1, R1, 0xA \n\
/* 080017de */ STRB R1, [R2] \n\
/* 080017e0 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 080017e2 */ BL func_0800142c \n\
/* 080017e6 */ B branch_080017fe \n\
\n\
.ltorg \n\
/* 080017f0 */ LDRH R0, [R5] \n\
/* 080017f2 */ LDR R1, =0x000003ff @ !PossiblePointer \n\
/* 080017f4 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080017f6 */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
 \n\
branch_080017f8: \n\
/* 080017f8 */ LDR R1, =0x030000aa @ !PossiblePointer \n\
/* 080017fa */ LSRS R0, R0, 0xA \n\
/* 080017fc */ STRB R0, [R1] \n\
 \n\
branch_080017fe: \n\
/* 080017fe */ ANDS R4, R7 @ Set R4 to R4 & R7 \n\
/* 08001800 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08001802 */ BL func_080013f4 \n\
/* 08001806 */ ADD SP, 0x4 \n\
/* 08001808 */ POP {R3} \n\
/* 0800180a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800180c */ POP {R4-R7} \n\
/* 0800180e */ POP {R0} \n\
/* 08001810 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");