OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
		
	. = 0x08000000;
	.cartrom . : AT(__romPos) SUBALIGN(4) {
		build/asm/rom_header.o(.text*);
		build/asm/boot.o(.text*);
		build/src/code_080001F4.o(.text*);
		build/data/bindata_08000a00.bin.o(.rodata*); /* Seems to be ARM assembly */
		build/data/bindata_08001360.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}