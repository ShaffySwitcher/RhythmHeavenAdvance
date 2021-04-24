.ifndef GBA_HEADER
.set GBA_HEADER, 0

.macro MOV32 reg,value
	MOV \reg, \value&0xFFFF0000
	ADD \reg, \reg, \value&0xFFFF
.endm

.macro glabel value
	global \value
	\value:
.endm

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


@ Graphics Hardware Registers

@ Display Control Register
@ MMM C A B D F I J K L S U V W

@ M - Video mode (3 bits)
@ C - Game Boy Color mode (always 0)
@ A - Controls starting address of bitmap in bitmapped modes
@ B - Force processing during hblank
@ D - If true sprites are stored 1 dimensionally in VRAM, otherwise 2 dimensionally
@ F - Force display to go blank
@ I - Enable display of BG0
@ J - Enable display of BG1
@ K - Enable display of BG2
@ L - Enable display of BG3
@ S - Enable display of sprites (OAM)
@ U - Enable Window 0
@ V - Enable Window 1
@ W - Enable Sprite Windows

.set REG_DISPCNT,    	IORAMBase + 0x0
.set REG_DISPCNT_H,  	IORAMBase + 0x2



@ REG_DISPSTAT
@ W G Z V H Y XX TTTTTTTT

@ W - V Refresh status. 0 during VDraw, 1 during VBlank
@ G - H Refresh status, same as above
@ Z - VCount Triggered Status
@ V - Enables LCD's VBlank IRQ
@ H - Enables LCD's HBlank IRQ
@ Y - Enable VCount trigger IRQ
@ T - VCount line trigger. Set to the VCount value you wish to will trigger an interrupt (8 bits)

.set REG_DISPSTAT,   	IORAMBase + 0x4
.set REG_VCOUNT,     	IORAMBase + 0x6



@ Background Registers
@ PP SS XX C A MMMMM V ZZ

@ P - Priority, 0 highest 3 lowest (2 bits)
@ S - Starting address of tile data. Address = 0x06000000 + S * 0x4000 (2 bits)
@ C - Mosaic effect
@ A - Color palette type, 1 = 256 color palette, 0 = 16 different 16 color palettes
@ M - Starting address of character tile map. Address = 0x06000000 + M * 0x800 (5 bits)
@ V - Screen Over. Forced to 0 for bgs 0 and 1.
@ Z - Size of tile map. (2 bits)
@	For "text" backgrounds: 
@	 00 : 256x256 (32x32 tiles) 
@	 01 : 512x256 (64x32 tiles) 
@	 10 : 256x512 (32x64 tiles) 
@	 11 : 512x512 (64x64 tiles) 
@
@	For rotational backgrounds: 
@	 00 : 128x128 (16x16 tiles) 
@	 01 : 256x256 (32x32 tiles) 
@	 10 : 512x512 (64x64 tiles)
@	 11 : 1024x1024 (128x128 tiles)

.set REG_BG0CNT,     	IORAMBase + 0x8
.set REG_BG1CNT,     	IORAMBase + 0xA
.set REG_BG2CNT,     	IORAMBase + 0xC
.set REG_BG3CNT,     	IORAMBase + 0xE



@ Horizontal and vertical scroll coordinates for backgrounds. Only first 9 bits are used.

.set REG_BG0HOFS,    	IORAMBase + 0x10
.set REG_BG0VOFS,    	IORAMBase + 0x12
.set REG_BG1HOFS,    	IORAMBase + 0x14
.set REG_BG1VOFS,    	IORAMBase + 0x16
.set REG_BG2HOFS,    	IORAMBase + 0x18
.set REG_BG2VOFS,    	IORAMBase + 0x1A
.set REG_BG3HOFS,    	IORAMBase + 0x1C
.set REG_BG3VOFS,    	IORAMBase + 0x1E



@ Background Rotation / Scaling Registers (Write Only)

