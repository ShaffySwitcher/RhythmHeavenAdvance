.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000224
/* 08000224 */ PUSH {R4, LR}
/* 08000226 */ BL func_08001464
/* 0800022a */ BL func_0800b564
/* 0800022e */ BL func_08007b4c
/* 08000232 */ BL func_08002f68
/* 08000236 */ BL func_08000774
/* 0800023a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0
/* 0800023c */ BL func_08000788
/* 08000240 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0
/* 08000242 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 08000244 */ BL func_0800650c
/* 08000248 */ BL func_08005a0c
/* 0800024c */ BL func_08003e64
/* 08000250 */ BL func_08003f28
/* 08000254 */ BL func_080073b8
/* 08000258 */ BL func_080073f0
/* 0800025c */ BL func_08009844
/* 08000260 */ BL func_0800861c
/* 08000264 */ BL func_08000804
/* 08000268 */ BL func_080008bc
/* 0800026c */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 0800026e */ BEQ branch_08000282
/* 08000270 */ BL func_080008d0
/* 08000274 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 08000276 */ BEQ branch_0800027e
/* 08000278 */ BL func_0800081c
/* 0800027c */ B branch_08000282
branch_0800027e:
/* 0800027e */ BL func_080009a0
branch_08000282:
/* 08000282 */ BL func_080009b4
/* 08000286 */ LDR R0, =D_030046A8
/* 08000288 */ LDR R0, [R0]
/* 0800028a */ MOVS R1, 0xB1 @ Set R1 to 0xB1
/* 0800028c */ LSLS R1, R1, 0x2
/* 0800028e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1
/* 08000290 */ LDR R0, [R0]
/* 08000292 */ BL func_080029d8
/* 08000296 */ BL func_0800c490
/* 0800029a */ BL func_0800584c
/* 0800029e */ BL func_080001f8
/* 080002a2 */ BL func_08001360
/* 080002a6 */ BL func_08009150
/* 080002aa */ BL func_080091d8
/* 080002ae */ LDR R1, =D_03004498
/* 080002b0 */ MOVS R0, 0x1 @ Set R0 to 0x1
/* 080002b2 */ STRB R0, [R1]
/* 080002b4 */ POP {R4}
/* 080002b6 */ POP {R0}
/* 080002b8 */ BX R0

.ltorg

.end

