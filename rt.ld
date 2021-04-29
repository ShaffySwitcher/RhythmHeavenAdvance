OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
	
	. = 0x03000000;
	.bss . : SUBALIGN(4) {
		build/src/code_080001F4.o(.bss*);
	}
	
	. = 0x08000000;
	.cartrom . : AT(__romPos) SUBALIGN(4) {
		build/asm/rom_header.o(.text*);
		build/asm/boot.o(.text*);
		build/src/code_080001F4.o(.text*);
		build/src/code_08000718.o(.text*);
		build/data/bindata_08000a00.bin.o(.rodata*); /* Seems to be ARM assembly */
		build/data/bindata_08001360.bin.o(.rodata*);
		*libgcc.a:_call_via_rX.o(.text*);
		build/data/bindata_0804eb28.bin.o(.rodata*);
		build/data/bindata_08935fac.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}