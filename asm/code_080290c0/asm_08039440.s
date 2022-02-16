asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08039440 \n\
/* 08039440 */ PUSH {LR} \n\
/* 08039442 */ LDR R0, =0x030055d0 @ !PossiblePointer \n\
/* 08039444 */ LDR R0, [R0] \n\
/* 08039446 */ LDRB R0, [R0, 0x6] \n\
/* 08039448 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 0803944a */ BHI branch_080394a0 \n\
/* 0803944c */ LSLS R0, R0, 0x2 \n\
/* 0803944e */ LDR R1, =0x08039460 @ !PossiblePointer \n\
/* 08039450 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039452 */ LDR R0, [R0] \n\
/* 08039454 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
.word 0x080394a0 @ !Jumptable \n\
.word 0x08039490 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x08039496 @ !Jumptable \n\
.word 0x0803949c @ !Jumptable \n\
.word 0x080394a0 @ !Jumptable \n\
/* 08039490 */ BL func_08039404 \n\
/* 08039494 */ B branch_080394a0 \n\
/* 08039496 */ BL func_08039164 \n\
/* 0803949a */ B branch_080394a0 \n\
/* 0803949c */ BL func_08039388 \n\
 \n\
branch_080394a0: \n\
/* 080394a0 */ POP {R0} \n\
/* 080394a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
