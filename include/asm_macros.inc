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
