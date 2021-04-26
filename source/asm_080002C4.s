.section .text
.thumb
.syntax unified

.include "include/gba.inc"

/* 080002c4 */ PUSH {R4, R5, LR}
/* 080002c6 */ SUB SP, 0x4

/* 080002c8 */ LDR R1, =REG_WSCNT @ Wait State control - not yet labelled
/* 080002ca */ LDR R2, =0x45B7
/* 080002cc */ ADDS R0, R2, 0x0
/* 080002ce */ STRH R0, [R1] @ Set wait state control to something

/* 080002d0 */ MOVS R2, 0x0
/* 080002d2 */ STR R2, [SP] @ Store 0 at SP to be copied

/* 080002d4 */ LDR R0, =REG_DMA3SAD
@ Set DMA channel 3 source address to current SP
/* 080002d6 */ MOV R3, SP
/* 080002d8 */ STR R3, [R0] @ REG_DMA3SAD
@ Set DMA channel 3 dest address to 0x02000000 (ExternWorkRAMBase)
/* 080002da */ MOVS R1, 0x80
/* 080002dc */ LSLS R1, R1, 0x12 @ Set R1 to 0x02000000 (ExternWorkRAMBase) 
/* 080002de */ STR R1, [R0, 0x4] @ REG_DMA3DAD
@ Set DMA channel 3 settings
/* 080002e0 */ LDR R1, =((1 | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16)
/* 080002e2 */ STR R1, [R0, 0x8] @ REG_DMA3CNT
/* 080002e4 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT

/* 080002e6 */ STR R2, [SP] @ Store 0 at SP to be copied
@ Set DMA channel 3 source address to current SP
/* 080002e8 */ STR R3, [R0] @ REG_DMA3SAD
@ Set DMA channel 3 dest address to 0x03000000 (InternWorkRAMBase)
/* 080002ea */ MOVS R1, 0xC0
/* 080002ec */ LSLS R1, R1, 0x12 @ Set R1 to 0x03000000 (InternWorkRAMBase)
/* 080002ee */ STR R1, [R0, 0x4] @ REG_DMA3DAD
@ Copy 0x1F80 words (0x7E00 bytes) of zeroes from 0x03000000 to 0x03007E00.
/* 080002f0 */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x1F80)
/* 080002f2 */ STR R1, [R0, 0x8] @ REG_DMA3CNT
/* 080002f4 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT

@ Set DMA channel 3 source address to the location of the interrupt handler
/* 080002f6 */ LDR R1, =interrupt_handler
/* 080002f8 */ STR R1, [R0] @ REG_DMA3SAD
@ Set DMA channel 3 dest address to 0x030044A0
/* 080002fa */ LDR R3, =0x030044A0 @!Pointer
/* 080002fc */ STR R3, [R0, 0x4] @ REG_DMA3DAD
@ Copy 0x80 words (0x200 bytes) from the interrupt handler to the new location.
/* 080002fe */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x80)
/* 08000300 */ STR R1, [R0, 0x8] @ REG_DMA3CNT
/* 08000302 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT

@ Set DMA channel 3 source address to 0x0804F300
/* 08000304 */ LDR R1, =0x0804F300 @!Pointer
/* 08000306 */ STR R1, [R0] @ REG_DMA3SAD
@ Set DMA channel 3 dest address to 0x03004460
/* 08000308 */ LDR R1, =0x03004460 @!Pointer
/* 0800030a */ STR R1, [R0, 0x4] @ REG_DMA3DAD
@ Copy 0xE words (0x38 bytes) from 0x0804F300 to 0x03004460.
/* 0800030c */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0xE)
/* 0800030e */ STR R1, [R0, 0x8] @ REG_DMA3CNT
/* 08000310 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT

@ Move the copied interrupt handler into REG_INTERRUPT.
/* 08000312 */ LDR R1, =REG_INTERUPT
/* 08000314 */ STR R3, [R1]

/* 08000316 */ STR R2, [SP] @ Store 0 at SP to be copied
/* 08000318 */ MOV R1, SP @ Set R1 to the current SP
@ Set DMA channel 3 source address to current SP
/* 0800031a */ STR R1, [R0] @ REG_DMA3SAD
@ Set DMA channel 3 dest address to 0x06000000 (VRAMBase)
/* 0800031c */ MOVS R1, 0xC0
/* 0800031e */ LSLS R1, R1, 0x13  @ Set R1 to 0x06000000 (VRAMBase)
/* 08000320 */ STR R1, [R0, 0x4] @ REG_DMA3DAD
@ Copy 0x6000 words (0x18000 bytes) of zeroes from 0x06000000 to 0x06018000. (All of VRAM)
/* 08000322 */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x6000)
/* 08000324 */ STR R1, [R0, 0x8] @ REG_DMA3CNT
/* 08000326 */ LDR R0, [R0, 0x8] @ REG_DMA3CNT

/* 08000328 */ MOVS R1, 0xA0
/* 0800032a */ LSLS R1, R1, 0x13 @ Set R1 to 0x05000000 (PaletteRAMBase)
/* 0800032c */ LDR R3, =0x7FFF
/* 0800032e */ ADDS R0, R3, 0x0 @ Set R0 to 0x7FFF
/* 08000330 */ STRH R0, [R1] @ Save 0x7FFF to PaletteRAMBase

