.ifndef GBA_HEADER
.set GBA_HEADER, 0

.include "include/asm_macros.inc"
.include "include/undefined_syms.inc"

.global func_080002c4

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

.set D_03007F00, 		InternWorkRAMBase + 0x7F00;
.set D_03007FA0, 		InternWorkRAMBase + 0x7FA0;
.set REG_INTERUPT,   	InternWorkRAMBase + 0x7FFC



@ Hardware Registers

.include "include/gba_graphics_regs.inc"
.include "include/gba_sound_regs.inc"
.include "include/gba_dma_regs.inc"
.include "include/gba_timer_regs.inc"
.include "include/gba_comm_regs.inc"
.include "include/gba_input_regs.inc"
.include "include/gba_transfer_regs.inc"
.include "include/gba_interrupt_regs.inc"



@ Internal Memory Control

.set REG_IMC,			IORAMBase + 0x800


.endif
