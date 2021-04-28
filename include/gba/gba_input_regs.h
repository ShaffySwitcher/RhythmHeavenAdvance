// Keypad Input and Control Registers

// Bits are 0 when pressed and 1 when not pressed. Read only for REG_KEY
#define A_BUTTON              (1 << 0)
#define B_BUTTON              (1 << 1)
#define SELECT_BUTTON         (1 << 2)
#define START_BUTTON          (1 << 3)
#define DPAD_RIGHT            (1 << 4)
#define DPAD_LEFT             (1 << 5)
#define DPAD_UP               (1 << 6)
#define DPAD_DOWN             (1 << 7)
#define RIGHT_SHOULDER_BUTTON (1 << 8)
#define LEFT_SHOULDER_BUTTON  (1 << 9)

// For REG_KEYCNT in addition to these flags the above flags also determine which keys generate an interrupt
#define KEYCNT_IRQ         (1 << 14) // Whether to generate an interrupt on keypress
#define KEYCNT_INT_TYPE    (1 << 15) // Interrupt type - if 1 then all specified keys must be pressed if 0 then any key

#define REG_KEY         *(volatile u16*)(IORAMBase + 0x130)
#define REG_KEYCNT      *(volatile u16*)(IORAMBase + 0x132)
