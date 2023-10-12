#include "global.h"
#include "sound.h"
#include "lib_midi.h"

asm(".include \"include/gba.inc\"");//Temporary


/* AUDIO LIBRARY - SOUNDPLAYER */


// STATIC VARIABLES
static struct SoundPlayer *sDirectPlayer;   // DirectMidi SoundPlayer
static struct MidiBus *sDirectBus;          // DirectMidi MidiBus
static u8 *sDirectSequence;                 // DirectMidi Sequence (max. size = 0x200)
static u16 sDirectLength;                   // DirectMidi Sequence Length
static u8 sDirectLastCommand;               // DirectMidi Sequence Current Command

static u8 D_030015a7;   // Initial value at D_03005b7c


// Evaluate Big-Endian Short
u16 midi_player_parse_be16(const u8 *stream) {
    return (stream[0] << 8) | stream[1];
}


// Evaluate Big-Endian Integer
u32 midi_player_parse_be32(const u8 *stream) {
    return (stream[0] << 24) | (stream[1] << 16) | (stream[2] << 8) | stream[3];
}


// Get SoundPlayer Loop Marker Symbol Length
u32 midi_player_get_loop_sym_size(const char *loopMarker) {
    u8 i;

    for (i = 0; loopMarker[i] != '\0'; i++);

    return i;
}


// Play
void midi_player_play_header(struct SoundPlayer *soundPlayer, struct SequenceData *sound) {
    struct MidiBus *midiBus;
    struct MidiTrackStream *mTrkReader;
    const u8 *mTrkStream;
    const u8 *mTrkStart;
    u32 chunkLength;
    u32 trackTotal;
    u32 deltaTime;
    u32 i;

    // Reading Sequence Data:
    if (midi_player_is_playing(soundPlayer)) {
        if (soundPlayer->priorityEnabled && !soundPlayer->isPaused) {
            if (soundPlayer->sequence->priority > sound->priority) {
                return;
            }
        }
    }

    midiBus = soundPlayer->midiBus;
    midi_channel_stop_all(midiBus);
    midi_bus_init(midiBus, midiBus->totalChannels, midiBus->midiChannel);
    midi_bus_set_bank(midiBus, instrument_banks[sound->soundBank]);
    midi_bus_set_volume(midiBus, sound->volume);
    midi_bus_set_priority(midiBus, sound->priority);
    soundPlayer->sequence = sound;
    soundPlayer->sequenceVolume = sound->volume;

    // Reading MIDI Data:
    mTrkStream = sound->midiSequence;

    // Header:
    mTrkStream += 4; // Skip (Header: "MThd")
    chunkLength = midi_player_parse_be32(mTrkStream);
    mTrkStream += 4; // Skip (Header: Length)
    trackTotal = midi_player_parse_be16(mTrkStream + 2); // Header: Number of MIDI Tracks
    soundPlayer->usedTracks = trackTotal;

    if (soundPlayer->usedTracks > soundPlayer->totalTracks) {
        soundPlayer->usedTracks = soundPlayer->totalTracks;
    }
    soundPlayer->midiQuarterNote = midi_player_parse_be16(mTrkStream + 4); // Header: Division
    mTrkStream += chunkLength; // Skip (Header: Data)

    // Track:
    mTrkReader = soundPlayer->midiReader;
    for (i = 0; i < soundPlayer->usedTracks; i++) {
        mTrkStream += 4; // Skip (Track: Header)
        chunkLength = midi_player_parse_be32(mTrkStream);
        mTrkStream += 4; // Skip (Track: Length)
        mTrkStart = mTrkStream;
        mTrkStream += chunkLength;
        mTrkReader->active_curr = TRUE;
        mTrkReader->stream_start = mTrkStart;
        deltaTime = midi_parse_variable_length(&mTrkStart);
        mTrkReader->unkC = deltaTime << 8;
        mTrkReader->stream_curr = mTrkStart;
        mTrkReader->runningTime = deltaTime;
        mTrkReader->active_loop = FALSE;
        mTrkReader->inLoop = FALSE;
        mTrkReader++;
    }

    // Other Data:
    soundPlayer->inLoop = FALSE;
    soundPlayer->isPaused = FALSE;
    soundPlayer->deltaTime = 1;
    soundPlayer->playerVolume = 1 << 8;
    soundPlayer->playerSpeed = 1 << 8;
    soundPlayer->trackVolume = 1 << 8;
    soundPlayer->volumeFadeType = 0;
    soundPlayer->volumeFadeEnv = 0x8000;
    soundPlayer->volumeFadeSpd = 0;
    soundPlayer->loopStartSym = midi_loop_start_sym;
    soundPlayer->loopStartSymSize = midi_player_get_loop_sym_size(midi_loop_start_sym);
    soundPlayer->loopEndSym = midi_loop_end_sym;
    soundPlayer->loopEndSymSize = midi_player_get_loop_sym_size(midi_loop_end_sym);
    soundPlayer->midiController4E = 64;
    soundPlayer->midiController4F = 64;
    soundPlayer->midiController50 = 64;
    soundPlayer->midiController51 = 64;
    soundPlayer->unk34 = 0;
}