@ Fixed point - 8 fraction bits, 7 integer bits
@ PA - Read Source Pixel X Increment
@ PB - Write Destination Pixel X Increment
@ PC - Read Source Pixel Y Increment
@ PD - Write Destination Pixel Y Increment

@ Fixed point - 8 fraction bits, 19 integer bits
@ X, Y - X/Y Coordinate for BG Rotational Background

.set REG_BG2PA,      	IORAMBase + 0x20
.set REG_BG2PB,      	IORAMBase + 0x22
.set REG_BG2PC,      	IORAMBase + 0x24
.set REG_BG2PD,      	IORAMBase + 0x26

.set REG_BG2X,       	IORAMBase + 0x28
.set REG_BG2X_L,     	IORAMBase + 0x28
.set REG_BG2X_H,     	IORAMBase + 0x2A
.set REG_BG2Y,       	IORAMBase + 0x2C
.set REG_BG2Y_L,     	IORAMBase + 0x2C
.set REG_BG2Y_H,     	IORAMBase + 0x2E

.set REG_BG3PA,      	IORAMBase + 0x30
.set REG_BG3PB,      	IORAMBase + 0x32
.set REG_BG3PC,      	IORAMBase + 0x34
.set REG_BG3PD,      	IORAMBase + 0x36

.set REG_BG3X,       	IORAMBase + 0x38
.set REG_BG3X_L,     	IORAMBase + 0x38
.set REG_BG3X_H,     	IORAMBase + 0x3A
.set REG_BG3Y,       	IORAMBase + 0x3C
.set REG_BG3Y_L,     	IORAMBase + 0x3C
.set REG_BG3Y_H,     	IORAMBase + 0x3E

@ Window 0/1 X Coordinates (Nibble 1 rightmost, nibble 2 leftmost)
.set REG_WIN0H,      	IORAMBase + 0x40
.set REG_WIN1H,      	IORAMBase + 0x42

@ Window 0/1 Y Coordinates (Nibble 1 buttom, nibble 2 top)
.set REG_WIN0V,      	IORAMBase + 0x44
.set REG_WIN1V,      	IORAMBase + 0x46



@ Inside Window Settings
@ G H I J K L XX O P Q R S T XX

@ G - BG0 in window 0
@ H - BG1 in window 0
@ I - BG2 in window 0
@ J - BG3 in window 0
@ K - Sprites in window 0
@ L - Blends in window 0
@ O - BG0 in window 1
@ P - BG1 in window 1
@ Q - BG2 in window 1
@ R - BG3 in window 1
@ S - Sprites in window 1
@ T - Blends in window 1

.set REG_WININ,      	IORAMBase + 0x48

@ Outside Window and Sprite Window Settings
@ G H I J K L XX O P Q R S T XX

@ G - BG0 outside
@ H - BG1 outside
@ I - BG2 outside
@ J - BG3 outside
@ K - Sprites outside
@ L - Blends outside
@ O - BG0 in sprite window
@ P - BG1 in sprite window
@ Q - BG2 in sprite window
@ R - BG3 in sprite window
@ S - Sprites in sprite window
@ T - Blends in sprite window

.set REG_WINOUT,     	IORAMBase + 0x4A



@ REG_MOSAIC - Controls size of mosaic
@ IIII JJJJ UUUU VVVV

@ I - BG X Size (4 bits)
@ J - BG Y Size (4 bits)
@ U - Sprite X Size (4 bits)
@ V - Sprite Y Size (4 bits)

.set REG_MOSAIC,     	IORAMBase + 0x4C
.set REG_MOSAIC_L,   	IORAMBase + 0x4C
.set REG_MOSAIC_H,   	IORAMBase + 0x4E



@ Blend Mode
@ G H I J K L MM O P Q R S T

@ G - Blend BG0 (source)
@ H - Blend BG1 (source)
@ I - Blend BG2 (source)
@ J - Blend BG3 (source)
@ K - Blend sprites (source)
@ L - Blend backdrop (source)
@ M - Blend Mode - 0: all effects off, 1: alpha blend, 2: lighten, 3: darken (2 bits)
@ O - Blend BG0 (target)
@ P - Blend BG1 (target)
@ Q - Blend BG2 (target)
@ R - Blend BG3 (target)
@ S - Blend sprites (target)
@ T - Blend backdrop (target)

