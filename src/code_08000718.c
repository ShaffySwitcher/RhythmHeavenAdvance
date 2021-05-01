#include "global.h"
#include "code_08000718.h"

asm(".include \"include/gba.inc\"");//Temporary

void func_08000718(void) {
    u16 temp = 4;
    u16 temp2 = 0xFFFC;
    u16 temp3 = 0xEC1;
	
    D_0300008c = temp;
    temp += temp3;
    temp2 -= temp3;
    D_0300008e = temp;
    D_03000090 = temp;
    D_03000092 = temp2;
}

void *func_0800074c(void) {
	return (void *)(0x02000000 + D_0300008c*4);
}

void *func_08000760(void) {
	return (void *)(0x02000000 + D_0300008e*4);
}

void *func_08000774(void) {
	return (void *)(0x02000000 + D_03000090*4);
}

void *func_08000788(void) {
	return (void *)(D_03000092*4);
}

s32 func_08000794(s32 *arg1, u32 arg2) {
	u32 temp1, temp2;
	u32 i;
	s32 total = 0;
	
    arg2 /= 4;
    temp1 = arg2 / 16;
    temp2 = arg2 - (temp1 * 16);
	
	for (i = 0; i < temp1; i++) {
		total += arg1[0];
		total += arg1[1];
		total += arg1[2];
		//total += arg1[3]; // lmao why is this missing
		total += arg1[4];
		total += arg1[5];
		total += arg1[6];
		total += arg1[7];
		total += arg1[8];
		total += arg1[9];
		total += arg1[10];
		total += arg1[11];
		total += arg1[12];
		total += arg1[13];
		total += arg1[14];
		total += arg1[15];
        arg1 += 16;
	}
	for (i = 0; i < temp2; i++) {
		total += arg1[i];
	}
	return total;
}

//#include "asm/code_080001F4/asm_08000794.s"

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