// Play from SoundTable
void midi_player_play_id(u16 soundIndex) {
    struct SoundPlayer *soundPlayer;
    struct SequenceData *sound;

    soundPlayer = D_08aa4460[D_08aa06f8[soundIndex].player].soundPlayer;
    sound = D_08aa06f8[soundIndex].sound;
    midi_player_play_header(soundPlayer, sound);
}


// Stop
void midi_player_stop(struct SoundPlayer *soundPlayer) {
    midi_channel_cut_all(soundPlayer->midiBus);
    soundPlayer->sequence = NULL;
}


// Set Pause
void midi_player_set_pause(struct SoundPlayer *soundPlayer, u8 pause) {
    soundPlayer->isPaused = pause;

    if (pause) {
        midi_channel_stop_all(soundPlayer->midiBus);
    }
}


// Check for Active Midi Readers
u32 midi_player_is_playing(struct SoundPlayer *soundPlayer) {
    u32 i;

    if (soundPlayer->sequence == NULL) {
        return FALSE;
    }

    for (i = 0; i < soundPlayer->usedTracks; i++) {
        if (soundPlayer->midiReader[i].active_curr) {
            return TRUE;
        }
    }

    return FALSE;
}


// Pause
void midi_player_pause(struct SoundPlayer *soundPlayer) {
    midi_player_set_pause(soundPlayer, TRUE);
}


// Unpause
void midi_player_unpause(struct SoundPlayer *soundPlayer) {
    midi_player_set_pause(soundPlayer, FALSE);
}


// Pause All
void midi_player_pause_all(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        midi_player_set_pause(D_08aa4324[i], TRUE);
    }
}


// Unpause All
void midi_player_unpause_all(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        midi_player_set_pause(D_08aa4324[i], FALSE);
    }
}


// Set Volume
void midi_player_set_volume(struct SoundPlayer *soundPlayer, u16 volume) {
    soundPlayer->playerVolume = volume;
}


// Set Volume for Selected Tracks
void midi_player_set_track_volume(struct SoundPlayer *soundPlayer, u16 trackMask, u16 volume) {
    soundPlayer->trackVolume = volume;
    soundPlayer->trackMask = trackMask;
}


// Set Pitch
void midi_player_set_pitch(struct SoundPlayer *soundPlayer, u16 unused, s16 pitch) {
    midi_bus_set_pitch(soundPlayer->midiBus, pitch);
}


// Set Panning
void midi_player_set_panning(struct SoundPlayer *soundPlayer, u16 unused, s8 panning) {
    midi_bus_set_panning(soundPlayer->midiBus, panning);
}


// Pause from Index
void midi_player_pause_id(u16 soundIndex) {
    struct SequenceData *sound = D_08aa06f8[soundIndex].sound;
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        if ((D_08aa4324[i] != NULL) && (D_08aa4324[i]->sequence == sound)) {
            midi_player_pause(D_08aa4324[i]);
        }
    }
}


// MidiStream.equals()
u32 midi_player_text_is_loop_sym(const u8 *stream1, const u8 *stream2, u32 length) {
    u32 i;

    for (i = 0; i < length; i++) {
        if (stream1[i] != stream2[i]) {
            return FALSE;
        }
    }

    return TRUE;
}


// Get MIDI Ticks Per Frame
u32 midi_player_get_delta_time(u16 tempo, u16 speed, u16 quarterNote) {
    return (tempo * speed * quarterNote) / (60u * 60u);
}


// Set Speed
void midi_player_set_speed(struct SoundPlayer *soundPlayer, u16 speed) {
    u32 delta;

    soundPlayer->playerSpeed = speed;
    delta = midi_player_get_delta_time(soundPlayer->midiTempo, speed, soundPlayer->midiQuarterNote);
    if (delta == 0) {
        delta = 1;
    }
    soundPlayer->deltaTime = delta;
}


// Set Volume Fade { type = 0..3 }
void midi_player_set_volume_fade(struct SoundPlayer *soundPlayer, u16 type, u16 duration) {
    switch (type) {
        case VOL_FADE_RESET:
            soundPlayer->volumeFadeEnv = (1 << 15);
            soundPlayer->volumeFadeSpd = 0;
            break;

        case VOL_FADE_IN:
            if (duration == 0) {
                duration = 1;
            }
            if (soundPlayer->volumeFadeType == 0) {
                soundPlayer->volumeFadeEnv = 0;
            }
            soundPlayer->volumeFadeSpd = (1 << 15) / duration;
            soundPlayer->isPaused = FALSE;
            break;

        case VOL_FADE_OUT_CLEAR:
        case VOL_FADE_OUT_PAUSE:
            if (soundPlayer->volumeFadeType == VOL_FADE_RESET) {
                soundPlayer->volumeFadeEnv = (1 << 15);
            }
            if (duration > 0) {
                soundPlayer->volumeFadeSpd = (1 << 15) / duration;
            } else {
                soundPlayer->volumeFadeEnv = 0;
                soundPlayer->volumeFadeSpd = 1;
                if (type == VOL_FADE_OUT_CLEAR) {
                    type = VOL_FADE_RESET;
                    midi_player_stop(soundPlayer);
                } else {
                    midi_player_set_pause(soundPlayer, TRUE);
                }
            }
            break;
    }

    soundPlayer->volumeFadeType = type;
}