.set REG_BLDMOD,     	IORAMBase + 0x50



@ Amount of blending
@ AAAAA XXX BBBBB XXX

@ A - Source pixel (layer above) (5 bits)
@ B - Target pixel (layer below) (5 bits)

.set REG_COLEV,      	IORAMBase + 0x52

@ Amount to lighten or darken source layer. Only first 5 bits matter, all values over 16 result in pure black or white

.set REG_COLEY,      	IORAMBase + 0x54



@ Sound Controls - TODO

.set REG_SG10,       	IORAMBase + 0x60
.set REG_SG10_L,     	IORAMBase + 0x60
.set REG_SG10_H,     	IORAMBase + 0x62
.set REG_SG11,       	IORAMBase + 0x64
.set REG_SG20,       	IORAMBase + 0x68
.set REG_SG21,       	IORAMBase + 0x6C
.set REG_SG30,       	IORAMBase + 0x70
.set REG_SG30_L,     	IORAMBase + 0x70
.set REG_SG30_H,     	IORAMBase + 0x72
.set REG_SG31,       	IORAMBase + 0x74
.set REG_SG40,       	IORAMBase + 0x78
.set REG_SG41,       	IORAMBase + 0x7C
.set REG_SGCNT0,     	IORAMBase + 0x80
.set REG_SGCNT0_L,   	IORAMBase + 0x80
.set REG_SGCNT0_H,   	IORAMBase + 0x82
.set REG_SGCNT1,     	IORAMBase + 0x84
.set REG_SGBIAS,     	IORAMBase + 0x88
.set REG_SGWR0,      	IORAMBase + 0x90
.set REG_SGWR0_L,    	IORAMBase + 0x90
.set REG_SGWR0_H,    	IORAMBase + 0x92
.set REG_SGWR1,      	IORAMBase + 0x94
.set REG_SGWR1_L,    	IORAMBase + 0x94
.set REG_SGWR1_H,    	IORAMBase + 0x96
.set REG_SGWR2,      	IORAMBase + 0x98
.set REG_SGWR2_L,    	IORAMBase + 0x98
.set REG_SGWR2_H,    	IORAMBase + 0x9A
.set REG_SGWR3,      	IORAMBase + 0x9C
.set REG_SGWR3_L,    	IORAMBase + 0x9C
.set REG_SGWR3_H,    	IORAMBase + 0x9E
.set REG_SGFIF0A,    	IORAMBase + 0xA0
.set REG_SGFIFOA_L,  	IORAMBase + 0xA0
.set REG_SGFIFOA_H,  	IORAMBase + 0xA2
.set REG_SGFIFOB,    	IORAMBase + 0xA4
.set REG_SGFIFOB_L,  	IORAMBase + 0xA4
.set REG_SGFIFOB_H,  	IORAMBase + 0xA6


@ DMA Source Registers (Write Only)

