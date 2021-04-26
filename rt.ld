OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
		
	. = 0x08000000;
	.cartrom . : AT(__romPos) {
		build/asm/rom_header.o(.text*);
		build/asm/boot.o(.text*);
		build/asm/asm_080001F4.o(.text*);
		build/asm/asm_080002C4.o(.text*);
		build/asm/asm_0800046C.o(.text*);
		build/asm/asm_08000490.o(.text*);
		build/data/bindata_08000508.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}