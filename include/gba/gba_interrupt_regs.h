// Interrupt Registers

#define INTERRUPT_VBLANK 	(1 << 0)
#define INTERRUPT_HBLANK 	(1 << 1)
#define INTERRUPT_VCOUNT 	(1 << 2)
#define INTERRUPT_TIMER0 	(1 << 3)
#define INTERRUPT_TIMER1 	(1 << 4)
#define INTERRUPT_TIMER2 	(1 << 5)
#define INTERRUPT_TIMER3 	(1 << 6)
#define INTERRUPT_COMM 	    (1 << 7)  // Serial Communication Interrupt
#define INTERRUPT_DMA0  	(1 << 8)
#define INTERRUPT_DMA1	    (1 << 9)
#define INTERRUPT_DMA2  	(1 << 10)
#define INTERRUPT_DMA3  	(1 << 11)
#define INTERRUPT_BUTTON 	(1 << 12) // Button interrupt
#define INTERRUPT_CART  	(1 << 13) // Cartridge interrupt

 // Interrupt Enable Register - Which interrupts are enabled / disabled

#define REG_IE         	*(volatile u16 *)(IORAMBase + 0x200)

 // Interrupt Flags Register - Which interrupt is being serviced

#define REG_IF         	*(volatile u16 *)(IORAMBase + 0x202)

// Wait State Control
#define WAITCNT_SRAM_4           (0 << 0)
#define WAITCNT_SRAM_3           (1 << 0)
#define WAITCNT_SRAM_2           (2 << 0)
#define WAITCNT_SRAM_8           (3 << 0)

#define WAITCNT_WS0_N_4          (0 << 2)
#define WAITCNT_WS0_N_3          (1 << 2)
#define WAITCNT_WS0_N_2          (2 << 2)
#define WAITCNT_WS0_N_8          (3 << 2)

#define WAITCNT_WS0_S_2          (0 << 4)
#define WAITCNT_WS0_S_1          (1 << 4)

#define WAITCNT_WS1_N_4            (0 << 5)
#define WAITCNT_WS1_N_3            (1 << 5)
#define WAITCNT_WS1_N_2            (2 << 5)
#define WAITCNT_WS1_N_8            (3 << 5)

#define WAITCNT_WS1_S_4          (0 << 7)
#define WAITCNT_WS1_S_1          (1 << 7)

#define WAITCNT_WS2_N_4          (0 << 8)
#define WAITCNT_WS2_N_3          (1 << 8)
#define WAITCNT_WS2_N_2          (2 << 8)
#define WAITCNT_WS2_N_8          (3 << 8)

#define WAITCNT_WS2_S_8          (0 << 10)
#define WAITCNT_WS2_S_1          (1 << 10)

#define WAITCNT_PHI_OUT_NONE     (0 << 11)
#define WAITCNT_PHI_OUT_4MHZ     (1 << 11)
#define WAITCNT_PHI_OUT_8MHZ     (2 << 11)
#define WAITCNT_PHI_OUT_16MHZ    (3 << 11)

#define WAITCNT_TYPE_GBA         (0 << 15)
#define WAITCNT_TYPE_CGB         (1 << 15)

#define WAITCNT_SRAM_MASK        (3 << 0)
#define WAITCNT_WS0_N_MASK       (3 << 2)
#define WAITCNT_WS0_S            (1 << 4)
#define WAITCNT_WS1_N_MASK       (3 << 5)
#define WAITCNT_WS1_S            (1 << 7)
#define WAITCNT_WS2_N_MASK       (3 << 8)
#define WAITCNT_WS2_S            (1 << 10)
#define WAITCNT_PHI_OUT_MASK     (3 << 11)
#define WAITCNT_PREFETCH_ENABLE  (1 << 14)
#define WAITCNT_TYPE             (1 << 15)

#define REG_WAITCNT      	*(volatile u16 *)(IORAMBase + 0x204)

// Interrupt Master Enable

#define REG_IME        	*(volatile u16 *)(IORAMBase + 0x208)

#define REG_HALTCNT     *(volatile u16 *)(IORAMBase + 0x300)
