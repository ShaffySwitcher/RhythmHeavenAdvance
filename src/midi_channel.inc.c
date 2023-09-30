

/* AUDIO LIBRARY - MIDI CHANNELS */


// Update MidiChannel Modulation
#include "asm/lib_08049144/asm_08049c34.s"


// Update MidiChannel Modulation (All)
#include "asm/lib_08049144/asm_08049d08.s"


// SoundChannel Note Off
#include "asm/lib_08049144/asm_08049d30.s"


// SoundChannel Close
#include "asm/lib_08049144/asm_08049db8.s"


// SoundChannel Note Off (All)
#include "asm/lib_08049144/asm_08049e3c.s"


// SoundChannel Close (All)
#include "asm/lib_08049144/asm_08049e64.s"


// Set MidiBus Priority
#include "asm/lib_08049144/asm_08049e8c.s"


// Set MidiBus Track Volume & Mask
#include "asm/lib_08049144/asm_08049ec4.s"


// Initialise MidiChannel
#include "asm/lib_08049144/asm_08049ecc.s"


// Initialise MidiBus
#include "asm/lib_08049144/asm_08049fa0.s"


// Set MidiBus Sound Bank
#include "asm/lib_08049144/asm_0804a014.s"


/* SOUND CHANNEL OPERATIONS */


// Update SoundChannel Pitch
#include "asm/lib_08049144/asm_0804a018.s"


// Update SoundChannel Volume
#include "asm/lib_08049144/asm_0804a1f4.s"


// Update SoundChannel ADSR
#include "asm/lib_08049144/asm_0804a224.s"


// Update PCM SoundChannel
#include "asm/lib_08049144/asm_0804a2c4.s"


// Update PCM SoundChannel (All)
#include "asm/lib_08049144/asm_0804a334.s"


// Stop PCM SoundChannels
#include "asm/lib_08049144/asm_0804a360.s"


// Get First Active PCM SoundChannel not at ADSR Stage 3.
#include "asm/lib_08049144/asm_0804a3a0.s"


// Get First Inactive PCM SoundChannel
#include "asm/lib_08049144/asm_0804a3fc.s"


// Get PCM SoundChannel with Lowest Volume
#include "asm/lib_08049144/asm_0804a434.s"


// Get PCM SoundChannel with Lowest Volume (exclude ADSR)
#include "asm/lib_08049144/asm_0804a48c.s"


// Get PCM SoundChannel with Lowest Priority
#include "asm/lib_08049144/asm_0804a4e0.s"


// SoundChannel Midi 'Note Off' Event
#include "asm/lib_08049144/asm_0804a5b4.s"


// Return First Most Replaceable DirectSound Channel
#include "asm/lib_08049144/asm_0804a628.s"


// Convert PCM SoundChannel Panning to SampleStream Right Volume
#include "asm/lib_08049144/asm_0804a65c.s"


// Convert PCM SoundChannel Panning to SampleStream Left Volume
#include "asm/lib_08049144/asm_0804a674.s"


// Get Frequency of Midi Key
#include "asm/lib_08049144/asm_0804a690.s"


// SoundChannel Midi 'Note On' Event
#include "asm/lib_08049144/asm_0804a6b0.s"


/* MIDI CHANNEL OPERATIONS */


// Set MidiChannel Pitch Wheel [Evnt_E]
#include "asm/lib_08049144/asm_0804aa40.s"


// Set MidiChannel Volume [Ctrl_07]
#include "asm/lib_08049144/asm_0804aa5c.s"


// Set MidiChannel Panning [Ctrl_0A]
#include "asm/lib_08049144/asm_0804aa7c.s"


// Calculate MidiChannel Panning Envelope
#include "asm/lib_08049144/asm_0804aaa4.s"


// Update Sample Stream Panning
#include "asm/lib_08049144/asm_0804aae0.s"


// Set MidiChannel Instrument/Patch [Evnt_C]
#include "asm/lib_08049144/asm_0804ab88.s"


// Set MidiChannel Expression [Ctrl_0B]
#include "asm/lib_08049144/asm_0804aba8.s"


// Set MidiChannel Bank Select [Ctrl_00; Ctrl_20]
#include "asm/lib_08049144/asm_0804abc8.s"


// Set MidiChannel unk0_b0
#include "asm/lib_08049144/asm_0804ac24.s"


// Set MidiChannel Modulation Depth [Ctrl_01]
#include "asm/lib_08049144/asm_0804ac40.s"


// Set MidiChannel unk4_b21
#include "asm/lib_08049144/asm_0804ac60.s"


// Set MidiChannel Filter EQ [Ctrl_48]
#include "asm/lib_08049144/asm_0804ac80.s"


// Set MidiChannel Modulation Type [Ctrl_16]
#include "asm/lib_08049144/asm_0804aca0.s"


// Set MidiChannel unkC
#include "asm/lib_08049144/asm_0804acc0.s"


// Set MidiChannel Modulation Speed [Ctrl_15]
#include "asm/lib_08049144/asm_0804accc.s"


// Set MidiChannel Modulation Delay [Ctrl_1A]
#include "asm/lib_08049144/asm_0804acd8.s"


// Set MidiChannel Modulation Range [Ctrl_14]
#include "asm/lib_08049144/asm_0804ace4.s"


// Set MidiChannel Offset/Split Stereo Effect [Ctrl_4B]
#include "asm/lib_08049144/asm_0804acf0.s"


// Set MidiChannel Priority [Ctrl_21]
#include "asm/lib_08049144/asm_0804ad18.s"


// Set MidiChannel Random Pitch Variation [Ctrl_52]
#include "asm/lib_08049144/asm_0804ad38.s"


// Set MidiChannel unk1C [Ctrl_53]
#include "asm/lib_08049144/asm_0804ad90.s"


// Set MidiChannel unk1D & unk1E [Ctrl_54]
#include "asm/lib_08049144/asm_0804ad9c.s"


/* MIDI BUS OPERATIONS */


// Set MidiBus Key
#include "asm/lib_08049144/asm_0804adb0.s"


// Set MidiBus Volume
#include "asm/lib_08049144/asm_0804adb4.s"


// Set MidiBus Panning
#include "asm/lib_08049144/asm_0804adb8.s"


// Set MidiBus Pitch
#include "asm/lib_08049144/asm_0804ade4.s"


// Set MidiBus Modulation Range
#include "asm/lib_08049144/asm_0804ade8.s"


// Set MidiBus unk8
#include "asm/lib_08049144/asm_0804ae14.s"


// Set MidiBus Tuning
#include "asm/lib_08049144/asm_0804ae18.s"
