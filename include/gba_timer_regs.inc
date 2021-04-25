@ Timer registers

.set TIMER_FREQUENCY_1_PULSE,     0 @ Default
.set TIMER_FREQUENCY_64_PULSES,   1
.set TIMER_FREQUENCY_256_PULSES,  2
.set TIMER_FREQUENCY_1024_PULSES, 3

.set TIMER_FREQUENCY_MASK, (0x3 << 0) @ Frequency at which the timer updates
.set TIMER_CASCADE,        (1 << 2)   @ Instead of using frequency, increment when the timer below overflows (Unused for timer 0)
.set TIMER_IRQ,            (1 << 6)   @ Generate an interrupt on overflow
.set TIMER_ENABLE,         (1 << 7)   @ Enable the timer

.set REG_TM0D,       	IORAMBase + 0x100 @ Timer 0 current value
.set REG_TM0CNT,     	IORAMBase + 0x102 @ Timer 0 controls
.set REG_TM1D,       	IORAMBase + 0x104 @ Timer 1 current value
.set REG_TM1CNT,     	IORAMBase + 0x106 @ Timer 1 controls
.set REG_TM2D,       	IORAMBase + 0x108 @ Timer 2 current value
.set REG_TM2CNT,     	IORAMBase + 0x10A @ Timer 2 controls
.set REG_TM3D,       	IORAMBase + 0x10C @ Timer 3 current value
.set REG_TM3CNT,     	IORAMBase + 0x10E @ Timer 3 controls
