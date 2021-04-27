.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080009fc
/* 080009fc */ MOVS R0, 0x0 @ Set R0 to 0x0
/* 080009fe */ BX LR

.end
