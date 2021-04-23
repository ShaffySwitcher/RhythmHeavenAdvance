OUTPUT_ARCH(arm)

SECTIONS {
	.text :
	{	
		_start = . ;
		
		__text_start = _start ;
		BUILD/data/data.bin.o(.text);
		__text_end = . ;
		
		_end = __text_end ;
	}
}