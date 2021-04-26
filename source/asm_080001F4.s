.section .text
.thumb
.syntax unified

.include "include/gba.inc"

/* 080001f4 */ BX LR
/* 080001f6 */ LSLS R0, R0, 0x0

branch_080001f8:
/* 080001f8 */ PUSH {LR}
/* 080001fa */ BL 0x0801350c @!Pointer
/* 080001fe */ BL 0x08018e60 @!Pointer
/* 08000202 */ BL 0x0801242c @!Pointer
/* 08000206 */ BL 0x08016e94 @!Pointer
/* 0800020a */ BL 0x08010490 @!Pointer
/* 0800020e */ BL 0x08011ec0 @!Pointer
/* 08000212 */ BL 0x0801c1b8 @!Pointer
/* 08000216 */ BL 0x0801d580 @!Pointer
/* 0800021a */ BL 0x080113d0 @!Pointer
/* 0800021e */ POP {R0}
/* 08000220 */ BX R0
/* 08000222 */ LSLS R0, R0, 0x0

glabel func_08000224
/* 08000224 */ PUSH {R4, LR}
/* 08000226 */ BL 0x08001464 @!Pointer
/* 0800022a */ BL 0x0800b564 @!Pointer
/* 0800022e */ BL 0x08007b4c @!Pointer
/* 08000232 */ BL 0x08002f68 @!Pointer
/* 08000236 */ BL 0x08000774 @!Pointer
/* 0800023a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0
/* 0800023c */ BL 0x08000788 @!Pointer
/* 08000240 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0
/* 08000242 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 08000244 */ BL 0x0800650c @!Pointer
/* 08000248 */ BL 0x08005a0c @!Pointer
/* 0800024c */ BL 0x08003e64 @!Pointer
/* 08000250 */ BL 0x08003f28 @!Pointer
/* 08000254 */ BL 0x080073b8 @!Pointer
/* 08000258 */ BL 0x080073f0 @!Pointer
/* 0800025c */ BL 0x08009844 @!Pointer
/* 08000260 */ BL 0x0800861c @!Pointer
/* 08000264 */ BL 0x08000804 @!Pointer
/* 08000268 */ BL 0x080008bc @!Pointer
/* 0800026c */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 0800026e */ BEQ branch_08000282 @!Pointer
/* 08000270 */ BL 0x080008d0 @!Pointer
/* 08000274 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 08000276 */ BEQ branch_0800027e @!Pointer
/* 08000278 */ BL 0x0800081c @!Pointer
/* 0800027c */ B branch_08000282
branch_0800027e:
/* 0800027e */ BL 0x080009a0 @!Pointer
branch_08000282:
/* 08000282 */ BL 0x080009b4 @!Pointer
/* 08000286 */ LDR R0, =0x030046A8 @!Pointer
/* 08000288 */ LDR R0, [R0]
/* 0800028a */ MOVS R1, 0xB1 @ Set R1 to 0xB1
/* 0800028c */ LSLS R1, R1, 0x2
/* 0800028e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1
/* 08000290 */ LDR R0, [R0]
/* 08000292 */ BL 0x080029d8 @!Pointer
/* 08000296 */ BL 0x0800c490 @!Pointer
/* 0800029a */ BL 0x0800584c @!Pointer
/* 0800029e */ BL branch_080001f8 @!Pointer
/* 080002a2 */ BL 0x08001360 @!Pointer
/* 080002a6 */ BL 0x08009150 @!Pointer
/* 080002aa */ BL 0x080091d8 @!Pointer
/* 080002ae */ LDR R1, =0x03004498 @!Pointer
/* 080002b0 */ MOVS R0, 0x1 @ Set R0 to 0x1
/* 080002b2 */ STRB R0, [R1]
/* 080002b4 */ POP {R4}
/* 080002b6 */ POP {R0}
/* 080002b8 */ BX R0

.ltorg

.end

