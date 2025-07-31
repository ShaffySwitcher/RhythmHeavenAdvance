#include "global.h"
#include "audio_check.h"
#include "src/scenes/game_select.h"

/* EXTERNS */

extern void midi_note_start(struct MidiBus *midiBus, u32 track, u8 noteKey, u8 noteVelocity);
extern void midi_note_stop(struct MidiBus *midiBus, u32 track, u8 noteKey);
extern union Instrument *instrument_banks[];

/* AUDIO CHECK SCENE */

const char *noteNames[] = {
    "C-1",  "C#-1", "D-1",  "D#-1", "E-1",  "F-1",  "F#-1", "G-1",  "G#-1", "A-1",  "A#-1", "B-1",
    "C0",   "C#0",  "D0",   "D#0",  "E0",   "F0",   "F#0",  "G0",   "G#0",  "A0",   "A#0",  "B0",
    "C1",   "C#1",  "D1",   "D#1",  "E1",   "F1",   "F#1",  "G1",   "G#1",  "A1",   "A#1",  "B1",
    "C2",   "C#2",  "D2",   "D#2",  "E2",   "F2",   "F#2",  "G2",   "G#2",  "A2",   "A#2",  "B2",
    "C3",   "C#3",  "D3",   "D#3",  "E3",   "F3",   "F#3",  "G3",   "G#3",  "A3",   "A#3",  "B3",
    "C4",   "C#4",  "D4",   "D#4",  "E4",   "F4",   "F#4",  "G4",   "G#4",  "A4",   "A#4",  "B4",
    "C5",   "C#5",  "D5",   "D#5",  "E5",   "F5",   "F#5",  "G5",   "G#5",  "A5",   "A#5",  "B5",
    "C6",   "C#6",  "D6",   "D#6",  "E6",   "F6",   "F#6",  "G6",   "G#6",  "A6",   "A#6",  "B6",
    "C7",   "C#7",  "D7",   "D#7",  "E7",   "F7",   "F#7",  "G7",   "G#7",  "A7",   "A#7",  "B7",
    "C8",   "C#8",  "D8",   "D#8",  "E8",   "F8",   "F#8",  "G8",   "G#8",  "A8",   "A#8",  "B8",
    "C9",   "C#9",  "D9",   "D#9",  "E9",   "F9",   "F#9",  "G9"
};


// Init. Static Variables
void audio_check_scene_init_memory(void) {
}


// Graphics Init. 3
void audio_check_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    D_03004b10.objPalette[0][1] = 0x7FFF;
    D_03004b10.objPalette[1][1] = 0x03FF;
    task = start_new_texture_loader(get_current_mem_id(), audio_check_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void audio_check_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), audio_check_gfx_table, 0x3000);
    run_func_after_task(task, audio_check_scene_init_gfx3, 0);
}


// Graphics Init. 1
void audio_check_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), audio_check_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
}


// Scene Start
void audio_check_scene_start(void *sVar, s32 dArg) {
    u32 i;

    func_08007324(FALSE);
    func_080073f0();

    i = 0;
    while(instrument_banks[i] != (void*)1) {
        i++;
        if (i > 127) {
            break;
        }
    }
    gAudioCheck->maxBanks = i-1;

    gAudioCheck->currentBank = 0;
    gAudioCheck->currentInstrument = 0;
    gAudioCheck->hasInitializedAudio = FALSE;

    audio_check_scene_init_gfx1();
    gAudioCheck->inputsEnabled = FALSE;
    set_next_scene(&scene_debug_menu);

    gAudioCheck->currentNote = 60;

    gAudioCheck->headerPrinter = text_printer_create_new(get_current_mem_id(), 1, 104, 8);
    text_printer_set_x_y(gAudioCheck->headerPrinter, 8, 8);
    text_printer_set_palette(gAudioCheck->headerPrinter, 1);
    text_printer_set_string(gAudioCheck->headerPrinter, "--- Audio Check ---");

    gAudioCheck->currentPrinter = text_printer_create_new(get_current_mem_id(), 3, 180, 14);
    text_printer_set_x_y(gAudioCheck->currentPrinter, 8, 24);
    text_printer_set_palette(gAudioCheck->currentPrinter, 0);

    audio_check_print_note();

    // to-do: initialize the sound player without playing a midi (i could do an empty midi but i can do cleaner)
    scene_play_music(&s_a4_seqData);
}


// Scene Update (Paused)
void audio_check_scene_paused(void *sVar, s32 dArg) {
}


