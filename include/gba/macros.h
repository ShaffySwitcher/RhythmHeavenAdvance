#define DmaSet(dmaNum, src, dest, control)        \
{                                                 \
    volatile u32 *dmaRegs = &REG_DMA##dmaNum; \
    dmaRegs[0] = (volatile u32)(src);                     \
    dmaRegs[1] = (volatile u32)(dest);                    \
    dmaRegs[2] = (volatile u32)(control);                 \
    dmaRegs[2];                                   \
}

#define DmaFill16(dmaNum, value, dest, size)                                              \
{                                                                                             \
    volatile u16 tmp = (volatile u16)(value);                                                           \
    DmaSet(dmaNum,                                                                            \
           &tmp,                                                                              \
           dest,                                                                              \
           (DMACNT_ENABLE | DMACNT_START_MODE_IMMEDIATE | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_DEST_INC_TYPE_INCREMENT) << 16 \
         | (size/2));                                                                 \
}

#define DmaFill32(dmaNum, value, dest, size)                                              \
{                                                                                             \
    volatile u32 tmp = (volatile u32)(value);                                                           \
    DmaSet(dmaNum,                                                                            \
            &tmp,                                                                              \
            dest,                                                                              \
            (DMACNT_ENABLE | DMACNT_START_MODE_IMMEDIATE | DMACNT_SIZE | DMACNT_SRC_INC_TYPE_UNCHANGED | DMACNT_DEST_INC_TYPE_INCREMENT) << 16 \
         |  (size/4));                                                                 \
}

// Note that the DMA clear macros cause the DMA control value to be calculated
// at runtime rather than compile time. The size is divided by the DMA transfer
// unit size (2 or 4 bytes) and then combined with the DMA control flags using a
// bitwise OR operation.

#define DMA_CLEAR(dmaNum, dest, size, bit)  \
{                                           \
    volatile u##bit *_dest = (volatile u##bit *)(dest);     \
    u32 _size = size;                       \
    DmaFill##bit(dmaNum, 0, _dest, _size);  \
}

#define DmaClear16(dmaNum, dest, size) DMA_CLEAR(dmaNum, dest, size, 16)
#define DmaClear32(dmaNum, dest, size) DMA_CLEAR(dmaNum, dest, size, 32)

#define DmaCopy16(dmaNum, src, dest, size)                                              \
    DmaSet(dmaNum,                                                                          \
           src,                                                                             \
           dest,                                                                            \
           (DMACNT_ENABLE | DMACNT_START_MODE_IMMEDIATE | DMACNT_SRC_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT) << 16 \
         | (size/2))
		 
#define DmaCopy32(dmaNum, src, dest, size)                                              \
    DmaSet(dmaNum,                                                                          \
           src,                                                                             \
           dest,                                                                            \
           (DMACNT_ENABLE | DMACNT_START_MODE_IMMEDIATE | DMACNT_SIZE | DMACNT_SRC_INC_TYPE_INCREMENT | DMACNT_DEST_INC_TYPE_INCREMENT) << 16 \
         | (size/4))

