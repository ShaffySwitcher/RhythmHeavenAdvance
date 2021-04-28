// DMA Source Registers (Write Only)

#define DMACNT_DEST_INC_TYPE_INCREMENT         (0 << 5)
#define DMACNT_DEST_INC_TYPE_DECREMENT         (1 << 5)
#define DMACNT_DEST_INC_TYPE_UNCHANGED         (2 << 5)
#define DMACNT_DEST_INC_TYPE_INCREMENT_WITHOUT (3 << 5) // Unsure what this means

#define DMACNT_SRC_INC_TYPE_INCREMENT (0 << 7)
#define DMACNT_SRC_INC_TYPE_DECREMENT (1 << 7)
#define DMACNT_SRC_INC_TYPE_UNCHANGED (2 << 7)

#define DMACNT_START_MODE_IMMEDIATE   (0 << 12)
#define DMACNT_START_MODE_VBLANK      (1 << 12)
#define DMACNT_START_MODE_HBLANK      (2 << 12)
#define DMACNT_START_MODE_FIFO_EMPTY  (3 << 12) // Only valid on DMA 1 and 2. Ignores size and count only transfers single 32 bit quantity.
#define DMACNT_START_MODE_RENDER_LINE (3 << 12) // Only valid on DMA 3

#define DMACNT_DEST_INCREMENT_TYPE_MASK (0x3 << 5)  // Type of increment applied to destination address
#define DMACNT_SRC_INCREMENT_TYPE_MASK  (0x3 << 7)  // Type of increment applied to source address
#define DMACNT_REPEAT                   (1 << 9)    // Causes transfer to repeat for each internal if in start mode 1 or 2
#define DMACNT_SIZE                     (1 << 10)   // 1 - word quantities 0 - halfword quantities
#define DMACNT_UNKNOWN                  (1 << 11)   // Read only and 0 for DMA 0 1 and 2
#define DMACNT_START_MODE_MASK          (0x3 << 12) // When to begin transferring the data
#define DMACNT_IRQ                      (1 << 14)   // Generate an interrupt when done with the data transfer
#define DMACNT_ENABLE                   (1 << 15)   // Set to enable DMA operation


#define REG_DMA0SAD   *(volatile u32 *)(IORAMBase + 0xB0) // DMA channel 0 source address (27 bit)
#define REG_DMA0DAD   *(volatile u32 *)(IORAMBase + 0xB4) // DMA channel 0 dest address (27 bit)
#define REG_DMA0CNT	  *(volatile u32 *)(IORAMBase + 0xB8)
#define REG_DMA0CNT_L *(volatile u16 *)(IORAMBase + 0xB8) // DMA channel 0 count number of words/halfwords to copy (14 bit)
#define REG_DMA0CNT_H *(volatile u16 *)(IORAMBase + 0xBA) // DMA channel 0 controls
#define REG_DMA1SAD   *(volatile u32 *)(IORAMBase + 0xBC) // DMA channel 1 source address (28 bit)
#define REG_DMA1DAD   *(volatile u32 *)(IORAMBase + 0xC0) // DMA channel 1 dest address (27 bit)
#define REG_DMA1CNT	  *(volatile u32 *)(IORAMBase + 0xC4)
#define REG_DMA1CNT_L *(volatile u16 *)(IORAMBase + 0xC4) // DMA channel 1 count number of words/halfwords to copy (14 bit)
#define REG_DMA1CNT_H *(volatile u16 *)(IORAMBase + 0xC6) // DMA channel 1 controls
#define REG_DMA2SAD   *(volatile u32 *)(IORAMBase + 0xC8) // DMA channel 2 source address (28 bit)
#define REG_DMA2DAD   *(volatile u32 *)(IORAMBase + 0xCC) // DMA channel 2 dest address (27 bit)
#define REG_DMA2CNT	  *(volatile u32 *)(IORAMBase + 0xD0)
#define REG_DMA2CNT_L *(volatile u16 *)(IORAMBase + 0xD0) // DMA channel 2 count number of words/halfwords to copy (14 bit)
#define REG_DMA2CNT_H *(volatile u16 *)(IORAMBase + 0xD2) // DMA channel 2 controls
#define REG_DMA3SAD   *(volatile u32 *)(IORAMBase + 0xD4) // DMA channel 3 source address (28 bit)
#define REG_DMA3DAD   *(volatile u32 *)(IORAMBase + 0xD8) // DMA channel 3 dest address (28 bit)
#define REG_DMA3CNT	  *(volatile u32 *)(IORAMBase + 0xDC)
#define REG_DMA3CNT_L *(volatile u16 *)(IORAMBase + 0xDC) // DMA channel 3 count number of words/halfwords to copy (14 bit)
#define REG_DMA3CNT_H *(volatile u16 *)(IORAMBase + 0xDE) // DMA channel 3 controls

#define REG_DMA0 REG_DMA0SAD
#define REG_DMA1 REG_DMA1SAD
#define REG_DMA2 REG_DMA2SAD
#define REG_DMA3 REG_DMA3SAD
