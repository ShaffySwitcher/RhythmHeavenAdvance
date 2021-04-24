@ Graphics Hardware Registers

@ Display Control Register

.set REG_DISPCNT,    	IORAMBase + 0x0

.set VIDEO_MODE_4TEXT, 				0 @ Backgrounds 0 to 3 are all text backgrounds
.set VIDEO_MODE_2TEXT_1ROT, 		1 @ Backgrounds 0 and 1 are text backgrounds, background 2 is a rotation / scaling background
.set VIDEO_MODE_2ROT, 				2 @ Backgrounds 2 and 3 are rotation / scaling backgrounds
.set VIDEO_MODE_16BIT_BMP, 			3 @ 16-bit bitmapped 240x160
.set VIDEO_MODE_8BIT_BMP, 			4 @ 8-bit bitmapped 240x160
.set VIDEO_MODE_16BIT_BMP_SMALL,	5 @ 16-bit bitmapped 160x128

.set DISPCNT_VIDEO_MODE_MASK,       0x0007
.set DISPCNT_GBC_MODE, 				(1 << 4)  @ Game Boy Color mode (always 0)
.set DISPCNT_BMP_ADDR,				(1 << 5)  @ Controls starting address of bitmap in bitmapped modes
.set DISPCNT_HBLANK_FORCE_PROC, 	(1 << 6)  @ Force processing during hblank
.set DISPCNT_SPRITE_DIM, 			(1 << 7)  @ If true sprites are stored 1 dimensionally in VRAM, otherwise 2 dimensionally
.set DISPCNT_FORCE_BLANK, 			(1 << 8)  @ Force display to go blank
.set DISPCNT_DISPLAY_BG0, 			(1 << 9)  @ Enable display of BG0
.set DISPCNT_DISPLAY_BG1, 			(1 << 10) @ Enable display of BG1
.set DISPCNT_DISPLAY_BG2, 			(1 << 11) @ Enable display of BG2
.set DISPCNT_DISPLAY_BG3, 			(1 << 12) @ Enable display of BG3
.set DISPCNT_DISPLAY_OAM, 			(1 << 13) @ Enable display of sprites
.set DISPCNT_ENABLE_WINDOW0, 		(1 << 14) @ Enable Window 0
.set DISPCNT_ENABLE_WINDOW1, 		(1 << 15) @ Enable Window 1
.set DISPCNT_ENABLE_SPRITE_WINDOWS, (1 << 16) @ Enable Sprite Windows

.set REG_DISPCNT_H,  	IORAMBase + 0x2



.set REG_DISPSTAT,   	IORAMBase + 0x4

.set DISPSTAT_VREFRESH, 				(1 << 0) 	@ V Refresh status. 0 during VDraw, 1 during VBlank
.set DISPSTAT_HREFRESH, 				(1 << 1) 	@ H Refresh status, same as above
.set DISPSTAT_VCOUNT_TRIGGERED, 		(1 << 2) 	@ VCount Triggered status, set to 1 when Y trigger interrupt occurs
.set DISPSTAT_VBLANK_IRQ, 				(1 << 3) 	@ Enables VBlank IRQ, interrupt goes off at start of VBlank
.set DISPSTAT_HBLANK_IRQ, 				(1 << 4) 	@ Enables HBlank IRQ, interrupt goes off at start of HBlank
.set DISPSTAT_VCOUNT_IRQ, 				(1 << 5) 	@ Enables VCount trigger IRQ, interrupt goes off when VCount line trigger is reached.
.set DISPSTAT_VCOUNT_LINE_TRIG_MASK, 	(0xFF << 8) @ Line that will cause the interrupt

.set REG_VCOUNT,     	IORAMBase + 0x6 @ Current Y location of LCD hardware



@ Background Registers

.set REG_BG0CNT,     	IORAMBase + 0x8
.set REG_BG1CNT,     	IORAMBase + 0xA
.set REG_BG2CNT,     	IORAMBase + 0xC
.set REG_BG3CNT,     	IORAMBase + 0xE

.set BG_PRIORITY_HIGHEST, 	0
.set BG_PRIORITY_HIGH, 		1
.set BG_PRIORITY_LOW, 		2
.set BG_PRIORITY_LOWEST, 	3

.set BG_TXT_TILEMAP_32x32, 	0
.set BG_TXT_TILEMAP_64x32, 	1
.set BG_TXT_TILEMAP_32x64, 	2
.set BG_TXT_TILEMAP_64x64, 	3

.set BG_ROT_TILEMAP_16x16, 	0
.set BG_ROT_TILEMAP_32x32, 	1
.set BG_ROT_TILEMAP_64x64, 	2
.set BG_ROT_TILEMAP_128x128,3

