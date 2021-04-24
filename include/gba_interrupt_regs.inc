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
