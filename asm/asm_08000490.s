.section .text
.thumb
.syntax unified

.include "include/gba.inc"

/* 08000490 */ PUSH {R4, R5, LR}
/* 08000492 */ LDR R4, =0x03000000 @!Pointer
/* 08000494 */ LDR R2, [R4]
/* 08000496 */ CMP R2, 0x0 @ Compare R2 and 0x0
/* 08000498 */ BEQ 0x0800051c @!Pointer
/* 0800049a */ LDR R1, [R2, 0x8]
/* 0800049c */ CMP R1, 0x0 @ Compare R1 and 0x0
/* 0800049e */ BEQ 0x08000550 @!Pointer
/* 080004a0 */ LDR R0, [R2, 0xC]
/* 080004a2 */ BL 0x0804eaf0 @!Pointer
/* 080004a6 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004a8 */ BEQ 0x08000550 @!Pointer
/* 080004aa */ LDR R0, [R4]
/* 080004ac */ LDR R1, [R0, 0x10]
/* 080004ae */ CMP R1, 0x0 @ Compare R1 and 0x0
/* 080004b0 */ BEQ 0x080004b8 @!Pointer
/* 080004b2 */ LDR R0, [R0, 0x14]
/* 080004b4 */ BL 0x0804eaf0 @!Pointer
/* 080004b8 */ LDR R5, =0x030046A4
/* 080004ba */ LDR R0, [R5]
/* 080004bc */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004be */ BEQ branch_080004c4
/* 080004c0 */ BL 0x08006694 @!Pointer
branch_080004c4:
/* 080004c4 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 080004c6 */ STR R0, [R5]
/* 080004c8 */ LDR R0, [R4]
/* 080004ca */ BL 0x080005e0 @!Pointer
/* 080004ce */ LDR R1, =0x03000004 @!Pointer
/* 080004d0 */ STR R0, [R1]
/* 080004d2 */ LDR R0, =0x03000080 @!Pointer
/* 080004d4 */ LDRB R0, [R0]
/* 080004d6 */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080004d8 */ BEQ 0x08000508 @!Pointer
/* 080004da */ LDR R0, [R4]
/* 080004dc */ LDR R1, =0x03000084 @!Pointer
/* 080004de */ LDR R1, [R1]
/* 080004e0 */ BL 0x080006b0 @!Pointer
/* 080004e4 */ LDR R0, [R4]
/* 080004e6 */ LDR R1, =0x03000088 @!Pointer
/* 080004e8 */ LDR R1, [R1]
/* 080004ea */ BL 0x080006d0 @!Pointer
/* 080004ee */ B 0x0800050e @!Pointer

.ltorg

.end

