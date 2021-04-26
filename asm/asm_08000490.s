.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_08000490
/* 08000490 */ PUSH {R4, R5, LR}
/* 08000492 */ LDR R4, =D_03000000
/* 08000494 */ LDR R2, [R4]
/* 08000496 */ CMP R2, 0x0 @ Compare R2 and 0x0
/* 08000498 */ BEQ branch_0800051c
/* 0800049a */ LDR R1, [R2, 0x8]
/* 0800049c */ CMP R1, 0x0 @ Compare R1 and 0x0
/* 0800049e */ BEQ branch_08000550
/* 080004a0 */ LDR R0, [R2, 0xC]
/* 080004a2 */ BL func_0804eaf0
/* 080004a6 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004a8 */ BEQ branch_08000550
/* 080004aa */ LDR R0, [R4]
/* 080004ac */ LDR R1, [R0, 0x10]
/* 080004ae */ CMP R1, 0x0 @ Compare R1 and 0x0
/* 080004b0 */ BEQ branch_080004b8
/* 080004b2 */ LDR R0, [R0, 0x14]
/* 080004b4 */ BL func_0804eaf0

branch_080004b8:
/* 080004b8 */ LDR R5, =0x030046A4
/* 080004ba */ LDR R0, [R5]
/* 080004bc */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004be */ BEQ branch_080004c4
/* 080004c0 */ BL func_08006694

branch_080004c4:
/* 080004c4 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 080004c6 */ STR R0, [R5]
/* 080004c8 */ LDR R0, [R4]
/* 080004ca */ BL func_080005e0
/* 080004ce */ LDR R1, =D_03000004
/* 080004d0 */ STR R0, [R1]
/* 080004d2 */ LDR R0, =D_03000080
/* 080004d4 */ LDRB R0, [R0]
/* 080004d6 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004d8 */ BEQ branch_08000508
/* 080004da */ LDR R0, [R4]
/* 080004dc */ LDR R1, =D_03000084
/* 080004de */ LDR R1, [R1]
/* 080004e0 */ BL func_080006b0
/* 080004e4 */ LDR R0, [R4]
/* 080004e6 */ LDR R1, =D_03000088
/* 080004e8 */ LDR R1, [R1]
/* 080004ea */ BL func_080006d0
/* 080004ee */ B branch_0800050e

.ltorg

branch_08000508:
/* 08000508 */ LDR R0, [R4]
/* 0800050a */ BL func_08000674

branch_0800050e:
/* 0800050e */ LDR R1, =D_03000000
/* 08000510 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 08000512 */ STR R0, [R1]
/* 08000514 */ B branch_08000550

.ltorg

branch_0800051c:
/* 0800051c */ LDR R3, =0x03000004
/* 0800051e */ LDR R0, [R3]
/* 08000520 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 08000522 */ BNE branch_0800052a
/* 08000524 */ LDR R0, =D_08935FB0
/* 08000526 */ LDR R0, [R0]
/* 08000528 */ STR R0, [R3]

branch_0800052a:
/* 0800052a */ LDR R1, [R3]
/* 0800052c */ STR R1, [R4]
/* 0800052e */ STR R2, [R3]
/* 08000530 */ LDR R0, =0x03000080
/* 08000532 */ STRB R2, [R0]
/* 08000534 */ LDRH R0, [R1, 0x18]
/* 08000536 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 08000538 */ BEQ branch_08000542
/* 0800053a */ BL func_08006580
/* 0800053e */ LDR R1, =D_030046A4
/* 08000540 */ STR R0, [R1]

branch_08000542:
/* 08000542 */ LDR R0, [R4]
/* 08000544 */ LDR R1, [R0]
/* 08000546 */ CMP R1, 0x0 @ Compare R1 and 0x0
/* 08000548 */ BEQ branch_08000550
/* 0800054a */ LDR R0, [R0, 0x4]
/* 0800054c */ BL func_0804eaf0

branch_08000550:
/* 08000550 */ POP {R4, R5}
/* 08000552 */ POP {R0}
/* 08000554 */ BX R0

.ltorg

.end

