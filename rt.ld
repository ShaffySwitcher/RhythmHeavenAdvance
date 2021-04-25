OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
		
	. = 0x08000000;
	.cartrom . : AT(__romPos) {
		build/source/rom_header.o(.text*);
		build/source/boot.o(.text*);
		build/source/asm_080001F4.o(.text*);
		build/source/asm_080002C4.o(.text*);
		build/data/bindata_080002C4.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}