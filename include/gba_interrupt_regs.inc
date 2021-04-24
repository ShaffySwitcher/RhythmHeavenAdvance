@ Interrupt Registers

.set INTERRUPT_VBLANK, 	0x0001
.set INTERRUPT_HBLANK, 	0x0002
.set INTERRUPT_VCOUNT, 	0x0004
.set INTERRUPT_TIMER0, 	0x0008
.set INTERRUPT_TIMER1, 	0x0010
.set INTERRUPT_TIMER2, 	0x0020
.set INTERRUPT_TIMER3, 	0x0040
.set INTERRUPT_COMM, 	0x0080 @ Serial Communication Interrupt
.set INTERRUPT_DMA0,  	0x0100
.set INTERRUPT_DMA1,	0x0200
.set INTERRUPT_DMA2,  	0x0400
.set INTERRUPT_DMA3,  	0x0800
.set INTERRUPT_BUTTON, 	0x1000 @ Button interrupt
.set INTERRUPT_CART,  	0x2000 @ Cartridge interrupt

 @ Interrupt Enable Register - Which interrupts are enabled / disabled

.set REG_IE,         	IORAMBase + 0x200

 @ Interrupt Flags Register - Which interrupt is being serviced

.set REG_IF,         	IORAMBase + 0x202

@ Wait State Control

.set REG_WSCNT,      	IORAMBase + 0x204

@ Interrupt Master Enable

.set REG_IME,        	IORAMBase + 0x208

.set REG_HALTCNT,      	IORAMBase + 0x300
