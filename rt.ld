OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
		
	. = 0x08000000;
	.cartrom . : AT(__romPos) SUBALIGN(4) {
		build/asm/rom_header.o(.text*);
		build/asm/boot.o(.text*);
		build/asm/asm_080001F4.o(.text*);
		build/asm/asm_080001F8.o(.text*);
		build/asm/asm_08000224.o(.text*);
		build/asm/asm_080002C4.o(.text*);
		build/asm/asm_0800046C.o(.text*);
		build/asm/asm_08000490.o(.text*);
		build/asm/asm_08000568.o(.text*);
		build/asm/asm_08000584.o(.text*);
		build/asm/asm_08000598.o(.text*);
		build/asm/asm_080005b8.o(.text*);
		build/asm/asm_080005e0.o(.text*);
		build/asm/asm_080005f4.o(.text*);
		build/asm/asm_08000608.o(.text*);
		build/asm/asm_0800061c.o(.text*);
		build/asm/asm_08000630.o(.text*);
		build/asm/asm_08000674.o(.text*);
		build/asm/asm_080006b0.o(.text*);
		build/asm/asm_080006d0.o(.text*);
		build/asm/asm_080006f0.o(.text*);
		build/asm/asm_0800070c.o(.text*);
		build/asm/asm_08000718.o(.text*);
		build/asm/asm_0800074c.o(.text*);
		build/asm/asm_08000760.o(.text*);
		build/asm/asm_08000774.o(.text*);
		build/asm/asm_08000788.o(.text*);
		build/asm/asm_08000794.o(.text*);
		build/asm/asm_08000804.o(.text*);
		build/asm/asm_0800081c.o(.text*);
		build/asm/asm_08000868.o(.text*);
		build/asm/asm_080008bc.o(.text*);
		build/asm/asm_080008d0.o(.text*);
		build/asm/asm_080008e4.o(.text*);
		build/asm/asm_0800091c.o(.text*);
		build/asm/asm_08000928.o(.text*);
		build/asm/asm_0800096c.o(.text*);
		build/asm/asm_080009a0.o(.text*);
		build/asm/asm_080009b4.o(.text*);
		build/asm/asm_080009c8.o(.text*);
		build/asm/asm_080009cc.o(.text*);
		build/asm/asm_080009d0.o(.text*);
		build/asm/asm_080009fc.o(.text*);
		build/data/bindata_08000a00.bin.o(.rodata*); /* Seems to be ARM assembly */
		build/data/bindata_08001360.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}