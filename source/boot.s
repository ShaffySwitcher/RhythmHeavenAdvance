.section .text
.syntax unified

.include "include/gba.inc"

glabel entry_point
/* 0000d0 */ MOV R0, 0x12 @ Set R0 to 0x12
/* 0000d4 */ MSR CPSR_all, R0
/* 0000d8 */ LDR SP, val_000108
/* 0000dc */ MOV R0, 0x1F @ Set R0 to 0x1F
/* 0000e0 */ MSR CPSR_all, R0
/* 0000e4 */ LDR SP, val_000104

@ Set interrupt handler
/* 0000e8 */ LDR R1, =REG_INTERUPT
/* 0000ec */ ADR R0, interrupt_handler
/* 0000f0 */ STR R0, [R1] @ Save the address of the interrupt handler to REG_INTERUPT

@ Jump into main code
/* 0000f4 */ LDR R1, =0x080002C5
/* 0000f8 */ MOV LR, PC @ Set LR to PC
/* 0000fc */ BX R1 @ Jump into RAM
/* 000100 */ B entry_point

val_000104:
/* 000104 */ .word 0x03007F00
val_000108:
/* 000108 */ .word 0x03007FA0



interrupt_handler:
/* 00010c */ MOV32 R3, REG_IE
/* 000114 */ LDR R2, [R3] @ Load both REG_IE and REG_IF as one word
/* 000118 */ AND R1, R2, R2, LSR 0x10 @ Set R1 to all interrupts that have been both registered and acknowledged

@ For a cartridge interrupt, instead of trying to handle it skip right through to the end
/* 00011c */ ANDS R0, R1, INTERRUPT_CART
/* 000120 */ BNE interrupt_handler_fatal

@ Iterate through all interrupts until one is found, and set R2 based on the one triggered.
/* 000124 */ MOV R2, 0x0 @ Set R2 to 0
/* 000128 */ ANDS R0, R1, INTERRUPT_DMA2
/* 00012c */ BNE interrupt_handler_registered
/* 000130 */ ADD R2, R2, 0x4 @ R2 = 0x4
/* 000134 */ ANDS R0, R1, INTERRUPT_VBLANK
/* 000138 */ BNE interrupt_handler_registered
/* 00013c */ ADD R2, R2, 0x4 @ R2 = 0x8
/* 000140 */ ANDS R0, R1, INTERRUPT_HBLANK
/* 000144 */ BNE interrupt_handler_registered
/* 000148 */ ADD R2, R2, 0x4 @ R2 = 0xC
/* 00014c */ ANDS R0, R1, INTERRUPT_VCOUNT
/* 000150 */ BNE interrupt_handler_registered
/* 000154 */ ADD R2, R2, 0x4 @ R2 = 0x10
/* 000158 */ ANDS R0, R1, INTERRUPT_TIMER0
/* 00015c */ BNE interrupt_handler_registered
/* 000160 */ ADD R2, R2, 0x4 @ R2 = 0x14
/* 000164 */ ANDS R0, R1, INTERRUPT_TIMER1
/* 000168 */ BNE interrupt_handler_registered
/* 00016c */ ADD R2, R2, 0x4 @ R2 = 0x18
/* 000170 */ ANDS R0, R1, INTERRUPT_TIMER2
/* 000174 */ BNE interrupt_handler_registered
/* 000178 */ ADD R2, R2, 0x4 @ R2 = 0x1C
/* 00017c */ ANDS R0, R1, INTERRUPT_TIMER3
/* 000180 */ BNE interrupt_handler_registered
/* 000184 */ ADD R2, R2, 0x4 @ R2 = 0x20
/* 000188 */ ANDS R0, R1, INTERRUPT_COMM
/* 00018c */ BNE interrupt_handler_registered
/* 000190 */ ADD R2, R2, 0x4 @ R2 = 0x24
/* 000194 */ ANDS R0, R1, INTERRUPT_DMA0
/* 000198 */ BNE interrupt_handler_registered
/* 00019c */ ADD R2, R2, 0x4 @ R2 = 0x28
/* 0001a0 */ ANDS R0, R1, INTERRUPT_DMA1
/* 0001a4 */ BNE interrupt_handler_registered
/* 0001a8 */ ADD R2, R2, 0x4 @ R2 = 0x2C
/* 0001ac */ ANDS R0, R1, INTERRUPT_DMA3
/* 0001b0 */ BNE interrupt_handler_registered
/* 0001b4 */ ADD R2, R2, 0x4 @ R2 = 0x30
/* 0001b8 */ ANDS R0, R1, INTERRUPT_BUTTON
/* 0001bc */ BNE interrupt_handler_registered

interrupt_handler_registered:
/* 0001c0 */ STRH R0, [R3,0x2]
/* 0001c4 */ LDR R1, =0x03004460
/* 0001c8 */ ADD R1, R1, R2 @ Set R1 to R1 + R2
/* 0001cc */ LDR R0, [R1]
/* 0001d0 */ BX R0

@ Cartridge interrupt
interrupt_handler_fatal:
/* 0001d4 */ MOV R0, 0x0 @ Set R0 to 0
/* 0001d8 */ MOV32 R3, REG_SGCNT1
/* 0001e0 */ STRH R0, [R3]

@ Enter an infinite loop to end the program
interrupt_handler_infinite_loop:
/* 0001e4 */ B interrupt_handler_infinite_loop

.ltorg

.end