// Scene Update
void audio_check_scene_update(void *sVar, s32 dArg) {
    s16 previousBank;
    s16 previousNote;
    s16 previousInstrument;
    s32 i, j;

    if (!gAudioCheck->hasInitializedAudio) {
        gAudioCheck->hasInitializedAudio = TRUE;

        while(instrument_banks[gAudioCheck->currentBank] == NULL) {
            gAudioCheck->currentBank++;
            if (gAudioCheck->currentBank > gAudioCheck->maxBanks) {
                gAudioCheck->currentBank = 0;
                break;
            }
        }

        while(&instrument_banks[gAudioCheck->currentBank][gAudioCheck->currentInstrument] == NULL) {
            gAudioCheck->currentInstrument++;
            if (gAudioCheck->currentInstrument > 127) {
                gAudioCheck->currentInstrument = 0;
                break;
            }
        }

        get_soundplayer_from_id(0)->midiBus->soundBank = instrument_banks[gAudioCheck->currentBank];
        get_soundplayer_from_id(0)->midiBus->midiChannel->instPatch = gAudioCheck->currentInstrument;

        midi_note_stop(get_soundplayer_from_id(0)->midiBus, 1, gAudioCheck->currentNote);

        audio_check_print_note();
    }

    if (audio_check_scene_inputs_enabled()) {
        previousBank = gAudioCheck->currentBank;
        previousNote = gAudioCheck->currentNote;
        previousInstrument = gAudioCheck->currentInstrument;

        if (D_030053b8 & LEFT_SHOULDER_BUTTON) {
            if (gAudioCheck->currentBank == 0) {
                gAudioCheck->currentBank = gAudioCheck->maxBanks;
            } else {
                gAudioCheck->currentBank--;
            }
            while(instrument_banks[gAudioCheck->currentBank] == NULL) {
                if (gAudioCheck->currentBank == 0) {
                    gAudioCheck->currentBank = gAudioCheck->maxBanks;
                } else {
                    gAudioCheck->currentBank--;
                }
                if (gAudioCheck->currentBank == previousBank) {
                    break;
                }
            }

            gAudioCheck->currentInstrument = 0;
        }

        if (D_030053b8 & RIGHT_SHOULDER_BUTTON) {
            if (gAudioCheck->currentBank == gAudioCheck->maxBanks) {
                gAudioCheck->currentBank = 0;
            } else {
                gAudioCheck->currentBank++;
            }
            if (gAudioCheck->currentBank > gAudioCheck->maxBanks) {
                gAudioCheck->currentBank = 0;
            }
            while(instrument_banks[gAudioCheck->currentBank] == NULL) {
                gAudioCheck->currentBank++;
                if (gAudioCheck->currentBank > gAudioCheck->maxBanks) {
                    gAudioCheck->currentBank = 0;
                    break;
                }
            }

            gAudioCheck->currentInstrument = 0;
        }

        if (D_030053b8 & DPAD_LEFT) {
            gAudioCheck->currentInstrument--;
            if (gAudioCheck->currentInstrument < 0) {
                gAudioCheck->currentInstrument = 127;
            }
        }
        if (D_030053b8 & DPAD_RIGHT) {
            gAudioCheck->currentInstrument++;
            if (gAudioCheck->currentInstrument > 127) {
                gAudioCheck->currentInstrument = 0;
            }
        }

        if (D_030053b8 & DPAD_UP) {
            gAudioCheck->currentNote++;
            if (gAudioCheck->currentNote > 127) {
                gAudioCheck->currentNote = 0;
            }
        }

        if (D_030053b8 & DPAD_DOWN) {
            gAudioCheck->currentNote--;
            if (gAudioCheck->currentNote < 0) {
                gAudioCheck->currentNote = 127;
            }
        }

        if (gAudioCheck->currentInstrument < 0) {
            gAudioCheck->currentInstrument = 0;
        }
        if (gAudioCheck->currentInstrument > 127) {
            gAudioCheck->currentInstrument = 127;
        }
        if ((gAudioCheck->currentNote != previousNote) || (gAudioCheck->currentBank != previousBank) || (gAudioCheck->currentInstrument != previousInstrument)) {
            audio_check_print_note();
            get_soundplayer_from_id(0)->midiBus->soundBank = instrument_banks[gAudioCheck->currentBank];
            get_soundplayer_from_id(0)->midiBus->midiChannel->instPatch = gAudioCheck->currentInstrument;
        }

        if (D_03004afc & A_BUTTON) {
            midi_note_start(get_soundplayer_from_id(0)->midiBus, 0,gAudioCheck->currentNote,100);
        }

        if (D_03004afc & B_BUTTON) {
            midi_note_stop(get_soundplayer_from_id(0)->midiBus, 0, gAudioCheck->currentNote);
        }

        if (D_03004afc & START_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gAudioCheck->inputsEnabled = FALSE;
        }

        if (D_03004afc & SELECT_BUTTON) {
            for (i = 0; i < 16; i++) {
                for(j = 0; j < 128; j++){
                    midi_note_stop(get_soundplayer_from_id(0)->midiBus, i, j);
                }
            }
        }

        text_printer_update(gAudioCheck->headerPrinter);
        text_printer_update(gAudioCheck->currentPrinter);
    }
}


// Check if Scene Can Receive Inputs
u32 audio_check_scene_inputs_enabled(void) {
    if (gAudioCheck->inputsEnabled) {
        return TRUE;
    }

    return FALSE;
}

// Scene Stop
void audio_check_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
}

void audio_check_print_note() {
    char *string = gAudioCheck->currentString;
    char number[20];

    memcpy(string, "  Current Note:     ", 21);
    strcat(string, noteNames[gAudioCheck->currentNote]);
    strcat(string, "\n  Current Bank:     ");
    strintf(number, gAudioCheck->currentBank);
    strcat(string, number);
    strcat(string, "\n  Current Instrument:     ");
    strintf(number, gAudioCheck->currentInstrument);
    strcat(string, number);

    text_printer_set_string(gAudioCheck->currentPrinter, string);
}