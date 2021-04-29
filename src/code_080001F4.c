#include "global.h"
#include "code_080001F4.h"

void func_080001f4_stub(void) {
	
}

void func_080001f8(void) {
	func_0801350c();
	func_08018e60();
	func_0801242c();
	func_08016e94();
	func_08010490();
	func_08011ec0();
	func_0801c1b8();
	func_0801d580();
	func_080113d0();
}

void func_08000224(void) {
	s32 temp_r0;
	func_08001464();
	func_0800b564();
	func_08007b4c();
	func_08002f68();
	func_0800650c(func_08000774(), func_08000788());
	func_08005a0c();
	func_08003e64();
	func_08003f28();
	func_080073b8();
	func_080073f0();
	func_08009844();
	func_0800861c();
	func_08000804();
	if (func_080008bc() != 0) {
		if (func_080008d0() != 0) {
			func_0800081c();
		} else {
			func_080009a0();
		}
	}
	func_080009b4();
	func_080029d8((*D_030046a8)[177]);
	func_0800c490();
	func_0800584c();
	func_080001f8();
	func_08001360();
	func_08009150();
	func_080091d8();
	D_03004498 = 1;
}

#define RESET_BUTTON_COMBO (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)

void func_080002c4(void) {
	REG_WAITCNT = (WAITCNT_SRAM_8
		| WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1
		| WAITCNT_WS1_N_3 | WAITCNT_WS1_S_1
		| WAITCNT_WS2_N_3 | WAITCNT_WS2_S_1
		| WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE | WAITCNT_TYPE_GBA);
	
	DmaFill32(3, 0, ExternWorkRAMBase, 0x40000);
	DmaFill32(3, 0, InternWorkRAMBase, 0x7E00);
	
	DmaCopy32(3, &interrupt_handler, &interrupt_handler_intern, 0x200);
	DmaCopy32(3, &D_0804F300, &D_03004460, 0x38);
	REG_INTERRUPT = &interrupt_handler_intern;
	
	DmaFill32(3, 0, VRAMBase, 0x18000);
	
	*(volatile u16*)PaletteRAMBase = 0x7FFF;
	REG_DISPCNT = 0;
	REG_IME = 0;
	
	D_03004498 = 0;
	
	func_08000718();
	func_08000224();
	func_0801e100();
	func_0804c778();
	func_0804c340(35, 2, 2, 4);
	func_080029d8((*D_030046a8)[177]);
	
	REG_DISPSTAT = 8;
	REG_IE = (INTERRUPT_CART | INTERRUPT_DMA2 | INTERRUPT_TIMER3 | INTERRUPT_VBLANK);
	REG_IF = 0xFFFF;
	REG_IME = 1;
	
	func_0801d860(0);
	func_0800046c(&D_089dda4c);
	func_080006b0(&D_089dda4c, D_08935fac);
	func_080015bc();
	
	while (1) {
		func_080013a8();
		func_08001964();
		func_080015bc();
		D_030046a0 += 1;
		func_08000490();
		
		if (D_03004498 != 0) {
			u16 keysPressed = ~REG_KEY;
			
			if ((keysPressed & RESET_BUTTON_COMBO) == RESET_BUTTON_COMBO) {
				func_08001724(0,0x3FF,0,0);
				func_08000568(&D_089dd97c);
				func_08009548();
				D_03004498 = 0;
			}
		}
		
		func_0804c170();
		func_0800b590();
		func_08003ff0();
	}
	
}

void func_0800046c(struct struct_03000000 *arg1) {
	D_03000000 = NULL;
	D_03000004 = arg1;
	D_030046a4 = 0;
	func_08000598();
}

// func_0804eaf0: really weird, jumps directly to second arg, in some kind of table?

void func_08000490(void) {
	struct struct_03000000 *temp;
	if (D_03000000 != NULL) {
		if ((D_03000000->unk8 != NULL) && (func_0804eaf0(D_03000000->unkC, D_03000000->unk8) != 0)) {
			if (D_03000000->unk10 != NULL) {
				func_0804eaf0(D_03000000->unk14, D_03000000->unk10);
			}
			if (D_030046a4 != 0) {
				func_08006694(D_030046a4);
			}
			
			D_030046a4 = 0;
			temp = func_080005e0(D_03000000);
			D_03000004 = temp;
			
			if (D_03000080 != 0) {
				func_080006b0(D_03000000, D_03000084);
				func_080006d0(D_03000000, D_03000088);
			} else {
				func_08000674(D_03000000);
			}
			
			D_03000000 = 0;
		}
	} else {
		if (D_03000004 == NULL) {
			D_03000004 = D_08935fb0;
		}
		
		D_03000000 = D_03000004;
		D_03000004 = NULL;
		D_03000080 = 0;
		
		if (D_03000000->unk18 != 0) {
			D_030046a4 = func_08006580(D_03000000->unk18);
		}
		
		if (D_03000000->unk0 != NULL) {
			func_0804eaf0(D_03000000->unk4, D_03000000->unk0);
		}
	}
}

#include "asm/code_080001F4/asm_08000568.s"

#include "asm/code_080001F4/asm_08000584.s"

#include "asm/code_080001F4/asm_08000598.s"

#include "asm/code_080001F4/asm_080005b8.s"

#include "asm/code_080001F4/asm_080005e0.s"

#include "asm/code_080001F4/asm_080005f4.s"

#include "asm/code_080001F4/asm_08000608.s"

#include "asm/code_080001F4/asm_0800061c.s"

#include "asm/code_080001F4/asm_08000630.s"

#include "asm/code_080001F4/asm_08000674.s"

#include "asm/code_080001F4/asm_080006b0.s"

#include "asm/code_080001F4/asm_080006d0.s"

#include "asm/code_080001F4/asm_080006f0.s"

#include "asm/code_080001F4/asm_0800070c.s"

#include "asm/code_080001F4/asm_08000718.s"

#include "asm/code_080001F4/asm_0800074c.s"

#include "asm/code_080001F4/asm_08000760.s"

#include "asm/code_080001F4/asm_08000774.s"

#include "asm/code_080001F4/asm_08000788.s"

#include "asm/code_080001F4/asm_08000794.s"

#include "asm/code_080001F4/asm_08000804.s"

#include "asm/code_080001F4/asm_0800081c.s"

#include "asm/code_080001F4/asm_08000868.s"

#include "asm/code_080001F4/asm_080008bc.s"

#include "asm/code_080001F4/asm_080008d0.s"

#include "asm/code_080001F4/asm_080008e4.s"

#include "asm/code_080001F4/asm_0800091c.s"

#include "asm/code_080001F4/asm_08000928.s"

#include "asm/code_080001F4/asm_0800096c.s"

#include "asm/code_080001F4/asm_080009a0.s"

#include "asm/code_080001F4/asm_080009b4.s"

#include "asm/code_080001F4/asm_080009c8.s"

#include "asm/code_080001F4/asm_080009cc.s"

#include "asm/code_080001F4/asm_080009d0.s"

#include "asm/code_080001F4/asm_080009fc.s"