#include "global.h"
#include "code_08004714.h"

asm(".include \"include/gba.inc\"");//Temporary

typedef s32 (*functype_03000e98)(void *, s32, s32);

struct struct_03004ad0 {
    u32 unk0;
    struct struct_030046a4 **unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

void *D_03000e48; // functype_03000e98
functype_03000e98 D_03000e98;
struct struct_030046a4 **D_03000e9c;
u32 D_03000ea0;

void *D_0800112c;
void *D_0800116c;
struct struct_03004ad0 D_03004ad0;

#include "asm/code_08004714/asm_08004714.s"

#include "asm/code_08004714/asm_08004748.s"

#include "asm/code_08004714/asm_0800477c.s"

#include "asm/code_08004714/asm_0800496c.s"

#include "asm/code_08004714/asm_080049a0.s"

#include "asm/code_08004714/asm_080049dc.s"

#include "asm/code_08004714/asm_080049f0.s"

#include "asm/code_08004714/asm_08004b60.s"

#include "asm/code_08004714/asm_08004b70.s"

#include "asm/code_08004714/asm_08004b88.s"

#include "asm/code_08004714/asm_08004b98.s"

#include "asm/code_08004714/asm_08004bfc.s"

#include "asm/code_08004714/asm_08004c0c.s"

#include "asm/code_08004714/asm_08004c40.s"

#include "asm/code_08004714/asm_08004c50.s"

#include "asm/code_08004714/asm_08004cac.s"

#include "asm/code_08004714/asm_08004ccc.s"

#include "asm/code_08004714/asm_08004d44.s"

#include "asm/code_08004714/asm_08004da0.s"

#include "asm/code_08004714/asm_08004dc0.s"

#include "asm/code_08004714/asm_08004e60.s"

#include "asm/code_08004714/asm_08004e88.s"

#include "asm/code_08004714/asm_08004eac.s"

#include "asm/code_08004714/asm_08004ff4.s"

#include "asm/code_08004714/asm_08005014.s"

#include "asm/code_08004714/asm_080050bc.s"

#include "asm/code_08004714/asm_08005124.s"

#include "asm/code_08004714/asm_08005188.s"

#include "asm/code_08004714/asm_080051a4.s"

#include "asm/code_08004714/asm_080051c4.s"

#include "asm/code_08004714/asm_080051f0.s"

#include "asm/code_08004714/asm_08005208.s"

#include "asm/code_08004714/asm_08005328.s"

#include "asm/code_08004714/asm_0800536c.s"

#include "asm/code_08004714/asm_08005424.s"

#include "asm/code_08004714/asm_080054b0.s"

#include "asm/code_08004714/asm_080054f0.s"

#include "asm/code_08004714/asm_080055fc.s"

#include "asm/code_08004714/asm_08005640.s"

#include "asm/code_08004714/asm_0800568c.s"

#include "asm/code_08004714/asm_08005814.s"

#include "asm/code_08004714/asm_0800584c.s"

#include "asm/code_08004714/asm_08005858.s"

#include "asm/code_08004714/asm_08005878.s"

#include "asm/code_08004714/asm_080058b0.s"

#include "asm/code_08004714/asm_080058dc.s"

#include "asm/code_08004714/asm_0800598c.s"

#include "asm/code_08004714/asm_08005a0c.s"

#include "asm/code_08004714/asm_08005a40.s"

#include "asm/code_08004714/asm_08005a84.s"

#include "asm/code_08004714/asm_08005ad4.s"

#include "asm/code_08004714/asm_08005b20.s"

#include "asm/code_08004714/asm_08005bc4.s"

#include "asm/code_08004714/asm_08005c00.s"

#include "asm/code_08004714/asm_08005c3c.s"

#include "asm/code_08004714/asm_08005c78.s"

#include "asm/code_08004714/asm_08005ca8.s"

#include "asm/code_08004714/asm_08005ce0.s"

#include "asm/code_08004714/asm_08005cec.s"

#include "asm/code_08004714/asm_08005d38.s"

#include "asm/code_08004714/asm_08005d74.s"

#include "asm/code_08004714/asm_08005db0.s"

#include "asm/code_08004714/asm_08005de4.s"

#include "asm/code_08004714/asm_08005e18.s"

#include "asm/code_08004714/asm_08005e54.s"

#include "asm/code_08004714/asm_08005ee4.s"

#include "asm/code_08004714/asm_08005f04.s"

#include "asm/code_08004714/asm_08005f34.s"

#include "asm/code_08004714/asm_08005fe4.s"

#include "asm/code_08004714/asm_080060bc.s"

#include "asm/code_08004714/asm_080061a4.s"

#include "asm/code_08004714/asm_080061d0.s"

#include "asm/code_08004714/asm_0800620c.s"

#include "asm/code_08004714/asm_08006328.s"

#include "asm/code_08004714/asm_08006364.s"

#include "asm/code_08004714/asm_0800637c.s"

#include "asm/code_08004714/asm_08006448.s"

void func_0800650c(struct struct_030046a4 **arg0, u32 arg1) {
    D_03000e9c = arg0;
    D_03000ea0 = arg1 / 4;

    if (D_03000ea0 > 0xFFFF) {
        D_03000ea0 = 0xFFFF;
    }

    *arg0 = (void *)(D_03000ea0 << 16);

    D_03004ad0.unk0 = 0;
    D_03004ad0.unk4 = arg0;
    D_03004ad0.unk8 = arg1;
    D_03004ad0.unk10 = 0;
    D_03004ad0.unkC = 0;

	DmaCopy32(3, &D_0800112c, &D_03000e48, ((u32)&D_0800116c - (u32)&D_0800112c));
	
    D_03000e98 = (functype_03000e98)&D_03000e48;
}

struct struct_030046a4 *func_08006580(u32 arg0) {
	return func_08006590(0, arg0);
}

struct struct_030046a4 *func_08006590(u16 arg0, u32 arg1) {
    u32 temp0 = (arg1+3)/4 + 1;
    s32 temp1 = D_03000e98(D_03000e9c, D_03000ea0, temp0);
    s32 temp2, temp3;

    if (temp1 < 0) {
        D_03004ad0.unk0 = 1;
        return NULL;
    }

    temp2 = (u16)((u32)D_03000e9c[temp1] >> 16);
    D_03000e9c[temp1] = (void *)((temp0 << 16) | 0x8000 | arg0);
    temp3 = temp1 + temp0;

    if (temp0 < temp2) {
        D_03000e9c[temp3] = (void *)((temp2 - temp0)<< 16);
    }

    if ((temp3 << 2) > D_03004ad0.unk10) {
        D_03004ad0.unk10 = (temp3 << 2);
    }

