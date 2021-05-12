OUTPUT_ARCH(arm)

SECTIONS {	
	. = 0;
	_start = . ;
	__romPos = 0;
	
	. = 0x03000000;
	.bss . : SUBALIGN(4) {
		build/src/code_080001f4.o(.bss*);
        build/src/code_08000718.o(.bss*);
	}
	
	. = 0x08000000;
	.cartrom . : AT(__romPos) SUBALIGN(4) {
		build/asm/rom_header.o(.text*);
		build/asm/boot.o(.text*);
		build/src/code_080001f4.o(.text*);
		build/src/code_08000718.o(.text*);
		build/data/bindata_08000a00.bin.o(.rodata*); /* Seems to be ARM assembly */
        build/src/code_08001360.o(.text*);
        build/src/code_08001fe0.o(.text*);
        build/src/code_08002f68.o(.text*);
        build/src/code_08003b28.o(.text*);
        build/src/code_08004714.o(.text*);
		build/data/bindata_0801e704.bin.o(.rodata*);
		*libgcc.a:_call_via_rX.o(.text*);
		build/data/bindata_0804eb28.bin.o(.rodata*);
        build/data/bindata_0804f300.bin.o(.rodata*);
        build/data/bindata_08054950.bin.o(.rodata*);
        build/data/bindata_08058f58.bin.o(.rodata*);
        build/data/bindata_088f5aec.bin.o(.rodata*);
        build/data/bindata_089000cc.bin.o(.rodata*);
        build/data/bindata_0890a3c4.bin.o(.rodata*);
        build/data/bindata_08932444.bin.o(.rodata*);
		build/data/bindata_08935fac.bin.o(.rodata*);
        build/data/bindata_089ccbc0.bin.o(.rodata*);
        build/data/bindata_089d3984.bin.o(.rodata*);
        build/data/bindata_08a9b078.bin.o(.rodata*);
        build/data/bindata_08aa06f8.bin.o(.rodata*);
        build/data/bindata_08cc4bcc.bin.o(.rodata*);
	}

	_end = . ;
	 /DISCARD/ : {*(*);}
}