.set REG_DM0SAD,     	IORAMBase + 0xB0
.set REG_DM0SAD_L,   	IORAMBase + 0xB0
.set REG_DM0SAD_H,   	IORAMBase + 0xB2
.set REG_DM0DAD,     	IORAMBase + 0xB4
.set REG_DM0DAD_L,   	IORAMBase + 0xB4
.set REG_DM0DAD_H,   	IORAMBase + 0xB6
.set REG_DM0CNT,     	IORAMBase + 0xB8
.set REG_DM0CNT_L,   	IORAMBase + 0xB8
.set REG_DM0CNT_H,   	IORAMBase + 0xBA
.set REG_DM1SAD,     	IORAMBase + 0xBC
.set REG_DM1SAD_L,   	IORAMBase + 0xBC
.set REG_DM1SAD_H,   	IORAMBase + 0xBE
.set REG_DM1DAD,     	IORAMBase + 0xC0
.set REG_DM1DAD_L,   	IORAMBase + 0xC0
.set REG_DM1DAD_H,   	IORAMBase + 0xC2
.set REG_DM1CNT,     	IORAMBase + 0xC4
.set REG_DM1CNT_L,   	IORAMBase + 0xC4
.set REG_DM1CNT_H,   	IORAMBase + 0xC6
.set REG_DM2SAD,     	IORAMBase + 0xC8
.set REG_DM2SAD_L,   	IORAMBase + 0xC8
.set REG_DM2SAD_H,   	IORAMBase + 0xCA
.set REG_DM2DAD,     	IORAMBase + 0xCC
.set REG_DM2DAD_L,   	IORAMBase + 0xCC
.set REG_DM2DAD_H,   	IORAMBase + 0xCE
.set REG_DM2CNT,     	IORAMBase + 0xD0
.set REG_DM2CNT_L,   	IORAMBase + 0xD0
.set REG_DM2CNT_H,   	IORAMBase + 0xD2
.set REG_DM3SAD,     	IORAMBase + 0xD4
.set REG_DM3SAD_L,   	IORAMBase + 0xD4
.set REG_DM3SAD_H,   	IORAMBase + 0xD6
.set REG_DM3DAD,     	IORAMBase + 0xD8
.set REG_DM3DAD_L,   	IORAMBase + 0xD8
.set REG_DM3DAD_H,   	IORAMBase + 0xDA
.set REG_DM3CNT,     	IORAMBase + 0xDC
.set REG_DM3CNT_L,   	IORAMBase + 0xDC
.set REG_DM3CNT_H,   	IORAMBase + 0xDE



@ Timer registers

.set REG_TM0D,       	IORAMBase + 0x100
.set REG_TM0CNT,     	IORAMBase + 0x102
.set REG_TM1D,       	IORAMBase + 0x104
.set REG_TM1CNT,     	IORAMBase + 0x106
.set REG_TM2D,       	IORAMBase + 0x108
.set REG_TM2CNT,     	IORAMBase + 0x10A
.set REG_TM3D,       	IORAMBase + 0x10C
.set REG_TM3CNT,     	IORAMBase + 0x10E


@ Serial Communication Registers

.set REG_SCD0,       	IORAMBase + 0x120
.set REG_SCD1,       	IORAMBase + 0x122
.set REG_SCD2,       	IORAMBase + 0x124
.set REG_SCD3,       	IORAMBase + 0x126
.set REG_SCCNT,      	IORAMBase + 0x128
.set REG_SCCNT_L,    	IORAMBase + 0x128
.set REG_SCCNT_H,    	IORAMBase + 0x12A


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



@ Interrupt Registers

.set INT_VBLANK, 	0x0001
.set INT_HBLANK, 	0x0002
.set INT_VCOUNT, 	0x0004
.set INT_TIMER0, 	0x0008
.set INT_TIMER1, 	0x0010
.set INT_TIMER2, 	0x0020
.set INT_TIMER3, 	0x0040
.set INT_COM, 	    0x0080 @ Serial Communication Interrupt
.set INT_DMA0,  	0x0100
.set INT_DMA1,	    0x0200
.set INT_DMA2,  	0x0400
.set INT_DMA3,  	0x0800
.set INT_BUTTON, 	0x1000 @ Key interrupt
.set INT_CART,  	0x2000 @ Cassette interrupt

 @ Interrupt Enable Register - Which interrupts are enabled / disabled

.set REG_IE,         	IORAMBase + 0x200

 @ Interrupt Flags Register - Which interrupt is being serviced

.set REG_IF,         	IORAMBase + 0x202

@ Wait State Control

.set REG_WSCNT,      	IORAMBase + 0x204

@ Interrupt Master Enable

.set REG_IME,        	IORAMBase + 0x208

.set REG_HALTCNT,      	IORAMBase + 0x300

@ Internal Memory Control

.set REG_IMC,			IORAMBase + 0x800


.endif
