.section .text
.thumb
.syntax unified

.include "include/gba.inc"

glabel func_080001f8
/* 080001f8 */ PUSH {LR}
/* 080001fa */ BL func_0801350c
/* 080001fe */ BL func_08018e60
/* 08000202 */ BL func_0801242c
/* 08000206 */ BL func_08016e94
/* 0800020a */ BL func_08010490
/* 0800020e */ BL func_08011ec0
/* 08000212 */ BL func_0801c1b8
/* 08000216 */ BL func_0801d580
/* 0800021a */ BL func_080113d0
/* 0800021e */ POP {R0}
/* 08000220 */ BX R0

.end

