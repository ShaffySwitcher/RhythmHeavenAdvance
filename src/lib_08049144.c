#include "lib_08049144.h"

asm(".include \"include/gba.inc\"");//Temporary


/* AUDIO LIBRARY */


#include "src/midi_directsound.inc.c"
#include "src/midi_channel.inc.c"
#include "src/midi_lfo.inc.c"
#include "src/midi_psg.inc.c"
#include "src/midi_player.inc.c"


// Init. Library
void func_0804c778(void) {
    u32 i;

    func_08049490(DIRECTSOUND_MODE_STEREO, AUDIO_SAMPLE_RATE,
                    DMA_SAMPLE_BUFFER_SIZE, D_03001888,
                    SAMPLE_SCRATCHPAD_SIZE, D_030024c8,
                    DIRECTSOUND_CHANNEL_COUNT, D_030028c8);
    func_0804af30();
    func_0804a360(DIRECTSOUND_CHANNEL_COUNT, D_03002a48);

    for (i = 0; i < SOUND_PLAYER_COUNT; i++) {
        func_08049fa0(D_08aa4358[i].midiBus, D_08aa4358[i].trackCount, D_08aa4358[i].midiChannels);
        func_0804c35c(D_08aa4358[i].soundPlayer, D_08aa4358[i].midiBus, D_08aa4358[i].trackCount, D_08aa4358[i].trackStreams, D_08aa4358[i].priorityEnabled);
    }

    D_03005b7c = D_030015a7;
    D_03005b20 = 4;

    for (i = 0; i < 4; i++) {
        D_03005b7c[i] = 0;
    }

    D_03005b3c = LFO_MODE_DISABLED;
    D_03005644 = NULL;
    D_03005b90[0] = 0;
    D_03005b90[1] = 0;
    D_03005b90[2] = 0;
    D_03005b90[3] = 0;
    D_03001598 = NULL;
}