/* 08000332 */ MOVS R0, 0x80
/* 08000334 */ LSLS R0, R0, 0x13 @ Set R0 to 0x04000000 (REG_DISPCNT)
/* 08000336 */ MOVS R1, 0x0 @ Set R1 to 0
/* 08000338 */ STRH R2, [R0] @ Reset all bits in REG_DISPCNT (R2 is still 0)

/* 0800033a */ LDR R4, =REG_IME
/* 0800033c */ STRH R2, [R4] @ Reset all bits in REG_IME - not yet labelled
/* 0800033e */ LDR R5, =0x03004498 @!Pointer
/* 08000340 */ STRB R1, [R5] @ Store 0 at 0x03004498
/* 08000342 */ BL 0x8000718 @!Pointer
/* 08000346 */ BL func_08000224
/* 0800034a */ BL 0x801e100 @!Pointer
/* 0800034e */ BL 0x804c778 @!Pointer
/* 08000352 */ MOVS R0, 0x23 @ Set R0 to 0x23
/* 08000354 */ MOVS R1, 0x2 @ Set R1 to 0x2
/* 08000356 */ MOVS R2, 0x2 @ Set R2 to 0x2
/* 08000358 */ MOVS R3, 0x4 @ Set R3 to 0x4
/* 0800035a */ BL 0x804c340 @!Pointer
/* 0800035e */ LDR R0, =0x030046A8 @!Pointer
/* 08000360 */ LDR R0, [R0]
/* 08000362 */ MOVS R1, 0xB1 @ Set R1 to 0xB1
/* 08000364 */ LSLS R1, R1, 0x2
/* 08000366 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1
/* 08000368 */ LDR R0, [R0]
/* 0800036a */ BL 0x80029d8 @!Pointer
/* 0800036e */ LDR R1, =REG_DISPSTAT
/* 08000370 */ MOVS R0, 0x8 @ Set R0 to 0x8
/* 08000372 */ STRH R0, [R1]
/* 08000374 */ LDR R1, =REG_IE
/* 08000376 */ LDR R2, =0x2441
/* 08000378 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0
/* 0800037a */ STRH R0, [R1]
/* 0800037c */ ADDS R1, 0x2 @ Add 0x2 to R1
/* 0800037e */ LDR R3, =0xFFFF
/* 08000380 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0
/* 08000382 */ STRH R0, [R1]
/* 08000384 */ MOVS R0, 0x1 @ Set R0 to 0x1
/* 08000386 */ STRH R0, [R4]
/* 08000388 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 0800038a */ BL 0x801d860 @!Pointer
/* 0800038e */ LDR R4, =0x089DDA4C @!Pointer
/* 08000390 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 08000392 */ BL 0x800046c @!Pointer
/* 08000396 */ LDR R0, =0x08935FAC @!Pointer
/* 08000398 */ LDR R1, [R0]
/* 0800039a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0
/* 0800039c */ BL 0x80006b0 @!Pointer
/* 080003a0 */ BL 0x80015bc @!Pointer
/* 080003a4 */ LDR R4, =0x030046A0 @!Pointer
/* 080003a6 */ BL 0x80013a8 @!Pointer
/* 080003aa */ BL 0x8001964 @!Pointer
/* 080003ae */ BL 0x80015bc @!Pointer
/* 080003b2 */ LDR R0, [R4]
/* 080003b4 */ ADDS R0, 0x1 @ Add 0x1 to R0
/* 080003b6 */ STR R0, [R4]
/* 080003b8 */ BL 0x8000490 @!Pointer
/* 080003bc */ LDRB R0, [R5]
/* 080003be */ CMP R0, 0x0 @ Compare R0 and 0x0
/* 080003c0 */ BEQ branch_080003f0 @!Pointer
/* 080003c2 */ LDR R0, =REG_KEY
/* 080003c4 */ LDRH R1, [R0] @ Load current inputs into R1
/* 080003c6 */ MVNS R1, R1 @ Invert input flags so when a key is pressed the bit is set.
/* 080003c8 */ LSLS R1, R1, 0x10
/* 080003ca */ MOVS R0, 0xF0 @ Set R0 to 0xF0
/* 080003cc */ LSLS R0, R0, 0xC
/* 080003ce */ ANDS R0, R1 @ Set R0 to R0 & R1
/* 080003d0 */ LSRS R0, R0, 0x10
/* 080003d2 */ CMP R0, 0xF @ Compare R0 and 0xF
/* 080003d4 */ BNE branch_080003f0 @!Pointer
/* 080003d6 */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 080003d8 */ LDR R1, =0x3FF
/* 080003da */ MOVS R2, 0x0 @ Set R2 to 0x0
/* 080003dc */ MOVS R3, 0x0 @ Set R3 to 0x0
/* 080003de */ BL 0x8001724 @!Pointer
/* 080003e2 */ LDR R0, =0x089DD97C @!Pointer
/* 080003e4 */ BL 0x8000568 @!Pointer
/* 080003e8 */ BL 0x8009548 @!Pointer
/* 080003ec */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 080003ee */ STRB R0, [R5]

branch_080003f0:
/* 080003f0 */ BL 0x804c170 @!Pointer
/* 080003f4 */ BL 0x800b590 @!Pointer
/* 080003f8 */ BL 0x8003ff0 @!Pointer
/* 080003fc */ B 0x80003a6 @!Pointer

.ltorg

.end

