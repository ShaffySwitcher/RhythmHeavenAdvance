asm("glabel func_080002c4 \n\
/* 080002c4 */ PUSH {R4, R5, LR} \n\
/* 080002c6 */ SUB SP, 0x4 \n\
 \n\
/* 080002c8 */ LDR R1, =REG_WSCNT @ Wait State control - not yet labelled \n\
/* 080002ca */ LDR R2, =0x45B7 \n\
/* 080002cc */ ADDS R0, R2, 0x0 \n\
/* 080002ce */ STRH R0, [R1] @ Set wait state control to something \n\
 \n\
/* 080002d0 */ MOVS R2, 0x0 \n\
/* 080002d2 */ STR R2, [SP] @ Store 0 at SP to be copied \n\
 \n\
/* 080002d4 */ LDR R0, =REG_DMA3SAD \n\
@ Set DMA channel 3 source address to current SP \n\
/* 080002d6 */ MOV R3, SP \n\
/* 080002d8 */ STR R3, [R0] @ REG_DMA3SAD \n\
@ Set DMA channel 3 dest address to 0x02000000 (ExternWorkRAMBase) \n\
/* 080002da */ MOVS R1, 0x80 \n\
/* 080002dc */ LSLS R1, R1, 0x12 @ Set R1 to 0x02000000 (ExternWorkRAMBase) \n\
/* 080002de */ STR R1, [R0, 0x4] @ REG_DMA3DAD \n\
@ Set DMA channel 3 settings \n\
/* 080002e0 */ LDR R1, =((1 | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16) \n\
/* 080002e2 */ STR R1, [R0, 0x8] @ REG_DMA3CNT \n\
/* 080002e4 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT \n\
 \n\
/* 080002e6 */ STR R2, [SP] @ Store 0 at SP to be copied \n\
@ Set DMA channel 3 source address to current SP \n\
/* 080002e8 */ STR R3, [R0] @ REG_DMA3SAD \n\
@ Set DMA channel 3 dest address to 0x03000000 (InternWorkRAMBase) \n\
/* 080002ea */ MOVS R1, 0xC0 \n\
/* 080002ec */ LSLS R1, R1, 0x12 @ Set R1 to 0x03000000 (InternWorkRAMBase) \n\
/* 080002ee */ STR R1, [R0, 0x4] @ REG_DMA3DAD \n\
@ Copy 0x1F80 words (0x7E00 bytes) of zeroes from 0x03000000 to 0x03007E00. \n\
/* 080002f0 */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x1F80) \n\
/* 080002f2 */ STR R1, [R0, 0x8] @ REG_DMA3CNT \n\
/* 080002f4 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT \n\
 \n\
@ Set DMA channel 3 source address to the location of the interrupt handler \n\
/* 080002f6 */ LDR R1, =interrupt_handler \n\
/* 080002f8 */ STR R1, [R0] @ REG_DMA3SAD \n\
@ Set DMA channel 3 dest address to the new location of the interrupt handler \n\
/* 080002fa */ LDR R3, =interrupt_handler_intern \n\
/* 080002fc */ STR R3, [R0, 0x4] @ REG_DMA3DAD \n\
@ Copy 0x80 words (0x200 bytes) from the interrupt handler to the new location. \n\
/* 080002fe */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x80) \n\
/* 08000300 */ STR R1, [R0, 0x8] @ REG_DMA3CNT \n\
/* 08000302 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT \n\
 \n\
@ Set DMA channel 3 source address to D_0804F300 \n\
/* 08000304 */ LDR R1, =D_0804F300 \n\
/* 08000306 */ STR R1, [R0] @ REG_DMA3SAD \n\
@ Set DMA channel 3 dest address to D_03004460 \n\
/* 08000308 */ LDR R1, =D_03004460 \n\
/* 0800030a */ STR R1, [R0, 0x4] @ REG_DMA3DAD \n\
@ Copy 0xE words (0x38 bytes) from D_0804F300 to D_03004460. \n\
/* 0800030c */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0xE) \n\
/* 0800030e */ STR R1, [R0, 0x8] @ REG_DMA3CNT \n\
/* 08000310 */ LDR R1, [R0, 0x8] @ REG_DMA3CNT \n\
 \n\
@ Move the copied interrupt handler into REG_INTERRUPT. \n\
/* 08000312 */ LDR R1, =REG_INTERUPT \n\
/* 08000314 */ STR R3, [R1] \n\
 \n\
/* 08000316 */ STR R2, [SP] @ Store 0 at SP to be copied \n\
/* 08000318 */ MOV R1, SP @ Set R1 to the current SP \n\
@ Set DMA channel 3 source address to current SP \n\
/* 0800031a */ STR R1, [R0] @ REG_DMA3SAD \n\
@ Set DMA channel 3 dest address to 0x06000000 (VRAMBase) \n\
/* 0800031c */ MOVS R1, 0xC0 \n\
/* 0800031e */ LSLS R1, R1, 0x13  @ Set R1 to 0x06000000 (VRAMBase) \n\
/* 08000320 */ STR R1, [R0, 0x4] @ REG_DMA3DAD \n\
@ Copy 0x6000 words (0x18000 bytes) of zeroes from 0x06000000 to 0x06018000. (All of VRAM) \n\
/* 08000322 */ LDR R1, =((DMACNT_DEST_INC_TYPE_INCREMENT | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_SIZE | DMACNT_START_MODE_IMMEDIATE | DMACNT_ENABLE) << 16 + 0x6000) \n\
/* 08000324 */ STR R1, [R0, 0x8] @ REG_DMA3CNT \n\
/* 08000326 */ LDR R0, [R0, 0x8] @ REG_DMA3CNT \n\
 \n\
/* 08000328 */ MOVS R1, 0xA0 \n\
/* 0800032a */ LSLS R1, R1, 0x13 @ Set R1 to 0x05000000 (PaletteRAMBase) \n\
/* 0800032c */ LDR R3, =0x7FFF \n\
/* 0800032e */ ADDS R0, R3, 0x0 @ Set R0 to 0x7FFF \n\
/* 08000330 */ STRH R0, [R1] @ Save 0x7FFF to PaletteRAMBase \n\
 \n\
/* 08000332 */ MOVS R0, 0x80 \n\
/* 08000334 */ LSLS R0, R0, 0x13 @ Set R0 to 0x04000000 (REG_DISPCNT) \n\
/* 08000336 */ MOVS R1, 0x0 @ Set R1 to 0 \n\
/* 08000338 */ STRH R2, [R0] @ Reset all bits in REG_DISPCNT (R2 is still 0) \n\
 \n\
/* 0800033a */ LDR R4, =REG_IME \n\
/* 0800033c */ STRH R2, [R4] @ Reset all bits in REG_IME - not yet labelled \n\
/* 0800033e */ LDR R5, =D_03004498 \n\
/* 08000340 */ STRB R1, [R5] @ Store 0 at D_03004498 \n\
/* 08000342 */ BL func_08000718 \n\
/* 08000346 */ BL func_08000224 \n\
/* 0800034a */ BL func_0801e100 \n\
/* 0800034e */ BL func_0804c778 \n\
/* 08000352 */ MOVS R0, 0x23 @ Set R0 to 0x23 \n\
/* 08000354 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08000356 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08000358 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0800035a */ BL func_0804c340 \n\
/* 0800035e */ LDR R0, =D_030046a8 \n\
/* 08000360 */ LDR R0, [R0] \n\
/* 08000362 */ MOVS R1, 0xB1 @ Set R1 to 0xB1 \n\
/* 08000364 */ LSLS R1, R1, 0x2 \n\
/* 08000366 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08000368 */ LDR R0, [R0] \n\
/* 0800036a */ BL func_080029d8 \n\
/* 0800036e */ LDR R1, =REG_DISPSTAT \n\
/* 08000370 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08000372 */ STRH R0, [R1] \n\
/* 08000374 */ LDR R1, =REG_IE \n\
/* 08000376 */ LDR R2, =0x2441 \n\
/* 08000378 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800037a */ STRH R0, [R1] \n\
/* 0800037c */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800037e */ LDR R3, =0xFFFF \n\
/* 08000380 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08000382 */ STRH R0, [R1] \n\
/* 08000384 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08000386 */ STRH R0, [R4] \n\
/* 08000388 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800038a */ BL func_0801d860 \n\
/* 0800038e */ LDR R4, =D_089dda4c \n\
/* 08000390 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08000392 */ BL func_0800046C \n\
/* 08000396 */ LDR R0, =D_08935fac \n\
/* 08000398 */ LDR R1, [R0] \n\
/* 0800039a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800039c */ BL func_080006b0 \n\
/* 080003a0 */ BL func_080015bc \n\
/* 080003a4 */ LDR R4, =D_030046a0 \n\
 \n\
branch_080003a6: \n\
/* 080003a6 */ BL func_080013a8 \n\
/* 080003aa */ BL func_08001964 \n\
/* 080003ae */ BL func_080015bc \n\
/* 080003b2 */ LDR R0, [R4] \n\
/* 080003b4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080003b6 */ STR R0, [R4] \n\
/* 080003b8 */ BL func_08000490 \n\
/* 080003bc */ LDRB R0, [R5] \n\
/* 080003be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080003c0 */ BEQ branch_080003f0 \n\
/* 080003c2 */ LDR R0, =REG_KEY \n\
/* 080003c4 */ LDRH R1, [R0] @ Load current inputs into R1 \n\
/* 080003c6 */ MVNS R1, R1 @ Invert input flags so when a key is pressed the bit is set. \n\
/* 080003c8 */ LSLS R1, R1, 0x10 \n\
/* 080003ca */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 080003cc */ LSLS R0, R0, 0xC \n\
/* 080003ce */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080003d0 */ LSRS R0, R0, 0x10 \n\
/* 080003d2 */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 080003d4 */ BNE branch_080003f0 \n\
/* 080003d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080003d8 */ LDR R1, =0x3FF \n\
/* 080003da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080003dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080003de */ BL func_08001724 \n\
/* 080003e2 */ LDR R0, =D_089dd97c \n\
/* 080003e4 */ BL func_08000568 \n\
/* 080003e8 */ BL func_08009548 \n\
/* 080003ec */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080003ee */ STRB R0, [R5] \n\
 \n\
branch_080003f0: \n\
/* 080003f0 */ BL func_0804c170 \n\
/* 080003f4 */ BL func_0800b590 \n\
/* 080003f8 */ BL func_08003ff0 \n\
/* 080003fc */ B branch_080003a6 \n\
 \n\
.ltorg \n\
");
