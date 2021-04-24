.section .text
.syntax unified

.include "include/gba.inc"
.include "include/asm_macros.inc"

@ Entry Point
/* 000000 */ B entry_point

@ Nintendo Logo data
/* 000004 */ .byte 0x24, 0xFF, 0xAE, 0x51
/* 000008 */ .byte 0x69, 0x9A, 0xA2, 0x21
/* 00000c */ .byte 0x3D, 0x84, 0x82, 0x0A
/* 000010 */ .byte 0x84, 0xE4, 0x09, 0xAD
/* 000014 */ .byte 0x11, 0x24, 0x8B, 0x98
/* 000018 */ .byte 0xC0, 0x81, 0x7F, 0x21
/* 00001c */ .byte 0xA3, 0x52, 0xBE, 0x19
/* 000020 */ .byte 0x93, 0x09, 0xCE, 0x20
/* 000024 */ .byte 0x10, 0x46, 0x4A, 0x4A
/* 000028 */ .byte 0xF8, 0x27, 0x31, 0xEC
/* 00002c */ .byte 0x58, 0xC7, 0xE8, 0x33
/* 000030 */ .byte 0x82, 0xE3, 0xCE, 0xBF
/* 000034 */ .byte 0x85, 0xF4, 0xDF, 0x94
/* 000038 */ .byte 0xCE, 0x4B, 0x09, 0xC1
/* 00003c */ .byte 0x94, 0x56, 0x8A, 0xC0
/* 000040 */ .byte 0x13, 0x72, 0xA7, 0xFC
/* 000044 */ .byte 0x9F, 0x84, 0x4D, 0x73
/* 000048 */ .byte 0xA3, 0xCA, 0x9A, 0x61
/* 00004c */ .byte 0x58, 0x97, 0xA3, 0x27
/* 000050 */ .byte 0xFC, 0x03, 0x98, 0x76
/* 000054 */ .byte 0x23, 0x1D, 0xC7, 0x61
/* 000058 */ .byte 0x03, 0x04, 0xAE, 0x56
/* 00005c */ .byte 0xBF, 0x38, 0x84, 0x00
/* 000060 */ .byte 0x40, 0xA7, 0x0E, 0xFD
/* 000064 */ .byte 0xFF, 0x52, 0xFE, 0x03
/* 000068 */ .byte 0x6F, 0x95, 0x30, 0xF1
/* 00006c */ .byte 0x97, 0xFB, 0xC0, 0x85
/* 000070 */ .byte 0x60, 0xD6, 0x80, 0x25
/* 000074 */ .byte 0xA9, 0x63, 0xBE, 0x03
/* 000078 */ .byte 0x01, 0x4E, 0x38, 0xE2
/* 00007c */ .byte 0xF9, 0xA2, 0x34, 0xFF
/* 000080 */ .byte 0xBB, 0x3E, 0x03, 0x44
/* 000084 */ .byte 0x78, 0x00, 0x90, 0xCB
/* 000088 */ .byte 0x88, 0x11, 0x3A, 0x94
/* 00008c */ .byte 0x65, 0xC0, 0x7C, 0x63
/* 000090 */ .byte 0x87, 0xF0, 0x3C, 0xAF
/* 000094 */ .byte 0xD6, 0x25, 0xE4, 0x8B
/* 000098 */ .byte 0x38, 0x0A, 0xAC, 0x72
/* 00009c */ .byte 0x21, 0xD4, 0xF8, 0x07

@ Game Title
/* 0000a0 */ .ascii "RHYTHMTENGOK"

@ Game Code
/* 0000ac */ .ascii "BRIJ"

@ Maker Code
/* 0000b0 */ .ascii "01"

@ 0x96 Fixed
/* 0000b2 */ .byte 0x96

@ Main Unit Code
/* 0000b3 */ .byte 0x00

@ Device Type
/* 0000b4 */ .byte 0x00

@ Reserved Area
/* 0000b5 */ .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

@ Mask ROM Version
/* 0000bc */ .byte 0x00

@ Compliment Check
/* 0000bd */ .byte 0x25

@ Reserved Area
/* 0000be */ .hword 0x0000

@ Padding
/* 0000c0 */ .word 0x00000000, 0x00000000, 0x00000000, 0x00000000


entry_point:
/* 0000d0 */ MOV R0, 0x12 @ Set R0 to 0x12
/* 0000d4 */ MSR CPSR_all, R0
/* 0000d8 */ LDR SP, val_000108
/* 0000dc */ MOV R0, 0x1F @ Set R0 to 0x1F
/* 0000e0 */ MSR CPSR_all, R0
/* 0000e4 */ LDR SP, val_000104