// Volume Fade-Out & Clear
void midi_player_fade_out_to_stop(struct SoundPlayer *soundPlayer, u16 duration) {
    midi_player_set_volume_fade(soundPlayer, VOL_FADE_OUT_CLEAR, duration);
}


// Volume Fade-Out & Pause
void midi_player_fade_out_to_pause(struct SoundPlayer *soundPlayer, u16 duration) {
    midi_player_set_volume_fade(soundPlayer, VOL_FADE_OUT_PAUSE, duration);
}


// Volume Fade-In
void midi_player_fade_in(struct SoundPlayer *soundPlayer, u16 duration) {
    midi_player_set_volume_fade(soundPlayer, VOL_FADE_IN, duration);
}


// MidiStream System-Exclusive Message [Evnt_F0]
void midi_player_parse_sys_exc_message(struct SoundPlayer *soundPlayer, const u8 *stream) {
    struct MidiBus *midiBus = soundPlayer->midiBus;
    u8 type = *stream;
    u32 i;

    stream++;
    switch (type) {
        case SYS_EXC_EVENT_LFO:
            midi_equalizer_reset();
            D_03005b3c = LFO_MODE_DISABLED;
            D_03005640 = stream[0] * 2;
            midi_lfo_init(&D_03005b30, stream[1] * 2, stream[2] * 2, stream[3] * 2, stream[4] * 2, stream[5] * 2);
            midi_equalizer_set_high_gain(stream[6]);
            D_03005644 = soundPlayer;
            break;

        case SYS_EXC_EVENT_R_SCALE:
            for (i = 0; i < 12; i++) {
                midiBus->unk1C[i] = stream[i] - 64;
            }
            break;
    }
}


// MidiStream Meta Event (Loop Start, Loop End, Track End, Set Tempo)
u32 midi_player_parse_meta_event(struct SoundPlayer *soundPlayer, const u8 **upstream) {
    const u8 *stream = *upstream;
    u8 event = *stream;
    u32 length;
    u32 tempo;

    stream++;
    length = midi_parse_variable_length(&stream);
    *upstream = stream + length;

    switch (event) {
        case META_TEXT_MARKER:
            if (length == soundPlayer->loopStartSymSize) {
                if (midi_player_text_is_loop_sym(soundPlayer->loopStartSym, stream, length)) {
                    return META_EVENT_LOOP_START;
                }
            }
            if (length == soundPlayer->loopEndSymSize) {
                if (midi_player_text_is_loop_sym(soundPlayer->loopEndSym, stream, length)) {
                    return META_EVENT_LOOP_END;
                }
            }
            return META_EVENT_OTHER;

        case META_END_OF_TRACK:
            return META_EVENT_TRACK_END;

        case META_SET_TEMPO:
            tempo = 60000000u / ((stream[0] << 16) | (stream[1] << 8) | stream[2]);
            soundPlayer->midiTempo = tempo;
            D_0300562c = midi_player_get_delta_time(tempo, soundPlayer->playerSpeed, soundPlayer->midiQuarterNote);
            return META_EVENT_OTHER;

        default:
            return META_EVENT_OTHER;
    }
}


