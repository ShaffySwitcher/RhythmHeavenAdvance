@ DMA Source Registers (Write Only)

.set DMACNT_DEST_INC_TYPE_INCREMENT,         (0 << 5)
.set DMACNT_DEST_INC_TYPE_DECREMENT,         (1 << 5)
.set DMACNT_DEST_INC_TYPE_UNCHANGED,         (2 << 5)
.set DMACNT_DEST_INC_TYPE_INCREMENT_WITHOUT, (3 << 5) @ Unsure what this means

.set DMACNT_SRC_INC_TYPE_INCREMENT, (0 << 7)
.set DMACNT_SRC_INC_TYPE_DECREMENT, (1 << 7)
.set DMACNT_SRC_INC_TYPE_UNCHANGED, (2 << 7)

.set DMACNT_START_MODE_IMMEDIATE,   (0 << 12)
.set DMACNT_START_MODE_VBLANK,      (1 << 12)
.set DMACNT_START_MODE_HBLANK,      (2 << 12)
.set DMACNT_START_MODE_FIFO_EMPTY,  (3 << 12) @ Only valid on DMA 1 and 2. Ignores size and count, only transfers single 32 bit quantity.
.set DMACNT_START_MODE_RENDER_LINE, (3 << 12) @ Only valid on DMA 3

.set DMACNT_DEST_INCREMENT_TYPE_MASK, (0x3 << 5)  @ Type of increment applied to destination address
.set DMACNT_SRC_INCREMENT_TYPE_MASK,  (0x3 << 7)  @ Type of increment applied to source address
.set DMACNT_REPEAT,                   (1 << 9)    @ Causes transfer to repeat for each internal if in start mode 1 or 2
.set DMACNT_SIZE,                     (1 << 10)   @ 1 - word quantities, 0 - halfword quantities
.set DMACNT_UNKNOWN,                  (1 << 11)   @ Read only and 0 for DMA 0, 1 and 2
.set DMACNT_START_MODE_MASK,          (0x3 << 12) @ When to begin transferring the data
.set DMACNT_IRQ,                      (1 << 14)   @ Generate an interrupt when done with the data transfer
.set DMACNT_ENABLE,                   (1 << 15)   @ Set to enable DMA operation



.set REG_DMA0SAD,     	IORAMBase + 0xB0 @ DMA channel 0 source address (27 bit)
.set REG_DMA0DAD,     	IORAMBase + 0xB4 @ DMA channel 0 dest address (27 bit)
.set REG_DMA0CNT,	    IORAMBase + 0xB8
.set REG_DMA0CNT_L,     IORAMBase + 0xB8 @ DMA channel 0 count, number of words/halfwords to copy (14 bit)
.set REG_DMA0CNT_H,     IORAMBase + 0xBA @ DMA channel 0 controls
.set REG_DMA1SAD,     	IORAMBase + 0xBC @ DMA channel 1 source address (28 bit)
.set REG_DMA1DAD,     	IORAMBase + 0xC0 @ DMA channel 1 dest address (27 bit)
.set REG_DMA1CNT,	    IORAMBase + 0xC4
.set REG_DMA1CNT_L,     IORAMBase + 0xC4 @ DMA channel 1 count, number of words/halfwords to copy (14 bit)
.set REG_DMA1CNT_H,     IORAMBase + 0xC6 @ DMA channel 1 controls
.set REG_DMA2SAD,     	IORAMBase + 0xC8 @ DMA channel 2 source address (28 bit)
.set REG_DMA2DAD,     	IORAMBase + 0xCC @ DMA channel 2 dest address (27 bit)
.set REG_DMA2CNT,	    IORAMBase + 0xD0
.set REG_DMA2CNT_L,     IORAMBase + 0xD0 @ DMA channel 2 count, number of words/halfwords to copy (14 bit)
.set REG_DMA2CNT_H,     IORAMBase + 0xD2 @ DMA channel 2 controls
.set REG_DMA3SAD,     	IORAMBase + 0xD4 @ DMA channel 3 source address (28 bit)
.set REG_DMA3DAD,     	IORAMBase + 0xD8 @ DMA channel 3 dest address (28 bit)
.set REG_DMA3CNT,	    IORAMBase + 0xDC
.set REG_DMA3CNT_L,     IORAMBase + 0xDC @ DMA channel 3 count, number of words/halfwords to copy (14 bit)
.set REG_DMA3CNT_H,     IORAMBase + 0xDE @ DMA channel 3 controls