.set BGCNT_PRIORITY_MASK, 		0x0003 		 @ Priority, 0 highest, 3 lowest
.set BGCNT_TILEDATA_ADDR_MASK, 	(0x03 << 2)  @ Starting address of tile data. Address = 0x06000000 + S * 0x4000
.set BGCNT_MOSAIC_EFFECT, 		(1 << 6) 	 @ Mosaic effect
.set BGCNT_256_PALETTE, 		(1 << 7) 	 @ Color palette type, 1 = 256 color palette, 0 = 16 different 16 color palettes
.set BGCNT_TILEMAP_ADDR_MASK, 	(0x1F << 8)	 @ Starting address of character tile map. Address = 0x06000000 + M * 0x800
.set BGCNT_SCREEN_OVER, 		(1 << 13) 	 @ Screen Over. Forced to 0 for bgs 0 and 1.
.set BGCNT_TILEMAP_SIZE_MASK, 	(0x03 << 14) @ Size of tile map



@ Horizontal and vertical scroll coordinates for backgrounds. Only first 10 bits (up to 0x3FF) are used. (Write Only)

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



@ Windowing Registers

@ Window 0/1 X Coordinates (Nibble 1 rightmost, nibble 2 leftmost)
.set REG_WIN0H,      	IORAMBase + 0x40
.set REG_WIN1H,      	IORAMBase + 0x42

@ Window 0/1 Y Coordinates (Nibble 1 buttom, nibble 2 top)
.set REG_WIN0V,      	IORAMBase + 0x44
.set REG_WIN1V,      	IORAMBase + 0x46

@ Inside Window Settings

.set REG_WININ,      	IORAMBase + 0x48

.set WININ_W0_BG0, 		(1 << 0)
.set WININ_W0_BG1, 		(1 << 1)
.set WININ_W0_BG2, 		(1 << 2)
.set WININ_W0_BG3, 		(1 << 3)
.set WININ_W0_SPRITES, 	(1 << 4)
.set WININ_W0_BLENDS, 	(1 << 5)
.set WININ_W1_BG0, 		(1 << 8)
.set WININ_W1_BG1, 		(1 << 9)
.set WININ_W1_BG2, 		(1 << 10)
.set WININ_W1_BG3, 		(1 << 11)
.set WININ_W1_SPRITES, 	(1 << 12)
.set WININ_W1_BLENDS, 	(1 << 13)

@ Outside Window and Sprite Window Settings

.set REG_WINOUT,     	IORAMBase + 0x4A

.set WINOUT_OUT_BG0, 		(1 << 0)
.set WINOUT_OUT_BG1, 		(1 << 1)
.set WINOUT_OUT_BG2, 		(1 << 2)
.set WINOUT_OUT_BG3, 		(1 << 3)
.set WINOUT_OUT_SPRITES, 	(1 << 4)
.set WINOUT_OUT_BLENDS, 	(1 << 5)
.set WINOUT_SPRW_BG0, 		(1 << 8)
.set WINOUT_SPRW_BG1, 		(1 << 9)
.set WINOUT_SPRW_BG2, 		(1 << 10)
.set WINOUT_SPRW_BG3, 		(1 << 11)
.set WINOUT_SPRW_SPRITES, 	(1 << 12)
.set WINOUT_SPRW_BLENDS, 	(1 << 13)



@ REG_MOSAIC - Controls size of mosaic

.set REG_MOSAIC,     	IORAMBase + 0x4C

.set MOSAIC_BG_XSIZE_MASK,  0x000F
.set MOSAIC_BG_YSIZE_MASK,  0x00F0
.set MOSAIC_SPR_XSIZE_MASK, 0x0F00
.set MOSAIC_SPR_YSIZE_MASK, 0xF000

.set REG_MOSAIC_H,   	IORAMBase + 0x4E



@ Blend Mode

.set REG_BLDMOD,     	IORAMBase + 0x50

.set BLEND_MODE_OFF, 	 0
.set BLEND_MODE_ALPHA,   1
.set BLEND_MODE_LIGHTEN, 2
.set BLEND_MODE_DARKEN,  3

.set BLDMOD_BG0_SRC, 		(1 << 0)
.set BLDMOD_BG1_SRC, 		(1 << 1)
.set BLDMOD_BG2_SRC, 		(1 << 2)
.set BLDMOD_BG3_SRC, 		(1 << 3)
.set BLDMOD_SPRITES_SRC, 	(1 << 4)
.set BLDMOD_BACKDROP_SRC, 	(1 << 5)
.set BLDMOD_BLEND_MODE_MASK,(0x3 << 6)
.set BLDMOD_BG0_TGT, 		(1 << 8)
.set BLDMOD_BG1_TGT, 		(1 << 9)
.set BLDMOD_BG2_TGT, 		(1 << 10)
.set BLDMOD_BG3_TGT, 		(1 << 11)
.set BLDMOD_SPRITES_TGT, 	(1 << 12)
.set BLDMOD_BACKDROP_TGT, 	(1 << 13)

@ Amount of blending

.set REG_COLEV,      	IORAMBase + 0x52

.set COLEV_SRC_PIXEL_MASK, 0x1F			@ Layer above
.set COLEV_TGT_PIXEL_MASK, (0x1F << 8)  @ Layer below

@ Amount to lighten or darken source layer. Only first 5 bits matter, and all values over 16 (from 16-31) result in pure black or white

.set REG_COLEY,      	IORAMBase + 0x54
