#include "global.h"
#include "code_08001360.h"

asm(".include \"include/gba.inc\"");//Temporary

static u16 D_030000b4;
static u16 D_03000098;
static u32 D_0300009c;

static u16 D_03004ac0;
static s16 D_03004afc;
static s16 D_030053b8;
static s16 D_03004b00;
static u16 D_030000a0;
static u16 D_030000a2;
static s8 D_030000a8;
static u16 D_030000ac;

static u16 D_030046b8;
static u16 D_03005378;
static u16 D_0300537c;
static u16 D_030046b4;
static u16 D_030000a4;
static u16 D_030000a6;


void func_08001360(void) {
    func_08003f28();
    D_03000098 = 0;
    D_0300009c = 0;
    return;
}

#include "asm/code_08001360/asm_08001380.s"

#include "asm/code_08001360/asm_080013a8.s"

void func_080013e8(u32 arg1) {
	D_0300009c = arg1;
	return;
}

void func_080013f4(u16 arg1) {
    D_03004ac0 = arg1;
    D_03004afc = 0;
    D_030053b8 = 0;
    D_03004b00 = 0;
    D_030000a0 = arg1;
    D_030000a2 = 0;
    return;
}

void func_0800142c(u16 arg1) {
    D_030046b8 = arg1;
    D_03005378 = NULL;
    D_0300537c = NULL;
    D_030046b4 = NULL;
    D_030000a4 = arg1;
    D_030000a6 = NULL;
    return;
}

void func_08001464(u16 arg1) {
    func_080013f4(~REG_KEY);
    func_0800142c(0);
    D_030000a8 = 0;
    D_030000ac = 0x3ff;
}

#include "asm/code_08001360/asm_0800149c.s"

#include "asm/code_08001360/asm_0800152c.s"

#include "asm/code_08001360/asm_080015bc.s"

#include "asm/code_08001360/asm_08001724.s"

#include "asm/code_08001360/asm_0800181c.s"

#include "asm/code_08001360/asm_08001828.s"

#include "asm/code_08001360/asm_0800184c.s"

#include "asm/code_08001360/asm_0800186c.s"

#include "asm/code_08001360/asm_080018e0.s"

void func_08001958(u32 arg1) {
    D_030000b4 = arg1;
    return;
}

u32 func_08001964(void) {
    D_030000b4 = D_030000b4 * 0x6d + 0x3fd;
    return D_030000b4;
}

#include "asm/code_08001360/asm_08001980.s"	// Random

#include "asm/code_08001360/asm_080019a4.s"

#include "asm/code_08001360/asm_080019e4.s"

void func_08001a24() {
    return;
}

#include "asm/code_08001360/asm_08001a28.s"

#include "asm/code_08001360/asm_08001a64.s"

#include "asm/code_08001360/asm_08001b48.s"

#include "asm/code_08001360/asm_08001b98.s"

#include "asm/code_08001360/asm_08001bf8.s"

#include "asm/code_08001360/asm_08001c64.s"

#include "asm/code_08001360/asm_08001cd8.s"

#include "asm/code_08001360/asm_08001d44.s" // Unused

#include "asm/code_08001360/asm_08001d74.s"

#include "asm/code_08001360/asm_08001ddc.s"

#include "asm/code_08001360/asm_08001e4c.s"

#include "asm/code_08001360/asm_08001ec4.s"

#include "asm/code_08001360/asm_08001f34.s"

#include "asm/code_08001360/asm_08001f64.s"

#include "asm/code_08001360/asm_08001f94.s"

#include "asm/code_08001360/asm_08001fc4.s"
