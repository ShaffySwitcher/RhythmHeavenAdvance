OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
		
	. = 0x08000000;
	.cartrom . : AT(__romPos) {
		BUILD/source/rom_header.o(.text);
		BUILD/source/boot.o(.text);
		BUILD/data/bindata_1F4.bin.o(.text);
		BUILD/data/bindata_2C4.bin.o(.text);
	}

	_end = . ;
}