/* 0000e8 */ LDR R1, =REG_INTERUPT
/* 0000ec */ ADR R0, interrupt_handler
/* 0000f0 */ STR R0, [R1] @ Save the address of the interrupt handler to REG_INTERUPT

/* 0000f4 */ LDR R1, =0x080002C5
/* 0000f8 */ MOV LR, PC @ Set LR to PC
/* 0000fc */ BX R1
/* 000100 */ B entry_point

val_000104:
/* 000104 */ .word 0x03007F00
val_000108:
/* 000108 */ .word 0x03007FA0

interrupt_handler:
/* 00010c */ MOV32 R3, REG_IE
/* 000114 */ LDR R2, [R3] @ Load both REG_IE and REG_IF as one word
/* 000118 */ AND R1, R2, R2, LSR 0x10 @ Set R1 to all interrupts that have been both registered and acknowledged
/* 00011c */ ANDS R0, R1, INT_CART
/* 000120 */ BNE branch_0001D4

@ Iterate through all interrupts until one is found, and set R2 based on the one triggered.
/* 000124 */ MOV R2, 0x0 @ Set R2 to 0
/* 000128 */ ANDS R0, R1, INT_DMA2
/* 00012c */ BNE branch_0001C0
/* 000130 */ ADD R2, R2, 0x4 @ R2 = 0x4
/* 000134 */ ANDS R0, R1, INT_VBLANK
/* 000138 */ BNE branch_0001C0
/* 00013c */ ADD R2, R2, 0x4 @ R2 = 0x8
/* 000140 */ ANDS R0, R1, INT_HBLANK
/* 000144 */ BNE branch_0001C0
/* 000148 */ ADD R2, R2, 0x4 @ R2 = 0xC
/* 00014c */ ANDS R0, R1, INT_VCOUNT
/* 000150 */ BNE branch_0001C0
/* 000154 */ ADD R2, R2, 0x4 @ R2 = 0x10
/* 000158 */ ANDS R0, R1, INT_TIMER0
/* 00015c */ BNE branch_0001C0
/* 000160 */ ADD R2, R2, 0x4 @ R2 = 0x14
/* 000164 */ ANDS R0, R1, INT_TIMER1
/* 000168 */ BNE branch_0001C0
/* 00016c */ ADD R2, R2, 0x4 @ R2 = 0x18
/* 000170 */ ANDS R0, R1, INT_TIMER2
/* 000174 */ BNE branch_0001C0
/* 000178 */ ADD R2, R2, 0x4 @ R2 = 0x1C
/* 00017c */ ANDS R0, R1, INT_TIMER3
/* 000180 */ BNE branch_0001C0
/* 000184 */ ADD R2, R2, 0x4 @ R2 = 0x20
/* 000188 */ ANDS R0, R1, INT_COM
/* 00018c */ BNE branch_0001C0
/* 000190 */ ADD R2, R2, 0x4 @ R2 = 0x24
/* 000194 */ ANDS R0, R1, INT_DMA0
/* 000198 */ BNE branch_0001C0
/* 00019c */ ADD R2, R2, 0x4 @ R2 = 0x28
/* 0001a0 */ ANDS R0, R1, INT_DMA1
/* 0001a4 */ BNE branch_0001C0
/* 0001a8 */ ADD R2, R2, 0x4 @ R2 = 0x2C
/* 0001ac */ ANDS R0, R1, INT_DMA3
/* 0001b0 */ BNE branch_0001C0
/* 0001b4 */ ADD R2, R2, 0x4 @ R2 = 0x30
/* 0001b8 */ ANDS R0, R1, INT_BUTTON
/* 0001bc */ BNE branch_0001C0

branch_0001C0:
/* 0001c0 */ STRH R0, [R3,0x2]
/* 0001c4 */ LDR R1, =0x03004460
/* 0001c8 */ ADD R1, R1, R2 @ Set R1 to R1 + R2
/* 0001cc */ LDR R0, [R1]
/* 0001d0 */ BX R0

branch_0001D4:
/* 0001d4 */ MOV R0, 0x0 @ Set R0 to 0
/* 0001d8 */ MOV32 R3, REG_SGCNT1
/* 0001e0 */ STRH R0, [R3]

branch_0001E4:
/* 0001e4 */ B branch_0001E4

.ltorg

.end
