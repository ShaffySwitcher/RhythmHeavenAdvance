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