    return (struct struct_030046a4 *)(&(D_03000e9c[temp1]) + 1);
}

#include "asm/code_08004714/asm_08006628.s"

#include "asm/code_08004714/asm_08006694.s"

#include "asm/code_08004714/asm_080066f8.s"

#include "asm/code_08004714/asm_08006750.s"

#include "asm/code_08004714/asm_0800679c.s"

#include "asm/code_08004714/asm_080067a4.s"

#include "asm/code_08004714/asm_080068f8.s"

#include "asm/code_08004714/asm_0800694c.s"

#include "asm/code_08004714/asm_0800699c.s"

#include "asm/code_08004714/asm_080069d4.s"

#include "asm/code_08004714/asm_08006a0c.s"

#include "asm/code_08004714/asm_08006a8c.s"

#include "asm/code_08004714/asm_08006ac0.s"

#include "asm/code_08004714/asm_08006ac8.s"

#include "asm/code_08004714/asm_08006b1c.s"

#include "asm/code_08004714/asm_08006b30.s"

#include "asm/code_08004714/asm_08006bb4.s"

#include "asm/code_08004714/asm_08006c08.s"

#include "asm/code_08004714/asm_08006ca4.s"

#include "asm/code_08004714/asm_08006ce8.s"

#include "asm/code_08004714/asm_08006d80.s"

#include "asm/code_08004714/asm_08006da8.s"

#include "asm/code_08004714/asm_08006e00.s"

#include "asm/code_08004714/asm_08006e30.s"

#include "asm/code_08004714/asm_08006e88.s"

#include "asm/code_08004714/asm_08006f84.s"

#include "asm/code_08004714/asm_08006fec.s"

#include "asm/code_08004714/asm_08007014.s"

#include "asm/code_08004714/asm_0800703c.s"

#include "asm/code_08004714/asm_080070c4.s"

#include "asm/code_08004714/asm_0800714c.s"

#include "asm/code_08004714/asm_0800716c.s"

#include "asm/code_08004714/asm_0800724c.s"

#include "asm/code_08004714/asm_08007324.s"

#include "asm/code_08004714/asm_08007344.s"

#include "asm/code_08004714/asm_08007370.s"

#include "asm/code_08004714/asm_08007394.s"

#include "asm/code_08004714/asm_080073b8.s"

#include "asm/code_08004714/asm_080073f0.s"

#include "asm/code_08004714/asm_08007410.s"

#include "asm/code_08004714/asm_0800742c.s"

#include "asm/code_08004714/asm_08007468.s"

#include "asm/code_08004714/asm_08007498.s"

#include "asm/code_08004714/asm_080074c4.s"

#include "asm/code_08004714/asm_080074ec.s"

#include "asm/code_08004714/asm_08007544.s"

#include "asm/code_08004714/asm_0800757c.s"

#include "asm/code_08004714/asm_080075e4.s"

#include "asm/code_08004714/asm_0800765c.s"

#include "asm/code_08004714/asm_080076ec.s"

#include "asm/code_08004714/asm_08007788.s"

#include "asm/code_08004714/asm_080077e8.s"

#include "asm/code_08004714/asm_08007854.s"

#include "asm/code_08004714/asm_080078ec.s"

#include "asm/code_08004714/asm_0800793c.s"

#include "asm/code_08004714/asm_080079bc.s"

#include "asm/code_08004714/asm_08007a14.s"

#include "asm/code_08004714/asm_08007aa0.s"

#include "asm/code_08004714/asm_08007b04.s"

#include "asm/code_08004714/asm_08007b2c.s"

#include "asm/code_08004714/asm_08007b4c.s"

#include "asm/code_08004714/asm_08007b80.s"

#include "asm/code_08004714/asm_08007bb8.s"

#include "asm/code_08004714/asm_08007c30.s"

#include "asm/code_08004714/asm_08007ca8.s"

#include "asm/code_08004714/asm_08007d20.s"

#include "asm/code_08004714/asm_08007d88.s"

#include "asm/code_08004714/asm_08007e00.s"

#include "asm/code_08004714/asm_08007e68.s"

#include "asm/code_08004714/asm_08007e7c.s"

#include "asm/code_08004714/asm_08007ef8.s"

#include "asm/code_08004714/asm_08007f58.s"

#include "asm/code_08004714/asm_08007fdc.s"

#include "asm/code_08004714/asm_08008054.s"

#include "asm/code_08004714/asm_08008090.s"

#include "asm/code_08004714/asm_08008184.s"

u8 *func_080081a8(u8 *arg1, u8 *arg2) {
    u8 *temp = arg1;
    while (*arg1 != 0) {
        arg1++;
    }
    while (*arg2 != 0) {
        *arg1 = *arg2;
        arg2++;
        arg1++;
    }
    *arg1 = 0;
    return temp;
}

#include "asm/code_08004714/asm_080081d4.s"

#include "asm/code_08004714/asm_0800820c.s"

#include "asm/code_08004714/asm_08008248.s"

#include "asm/code_08004714/asm_08008294.s"

#include "asm/code_08004714/asm_080082cc.s"

#include "asm/code_08004714/asm_08008328.s"

#include "asm/code_08004714/asm_08008370.s"

#include "asm/code_08004714/asm_08008420.s"

#include "asm/code_08004714/asm_08008464.s"

#include "asm/code_08004714/asm_0800852c.s"

#include "asm/code_08004714/asm_08008548.s"

#include "asm/code_08004714/asm_0800856c.s"

#include "asm/code_08004714/asm_08008594.s"

#include "asm/code_08004714/asm_080085e4.s"

#include "asm/code_08004714/asm_08008608.s"

#include "asm/code_08004714/asm_0800861c.s"

#include "asm/code_08004714/asm_08008628.s"

#include "asm/code_08004714/asm_08008658.s"

#include "asm/code_08004714/asm_0800869c.s"

#include "asm/code_08004714/asm_080086c4.s"

#include "asm/code_08004714/asm_08008720.s"

#include "asm/code_08004714/asm_0800873c.s"

#include "asm/code_08004714/asm_08008758.s"

#include "asm/code_08004714/asm_080087b4.s"

#include "asm/code_08004714/asm_080087d4.s"

#include "asm/code_08004714/asm_080087e8.s"

#include "asm/code_08004714/asm_08008910.s"

#include "asm/code_08004714/asm_08008938.s"

#include "asm/code_08004714/asm_08008968.s"

#include "asm/code_08004714/asm_08008990.s"

#include "asm/code_08004714/asm_080089c0.s"

#include "asm/code_08004714/asm_08008a70.s"

#include "asm/code_08004714/asm_08008ab8.s"

#include "asm/code_08004714/asm_08008b00.s"

#include "asm/code_08004714/asm_08008d44.s"

#include "asm/code_08004714/asm_08008d88.s"

#include "asm/code_08004714/asm_08008dcc.s"

#include "asm/code_08004714/asm_08008de4.s"

#include "asm/code_08004714/asm_08008dfc.s"

#include "asm/code_08004714/asm_08008e10.s"

#include "asm/code_08004714/asm_08008e40.s"

#include "asm/code_08004714/asm_08008e74.s"

#include "asm/code_08004714/asm_08008ea4.s"

#include "asm/code_08004714/asm_08008ed0.s"

#include "asm/code_08004714/asm_08008eec.s"

#include "asm/code_08004714/asm_08008f04.s"

#include "asm/code_08004714/asm_08008f1c.s"

#include "asm/code_08004714/asm_08008f68.s"

#include "asm/code_08004714/asm_08008f74.s"

#include "asm/code_08004714/asm_08008fe0.s"

#include "asm/code_08004714/asm_08008ff8.s"

#include "asm/code_08004714/asm_08009024.s"

#include "asm/code_08004714/asm_08009048.s"

#include "asm/code_08004714/asm_08009090.s"

#include "asm/code_08004714/asm_080090d0.s"

#include "asm/code_08004714/asm_080090ec.s"

#include "asm/code_08004714/asm_08009150.s"

#include "asm/code_08004714/asm_0800915c.s"

#include "asm/code_08004714/asm_0800917c.s"

#include "asm/code_08004714/asm_080091a4.s"

#include "asm/code_08004714/asm_080091c4.s"

#include "asm/code_08004714/asm_080091d8.s"

#include "asm/code_08004714/asm_080091fc.s"

#include "asm/code_08004714/asm_0800921c.s"

#include "asm/code_08004714/asm_08009240.s"

#include "asm/code_08004714/asm_08009268.s"

#include "asm/code_08004714/asm_0800928c.s"

#include "asm/code_08004714/asm_080092cc.s"

#include "asm/code_08004714/asm_0800931c.s"

#include "asm/code_08004714/asm_0800936c.s"

#include "asm/code_08004714/asm_08009394.s"

#include "asm/code_08004714/asm_080093a0.s"

#include "asm/code_08004714/asm_080093a4.s"

#include "asm/code_08004714/asm_080093a8.s"

#include "asm/code_08004714/asm_080093b4.s"

#include "asm/code_08004714/asm_080093c0.s"

#include "asm/code_08004714/asm_08009458.s"

#include "asm/code_08004714/asm_08009508.s"

#include "asm/code_08004714/asm_08009548.s"

#include "asm/code_08004714/asm_08009564.s"

#include "asm/code_08004714/asm_080095a8.s"

#include "asm/code_08004714/asm_080095c0.s"

#include "asm/code_08004714/asm_080095e8.s"

#include "asm/code_08004714/asm_08009604.s"

#include "asm/code_08004714/asm_0800965c.s"

#include "asm/code_08004714/asm_08009668.s"

#include "asm/code_08004714/asm_08009674.s"

#include "asm/code_08004714/asm_080096a4.s"

#include "asm/code_08004714/asm_080096e0.s"

#include "asm/code_08004714/asm_08009760.s"

#include "asm/code_08004714/asm_080097b4.s"

#include "asm/code_08004714/asm_080097d0.s"

#include "asm/code_08004714/asm_08009814.s"

#include "asm/code_08004714/asm_0800982c.s"

#include "asm/code_08004714/asm_08009844.s"

#include "asm/code_08004714/asm_08009884.s"

#include "asm/code_08004714/asm_08009898.s"

#include "asm/code_08004714/asm_080098c4.s"

#include "asm/code_08004714/asm_080098fc.s"

#include "asm/code_08004714/asm_08009948.s"

#include "asm/code_08004714/asm_080099a0.s"

#include "asm/code_08004714/asm_08009a54.s"

#include "asm/code_08004714/asm_08009aa4.s"

#include "asm/code_08004714/asm_08009af4.s"

#include "asm/code_08004714/asm_08009de4.s"

#include "asm/code_08004714/asm_0800a004.s"

#include "asm/code_08004714/asm_0800a030.s"

#include "asm/code_08004714/asm_0800a05c.s"

#include "asm/code_08004714/asm_0800a068.s"

#include "asm/code_08004714/asm_0800a084.s"

#include "asm/code_08004714/asm_0800a090.s"

#include "asm/code_08004714/asm_0800a0f0.s"

#include "asm/code_08004714/asm_0800a108.s"

#include "asm/code_08004714/asm_0800a1ac.s"

#include "asm/code_08004714/asm_0800a1d4.s"

#include "asm/code_08004714/asm_0800a204.s"

#include "asm/code_08004714/asm_0800a2f8.s"

#include "asm/code_08004714/asm_0800a4a8.s"

#include "asm/code_08004714/asm_0800a6a0.s"

#include "asm/code_08004714/asm_0800a794.s"

#include "asm/code_08004714/asm_0800a7fc.s"

#include "asm/code_08004714/asm_0800a818.s"

#include "asm/code_08004714/asm_0800a890.s"

#include "asm/code_08004714/asm_0800a914.s"

#include "asm/code_08004714/asm_0800a934.s"

#include "asm/code_08004714/asm_0800aa1c.s"

#include "asm/code_08004714/asm_0800aa4c.s"

#include "asm/code_08004714/asm_0800aa78.s"

#include "asm/code_08004714/asm_0800aa9c.s"

#include "asm/code_08004714/asm_0800aac0.s"

#include "asm/code_08004714/asm_0800abb0.s"

#include "asm/code_08004714/asm_0800ac58.s"

#include "asm/code_08004714/asm_0800ac68.s"

#include "asm/code_08004714/asm_0800ac80.s"

#include "asm/code_08004714/asm_0800ac90.s"

#include "asm/code_08004714/asm_0800aca0.s"

#include "asm/code_08004714/asm_0800acb0.s"

#include "asm/code_08004714/asm_0800acbc.s"

#include "asm/code_08004714/asm_0800acc8.s"

#include "asm/code_08004714/asm_0800acd8.s"

#include "asm/code_08004714/asm_0800ace8.s"

#include "asm/code_08004714/asm_0800acf8.s"

#include "asm/code_08004714/asm_0800ad20.s"

#include "asm/code_08004714/asm_0800ad30.s"

#include "asm/code_08004714/asm_0800ad40.s"

#include "asm/code_08004714/asm_0800ad68.s"

#include "asm/code_08004714/asm_0800ad98.s"

#include "asm/code_08004714/asm_0800ada8.s"

#include "asm/code_08004714/asm_0800adb4.s"

#include "asm/code_08004714/asm_0800adc0.s"

#include "asm/code_08004714/asm_0800add8.s"

#include "asm/code_08004714/asm_0800ae00.s"

#include "asm/code_08004714/asm_0800ae0c.s"

#include "asm/code_08004714/asm_0800ae1c.s"

#include "asm/code_08004714/asm_0800ae3c.s"

#include "asm/code_08004714/asm_0800ae88.s"

#include "asm/code_08004714/asm_0800aeb4.s"

#include "asm/code_08004714/asm_0800b074.s"

#include "asm/code_08004714/asm_0800b0d4.s"

#include "asm/code_08004714/asm_0800b108.s"

#include "asm/code_08004714/asm_0800b118.s"

#include "asm/code_08004714/asm_0800b12c.s"

#include "asm/code_08004714/asm_0800b140.s"

#include "asm/code_08004714/asm_0800b21c.s"

#include "asm/code_08004714/asm_0800b30c.s"

#include "asm/code_08004714/asm_0800b31c.s"

#include "asm/code_08004714/asm_0800b32c.s"

#include "asm/code_08004714/asm_0800b368.s"

#include "asm/code_08004714/asm_0800b384.s"

#include "asm/code_08004714/asm_0800b3c8.s"

#include "asm/code_08004714/asm_0800b3e8.s"

#include "asm/code_08004714/asm_0800b408.s"

#include "asm/code_08004714/asm_0800b454.s"

#include "asm/code_08004714/asm_0800b4d8.s"

#include "asm/code_08004714/asm_0800b550.s"

#include "asm/code_08004714/asm_0800b564.s"

#include "asm/code_08004714/asm_0800b590.s"

#include "asm/code_08004714/asm_0800b60c.s"

#include "asm/code_08004714/asm_0800b634.s"

#include "asm/code_08004714/asm_0800b698.s"

#include "asm/code_08004714/asm_0800b6bc.s"

#include "asm/code_08004714/asm_0800b6dc.s"

#include "asm/code_08004714/asm_0800b71c.s"

#include "asm/code_08004714/asm_0800b768.s"

#include "asm/code_08004714/asm_0800b76c.s"

#include "asm/code_08004714/asm_0800b770.s"

#include "asm/code_08004714/asm_0800b774.s"

#include "asm/code_08004714/asm_0800b778.s"

#include "asm/code_08004714/asm_0800b834.s"

#include "asm/code_08004714/asm_0800b974.s"

#include "asm/code_08004714/asm_0800b9fc.s"

#include "asm/code_08004714/asm_0800bc14.s"

#include "asm/code_08004714/asm_0800bc40.s"

#include "asm/code_08004714/asm_0800bc58.s"

#include "asm/code_08004714/asm_0800bc68.s"

#include "asm/code_08004714/asm_0800bcb8.s"

#include "asm/code_08004714/asm_0800bcc4.s"

#include "asm/code_08004714/asm_0800bce4.s"

#include "asm/code_08004714/asm_0800bcf4.s"

#include "asm/code_08004714/asm_0800bd04.s"

#include "asm/code_08004714/asm_0800bd1c.s"

#include "asm/code_08004714/asm_0800bd2c.s"

#include "asm/code_08004714/asm_0800bdf8.s"

#include "asm/code_08004714/asm_0800be64.s"

#include "asm/code_08004714/asm_0800be88.s"

#include "asm/code_08004714/asm_0800be9c.s"

#include "asm/code_08004714/asm_0800bea0.s"

#include "asm/code_08004714/asm_0800bebc.s"

#include "asm/code_08004714/asm_0800bed0.s"

#include "asm/code_08004714/asm_0800bf7c.s"

#include "asm/code_08004714/asm_0800bf8c.s"

#include "asm/code_08004714/asm_0800bf9c.s"

#include "asm/code_08004714/asm_0800bfac.s"

#include "asm/code_08004714/asm_0800bfbc.s"

#include "asm/code_08004714/asm_0800c01c.s"

#include "asm/code_08004714/asm_0800c030.s"

#include "asm/code_08004714/asm_0800c048.s"

#include "asm/code_08004714/asm_0800c060.s"

#include "asm/code_08004714/asm_0800c088.s"

#include "asm/code_08004714/asm_0800c0c4.s"

#include "asm/code_08004714/asm_0800c0d8.s"

#include "asm/code_08004714/asm_0800c0f8.s"

#include "asm/code_08004714/asm_0800c128.s"

#include "asm/code_08004714/asm_0800c138.s"

#include "asm/code_08004714/asm_0800c154.s"

#include "asm/code_08004714/asm_0800c168.s"

#include "asm/code_08004714/asm_0800c184.s"

#include "asm/code_08004714/asm_0800c1a4.s"

#include "asm/code_08004714/asm_0800c1a8.s"

#include "asm/code_08004714/asm_0800c1b4.s"

#include "asm/code_08004714/asm_0800c1c0.s"

#include "asm/code_08004714/asm_0800c1d0.s"

#include "asm/code_08004714/asm_0800c1e8.s"

#include "asm/code_08004714/asm_0800c228.s"

#include "asm/code_08004714/asm_0800c280.s"

#include "asm/code_08004714/asm_0800c2b0.s"

#include "asm/code_08004714/asm_0800c2d0.s"

#include "asm/code_08004714/asm_0800c310.s"

#include "asm/code_08004714/asm_0800c350.s"

#include "asm/code_08004714/asm_0800c390.s"

#include "asm/code_08004714/asm_0800c394.s"

#include "asm/code_08004714/asm_0800c398.s"

#include "asm/code_08004714/asm_0800c3a4.s"

#include "asm/code_08004714/asm_0800c3b8.s"

#include "asm/code_08004714/asm_0800c3c4.s"

#include "asm/code_08004714/asm_0800c3e4.s"

#include "asm/code_08004714/asm_0800c3e8.s"

#include "asm/code_08004714/asm_0800c3ec.s"

#include "asm/code_08004714/asm_0800c3fc.s"

#include "asm/code_08004714/asm_0800c400.s"

#include "asm/code_08004714/asm_0800c404.s"

#include "asm/code_08004714/asm_0800c408.s"

#include "asm/code_08004714/asm_0800c40c.s"

#include "asm/code_08004714/asm_0800c410.s"

#include "asm/code_08004714/asm_0800c414.s"

#include "asm/code_08004714/asm_0800c418.s"

#include "asm/code_08004714/asm_0800c41c.s"

#include "asm/code_08004714/asm_0800c420.s"

#include "asm/code_08004714/asm_0800c424.s"

#include "asm/code_08004714/asm_0800c428.s"

#include "asm/code_08004714/asm_0800c42c.s"

#include "asm/code_08004714/asm_0800c43c.s"

#include "asm/code_08004714/asm_0800c454.s"

#include "asm/code_08004714/asm_0800c484.s"

#include "asm/code_08004714/asm_0800c490.s"

#include "asm/code_08004714/asm_0800c494.s"

#include "asm/code_08004714/asm_0800c4ac.s"

#include "asm/code_08004714/asm_0800c4b0.s"

#include "asm/code_08004714/asm_0800c508.s"

#include "asm/code_08004714/asm_0800c560.s"

#include "asm/code_08004714/asm_0800c5b8.s"

#include "asm/code_08004714/asm_0800c604.s"

#include "asm/code_08004714/asm_0800c654.s"

#include "asm/code_08004714/asm_0800c658.s"

#include "asm/code_08004714/asm_0800c65c.s"

#include "asm/code_08004714/asm_0800c660.s"

#include "asm/code_08004714/asm_0800c694.s"

#include "asm/code_08004714/asm_0800c6a4.s"

#include "asm/code_08004714/asm_0800c6c8.s"

#include "asm/code_08004714/asm_0800c6d4.s"

#include "asm/code_08004714/asm_0800c6d8.s"

#include "asm/code_08004714/asm_0800c6dc.s"

#include "asm/code_08004714/asm_0800c6e0.s"

#include "asm/code_08004714/asm_0800c6e4.s"

#include "asm/code_08004714/asm_0800c824.s"

#include "asm/code_08004714/asm_0800c95c.s"

#include "asm/code_08004714/asm_0800c9a4.s"

#include "asm/code_08004714/asm_0800c9c8.s"

#include "asm/code_08004714/asm_0800ca1c.s"

#include "asm/code_08004714/asm_0800ca70.s"

#include "asm/code_08004714/asm_0800cb28.s"

#include "asm/code_08004714/asm_0800dfbc.s"

#include "asm/code_08004714/asm_0800dfc0.s"

#include "asm/code_08004714/asm_0800dfc4.s"

#include "asm/code_08004714/asm_0800dfe0.s"

#include "asm/code_08004714/asm_0800dfe4.s"

#include "asm/code_08004714/asm_0800dfe8.s"

#include "asm/code_08004714/asm_0800dfec.s"

#include "asm/code_08004714/asm_0800dff0.s"

#include "asm/code_08004714/asm_0800dff4.s"

#include "asm/code_08004714/asm_0800dff8.s"

#include "asm/code_08004714/asm_0800dffc.s"

#include "asm/code_08004714/asm_0800e000.s"

#include "asm/code_08004714/asm_0800e004.s"

#include "asm/code_08004714/asm_0800e008.s"

#include "asm/code_08004714/asm_0800e00c.s"

#include "asm/code_08004714/asm_0800e010.s"

#include "asm/code_08004714/asm_0800e014.s"

#include "asm/code_08004714/asm_0800e018.s"

#include "asm/code_08004714/asm_0800e030.s"

#include "asm/code_08004714/asm_0800e044.s"

#include "asm/code_08004714/asm_0800e058.s"

#include "asm/code_08004714/asm_0800e068.s"

#include "asm/code_08004714/asm_0800e084.s"

#include "asm/code_08004714/asm_0800e0a0.s"

#include "asm/code_08004714/asm_0800e0ec.s"

#include "asm/code_08004714/asm_0800e100.s"

#include "asm/code_08004714/asm_0800e114.s"

#include "asm/code_08004714/asm_0800e128.s"

#include "asm/code_08004714/asm_0800e13c.s"

#include "asm/code_08004714/asm_0800e184.s"

#include "asm/code_08004714/asm_0800e1cc.s"

#include "asm/code_08004714/asm_0800e208.s"

#include "asm/code_08004714/asm_0800e25c.s"

#include "asm/code_08004714/asm_0800e2a8.s"

#include "asm/code_08004714/asm_0800e30c.s"

#include "asm/code_08004714/asm_0800e364.s"

#include "asm/code_08004714/asm_0800e3e4.s"

#include "asm/code_08004714/asm_0800e430.s"

#include "asm/code_08004714/asm_0800e490.s"

#include "asm/code_08004714/asm_0800e4f8.s"

#include "asm/code_08004714/asm_0800e57c.s"

#include "asm/code_08004714/asm_0800e62c.s"

#include "asm/code_08004714/asm_0800e694.s"

#include "asm/code_08004714/asm_0800e6ec.s"

#include "asm/code_08004714/asm_0800e75c.s"

#include "asm/code_08004714/asm_0800e768.s"

#include "asm/code_08004714/asm_0800e7e8.s"

#include "asm/code_08004714/asm_0800e830.s"

#include "asm/code_08004714/asm_0800e850.s"

#include "asm/code_08004714/asm_0800e86c.s"

#include "asm/code_08004714/asm_0800e888.s"

#include "asm/code_08004714/asm_0800e8b0.s"

#include "asm/code_08004714/asm_0800e8d8.s"

#include "asm/code_08004714/asm_0800e8f4.s"

#include "asm/code_08004714/asm_0800e940.s"

#include "asm/code_08004714/asm_0800e944.s"

#include "asm/code_08004714/asm_0800e948.s"

#include "asm/code_08004714/asm_0800e970.s"

#include "asm/code_08004714/asm_0800e9d8.s"

#include "asm/code_08004714/asm_0800e9f8.s"

#include "asm/code_08004714/asm_0800ea1c.s"

#include "asm/code_08004714/asm_0800ea2c.s"

#include "asm/code_08004714/asm_0800ea3c.s"

#include "asm/code_08004714/asm_0800ea70.s"

#include "asm/code_08004714/asm_0800eaa0.s"

#include "asm/code_08004714/asm_0800eb0c.s"

#include "asm/code_08004714/asm_0800eb1c.s"

#include "asm/code_08004714/asm_0800ebac.s"

#include "asm/code_08004714/asm_0800ebf8.s"

#include "asm/code_08004714/asm_0800ec20.s"

#include "asm/code_08004714/asm_0800ec34.s"

#include "asm/code_08004714/asm_0800ecac.s"

#include "asm/code_08004714/asm_0800ecec.s"

#include "asm/code_08004714/asm_0800ed08.s"

#include "asm/code_08004714/asm_0800ed24.s"

#include "asm/code_08004714/asm_0800ed3c.s"

#include "asm/code_08004714/asm_0800ed54.s"

#include "asm/code_08004714/asm_0800ed58.s"

#include "asm/code_08004714/asm_0800ed5c.s"

#include "asm/code_08004714/asm_0800ed60.s"

#include "asm/code_08004714/asm_0800ed64.s"

#include "asm/code_08004714/asm_0800edb8.s"

#include "asm/code_08004714/asm_0800edc8.s"

#include "asm/code_08004714/asm_0800edfc.s"

#include "asm/code_08004714/asm_0800ee1c.s"

#include "asm/code_08004714/asm_0800ee3c.s"

#include "asm/code_08004714/asm_0800ee5c.s"

#include "asm/code_08004714/asm_0800ee7c.s"

#include "asm/code_08004714/asm_0800ee9c.s"

#include "asm/code_08004714/asm_0800eebc.s"

#include "asm/code_08004714/asm_0800f070.s"

#include "asm/code_08004714/asm_0800f084.s"

#include "asm/code_08004714/asm_0800f09c.s"

#include "asm/code_08004714/asm_0800f0b4.s"

#include "asm/code_08004714/asm_0800f180.s"

#include "asm/code_08004714/asm_0800f1ec.s"

#include "asm/code_08004714/asm_0800f218.s"

#include "asm/code_08004714/asm_0800f22c.s"

#include "asm/code_08004714/asm_0800f4a0.s"

#include "asm/code_08004714/asm_0800f524.s"

#include "asm/code_08004714/asm_0800f570.s"

#include "asm/code_08004714/asm_0800f578.s"

#include "asm/code_08004714/asm_0800f580.s"

#include "asm/code_08004714/asm_0800f588.s"

#include "asm/code_08004714/asm_0800f614.s"

#include "asm/code_08004714/asm_0800f7c0.s"

#include "asm/code_08004714/asm_0800f89c.s"

#include "asm/code_08004714/asm_0800f8d8.s"

#include "asm/code_08004714/asm_0800f8ec.s"

#include "asm/code_08004714/asm_0800f8f8.s"

#include "asm/code_08004714/asm_0800f904.s"

#include "asm/code_08004714/asm_0800fa6c.s"

#include "asm/code_08004714/asm_0800fba0.s"

#include "asm/code_08004714/asm_0800fc70.s"

#include "asm/code_08004714/asm_0800fca0.s"

#include "asm/code_08004714/asm_0800fd14.s"

#include "asm/code_08004714/asm_0800fd60.s"

#include "asm/code_08004714/asm_0800fd90.s"

#include "asm/code_08004714/asm_0800fda4.s"

#include "asm/code_08004714/asm_0800fddc.s"

#include "asm/code_08004714/asm_0800fdf8.s"

#include "asm/code_08004714/asm_0800fe0c.s"

#include "asm/code_08004714/asm_0800fe20.s"

#include "asm/code_08004714/asm_0800fe44.s"

#include "asm/code_08004714/asm_0800fe60.s"

#include "asm/code_08004714/asm_0800fe78.s"

#include "asm/code_08004714/asm_0800fe94.s"

#include "asm/code_08004714/asm_0800fea8.s"

#include "asm/code_08004714/asm_0800febc.s"

#include "asm/code_08004714/asm_0800fed0.s"

#include "asm/code_08004714/asm_0800feec.s"

#include "asm/code_08004714/asm_0800ff10.s"

#include "asm/code_08004714/asm_0800ff44.s"

#include "asm/code_08004714/asm_0800ff68.s"

#include "asm/code_08004714/asm_0800ff8c.s"

#include "asm/code_08004714/asm_0800ffc0.s"

#include "asm/code_08004714/asm_0800ffe4.s"

#include "asm/code_08004714/asm_08010008.s"

#include "asm/code_08004714/asm_08010040.s"

#include "asm/code_08004714/asm_08010064.s"

#include "asm/code_08004714/asm_080100a8.s"

#include "asm/code_08004714/asm_080100cc.s"

#include "asm/code_08004714/asm_080100f0.s"

#include "asm/code_08004714/asm_08010110.s"

#include "asm/code_08004714/asm_08010130.s"

#include "asm/code_08004714/asm_08010150.s"

#include "asm/code_08004714/asm_08010174.s"

#include "asm/code_08004714/asm_08010198.s"

#include "asm/code_08004714/asm_080101b8.s"

#include "asm/code_08004714/asm_080101d8.s"

#include "asm/code_08004714/asm_080101f8.s"

#include "asm/code_08004714/asm_08010218.s"

#include "asm/code_08004714/asm_08010238.s"

#include "asm/code_08004714/asm_08010260.s"

#include "asm/code_08004714/asm_08010288.s"

#include "asm/code_08004714/asm_080102a8.s"

#include "asm/code_08004714/asm_080102d0.s"

#include "asm/code_08004714/asm_080102f4.s"

#include "asm/code_08004714/asm_08010478.s"

#include "asm/code_08004714/asm_08010490.s"

#include "asm/code_08004714/asm_08010494.s"

#include "asm/code_08004714/asm_080104c0.s"

#include "asm/code_08004714/asm_080104f0.s"

#include "asm/code_08004714/asm_0801052c.s"

#include "asm/code_08004714/asm_08010688.s"

#include "asm/code_08004714/asm_0801068c.s"

#include "asm/code_08004714/asm_0801075c.s"

#include "asm/code_08004714/asm_08010778.s"

#include "asm/code_08004714/asm_08010788.s"

#include "asm/code_08004714/asm_080107a8.s"

#include "asm/code_08004714/asm_080107c8.s"

#include "asm/code_08004714/asm_080107dc.s"

#include "asm/code_08004714/asm_0801082c.s"

#include "asm/code_08004714/asm_08010854.s"

#include "asm/code_08004714/asm_080108a0.s"

#include "asm/code_08004714/asm_080108c8.s"

#include "asm/code_08004714/asm_080108e8.s"

#include "asm/code_08004714/asm_08010904.s"

#include "asm/code_08004714/asm_08010938.s"

#include "asm/code_08004714/asm_080109cc.s"

#include "asm/code_08004714/asm_08010a04.s"

#include "asm/code_08004714/asm_08010a28.s"

#include "asm/code_08004714/asm_08010a3c.s"

#include "asm/code_08004714/asm_08010ae0.s"

#include "asm/code_08004714/asm_08010bc0.s"

#include "asm/code_08004714/asm_08010be4.s"

#include "asm/code_08004714/asm_080112dc.s"

#include "asm/code_08004714/asm_080112e8.s"

#include "asm/code_08004714/asm_080112f4.s"

#include "asm/code_08004714/asm_08011300.s"

#include "asm/code_08004714/asm_080113a8.s"

#include "asm/code_08004714/asm_080113b4.s"

#include "asm/code_08004714/asm_080113d0.s"

#include "asm/code_08004714/asm_080113dc.s"

#include "asm/code_08004714/asm_08011408.s"

#include "asm/code_08004714/asm_08011438.s"

#include "asm/code_08004714/asm_08011488.s"

#include "asm/code_08004714/asm_080114d0.s"

#include "asm/code_08004714/asm_080114d4.s"

#include "asm/code_08004714/asm_080114f4.s"

#include "asm/code_08004714/asm_08011510.s"

#include "asm/code_08004714/asm_08011520.s"

#include "asm/code_08004714/asm_08011530.s"

#include "asm/code_08004714/asm_08011534.s"

#include "asm/code_08004714/asm_08011580.s"

#include "asm/code_08004714/asm_080115b0.s"

#include "asm/code_08004714/asm_080115d0.s"

#include "asm/code_08004714/asm_08011690.s"

#include "asm/code_08004714/asm_08011694.s"

#include "asm/code_08004714/asm_08011728.s"

#include "asm/code_08004714/asm_08011744.s"

#include "asm/code_08004714/asm_08011820.s"

#include "asm/code_08004714/asm_08011a08.s"

#include "asm/code_08004714/asm_08011a18.s"

#include "asm/code_08004714/asm_08011a58.s"

#include "asm/code_08004714/asm_08011a90.s"

#include "asm/code_08004714/asm_08011ad4.s"

#include "asm/code_08004714/asm_08011b50.s"

#include "asm/code_08004714/asm_08011bec.s"

#include "asm/code_08004714/asm_08011bf8.s"

#include "asm/code_08004714/asm_08011c1c.s"

#include "asm/code_08004714/asm_08011d8c.s"

#include "asm/code_08004714/asm_08011e74.s"

#include "asm/code_08004714/asm_08011ec0.s"

#include "asm/code_08004714/asm_08011ed0.s"

#include "asm/code_08004714/asm_08011efc.s"

#include "asm/code_08004714/asm_08011f2c.s"

#include "asm/code_08004714/asm_08011f68.s"

#include "asm/code_08004714/asm_08011fa8.s"

#include "asm/code_08004714/asm_08012084.s"

#include "asm/code_08004714/asm_08012090.s"

#include "asm/code_08004714/asm_080120e4.s"

#include "asm/code_08004714/asm_08012200.s"

#include "asm/code_08004714/asm_08012214.s"

#include "asm/code_08004714/asm_08012218.s"

#include "asm/code_08004714/asm_080122a8.s"

#include "asm/code_08004714/asm_080123e0.s"

#include "asm/code_08004714/asm_080123fc.s"

#include "asm/code_08004714/asm_0801242c.s"

#include "asm/code_08004714/asm_08012438.s"

#include "asm/code_08004714/asm_08012464.s"

#include "asm/code_08004714/asm_08012494.s"

#include "asm/code_08004714/asm_080124d0.s"

#include "asm/code_08004714/asm_080125f8.s"

#include "asm/code_08004714/asm_080125fc.s"

#include "asm/code_08004714/asm_080127d0.s"

#include "asm/code_08004714/asm_080127ec.s"

#include "asm/code_08004714/asm_080127fc.s"

#include "asm/code_08004714/asm_08012808.s"

#include "asm/code_08004714/asm_08012814.s"

#include "asm/code_08004714/asm_08012850.s"

#include "asm/code_08004714/asm_08012860.s"

#include "asm/code_08004714/asm_0801286c.s"

#include "asm/code_08004714/asm_0801287c.s"

#include "asm/code_08004714/asm_080128b8.s"

#include "asm/code_08004714/asm_08012928.s"

#include "asm/code_08004714/asm_080129e8.s"

#include "asm/code_08004714/asm_08012a58.s"

#include "asm/code_08004714/asm_08012c24.s"

#include "asm/code_08004714/asm_08012cb4.s"

#include "asm/code_08004714/asm_08012de0.s"

#include "asm/code_08004714/asm_08012e24.s"

#include "asm/code_08004714/asm_08012fcc.s"

#include "asm/code_08004714/asm_08013068.s"

#include "asm/code_08004714/asm_08013090.s"

#include "asm/code_08004714/asm_080130b0.s"

#include "asm/code_08004714/asm_080130e4.s"

#include "asm/code_08004714/asm_08013100.s"

#include "asm/code_08004714/asm_08013130.s"

#include "asm/code_08004714/asm_0801314c.s"

#include "asm/code_08004714/asm_0801316c.s"

#include "asm/code_08004714/asm_0801317c.s"

#include "asm/code_08004714/asm_0801318c.s"

#include "asm/code_08004714/asm_080131e8.s"

#include "asm/code_08004714/asm_0801332c.s"

#include "asm/code_08004714/asm_08013348.s"

#include "asm/code_08004714/asm_0801338c.s"

#include "asm/code_08004714/asm_080133cc.s"

#include "asm/code_08004714/asm_080134ec.s"

#include "asm/code_08004714/asm_0801350c.s"

#include "asm/code_08004714/asm_08013530.s"

#include "asm/code_08004714/asm_08013570.s"

#include "asm/code_08004714/asm_0801359c.s"

#include "asm/code_08004714/asm_080135cc.s"

#include "asm/code_08004714/asm_08013644.s"

#include "asm/code_08004714/asm_08013994.s"

#include "asm/code_08004714/asm_080139a0.s"

#include "asm/code_08004714/asm_080139ac.s"

#include "asm/code_08004714/asm_080139b0.s"

#include "asm/code_08004714/asm_080139f4.s"

#include "asm/code_08004714/asm_08013a38.s"

#include "asm/code_08004714/asm_08013b48.s"

void func_08013b98(s32 arg1, s32 arg2) {
    s16 temp;
    s16 temp2;

    D_030046a4->unk10.asU8[0] = arg1;
    D_030046a4->unk10.asU8[1] = arg2;

    func_0801332c(arg1,arg2,&temp,&temp2);

    temp += 47; // x coordinate of top left of menu
    temp2 += 68; // y coordinate of top left of menu

    func_0804d5d4(D_03005380, D_030046a4->unkC,temp,temp2);
    func_0804d5d4(D_03005380, D_030046a4->unkE,temp,temp2);
    func_08013b48();
}

#include "asm/code_08004714/asm_08013c04.s"

#include "asm/code_08004714/asm_08013c64.s"

#include "asm/code_08004714/asm_08013d18.s"

#include "asm/code_08004714/asm_08013d1c.s"

#include "asm/code_08004714/asm_08013d20.s"

#include "asm/code_08004714/asm_08013f9c.s"

#include "asm/code_08004714/asm_0801401c.s"

#include "asm/code_08004714/asm_080140a4.s"

#include "asm/code_08004714/asm_080140ec.s"

#include "asm/code_08004714/asm_080140f8.s"

#include "asm/code_08004714/asm_08014118.s"

#include "asm/code_08004714/asm_080141a4.s"

#include "asm/code_08004714/asm_080141c0.s"

#include "asm/code_08004714/asm_080141d4.s"

#include "asm/code_08004714/asm_080141d8.s"

#include "asm/code_08004714/asm_080141f8.s"

#include "asm/code_08004714/asm_08014268.s"

#include "asm/code_08004714/asm_080142e8.s"

#include "asm/code_08004714/asm_080143c0.s"

#include "asm/code_08004714/asm_0801446c.s"

#include "asm/code_08004714/asm_08014488.s"

#include "asm/code_08004714/asm_08014504.s"

#include "asm/code_08004714/asm_08014624.s"

#include "asm/code_08004714/asm_0801490c.s"

#include "asm/code_08004714/asm_08014938.s"

#include "asm/code_08004714/asm_08014978.s"

#include "asm/code_08004714/asm_08014b68.s"

#include "asm/code_08004714/asm_08014c10.s"

#include "asm/code_08004714/asm_08014d40.s"

#include "asm/code_08004714/asm_08014db0.s"

#include "asm/code_08004714/asm_08014dbc.s"

#include "asm/code_08004714/asm_08014df0.s"

#include "asm/code_08004714/asm_08014ef8.s"

#include "asm/code_08004714/asm_08014f30.s"

#include "asm/code_08004714/asm_08014f98.s"

#include "asm/code_08004714/asm_08015020.s"

#include "asm/code_08004714/asm_08015044.s"

#include "asm/code_08004714/asm_08015108.s"

#include "asm/code_08004714/asm_08015244.s"

#include "asm/code_08004714/asm_08015298.s"

#include "asm/code_08004714/asm_080152b0.s"

#include "asm/code_08004714/asm_08015338.s"

#include "asm/code_08004714/asm_080153a8.s"

#include "asm/code_08004714/asm_080154f0.s"

#include "asm/code_08004714/asm_08015660.s"

#include "asm/code_08004714/asm_080158d4.s"

#include "asm/code_08004714/asm_080158f0.s"

#include "asm/code_08004714/asm_080158f4.s"

#include "asm/code_08004714/asm_0801593c.s"

#include "asm/code_08004714/asm_08015940.s"

#include "asm/code_08004714/asm_08015988.s"

#include "asm/code_08004714/asm_080159f4.s"

#include "asm/code_08004714/asm_08015a24.s"

#include "asm/code_08004714/asm_08015a5c.s"

#include "asm/code_08004714/asm_08015afc.s"

#include "asm/code_08004714/asm_08015ccc.s"

#include "asm/code_08004714/asm_08015cf4.s"

#include "asm/code_08004714/asm_08015ea4.s"

#include "asm/code_08004714/asm_0801616c.s"

#include "asm/code_08004714/asm_0801626c.s"

#include "asm/code_08004714/asm_08016290.s"

#include "asm/code_08004714/asm_080162bc.s"

#include "asm/code_08004714/asm_080162c8.s"

#include "asm/code_08004714/asm_080162cc.s"

#include "asm/code_08004714/asm_080162f8.s"

#include "asm/code_08004714/asm_08016328.s"

#include "asm/code_08004714/asm_08016364.s"

#include "asm/code_08004714/asm_080165f0.s"

#include "asm/code_08004714/asm_080165f4.s"

#include "asm/code_08004714/asm_08016620.s"

#include "asm/code_08004714/asm_0801685c.s"

#include "asm/code_08004714/asm_080169b8.s"

#include "asm/code_08004714/asm_080169fc.s"

#include "asm/code_08004714/asm_08016a18.s"

#include "asm/code_08004714/asm_08016a54.s"

#include "asm/code_08004714/asm_08016a58.s"

#include "asm/code_08004714/asm_08016a84.s"

#include "asm/code_08004714/asm_08016ab4.s"

#include "asm/code_08004714/asm_08016af0.s"

#include "asm/code_08004714/asm_08016d5c.s"

#include "asm/code_08004714/asm_08016d90.s"

#include "asm/code_08004714/asm_08016d94.s"

#include "asm/code_08004714/asm_08016dd8.s"

#include "asm/code_08004714/asm_08016df4.s"

#include "asm/code_08004714/asm_08016e04.s"

#include "asm/code_08004714/asm_08016e18.s"

#include "asm/code_08004714/asm_08016e54.s"

#include "asm/code_08004714/asm_08016e64.s"

#include "asm/code_08004714/asm_08016e74.s"

#include "asm/code_08004714/asm_08016e84.s"

#include "asm/code_08004714/asm_08016e94.s"

#include "asm/code_08004714/asm_08016ea4.s"

#include "asm/code_08004714/asm_08016ec4.s"

#include "asm/code_08004714/asm_08016ffc.s"

#include "asm/code_08004714/asm_08017000.s"

#include "asm/code_08004714/asm_0801714c.s"

#include "asm/code_08004714/asm_08017168.s"

#include "asm/code_08004714/asm_08017188.s"

#include "asm/code_08004714/asm_0801732c.s"

#include "asm/code_08004714/asm_08017338.s"

s32 func_08017348(s32 arg1, s32 arg2) { // bobbing?
    s32 returnVal = 0;
    struct_030046a4_func *temp = (struct_030046a4_func *)&D_030046a4->unk4C;
    
    if (temp == NULL) { // literally never possible
        return returnVal;
    }

    if (temp[arg2] != NULL) {
        returnVal = temp[arg2](arg1);
    }
    
    return returnVal;
}

void func_08017380(s32 arg1) { // gfx command 1
    D_030046a4->unk54.unkC = arg1;
}

s32 func_0801738c(struct struct_030046a4_sub *arg1, s32 arg2) { // gfx command 2
    s32 returnVal = 0;

    if (D_030046a4->unk10.asPoint != arg1) {
        return returnVal;
    }

    if ((D_030046a4->unk10.asPoint->unk18 != NULL) && (D_030046a4->unk10.asPoint->unk18[arg2] != NULL)) {
        returnVal = D_030046a4->unk10.asPoint->unk18[arg2](D_030046a4->unk54.unkC);
    }

    return returnVal;
}

#include "asm/code_08004714/asm_080173c4.s"

#include "asm/code_08004714/asm_080173d0.s"

#include "asm/code_08004714/asm_080173dc.s"

#include "asm/code_08004714/asm_080173e8.s"

#include "asm/code_08004714/asm_080173f4.s"

#include "asm/code_08004714/asm_08017400.s"

#include "asm/code_08004714/asm_0801740c.s"

#include "asm/code_08004714/asm_08017448.s"

#include "asm/code_08004714/asm_08017458.s"

#include "asm/code_08004714/asm_08017468.s"

#include "asm/code_08004714/asm_0801747c.s"

#include "asm/code_08004714/asm_080174e8.s"

#include "asm/code_08004714/asm_08017514.s"

#include "asm/code_08004714/asm_08017568.s"

#include "asm/code_08004714/asm_08017578.s"

#include "asm/code_08004714/asm_080175a0.s"

#include "asm/code_08004714/asm_080175b0.s"

#include "asm/code_08004714/asm_080175c4.s"

#include "asm/code_08004714/asm_080175d8.s"

#include "asm/code_08004714/asm_080175e8.s"

#include "asm/code_08004714/asm_08017604.s"

#include "asm/code_08004714/asm_08017648.s"

#include "asm/code_08004714/asm_0801765c.s"

#include "asm/code_08004714/asm_080176cc.s"

#include "asm/code_08004714/asm_08017728.s"

#include "asm/code_08004714/asm_08017744.s"

#include "asm/code_08004714/asm_08017758.s"

#include "asm/code_08004714/asm_0801777c.s"

#include "asm/code_08004714/asm_080177a4.s"

#include "asm/code_08004714/asm_080177c8.s"

#include "asm/code_08004714/asm_080177dc.s"

#include "asm/code_08004714/asm_080177f0.s"

#include "asm/code_08004714/asm_080178ac.s"

#include "asm/code_08004714/asm_080178e4.s"

#include "asm/code_08004714/asm_08017908.s"

#include "asm/code_08004714/asm_08017918.s"

#include "asm/code_08004714/asm_08017928.s"

#include "asm/code_08004714/asm_080179a0.s"

#include "asm/code_08004714/asm_080179bc.s"

#include "asm/code_08004714/asm_080179d8.s"

void func_080179f4(s32 arg1) { // universal cue?
    struct struct_030046a4_sub2 *temp;
    struct struct_030046a4 *temp2;
    struct struct_030046a4 *temp4;

    if ((D_030046a4->unk54.unk8.asU8[0] == 0) || ((temp = D_030046a4->unk1C[arg1]) == NULL)) {
        return;
    }

    temp2 = (struct struct_030046a4 *)func_08006580(0x6C); //! temp cast until prototype exists
    if (temp->unkC != 0) {
        temp2->unk64 = (struct struct_030046a4 *)func_08006580(temp->unkC); //! temp cast until prototype exists
    } else {
        temp2->unk64 = NULL;
    }
    func_0800186c(temp,&temp2->unk8,0x40,0x20,0x200);

    temp2->unk48 &= ~1;
    temp2->unk48 &= ~2;

    do {} while (0); // fake matching / macro?
    
    temp2->unk4C = 0;

    if (D_030046a4->unk86 != 0) {
        temp2->unk4E = func_0800c3a4(D_030046a4->unk86);
        D_030046a4->unk86 = 0;
    } else {
        temp2->unk4E = func_0800c3a4(temp->unk4);
    }

    temp2->unk54.unk0.asPoint = ((D_030046a4->unk68.unk0.asPoint != 0) ? D_030046a4->unk68.unk0.asPoint : temp->unk2C.unk0.asPoint);
    temp2->unk54.unk4 = ((D_030046a4->unk68.unk4 != 0) ? D_030046a4->unk68.unk4 : temp->unk2C.unk4);
    temp2->unk54.unk8.asPoint = ((D_030046a4->unk68.unk8.asPoint != 0) ? D_030046a4->unk68.unk8.asPoint : temp->unk2C.unk8.asPoint);
    temp2->unk54.unkC = ((D_030046a4->unk68.unkC != 0) ? D_030046a4->unk68.unkC : temp->unk2C.unkC);

    temp2->unk68.unk0.asU8[0] = D_030046a4->unk7A;

    D_030046a4->unk68.unk0.asPoint = NULL;
    D_030046a4->unk68.unk4 = NULL;
    D_030046a4->unk68.unk8.asPoint = NULL;
    D_030046a4->unk68.unkC = 0;

    temp4 = D_030046a4->unk18;
    
    temp2->unk0 = 0;
    temp2->unk4 = temp4;

    if (temp4 != NULL) {
        temp4->unk0 = temp2;
    }

    D_030046a4->unk18 = temp2;

    D_030046a4->unk54.unk8.asU8[1] = 0;

    if (temp->unk10 != 0) {
        temp->unk10(temp2,temp2->unk64,temp->unk14);
    }

    if (D_030046a4->unk54.unk8.asU8[1] != 0) {
        D_030046a4->unk18 = temp4;
        temp4->unk0 = NULL;
        func_08006694(temp2);
    } else {
        D_030046a4->unk54.unk4 = temp2;
        func_08016e54(temp2->unk54.unk0);
    }
}

#include "asm/code_08004714/asm_08017b34.s"

#include "asm/code_08004714/asm_08017b44.s"

#include "asm/code_08004714/asm_08017b88.s"

#include "asm/code_08004714/asm_08017b98.s"

#include "asm/code_08004714/asm_08017c68.s"

#include "asm/code_08004714/asm_08017c8c.s"

#include "asm/code_08004714/asm_08017e2c.s"

#include "asm/code_08004714/asm_08017ec8.s"

#include "asm/code_08004714/asm_08018054.s"

#include "asm/code_08004714/asm_08018068.s"

#include "asm/code_08004714/asm_08018078.s"

#include "asm/code_08004714/asm_08018088.s"

#include "asm/code_08004714/asm_0801808c.s"

#include "asm/code_08004714/asm_08018090.s"

#include "asm/code_08004714/asm_08018094.s"

#include "asm/code_08004714/asm_08018098.s"

#include "asm/code_08004714/asm_0801809c.s"

#include "asm/code_08004714/asm_080180a0.s"

#include "asm/code_08004714/asm_080180a4.s"

#include "asm/code_08004714/asm_080180a8.s"

#include "asm/code_08004714/asm_080180ac.s"

#include "asm/code_08004714/asm_080180b0.s"

#include "asm/code_08004714/asm_080180b4.s"

#include "asm/code_08004714/asm_080180bc.s"

#include "asm/code_08004714/asm_080180c4.s"

#include "asm/code_08004714/asm_080180ec.s"

#include "asm/code_08004714/asm_08018114.s"

#include "asm/code_08004714/asm_08018124.s"

#include "asm/code_08004714/asm_08018138.s"

#include "asm/code_08004714/asm_08018154.s"

#include "asm/code_08004714/asm_080182ac.s"

#include "asm/code_08004714/asm_080182b8.s"

#include "asm/code_08004714/asm_08018318.s"

#include "asm/code_08004714/asm_08018344.s"

#include "asm/code_08004714/asm_080183c8.s"

#include "asm/code_08004714/asm_08018524.s"

#include "asm/code_08004714/asm_0801853c.s"

#include "asm/code_08004714/asm_0801858c.s"

#include "asm/code_08004714/asm_080185d0.s"

#include "asm/code_08004714/asm_08018630.s"

#include "asm/code_08004714/asm_08018660.s"

#include "asm/code_08004714/asm_08018698.s"

#include "asm/code_08004714/asm_080186d4.s"

#include "asm/code_08004714/asm_0801875c.s"

#include "asm/code_08004714/asm_08018828.s"

#include "asm/code_08004714/asm_0801884c.s"

#include "asm/code_08004714/asm_08018870.s"

#include "asm/code_08004714/asm_080188b4.s"

#include "asm/code_08004714/asm_080188b8.s"

#include "asm/code_08004714/asm_080188e4.s"

#include "asm/code_08004714/asm_08018914.s"

#include "asm/code_08004714/asm_08018934.s"

#include "asm/code_08004714/asm_080189b0.s"

#include "asm/code_08004714/asm_080189b4.s"

#include "asm/code_08004714/asm_080189f4.s"

#include "asm/code_08004714/asm_08018a10.s"

#include "asm/code_08004714/asm_08018a20.s"

#include "asm/code_08004714/asm_08018a24.s"

#include "asm/code_08004714/asm_08018a50.s"

#include "asm/code_08004714/asm_08018a80.s"

#include "asm/code_08004714/asm_08018aa0.s"

#include "asm/code_08004714/asm_08018b9c.s"

#include "asm/code_08004714/asm_08018ba0.s"

#include "asm/code_08004714/asm_08018be0.s"

#include "asm/code_08004714/asm_08018bf0.s"

#include "asm/code_08004714/asm_08018cc8.s"

#include "asm/code_08004714/asm_08018d68.s"

#include "asm/code_08004714/asm_08018d9c.s"

#include "asm/code_08004714/asm_08018e60.s"

#include "asm/code_08004714/asm_08018e74.s"

#include "asm/code_08004714/asm_08018e94.s"

#include "asm/code_08004714/asm_08018ec0.s"

#include "asm/code_08004714/asm_08018ef0.s"

#include "asm/code_08004714/asm_08018f10.s"

#include "asm/code_08004714/asm_0801911c.s"

#include "asm/code_08004714/asm_08019128.s"

#include "asm/code_08004714/asm_08019134.s"

#include "asm/code_08004714/asm_08019138.s"

#include "asm/code_08004714/asm_08019178.s"

#include "asm/code_08004714/asm_08019188.s"

#include "asm/code_08004714/asm_080191ac.s"

#include "asm/code_08004714/asm_080191b8.s"

#include "asm/code_08004714/asm_080191bc.s"

#include "asm/code_08004714/asm_08019210.s"

#include "asm/code_08004714/asm_08019268.s"

#include "asm/code_08004714/asm_08019278.s"

#include "asm/code_08004714/asm_080192a4.s"

#include "asm/code_08004714/asm_08019304.s"

#include "asm/code_08004714/asm_08019310.s"

#include "asm/code_08004714/asm_08019324.s"

#include "asm/code_08004714/asm_08019340.s"

#include "asm/code_08004714/asm_08019350.s"

#include "asm/code_08004714/asm_08019420.s"

#include "asm/code_08004714/asm_08019480.s"

#include "asm/code_08004714/asm_080194e8.s"

#include "asm/code_08004714/asm_08019554.s"

#include "asm/code_08004714/asm_08019698.s"

#include "asm/code_08004714/asm_080196fc.s"

#include "asm/code_08004714/asm_08019750.s"

#include "asm/code_08004714/asm_080197a4.s"

#include "asm/code_08004714/asm_080197ec.s"

#include "asm/code_08004714/asm_08019820.s"

#include "asm/code_08004714/asm_08019878.s"

#include "asm/code_08004714/asm_080198b0.s"

#include "asm/code_08004714/asm_080198e8.s"

#include "asm/code_08004714/asm_080198f8.s"

#include "asm/code_08004714/asm_08019a80.s"

#include "asm/code_08004714/asm_08019bec.s"

#include "asm/code_08004714/asm_08019d9c.s"

#include "asm/code_08004714/asm_08019ee0.s"

#include "asm/code_08004714/asm_0801a060.s"

#include "asm/code_08004714/asm_0801a0ec.s"

#include "asm/code_08004714/asm_0801a0f0.s"

#include "asm/code_08004714/asm_0801a140.s"

#include "asm/code_08004714/asm_0801a174.s"

#include "asm/code_08004714/asm_0801a1b0.s"

#include "asm/code_08004714/asm_0801a310.s"

#include "asm/code_08004714/asm_0801a314.s"

#include "asm/code_08004714/asm_0801a354.s"

#include "asm/code_08004714/asm_0801a370.s"

#include "asm/code_08004714/asm_0801a384.s"

#include "asm/code_08004714/asm_0801a3b0.s"

#include "asm/code_08004714/asm_0801a3e4.s"

#include "asm/code_08004714/asm_0801a414.s"

#include "asm/code_08004714/asm_0801a450.s"

#include "asm/code_08004714/asm_0801a5d8.s"

#include "asm/code_08004714/asm_0801a70c.s"

#include "asm/code_08004714/asm_0801a860.s"

#include "asm/code_08004714/asm_0801a8a0.s"

#include "asm/code_08004714/asm_0801a8b0.s"

#include "asm/code_08004714/asm_0801a8c8.s"

#include "asm/code_08004714/asm_0801a8f4.s"

#include "asm/code_08004714/asm_0801a924.s"

#include "asm/code_08004714/asm_0801a940.s"

#include "asm/code_08004714/asm_0801a96c.s"

#include "asm/code_08004714/asm_0801a99c.s"

#include "asm/code_08004714/asm_0801a9b8.s"

#include "asm/code_08004714/asm_0801a9c8.s"

#include "asm/code_08004714/asm_0801aa04.s"

#include "asm/code_08004714/asm_0801aaa0.s"

#include "asm/code_08004714/asm_0801ac38.s"

#include "asm/code_08004714/asm_0801ad44.s"

#include "asm/code_08004714/asm_0801ad9c.s"

#include "asm/code_08004714/asm_0801adf0.s"

#include "asm/code_08004714/asm_0801ae34.s"

#include "asm/code_08004714/asm_0801aea4.s"

#include "asm/code_08004714/asm_0801aed0.s"

#include "asm/code_08004714/asm_0801af64.s"

#include "asm/code_08004714/asm_0801aff8.s"

#include "asm/code_08004714/asm_0801b0b0.s"

#include "asm/code_08004714/asm_0801b138.s"

#include "asm/code_08004714/asm_0801b1d8.s"

#include "asm/code_08004714/asm_0801b498.s"

#include "asm/code_08004714/asm_0801b4b4.s"

#include "asm/code_08004714/asm_0801b4f4.s"

#include "asm/code_08004714/asm_0801b668.s"

#include "asm/code_08004714/asm_0801b6fc.s"

#include "asm/code_08004714/asm_0801b710.s"

#include "asm/code_08004714/asm_0801b7b8.s"

#include "asm/code_08004714/asm_0801b834.s"

#include "asm/code_08004714/asm_0801b858.s"

#include "asm/code_08004714/asm_0801b9ec.s"

#include "asm/code_08004714/asm_0801ba60.s"

#include "asm/code_08004714/asm_0801ba74.s"

#include "asm/code_08004714/asm_0801bb24.s"

#include "asm/code_08004714/asm_0801bb60.s"

#include "asm/code_08004714/asm_0801bbd4.s"

#include "asm/code_08004714/asm_0801bbe8.s"

#include "asm/code_08004714/asm_0801bc0c.s"

#include "asm/code_08004714/asm_0801bce0.s"

#include "asm/code_08004714/asm_0801c028.s"

#include "asm/code_08004714/asm_0801c1b8.s"

#include "asm/code_08004714/asm_0801c1ec.s"

#include "asm/code_08004714/asm_0801c234.s"

#include "asm/code_08004714/asm_0801c260.s"

#include "asm/code_08004714/asm_0801c290.s"

#include "asm/code_08004714/asm_0801c2ec.s"

#include "asm/code_08004714/asm_0801c504.s"

#include "asm/code_08004714/asm_0801c510.s"

#include "asm/code_08004714/asm_0801c51c.s"

#include "asm/code_08004714/asm_0801c530.s"

#include "asm/code_08004714/asm_0801c5a0.s"

#include "asm/code_08004714/asm_0801c5a4.s"

#include "asm/code_08004714/asm_0801c674.s"

#include "asm/code_08004714/asm_0801c6b8.s"

#include "asm/code_08004714/asm_0801c6fc.s"

#include "asm/code_08004714/asm_0801c7c0.s"

#include "asm/code_08004714/asm_0801c7e8.s"

#include "asm/code_08004714/asm_0801c7ec.s"

#include "asm/code_08004714/asm_0801c8b8.s"

#include "asm/code_08004714/asm_0801c918.s"

#include "asm/code_08004714/asm_0801c930.s"

#include "asm/code_08004714/asm_0801c944.s"

#include "asm/code_08004714/asm_0801c960.s"

#include "asm/code_08004714/asm_0801c96c.s"

#include "asm/code_08004714/asm_0801c99c.s"

#include "asm/code_08004714/asm_0801c9b8.s"

#include "asm/code_08004714/asm_0801c9c4.s"

#include "asm/code_08004714/asm_0801c9ec.s"

#include "asm/code_08004714/asm_0801ca08.s"

#include "asm/code_08004714/asm_0801ca20.s"

#include "asm/code_08004714/asm_0801ca34.s"

#include "asm/code_08004714/asm_0801cb0c.s"

#include "asm/code_08004714/asm_0801cc2c.s"

#include "asm/code_08004714/asm_0801cc84.s"

#include "asm/code_08004714/asm_0801ccd0.s"

#include "asm/code_08004714/asm_0801cd14.s"

#include "asm/code_08004714/asm_0801cd60.s"

#include "asm/code_08004714/asm_0801cd64.s"

#include "asm/code_08004714/asm_0801cd90.s"

#include "asm/code_08004714/asm_0801cdc0.s"

#include "asm/code_08004714/asm_0801cdfc.s"

#include "asm/code_08004714/asm_0801cefc.s"

#include "asm/code_08004714/asm_0801cf44.s"

#include "asm/code_08004714/asm_0801cfa4.s"

#include "asm/code_08004714/asm_0801cfa8.s"

#include "asm/code_08004714/asm_0801d02c.s"

#include "asm/code_08004714/asm_0801d08c.s"

#include "asm/code_08004714/asm_0801d0a8.s"

#include "asm/code_08004714/asm_0801d0b8.s"

#include "asm/code_08004714/asm_0801d11c.s"

#include "asm/code_08004714/asm_0801d14c.s"

#include "asm/code_08004714/asm_0801d160.s"

#include "asm/code_08004714/asm_0801d1f0.s"

#include "asm/code_08004714/asm_0801d204.s"

#include "asm/code_08004714/asm_0801d23c.s"

#include "asm/code_08004714/asm_0801d388.s"

#include "asm/code_08004714/asm_0801d410.s"

#include "asm/code_08004714/asm_0801d438.s"

#include "asm/code_08004714/asm_0801d474.s"

#include "asm/code_08004714/asm_0801d4b0.s"

#include "asm/code_08004714/asm_0801d4c8.s"

#include "asm/code_08004714/asm_0801d580.s"

#include "asm/code_08004714/asm_0801d594.s"

#include "asm/code_08004714/asm_0801d5c0.s"

#include "asm/code_08004714/asm_0801d5f4.s"

#include "asm/code_08004714/asm_0801d630.s"

#include "asm/code_08004714/asm_0801d6c4.s"

#include "asm/code_08004714/asm_0801d6d0.s"

#include "asm/code_08004714/asm_0801d6e0.s"

#include "asm/code_08004714/asm_0801d6e4.s"

#include "asm/code_08004714/asm_0801d700.s"

#include "asm/code_08004714/asm_0801d818.s"

#include "asm/code_08004714/asm_0801d834.s"

#include "asm/code_08004714/asm_0801d848.s"

#include "asm/code_08004714/asm_0801d860.s"

#include "asm/code_08004714/asm_0801d86c.s"

#include "asm/code_08004714/asm_0801d8d8.s"

#include "asm/code_08004714/asm_0801d95c.s"

#include "asm/code_08004714/asm_0801d968.s"

#include "asm/code_08004714/asm_0801d978.s"

#include "asm/code_08004714/asm_0801d98c.s"

#include "asm/code_08004714/asm_0801d9cc.s"

#include "asm/code_08004714/asm_0801d9d0.s"

#include "asm/code_08004714/asm_0801da48.s"

#include "asm/code_08004714/asm_0801dabc.s"

#include "asm/code_08004714/asm_0801daf8.s"

#include "asm/code_08004714/asm_0801db04.s"

#include "asm/code_08004714/asm_0801db1c.s"

#include "asm/code_08004714/asm_0801db74.s"

#include "asm/code_08004714/asm_0801dbe8.s"

#include "asm/code_08004714/asm_0801dcb0.s"

#include "asm/code_08004714/asm_0801dd58.s"

#include "asm/code_08004714/asm_0801de38.s"

#include "asm/code_08004714/asm_0801de6c.s"

#include "asm/code_08004714/asm_0801debc.s"

#include "asm/code_08004714/asm_0801dec0.s"

#include "asm/code_08004714/asm_0801dec4.s"

#include "asm/code_08004714/asm_0801decc.s"

#include "asm/code_08004714/asm_0801ded4.s"

#include "asm/code_08004714/asm_0801dedc.s"

#include "asm/code_08004714/asm_0801def4.s"

#include "asm/code_08004714/asm_0801df1c.s"

#include "asm/code_08004714/asm_0801dfac.s"

#include "asm/code_08004714/asm_0801dfdc.s"

#include "asm/code_08004714/asm_0801dfe8.s"

#include "asm/code_08004714/asm_0801e030.s"

#include "asm/code_08004714/asm_0801e060.s"

#include "asm/code_08004714/asm_0801e09c.s"

#include "asm/code_08004714/asm_0801e0c8.s"

#include "asm/code_08004714/asm_0801e100.s"

#include "asm/code_08004714/asm_0801e154.s"

#include "asm/code_08004714/asm_0801e174.s"

#include "asm/code_08004714/asm_0801e1a0.s"

#include "asm/code_08004714/asm_0801e1d0.s"

#include "asm/code_08004714/asm_0801e1f0.s"

#include "asm/code_08004714/asm_0801e3b4.s"

#include "asm/code_08004714/asm_0801e3b8.s"

#include "asm/code_08004714/asm_0801e4c4.s"

#include "asm/code_08004714/asm_0801e4e0.s"

#include "asm/code_08004714/asm_0801e4f4.s"
