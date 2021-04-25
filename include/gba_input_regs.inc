@ Keypad Input and Control Registers

@ Bits are 0 when pressed and 1 when not pressed. Read only for REG_KEY
.set KEY_A_BUTTON,       (1 << 0)
.set KEY_B_BUTTON,       (1 << 1)
.set KEY_SELECT_BUTTON,  (1 << 2)
.set KEY_START_BUTTON,   (1 << 3)
.set KEY_DPAD_RIGHT,     (1 << 4)
.set KEY_DPAD_LEFT,      (1 << 5)
.set KEY_DPAD_UP,        (1 << 6)
.set KEY_DPAD_DOWN,      (1 << 7)
.set KEY_RIGHT_SHOULDER, (1 << 8)
.set KEY_LEFT_SHOULDER,  (1 << 9)

@ For REG_KEYCNT, in addition to these flags the above flags also determine which keys generate an interrupt
.set KEYCNT_IRQ,      (1 << 14) @ Whether to generate an interrupt on keypress
.set KEYCNT_INT_TYPE, (1 << 15) @ Interrupt type - if 1 then all specified keys must be pressed, if 0 then any key

.set REG_KEY,         	IORAMBase + 0x130
.set REG_KEYCNT,      	IORAMBase + 0x132
