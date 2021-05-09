asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800a2f8 \n\
/* 0800a2f8 */ PUSH {LR} \n\
/* 0800a2fa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800a2fc */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800a2fe */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 0800a300 */ CMP R0, 0x43 @ Compare R0 and 0x43 \n\
/* 0800a302 */ BLS branch_0800a306 \n\
/* 0800a304 */ B branch_0800a49e \n\
 \n\
branch_0800a306: \n\
/* 0800a306 */ LSLS R0, R0, 0x2 \n\
/* 0800a308 */ LDR R1, =0x0800a314 @ !PossiblePointer \n\
/* 0800a30a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800a30c */ LDR R0, [R0] \n\
/* 0800a30e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
/* 0800a314 */ ADD R4, PC, 0x90 \n\
/* 0800a316 */ LSRS R0, R0, 0x20 \n\
/* 0800a318 */ ADD R4, PC, 0x90 \n\
/* 0800a31a */ LSRS R0, R0, 0x20 \n\
/* 0800a31c */ ADD R4, PC, 0x90 \n\
/* 0800a31e */ LSRS R0, R0, 0x20 \n\
/* 0800a320 */ ADD R4, PC, 0x90 \n\
/* 0800a322 */ LSRS R0, R0, 0x20 \n\
/* 0800a324 */ ADD R4, PC, 0xC0 \n\
/* 0800a326 */ LSRS R0, R0, 0x20 \n\
/* 0800a328 */ ADD R4, PC, 0xC0 \n\
/* 0800a32a */ LSRS R0, R0, 0x20 \n\
/* 0800a32c */ ADD R4, PC, 0xC0 \n\
/* 0800a32e */ LSRS R0, R0, 0x20 \n\
/* 0800a330 */ ADD R4, PC, 0xC0 \n\
/* 0800a332 */ LSRS R0, R0, 0x20 \n\
/* 0800a334 */ ADD R4, PC, 0xF0 \n\
/* 0800a336 */ LSRS R0, R0, 0x20 \n\
/* 0800a338 */ ADD R4, PC, 0x278 \n\
/* 0800a33a */ LSRS R0, R0, 0x20 \n\
/* 0800a33c */ ADD R4, PC, 0x278 \n\
/* 0800a33e */ LSRS R0, R0, 0x20 \n\
/* 0800a340 */ ADD R4, PC, 0x278 \n\
/* 0800a342 */ LSRS R0, R0, 0x20 \n\
/* 0800a344 */ ADD R4, PC, 0x278 \n\
/* 0800a346 */ LSRS R0, R0, 0x20 \n\
/* 0800a348 */ ADD R4, PC, 0x278 \n\
/* 0800a34a */ LSRS R0, R0, 0x20 \n\
/* 0800a34c */ ADD R4, PC, 0x278 \n\
/* 0800a34e */ LSRS R0, R0, 0x20 \n\
/* 0800a350 */ ADD R4, PC, 0x278 \n\
/* 0800a352 */ LSRS R0, R0, 0x20 \n\
/* 0800a354 */ ADD R4, PC, 0x278 \n\
/* 0800a356 */ LSRS R0, R0, 0x20 \n\
/* 0800a358 */ ADD R4, PC, 0x278 \n\
/* 0800a35a */ LSRS R0, R0, 0x20 \n\
/* 0800a35c */ ADD R4, PC, 0x278 \n\
/* 0800a35e */ LSRS R0, R0, 0x20 \n\
/* 0800a360 */ ADD R4, PC, 0x180 \n\
/* 0800a362 */ LSRS R0, R0, 0x20 \n\
/* 0800a364 */ ADD R4, PC, 0x278 \n\
/* 0800a366 */ LSRS R0, R0, 0x20 \n\
/* 0800a368 */ ADD R4, PC, 0x278 \n\
/* 0800a36a */ LSRS R0, R0, 0x20 \n\
/* 0800a36c */ ADD R4, PC, 0x278 \n\
/* 0800a36e */ LSRS R0, R0, 0x20 \n\
/* 0800a370 */ ADD R4, PC, 0x278 \n\
/* 0800a372 */ LSRS R0, R0, 0x20 \n\
/* 0800a374 */ ADD R4, PC, 0x278 \n\
/* 0800a376 */ LSRS R0, R0, 0x20 \n\
/* 0800a378 */ ADD R4, PC, 0x278 \n\
/* 0800a37a */ LSRS R0, R0, 0x20 \n\
/* 0800a37c */ ADD R4, PC, 0x278 \n\
/* 0800a37e */ LSRS R0, R0, 0x20 \n\
/* 0800a380 */ ADD R4, PC, 0x278 \n\
/* 0800a382 */ LSRS R0, R0, 0x20 \n\
/* 0800a384 */ ADD R4, PC, 0x130 \n\
/* 0800a386 */ LSRS R0, R0, 0x20 \n\
/* 0800a388 */ ADD R4, PC, 0x278 \n\
/* 0800a38a */ LSRS R0, R0, 0x20 \n\
/* 0800a38c */ ADD R4, PC, 0x278 \n\
/* 0800a38e */ LSRS R0, R0, 0x20 \n\
/* 0800a390 */ ADD R4, PC, 0x278 \n\
/* 0800a392 */ LSRS R0, R0, 0x20 \n\
/* 0800a394 */ ADD R4, PC, 0x278 \n\
/* 0800a396 */ LSRS R0, R0, 0x20 \n\
/* 0800a398 */ ADD R4, PC, 0x278 \n\
/* 0800a39a */ LSRS R0, R0, 0x20 \n\
/* 0800a39c */ ADD R4, PC, 0x150 \n\
/* 0800a39e */ LSRS R0, R0, 0x20 \n\
/* 0800a3a0 */ ADD R4, PC, 0x278 \n\
/* 0800a3a2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3a4 */ ADD R4, PC, 0x278 \n\
/* 0800a3a6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3a8 */ ADD R4, PC, 0x278 \n\
/* 0800a3aa */ LSRS R0, R0, 0x20 \n\
/* 0800a3ac */ ADD R4, PC, 0x278 \n\
/* 0800a3ae */ LSRS R0, R0, 0x20 \n\
/* 0800a3b0 */ ADD R4, PC, 0x278 \n\
/* 0800a3b2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3b4 */ ADD R4, PC, 0x278 \n\
/* 0800a3b6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3b8 */ ADD R4, PC, 0x278 \n\
/* 0800a3ba */ LSRS R0, R0, 0x20 \n\
/* 0800a3bc */ ADD R4, PC, 0x278 \n\
/* 0800a3be */ LSRS R0, R0, 0x20 \n\
/* 0800a3c0 */ ADD R4, PC, 0x230 \n\
/* 0800a3c2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3c4 */ ADD R4, PC, 0x278 \n\
/* 0800a3c6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3c8 */ ADD R4, PC, 0x260 \n\
/* 0800a3ca */ LSRS R0, R0, 0x20 \n\
/* 0800a3cc */ ADD R4, PC, 0x278 \n\
/* 0800a3ce */ LSRS R0, R0, 0x20 \n\
/* 0800a3d0 */ ADD R4, PC, 0x278 \n\
/* 0800a3d2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3d4 */ ADD R4, PC, 0x278 \n\
/* 0800a3d6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3d8 */ ADD R4, PC, 0x278 \n\
/* 0800a3da */ LSRS R0, R0, 0x20 \n\
/* 0800a3dc */ ADD R4, PC, 0x278 \n\
/* 0800a3de */ LSRS R0, R0, 0x20 \n\
/* 0800a3e0 */ ADD R4, PC, 0x278 \n\
/* 0800a3e2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3e4 */ ADD R4, PC, 0x278 \n\
/* 0800a3e6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3e8 */ ADD R4, PC, 0x278 \n\
/* 0800a3ea */ LSRS R0, R0, 0x20 \n\
/* 0800a3ec */ ADD R4, PC, 0x278 \n\
/* 0800a3ee */ LSRS R0, R0, 0x20 \n\
/* 0800a3f0 */ ADD R4, PC, 0x278 \n\
/* 0800a3f2 */ LSRS R0, R0, 0x20 \n\
/* 0800a3f4 */ ADD R4, PC, 0x278 \n\
/* 0800a3f6 */ LSRS R0, R0, 0x20 \n\
/* 0800a3f8 */ ADD R4, PC, 0x278 \n\
/* 0800a3fa */ LSRS R0, R0, 0x20 \n\
/* 0800a3fc */ ADD R4, PC, 0x278 \n\
/* 0800a3fe */ LSRS R0, R0, 0x20 \n\
/* 0800a400 */ ADD R4, PC, 0x278 \n\
/* 0800a402 */ LSRS R0, R0, 0x20 \n\
/* 0800a404 */ ADD R4, PC, 0x200 \n\
/* 0800a406 */ LSRS R0, R0, 0x20 \n\
/* 0800a408 */ ADD R4, PC, 0x1D0 \n\
/* 0800a40a */ LSRS R0, R0, 0x20 \n\
/* 0800a40c */ ADD R4, PC, 0x278 \n\
/* 0800a40e */ LSRS R0, R0, 0x20 \n\
/* 0800a410 */ ADD R4, PC, 0x278 \n\
/* 0800a412 */ LSRS R0, R0, 0x20 \n\
/* 0800a414 */ ADD R4, PC, 0x278 \n\
/* 0800a416 */ LSRS R0, R0, 0x20 \n\
/* 0800a418 */ ADD R4, PC, 0x278 \n\
/* 0800a41a */ LSRS R0, R0, 0x20 \n\
/* 0800a41c */ ADD R4, PC, 0x278 \n\
/* 0800a41e */ LSRS R0, R0, 0x20 \n\
/* 0800a420 */ ADD R4, PC, 0x1B0 \n\
/* 0800a422 */ LSRS R0, R0, 0x20 \n\
/* 0800a424 */ LDR R1, =0x030012fd @ !PossiblePointer \n\
/* 0800a426 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a428 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 0800a42a */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a430 */ LDR R1, =0x03001300 @ !PossiblePointer \n\
/* 0800a432 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a434 */ SUBS R0, 0x34 @ Subtract 0x34 from R0 \n\
/* 0800a436 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a43c */ LDR R1, =0x03001300 @ !PossiblePointer \n\
/* 0800a43e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800a440 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800a442 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a444 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a44c */ LDR R1, =0x030012fc @ !PossiblePointer \n\
/* 0800a44e */ B branch_0800a49a \n\
\n\
.ltorg \n\
/* 0800a454 */ LDR R1, =0x030012fc @ !PossiblePointer \n\
/* 0800a456 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a458 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a460 */ LDR R1, =0x030012fc @ !PossiblePointer \n\
/* 0800a462 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800a464 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a46c */ LDR R1, =0x030012fe @ !PossiblePointer \n\
/* 0800a46e */ B branch_0800a49a \n\
\n\
.ltorg \n\
/* 0800a474 */ LDR R1, =0x030012fe @ !PossiblePointer \n\
/* 0800a476 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a478 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a480 */ LDR R1, =0x030012fe @ !PossiblePointer \n\
/* 0800a482 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800a484 */ B branch_0800a49c \n\
\n\
.ltorg \n\
/* 0800a48c */ LDR R0, =0x030012ff @ !PossiblePointer \n\
/* 0800a48e */ STRB R3, [R0] \n\
/* 0800a490 */ B branch_0800a49e \n\
\n\
.ltorg \n\
/* 0800a498 */ LDR R1, =0x030012ff @ !PossiblePointer \n\
 \n\
branch_0800a49a: \n\
/* 0800a49a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800a49c: \n\
/* 0800a49c */ STRB R0, [R1] \n\
 \n\
branch_0800a49e: \n\
/* 0800a49e */ POP {R0} \n\
/* 0800a4a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");