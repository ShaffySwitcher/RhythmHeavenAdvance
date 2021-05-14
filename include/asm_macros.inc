.macro MOV32 reg,value
	MOV \reg, \value&0xFFFF0000
	ADD \reg, \reg, \value&0xFFFF
.endm

.macro glabel value
	.global \value
	\value:
.endm

.macro text01 value
    .byte 0x01, \value
.endm

.macro text03 value
    .byte 0x03, \value
.endm

.macro text05 value
    .byte 0x05, \value
.endm

.macro text_macro_unk3_enable
    text03 0x32
    text01 0x6c
.endm

.macro text_macro_unk5_enable
    text05 0x31
    text01 0x35
.endm

.macro text_macro_unk3_disable
    text03 0x30
    text01 0x73
.endm

.macro text_macro_unk5_disable
    text05 0x34
    text01 0x38
.endm
