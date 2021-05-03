#include "global.h"
#include "code_08000718.h"

asm(".include \"include/gba.inc\"");//Temporary

#define UNKNOWN_SIZE 0x3B04 // Recurring amount, related to size of some kind of data structure

void func_08000718(void) {
    u16 temp = 4;
    u16 temp2 = -4;
    u16 temp3 = UNKNOWN_SIZE / 4;
	
    D_0300008c = temp;
    temp += temp3;
    temp2 -= temp3;
    D_0300008e = temp;
    D_03000090 = temp;
    D_03000092 = temp2;
}

void *func_0800074c(void) {
	return (void *)(ExternWorkRAMBase + D_0300008c*4);
}

void *func_08000760(void) {
	return (void *)(ExternWorkRAMBase + D_0300008e*4);
}

void *func_08000774(void) {
	return (void *)(ExternWorkRAMBase + D_03000090*4);
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

// inconsistent with other functions, might be able to figure out once func_0804c96c is known (lib function?)
void func_08000804(void) {
    s32 **temp;
	
    func_0804c96c();
	
    temp = &D_030046a8;
    *temp = func_0800074c();
}

void func_0800081c(void) {
    s32 *temp = D_030046a8;
    func_080018e0(0,temp,UNKNOWN_SIZE,0x20,0x100);
    func_0804f270(temp, &D_08935fbc);
    temp[1] = UNKNOWN_SIZE;
    temp[2] = 0;
    temp[3] = 0x26040000;
    func_080102f4();
}

s32 func_08000868(s32 arg1) {
    s32 *temp = D_030046a8;
    s32 *temp2 = &D_030064c8;
	
	func_0804eaf8(arg1, temp, UNKNOWN_SIZE, *temp2);
	
    if (func_0800820c(temp, &D_08935fbc, 0x4) != 0) {
        return 1;
    }
	
    if (func_08000794(D_030046a8, UNKNOWN_SIZE) - temp[2] != temp[2]) {
        return 2;
    }
	
    return 0;
}

s32 func_080008bc(void) {
	return func_08000868(D_08935fb4);
}

s32 func_080008d0(void) {
	return func_08000868(D_08935fb8);
}

void func_080008e4(s32 *arg1) {
    s32 *temp = D_030046a8;

    temp[2] = 0;
    temp[2] = func_08000794(temp, UNKNOWN_SIZE);
	
    func_0804c8b0(D_030046a8,arg1,UNKNOWN_SIZE);
}

#include "asm/code_080001F4/asm_0800091c.s"

#include "asm/code_080001F4/asm_08000928.s"

#include "asm/code_080001F4/asm_0800096c.s"

#include "asm/code_080001F4/asm_080009a0.s"

#include "asm/code_080001F4/asm_080009b4.s"

#include "asm/code_080001F4/asm_080009c8.s"

#include "asm/code_080001F4/asm_080009cc.s"

#include "asm/code_080001F4/asm_080009d0.s"

#include "asm/code_080001F4/asm_080009fc.s"