// MidiStream Controller Change [Evnt_B]
void midi_player_parse_controller_change(struct SoundPlayer *soundPlayer, u32 track, u8 controller, u8 value) {
    struct MidiBus *midiBus = soundPlayer->midiBus;

    switch (controller) {
        case M_CONTROLLER_BANK_SELECT_MSB:
            midi_channel_set_bankselect(midiBus, track, value | 0x8000);
            break;

        case M_CONTROLLER_MOD_DEPTH:
            midi_channel_set_mod_depth(midiBus, track, value);
            break;

        case M_CONTROLLER_VOLUME:
            midi_channel_set_volume(midiBus, track, value);
            break;

        case M_CONTROLLER_PANNING:
            midi_channel_set_panning(midiBus, track, value);
            break;

        case M_CONTROLLER_EXPRESSION:
            midi_channel_set_expression(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_RANGE:
            midi_channel_set_mod_range(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_SPEED:
            midi_channel_set_mod_speed(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_TYPE:
            midi_channel_set_mod_type(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_DELAY:
            midi_channel_set_mod_delay(midiBus, track, value);
            break;

        case M_CONTROLLER_BANK_SELECT_LSB:
            midi_channel_set_bankselect(midiBus, track, value);
            break;

        case M_CONTROLLER_PRIORITY:
            midi_channel_set_priority(midiBus, track, value);
            break;

        case M_CONTROLLER_UNK_0E:
            D_03005648 = value;
            break;

        case M_CONTROLLER_UNK_10:
            if (D_03005648 < D_03005b20) {
                D_03005b7c[D_03005648] = value;
            }
            break;

        case M_CONTROLLER_DAMPEN:
            midi_channel_set_enable_filter_eq(midiBus, track, value);
            break;

        case M_CONTROLLER_LFO:
            D_03005b3c = value;
            switch (value) {
                case LFO_MODE_DISABLED:
                case LFO_MODE_KEYPRESS:
                    midi_lfo_stop(&D_03005b30);
                    break;
                case LFO_MODE_CONSTANT:
                    midi_equalizer_reset();
                    midi_lfo_start(&D_03005b30);
                    break;
            }
            break;

        case M_CONTROLLER_EQ:
            D_03005b3c = LFO_MODE_DISABLED;
            midi_lfo_stop(&D_03005b30);
            midi_equalizer_reset();
            midi_equalizer_set_position((value * 2) - 0x80);
            break;

        case M_CONTROLLER_LFO_GAIN:
            D_03005640 = value * 2;
            break;

        case M_CONTROLLER_EQ_GAIN:
            midi_equalizer_set_high_gain(value);
            break;

        case M_CONTROLLER_STEREO:
            midi_channel_set_stereo_phase(midiBus, track, value);
            break;

        case M_CONTROLLER_RVB1:
            soundPlayer->midiController4E = value;
            break;

        case M_CONTROLLER_RVB2:
            soundPlayer->midiController4F = value;
            break;

        case M_CONTROLLER_RVB3:
            soundPlayer->midiController50 = value;
            break;

        case M_CONTROLLER_RVB4:
            soundPlayer->midiController51 = value;
            break;

        case M_CONTROLLER_RANDOM_PITCH:
            midi_channel_set_random_pitch(midiBus, track, value);
            break;

        case M_CONTROLLER_RANDOM_53:
            midi_channel_set_random_key_mod_depth(midiBus, track, value);
            break;

        case M_CONTROLLER_RANDOM_54:
            midi_channel_set_random_key_mod_interval(midiBus, track, value);
            break;
    }
}


// MidiStream Note Off/On [Evnt_8; Evnt_9]
void midi_player_add_note(u32 track, u32 key, u32 velocity) {
    struct MidiNote *midiNote;

    if (D_03005b78 < 20) {
        midiNote = &D_03005650[D_03005b78++];
        midiNote->channel = track;
        midiNote->key = key;
        midiNote->velocity = velocity;
    }
}


// MidiStream Messages/Events
u32 midi_player_read_track(struct SoundPlayer *soundPlayer, u32 track) {
    u32 trackEndType = M_TRACK_STREAM_CONTINUE;
    struct MidiTrackStream *reader = &soundPlayer->midiReader[track];
    struct MidiTrackStream *tempReader;
    const u8 *byteStream = reader->stream_curr;
    u8 command;
    u16 pitch;
    u32 i;

    // ??
    command = byteStream[0];
    if ((command & 0x80) != 0) {
        reader->command_curr = command;
        byteStream++;
    }
    command = reader->command_curr;

    // MIDI Meta Events & System Messages
    if (command >= 0xF0) {
        switch (command & 0x0F) {
            // MIDI System Exclusive Message (F0)
            case 0x00:
                i = midi_parse_variable_length(&byteStream);
                midi_player_parse_sys_exc_message(soundPlayer, byteStream);
                byteStream += i;
                break;

            // MIDI Meta Events (FF)
            case 0x0F:
                switch (midi_player_parse_meta_event(soundPlayer, &byteStream)) {
                    // End of Track
                    case META_EVENT_TRACK_END:
                        midi_channel_set_mod_speed(soundPlayer->midiBus, track, 0);
                        return M_TRACK_STREAM_STOP;

                    // Marker: Loop Start
                    case META_EVENT_LOOP_START:
                        if (soundPlayer->inLoop) {
                            break;
                        }
                        reader->active_loop = reader->active_curr;
                        reader->command_loop = reader->command_curr;
                        reader->stream_loop = byteStream;
                        reader->inLoop = TRUE;
                        soundPlayer->unk34 = reader->runningTime;
                        soundPlayer->inLoop = TRUE;
                        break;

                    // Marker: Loop End
                    case META_EVENT_LOOP_END:
                        if (!soundPlayer->inLoop) {
                            break;
                        }
                        for (i = 0; i < soundPlayer->usedTracks; i++) {
                            tempReader = &soundPlayer->midiReader[i];
                            tempReader->active_curr = tempReader->active_loop;
                            tempReader->command_curr = tempReader->command_loop;
                            if (reader == tempReader) {
                                byteStream = reader->stream_loop;
                            } else {
                                tempReader->stream_curr = tempReader->stream_loop;
                                tempReader->unkC = reader->unkC;
                            }
                            midi_channel_cut(soundPlayer->midiBus, i);
                        }
                        trackEndType = M_TRACK_STREAM_LOOP;
                        break;
                }
                break;

            // Else, Do Nothing
            default:
                i = midi_parse_variable_length(&byteStream);
                byteStream += i;
                break;
        }
    }

    // MIDI Messages { 80, 90, A0, B0, C0, D0, E0 }
    else {
        switch (command & 0xF0) {
            // Note Off
            case MSG_NOTE_OFF:
                midi_player_add_note(track, byteStream[0], 0);
                byteStream += 2;
                break;

            // Note On
            case MSG_NOTE_ON:
                midi_player_add_note(track, byteStream[0], byteStream[1]);
                byteStream += 2;
                break;

            // Polyphonic Key Pressure (Aftertouch) [Not Supported]
            case MSG_POLYPHONIC_KEY_PRESSURE:
                byteStream += 2;
                break;

            // MIDI Controller Change
            case MSG_CONTROLLER_CHANGE:
                midi_player_parse_controller_change(soundPlayer, track, byteStream[0], byteStream[1]);
                byteStream += 2;
                break;

            // Program Change
            case MSG_PROGRAM_CHANGE:
                midi_channel_set_patch(soundPlayer->midiBus, track, byteStream[0]);
                byteStream += 1;
                break;

            // Channel Pressure (Aftertouch) [Not Supported]
            case MSG_CHANNEL_PRESSURE:
                byteStream += 1;
                break;

            // Pitch Wheel Change
            case MSG_PITCH_WHEEL_CHANGE:
                pitch = (byteStream[0] & 0x7F) | ((byteStream[1] & 0x7F) << 7);
                midi_channel_set_pitch(soundPlayer->midiBus, track, pitch);
                byteStream += 2;
                break;
        }
    }

    // Close
    reader->stream_curr = byteStream;
    return trackEndType;
}


// Update MidiStream
void midi_player_update_track(struct SoundPlayer *soundPlayer, u32 track) {
    struct MidiTrackStream *reader;
    struct MidiChannel *channel;
    struct MidiNote *note;
    u32 anyNotePlayed;
    u32 delta;
    u32 i;

    reader = &soundPlayer->midiReader[track];
    if (!reader->active_curr) {
        return;
    }

    anyNotePlayed = FALSE;
    D_03005b78 = 0; // Reset "Current Note To Modify" counter.

    while (reader->unkC < soundPlayer->deltaTime) {
        if (soundPlayer->inLoop && !reader->inLoop && (reader->runningTime >= soundPlayer->unk34)) {
            reader->active_loop = reader->active_curr;
            reader->command_loop = reader->command_curr;
            reader->stream_loop = reader->stream_curr;
            reader->inLoop = TRUE;
        }

        if (midi_player_read_track(soundPlayer, track) == M_TRACK_STREAM_STOP) {
            reader->active_curr = FALSE;
            midi_channel_cut(soundPlayer->midiBus, track);
            return;
        }

        delta = midi_parse_variable_length(&reader->stream_curr);
        if (delta != 0) {
            for (note = D_03005650, i = 0; i < D_03005b78; i++, note++) {
                if (note->velocity != 0) { // Note has non-zero velocity.
                    midi_note_start(soundPlayer->midiBus, note->channel, note->key, note->velocity);
                    anyNotePlayed = TRUE;
                } else { // Note is muted.
                    midi_note_stop(soundPlayer->midiBus, note->channel, note->key);
                }
            }
            D_03005b78 = 0; // Reset "Current Note To Modify" counter.
        }

        reader->unkC += delta << 8;
        reader->runningTime += delta;
    }

    reader->unkC -= soundPlayer->deltaTime;

    // Use Filter EQ with LFO
    if (anyNotePlayed) {
        channel = &soundPlayer->midiBus->midiChannel[track];
        if (channel->filterEQ && (D_03005b3c == LFO_MODE_KEYPRESS)) {
            midi_equalizer_reset();
            midi_lfo_start(&D_03005b30);
        }
    }
}


// Update SoundPlayer Volume
void midi_player_update_volume_fade(struct SoundPlayer *soundPlayer) {
    u32 volumeProduct;
    u32 volumeLevel;

    switch (soundPlayer->volumeFadeType) {
        case VOL_FADE_RESET:
            break;

        case VOL_FADE_IN:
            soundPlayer->volumeFadeEnv += soundPlayer->volumeFadeSpd;
            if ((s16)soundPlayer->volumeFadeEnv < 0) {
                soundPlayer->volumeFadeType = VOL_FADE_RESET;
                soundPlayer->volumeFadeEnv = (1 << 15);
                soundPlayer->volumeFadeSpd = 0;
            }
            break;

        case VOL_FADE_OUT_CLEAR:
            if (soundPlayer->volumeFadeEnv < soundPlayer->volumeFadeSpd) {
                soundPlayer->volumeFadeType = VOL_FADE_RESET;
                soundPlayer->volumeFadeEnv = 0;
                midi_player_stop(soundPlayer);
            } else {
                soundPlayer->volumeFadeEnv -= soundPlayer->volumeFadeSpd;
            }
            break;

        case VOL_FADE_OUT_PAUSE:
            if (soundPlayer->volumeFadeEnv < soundPlayer->volumeFadeSpd) {
                soundPlayer->volumeFadeEnv = 0;
                midi_player_set_pause(soundPlayer, TRUE);
            } else {
                soundPlayer->volumeFadeEnv -= soundPlayer->volumeFadeSpd;
            }
            break;
    }

    volumeProduct = (soundPlayer->sequenceVolume * soundPlayer->playerVolume * soundPlayer->volumeFadeEnv) >> 8;
    volumeLevel = volumeProduct >> 15;
    if (volumeLevel > 0xFF) {
        volumeLevel = 0xFF;
    }
    midi_bus_set_volume(soundPlayer->midiBus, volumeLevel);

    volumeLevel = ((volumeProduct >> 8) * soundPlayer->trackVolume) >> 15;
    if (volumeLevel > 0xFF) {
        volumeLevel = 0xFF;
    }
    midi_bus_set_track_volume(soundPlayer->midiBus, volumeLevel, soundPlayer->trackMask);
}


// Update SoundPlayer MidiStream
void midi_player_update_sequence(struct SoundPlayer *soundPlayer) {
    struct MidiTrackStream *mTrkReader;
    u32 noActiveReader;
    u32 i;

    // If the SoundPlayer is stopped or paused, do not proceed.
    if ((soundPlayer->sequence == NULL) || soundPlayer->isPaused) {
        return;
    }

    D_0300562c = 0;

    // Update MIDI Track Streams
    for (i = 0; i < soundPlayer->usedTracks; i++) {
        midi_player_update_track(soundPlayer, i);
    }

    // If the above loop modifies the value of D_0300562c, apply to channel as speed envelope.
    if (D_0300562c != 0) {
        soundPlayer->deltaTime = D_0300562c;
    }

    // Check if any MIDI Track Readers are currently operating.
    mTrkReader = soundPlayer->midiReader;
    noActiveReader = TRUE;
    for (i = 0; (i < soundPlayer->usedTracks) && noActiveReader; i++, mTrkReader++) {
        if (mTrkReader->active_curr) {
            noActiveReader = FALSE;
        }
    }

    // If none are active, remove the Sound Sequence from the Audio Channel.
    if (noActiveReader) {
        soundPlayer->sequence = NULL;
    }
}


// Update Main
void midi_player_update_all(void) {
    struct SoundPlayer *soundPlayer;
    u32 delta;
    u32 i;
    s32 rvb0 = D_03005b90[0];
    s32 rvb1 = D_03005b90[1];
    s32 rvb2 = D_03005b90[2];
    s32 rvb3 = D_03005b90[3];

    D_030055f0 = REG_VCOUNT;

    // Standard Sound Players
    for (i = 0; i <= D_08aa4318; i++) {
        soundPlayer = D_08aa4324[i];
        if (soundPlayer != NULL) {
            midi_player_update_volume_fade(soundPlayer);
            midi_player_update_sequence(soundPlayer);
            midi_channel_update_mod_all(soundPlayer->midiBus);
            if (soundPlayer->sequence != NULL) {
                rvb0 -= (64 * 2) - (soundPlayer->midiController4E * 2);
                rvb1 -= 64 - soundPlayer->midiController4F;
                rvb2 -= 64 - soundPlayer->midiController50;
                rvb3 -= 64 - soundPlayer->midiController51;
            }
        }
    }

    // DirectMidi Player
    soundPlayer = sDirectPlayer;
    if (midi_direct_player_enabled && (soundPlayer != NULL)) {
        midi_direct_player_update();
        rvb0 -= (64 * 2) - (soundPlayer->midiController4E * 2);
        rvb1 -= 64 - soundPlayer->midiController4F;
        rvb2 -= 64 - soundPlayer->midiController50;
        rvb3 -= 64 - soundPlayer->midiController51;
    }

    // LFO
    if ((D_03005644 != NULL) && (D_03005b3c != LFO_MODE_DISABLED)) {
        delta = midi_player_get_delta_time(D_03005644->midiTempo, D_03005644->playerSpeed, 24);
        midi_lfo_update(&D_03005b30, delta);
        midi_equalizer_set_position((D_03005b30.output * D_03005640) >> 8);
    }

    midi_note_update_all();
    D_03005b80 = REG_VCOUNT;

    if (rvb0 < 0) rvb0 = 0;
    if (rvb0 > 127) rvb0 = 127;
    if (rvb1 < 0) rvb1 = 0;
    if (rvb1 > 127) rvb1 = 127;
    if (rvb2 < 0) rvb2 = 0;
    if (rvb2 > 127) rvb2 = 127;
    if (rvb3 < 0) rvb3 = 0;
    if (rvb3 > 127) rvb3 = 127;

    midi_directsound_set_reverb(rvb0, rvb1, rvb2, rvb3);
    midi_directsound_update();
}


// Set Main Reverb Controller Scratch/Queue
void midi_player_set_reverb(u32 rvb0, u32 rvb1, u32 rvb2, u32 rvb3) {
    D_03005b90[0] = rvb0;
    D_03005b90[1] = rvb1;
    D_03005b90[2] = rvb2;
    D_03005b90[3] = rvb3;
}


// Stub
void midi_stub(void) {
}


// Initialise SoundPlayer
void midi_player_init(struct SoundPlayer *soundPlayer, struct MidiBus *midiBus, u32 totalTracks, struct MidiTrackStream *midiReader, u32 priorityEnabled) {
    soundPlayer->sequence = NULL;
    soundPlayer->midiBus = midiBus;
    soundPlayer->totalTracks = totalTracks;
    soundPlayer->midiReader = midiReader;
    soundPlayer->priorityEnabled = priorityEnabled;
    soundPlayer->sequenceVolume = 100;
}


// Parse Midi Variable-Length Quantity
u32 midi_parse_variable_length(const u8 **upstream) {
    const u8 *stream = *upstream;
    u32 time = 0;
    u8 current;

    do {
        current = *stream++;
        time <<= 7;
        time |= (current & 0x7F);
    } while ((current & 0x80) != 0);

    *upstream = stream;
    return time;
}


// Initialise DirectMidi Player
void midi_direct_player_init(struct SoundPlayer *soundPlayer, struct MidiTrackStream *midiReader, u32 totalTracks,
                                struct MidiBus *midiBus, struct MidiChannel *midiChannels, u8 *sequenceSource) {
    if (!midi_direct_player_enabled) {
        return;
    }

    midi_bus_init(midiBus, totalTracks, midiChannels);
    midi_bus_set_bank(midiBus, instrument_banks[midi_direct_player_bank_id]);
    midi_bus_set_volume(midiBus, midi_direct_player_volume);
    midi_bus_set_priority(midiBus, midi_direct_player_priority);
    midi_player_init(soundPlayer, midiBus, totalTracks, midiReader, midi_direct_player_priority);

    soundPlayer->playerSpeed = (1 << 8);
    soundPlayer->trackVolume = (1 << 8);
    soundPlayer->volumeFadeType = 0;
    soundPlayer->volumeFadeEnv = (1 << 15);
    soundPlayer->volumeFadeSpd = 0;
    soundPlayer->midiTempo = midi_direct_player_tempo;
    soundPlayer->deltaTime = midi_player_get_delta_time(midi_direct_player_tempo, (1 << 8), 24);
    soundPlayer->midiController4E = 64;
    soundPlayer->midiController4F = 64;
    soundPlayer->midiController50 = 64;
    soundPlayer->midiController51 = 64;

    sDirectPlayer = soundPlayer;
    sDirectBus = midiBus;
    sDirectSequence = sequenceSource;
    sDirectLength = 0;
    sDirectLastCommand = 0;
}


// Append DirectMidi Sequence Instructions
void midi_direct_player_append_sequence(u8 *sequence, u32 length) {
    while ((length != 0) && (sDirectLength < 0x200)) {
        sDirectSequence[sDirectLength++] = *sequence;
        sequence++;
        length--;
    }
}


// Parse DirectMidi Sequence Instructions
u32 midi_direct_player_read_sequence(void) {
    struct SoundPlayer *soundPlayer = sDirectPlayer;
    u8 *stream = sDirectSequence;
    u32 sequenceLength = sDirectLength;
    u32 lengthIsInsufficient = FALSE;
    u32 i;

    while ((sequenceLength != 0) && !lengthIsInsufficient) {
        u32 shortCommandLength, longCommandLength;
        u8 *commandArgs;
        u8 command, arg0, arg1;
        u32 track;
        u16 pitch;

        if (stream[0] >= 0x80) {
            command = 0xF0 & stream[0];
            track = 0x0F & stream[0];
            commandArgs = stream + 1;
            i = 1;
            sDirectLastCommand = ((command >= 0x80) && (command < 0xF0)) ? stream[0] : 0;
        } else {
            command = 0xF0 & sDirectLastCommand;
            track = 0x0F & sDirectLastCommand;
            commandArgs = stream;
            i = 0;
        }

        shortCommandLength = i + 1;
        longCommandLength = i + 2;
        arg0 = commandArgs[0];
        arg1 = commandArgs[1];

        switch (command) {
            // Note Off
            case MSG_NOTE_OFF:
                if (sequenceLength < longCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                midi_player_add_note(track, arg0, 0);
                stream += longCommandLength;
                sequenceLength -= longCommandLength;
                break;

            // Note On
            case MSG_NOTE_ON:
                if (sequenceLength < longCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                midi_player_add_note(track, arg0, arg1);
                stream += longCommandLength;
                sequenceLength -= longCommandLength;
                break;

            // Polyphonic Key Pressure (Aftertouch) [Not Supported]
            case MSG_POLYPHONIC_KEY_PRESSURE:
                if (sequenceLength < longCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                stream += longCommandLength;
                sequenceLength -= longCommandLength;
                break;

            // MIDI Controller Change
            case MSG_CONTROLLER_CHANGE:
                if (sequenceLength < longCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                midi_player_parse_controller_change(soundPlayer, track, arg0, arg1);
                stream += longCommandLength;
                sequenceLength -= longCommandLength;
                break;

            // Program Change
            case MSG_PROGRAM_CHANGE:
                if (sequenceLength < shortCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                midi_channel_set_patch(soundPlayer->midiBus, track, arg0);
                stream += shortCommandLength;
                sequenceLength -= shortCommandLength;
                break;

            // Channel Pressure (Aftertouch) [Not Supported]
            case MSG_CHANNEL_PRESSURE:
                if (sequenceLength < shortCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                stream += shortCommandLength;
                sequenceLength -= shortCommandLength;
                break;

            // Pitch Wheel Change
            case MSG_PITCH_WHEEL_CHANGE:
                if (sequenceLength < longCommandLength) {
                    lengthIsInsufficient = TRUE;
                    break;
                }
                pitch = (arg0 & 0x7F) | ((arg1 & 0x7F) << 7);
                midi_channel_set_pitch(soundPlayer->midiBus, track, pitch);
                stream += longCommandLength;
                sequenceLength -= longCommandLength;
                break;

            // Meta Event / System Message
            case 0xF0:
                switch (track) {
                    case 0:
                        for (i = 1; (i < sequenceLength) && (stream[i] < 0x80); i++);
                        midi_player_parse_sys_exc_message(soundPlayer, stream + 1);
                        stream += i;
                        sequenceLength -= i;
                        break;

                    case 1:
                    case 2:
                    case 3:
                        if (sequenceLength < 2) {
                            lengthIsInsufficient = TRUE;
                            break;
                        }
                        stream += 2;
                        sequenceLength -= 2;
                        break;

                    default:
                        stream += 1;
                        sequenceLength -= 1;
                        break;
                }
                break;

            default:
                stream += 1;
                sequenceLength -= 1;
                break;
        }
    }

    for (i = 0; i < sequenceLength; i++) {
        sDirectSequence[i] = stream[i];
    }

    sDirectLength = sequenceLength;
}


// Update DirectMidi Player
void midi_direct_player_update(void) {
    struct MidiChannel *midiChannel;
    struct MidiNote *note;
    u32 anyNotePlayed;
    u32 i;

    midi_channel_update_mod_all(sDirectBus);
    anyNotePlayed = FALSE;
    D_03005b78 = 0;
    midi_direct_player_read_sequence();

    for (note = D_03005650, i = 0; i < D_03005b78; i++, note++) {
        if (note->velocity != 0) {
            midi_note_start(sDirectBus, note->channel, note->key, note->velocity);

            midiChannel = &sDirectBus->midiChannel[note->channel];
            if (midiChannel->filterEQ && (D_03005b3c == LFO_MODE_KEYPRESS)) {
                anyNotePlayed = TRUE;
            }
        } else {
            midi_note_stop(sDirectBus, note->channel, note->key);
        }
    }
    if (anyNotePlayed) {
        midi_equalizer_reset();
        midi_lfo_start(&D_03005b30);
    }
}


// Initialise Sound Area
void lib_midi_init(void) {
    u32 i;

    midi_directsound_init(DIRECTSOUND_MODE_STEREO, AUDIO_SAMPLE_RATE,
                    DMA_SAMPLE_BUFFER_SIZE, D_03001888,
                    SAMPLE_SCRATCHPAD_SIZE, D_030024c8,
                    DIRECTSOUND_CHANNEL_COUNT, D_030028c8);
    midi_psg_init();
    midi_note_init(DIRECTSOUND_CHANNEL_COUNT, D_03002a48);

    for (i = 0; i < SOUND_PLAYER_COUNT; i++) {
        midi_bus_init(D_08aa4358[i].midiBus, D_08aa4358[i].totalTracks, D_08aa4358[i].midiChannels);
        midi_player_init(D_08aa4358[i].soundPlayer, D_08aa4358[i].midiBus, D_08aa4358[i].totalTracks, D_08aa4358[i].trackStreams, D_08aa4358[i].priorityEnabled);
    }

    D_03005b7c = &D_030015a7;
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
    sDirectPlayer = NULL;
}
