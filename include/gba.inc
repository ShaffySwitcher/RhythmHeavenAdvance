.ifndef GBA_HEADER
.set GBA_HEADER, 0

.include "include/asm_macros.inc"

.set BIOSROMBase,		0x00000000 @ To 0x00004000 (16kb)
.set ExternWorkRAMBase,	0x02000000 @ To 0x02040000 (256kb)
.set InternWorkRAMBase,	0x03000000 @ To 0x03008000 (32kb)
.set IORAMBase,			0x04000000 @ To 0x04000400 (1kb)
.set PaletteRAMBase,	0x05000000 @ To 0x05000400 (1kb)
.set VRAMBase,			0x06000000 @ To 0x06018000 (96kb) Video RAM
.set OAMBase,			0x07000000 @ To 0x07000400 (1kb) Object Attribute Memory
.set GameROMBase,		0x08000000 @ To 0x0A000000 (32mb) Cartridge ROM
.set GameROMImage1Base,	0x0A000000 @ To 0x0C000000 (32mb) Cartridge ROM Mirror 1
.set GameROMImage2Base,	0x0C000000 @ To 0x0E000000 (32mb) Cartridge ROM Mirror 2
.set CartRAMBase,		0x0E000000 @ To 0x0E010000 (64kb) Save data


.set VideoBuffer,       VRAMBase + 0x0
.set BackBuffer,		VRAMBase + 0xA000
.set BGPaletteMem,    	PaletteRAMBase + 0x0
.set OBJPaletteMem, 	PaletteRAMBase + 0x200
		
.set REG_INTERUPT,   	InternWorkRAMBase + 0x7FFC


.include "include/gba_graphics_regs.inc"
.include "include/gba_sound_regs.inc"
.include "include/gba_dma_regs.inc"
.include "include/gba_timer_regs.inc"
.include "include/gba_comm_regs.inc"


@ Keypad Input and Control Registers

@ Input Register (Read Only)
@ A B E S R L U D I J XXXXXX

@ A - A button
@ B - B button
@ E - Select
@ S - Start
@ R - D-pad Right
@ L - D-pad Left
@ U - D-pad Up
@ D - D-pad Down
@ I - Right shoulder
@ J - Left shoulder

@ Bits are 0 when pressed, and 1 when released

.set REG_P1,         	IORAMBase + 0x130

@ Key Control Register - Sets which keypresses generate interrupts
@ A B E S R L U D I J XXXX K T

@ All inputs same as above
@ K - Generate interrupt on keypress
@ T - Interrupt type - if 1 then all specified keys must be pressed, if 0 then any key

.set REG_P1CNT,      	IORAMBase + 0x132


.set REG_RCNT,         	IORAMBase + 0x134
.set REG_JOYCNT,    	IORAMBase + 0x140
.set REG_JOYRE,      	IORAMBase + 0x150
.set REG_JOYRE_L,    	IORAMBase + 0x150
.set REG_JOYRE_H,    	IORAMBase + 0x152
.set REG_JOYTR,      	IORAMBase + 0x154
.set REG_JOYTR_L,    	IORAMBase + 0x154
.set REG_JOYTR_H,    	IORAMBase + 0x156
.set REG_JSTAT,      	IORAMBase + 0x158
.set REG_JSTAT_L,    	IORAMBase + 0x158
.set REG_JSTAT_H,    	IORAMBase + 0x15A



.include "include/gba_interrupt_regs.inc"



@ Internal Memory Control

.set REG_IMC,			IORAMBase + 0x800


.endif
