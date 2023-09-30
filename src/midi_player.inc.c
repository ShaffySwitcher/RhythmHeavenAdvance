

/* AUDIO LIBRARY - SOUNDPLAYER */


// Evaluate Big-Endian Short
u16 func_0804b324(const u8 *stream) {
    return (stream[0] << 8) | stream[1];
}


// Evaluate Big-Endian Integer
u32 func_0804b330(const u8 *stream) {
    return (stream[0] << 24) | (stream[1] << 16) | (stream[2] << 8) | stream[3];
}


// Get SoundPlayer Loop Marker Symbol Length
u32 func_0804b348(const char *loopMarker) {
    u8 i;

    for (i = 0; loopMarker[i] != '\0'; i++);

    return i;
}


// Play
void func_0804b368(struct SoundPlayer *soundPlayer, struct SequenceData *sound) {
    struct MidiBus *midiBus;
    struct MidiTrackStream *mTrkReader;
    const u8 *mTrkStream;
    const u8 *mTrkStart;
    u32 chunkLength;
    u32 trackTotal;
    u32 deltaTime;
    u32 i;

    // Reading Sequence Data:
    if (func_0804b5a0(soundPlayer)) {
        if (soundPlayer->priorityEnabled && !soundPlayer->isPaused) {
            if (soundPlayer->sequence->priority > sound->priority) {
                return;
            }
        }
    }

    midiBus = soundPlayer->midiBus;
    func_08049e64(midiBus);
    func_08049fa0(midiBus, midiBus->totalChannels, midiBus->midiChannel);
    func_0804a014(midiBus, instrument_banks[sound->soundBank]);
    func_0804adb4(midiBus, sound->volume);
    func_08049e8c(midiBus, sound->priority);
    soundPlayer->sequence = sound;
    soundPlayer->sequenceVolume = sound->volume;

    // Reading MIDI Data:
    mTrkStream = sound->midiSequence;

    // Header:
    mTrkStream += 4; // Skip (Header: "MThd")
    chunkLength = func_0804b330(mTrkStream);
    mTrkStream += 4; // Skip (Header: Length)
    trackTotal = func_0804b324(mTrkStream + 2); // Header: Number of MIDI Tracks
    soundPlayer->nTracksUsed = trackTotal;

    if (soundPlayer->nTracksUsed > soundPlayer->nTracksMax) {
        soundPlayer->nTracksUsed = soundPlayer->nTracksMax;
    }
    soundPlayer->midiQuarterNote = func_0804b324(mTrkStream + 4); // Header: Division
    mTrkStream += chunkLength; // Skip (Header: Data)

    // Track:
    mTrkReader = soundPlayer->midiReader;
    for (i = 0; i < soundPlayer->nTracksUsed; i++) {
        mTrkStream += 4; // Skip (Track: Header)
        chunkLength = func_0804b330(mTrkStream);
        mTrkStream += 4; // Skip (Track: Length)
        mTrkStart = mTrkStream;
        mTrkStream += chunkLength;
        mTrkReader->active_curr = TRUE;
        mTrkReader->stream_start = mTrkStart;
        deltaTime = func_0804c398(&mTrkStart);
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
    soundPlayer->loopStartSymSize = func_0804b348(midi_loop_start_sym);
    soundPlayer->loopEndSym = midi_loop_end_sym;
    soundPlayer->loopEndSymSize = func_0804b348(midi_loop_end_sym);
    soundPlayer->midiController4E = 64;
    soundPlayer->midiController4F = 64;
    soundPlayer->midiController50 = 64;
    soundPlayer->midiController51 = 64;
    soundPlayer->unk34 = 0;
}


// Play from SoundTable
void func_0804b534(u16 soundIndex) {
    struct SoundPlayer *soundPlayer;
    struct SequenceData *sound;

    soundPlayer = D_08aa4460[D_08aa06f8[soundIndex].player].soundPlayer;
    sound = D_08aa06f8[soundIndex].sound;
    func_0804b368(soundPlayer, sound);
}


// Stop
void func_0804b560(struct SoundPlayer *soundPlayer) {
    func_08049e3c(soundPlayer->midiBus);
    soundPlayer->sequence = NULL;
}


// Set Pause
void func_0804b574(struct SoundPlayer *soundPlayer, u8 pause) {
    soundPlayer->isPaused = pause;

    if (pause) {
        func_08049e64(soundPlayer->midiBus);
    }
}


// Check for Active Midi Readers
u32 func_0804b5a0(struct SoundPlayer *soundPlayer) {
    u32 i;

    if (soundPlayer->sequence == NULL) {
        return FALSE;
    }

    for (i = 0; i < soundPlayer->nTracksUsed; i++) {
        if (soundPlayer->midiReader[i].active_curr) {
            return TRUE;
        }
    }

    return FALSE;
}


// Pause
void func_0804b5d8(struct SoundPlayer *soundPlayer) {
    func_0804b574(soundPlayer, TRUE);
}


// Unpause
void func_0804b5e4(struct SoundPlayer *soundPlayer) {
    func_0804b574(soundPlayer, FALSE);
}


// Pause All
void func_0804b5f0(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        func_0804b574(D_08aa4324[i], TRUE);
    }
}


// Unpause All
void func_0804b620(void) {
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        func_0804b574(D_08aa4324[i], FALSE);
    }
}


// Set Volume
void func_0804b650(struct SoundPlayer *soundPlayer, u16 volume) {
    soundPlayer->playerVolume = volume;
}


// Set Volume for Selected Tracks
void func_0804b654(struct SoundPlayer *soundPlayer, u16 trackMask, u16 volume) {
    soundPlayer->trackVolume = volume;
    soundPlayer->trackMask = trackMask;
}


// Set Pitch
void func_0804b65c(struct SoundPlayer *soundPlayer, u16 unused, s16 pitch) {
    func_0804ade4(soundPlayer->midiBus, pitch);
}


// Set Panning
void func_0804b66c(struct SoundPlayer *soundPlayer, u16 unused, s8 panning) {
    func_0804adb8(soundPlayer->midiBus, panning);
}


// Pause from Index
void func_0804b67c(u16 soundIndex) {
    struct SequenceData *sound = D_08aa06f8[soundIndex].sound;
    u32 i;

    for (i = 0; i <= D_08aa4318; i++) {
        if ((D_08aa4324[i] != NULL) && (D_08aa4324[i]->sequence == sound)) {
            func_0804b5d8(D_08aa4324[i]);
        }
    }
}


// MidiStream.equals()
u32 func_0804b6c4(const u8 *stream1, const u8 *stream2, u32 length) {
    u32 i;

    for (i = 0; i < length; i++) {
        if (stream1[i] != stream2[i]) {
            return FALSE;
        }
    }

    return TRUE;
}


// Get MIDI Ticks Per Frame
u32 func_0804b6f0(u16 tempo, u16 speed, u16 quarterNote) {
    return (tempo * speed * quarterNote) / (60u * 60u);
}


// Set Speed
void func_0804b710(struct SoundPlayer *soundPlayer, u16 speed) {
    u32 delta;

    soundPlayer->playerSpeed = speed;
    delta = func_0804b6f0(soundPlayer->midiTempo, speed, soundPlayer->midiQuarterNote);
    if (delta == 0) {
        delta = 1;
    }
    soundPlayer->deltaTime = delta;
}


// Set Volume Fade { type = 0..3 }
void func_0804b734(struct SoundPlayer *soundPlayer, u16 type, u16 duration) {
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
                    func_0804b560(soundPlayer);
                } else {
                    func_0804b574(soundPlayer, TRUE);
                }
            }
            break;
    }

    soundPlayer->volumeFadeType = type;
}


// Volume Fade-Out & Clear
void func_0804b7dc(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_OUT_CLEAR, duration);
}


// Volume Fade-Out & Pause
void func_0804b7ec(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_OUT_PAUSE, duration);
}


// Volume Fade-In
void func_0804b7fc(struct SoundPlayer *soundPlayer, u16 duration) {
    func_0804b734(soundPlayer, VOL_FADE_IN, duration);
}


// MidiStream System-Exclusive Message [Evnt_F0]
void func_0804b80c(struct SoundPlayer *soundPlayer, const u8 *stream) {
    struct MidiBus *midiBus = soundPlayer->midiBus;
    u8 type = *stream;
    u32 i;

    stream++;
    switch (type) {
        case SYS_EXC_EVENT_LFO:
            func_08049be4();
            D_03005b3c = LFO_MODE_DISABLED;
            D_03005640 = stream[0] * 2;
            func_0804ae1c(&D_03005b30, stream[1] * 2, stream[2] * 2, stream[3] * 2, stream[4] * 2, stream[5] * 2);
            func_08049b8c(stream[6]);
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
u32 func_0804b898(struct SoundPlayer *soundPlayer, const u8 **upstream) {
    const u8 *stream = *upstream;
    u8 event = *stream;
    u32 length;
    u32 tempo;

    stream++;
    length = func_0804c398(&stream);
    *upstream = stream + length;

    switch (event) {
        case META_TEXT_MARKER:
            if (length == soundPlayer->loopStartSymSize) {
                if (func_0804b6c4(soundPlayer->loopStartSym, stream, length)) {
                    return META_EVENT_LOOP_START;
                }
            }
            if (length == soundPlayer->loopEndSymSize) {
                if (func_0804b6c4(soundPlayer->loopEndSym, stream, length)) {
                    return META_EVENT_LOOP_END;
                }
            }
            return META_EVENT_OTHER;

        case META_END_OF_TRACK:
            return META_EVENT_TRACK_END;

        case META_SET_TEMPO:
            tempo = 60000000u / ((stream[0] << 16) | (stream[1] << 8) | stream[2]);
            soundPlayer->midiTempo = tempo;
            D_0300562c = func_0804b6f0(tempo, soundPlayer->playerSpeed, soundPlayer->midiQuarterNote);
            return META_EVENT_OTHER;

        default:
            return META_EVENT_OTHER;
    }
}


// MidiStream Controller Change [Evnt_B]
void func_0804b95c(struct SoundPlayer *soundPlayer, u32 track, u8 controller, u8 value) {
    struct MidiBus *midiBus = soundPlayer->midiBus;

    switch (controller) {
        case M_CONTROLLER_BANK_SELECT_MSB:
            func_0804abc8(midiBus, track, value | 0x8000);
            break;

        case M_CONTROLLER_MOD_DEPTH:
            func_0804ac40(midiBus, track, value);
            break;

        case M_CONTROLLER_VOLUME:
            func_0804aa5c(midiBus, track, value);
            break;

        case M_CONTROLLER_PANNING:
            func_0804aa7c(midiBus, track, value);
            break;

        case M_CONTROLLER_EXPRESSION:
            func_0804aba8(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_RANGE:
            func_0804ace4(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_SPEED:
            func_0804accc(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_TYPE:
            func_0804aca0(midiBus, track, value);
            break;

        case M_CONTROLLER_MOD_DELAY:
            func_0804acd8(midiBus, track, value);
            break;

        case M_CONTROLLER_BANK_SELECT_LSB:
            func_0804abc8(midiBus, track, value);
            break;

        case M_CONTROLLER_PRIORITY:
            func_0804ad18(midiBus, track, value);
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
            func_0804ac80(midiBus, track, value);
            break;

        case M_CONTROLLER_LFO:
            D_03005b3c = value;
            switch (value) {
                case LFO_MODE_DISABLED:
                case LFO_MODE_KEYPRESS:
                    func_0804ae60(&D_03005b30);
                    break;
                case LFO_MODE_CONSTANT:
                    func_08049be4();
                    func_0804ae54(&D_03005b30);
                    break;
            }
            break;

        case M_CONTROLLER_EQ:
            D_03005b3c = LFO_MODE_DISABLED;
            func_0804ae60(&D_03005b30);
            func_08049be4();
            func_08049b70((value * 2) - 0x80);
            break;

        case M_CONTROLLER_LFO_GAIN:
            D_03005640 = value * 2;
            break;

        case M_CONTROLLER_EQ_GAIN:
            func_08049b8c(value);
            break;

        case M_CONTROLLER_STEREO:
            func_0804acf0(midiBus, track, value);
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
            func_0804ad38(midiBus, track, value);
            break;

        case M_CONTROLLER_RANDOM_53:
            func_0804ad90(midiBus, track, value);
            break;

        case M_CONTROLLER_RANDOM_54:
            func_0804ad9c(midiBus, track, value);
            break;
    }
}


// MidiStream Note Off/On [Evnt_8; Evnt_9]
void func_0804bc5c(u32 track, u32 key, u32 velocity) {
    struct MidiNote *midiNote;

    if (D_03005b78 < 20) {
        midiNote = &D_03005650[D_03005b78++];
        midiNote->channel = track;
        midiNote->key = key;
        midiNote->velocity = velocity;
    }
}


// MidiStream Messages/Events
u32 func_0804bcc0(struct SoundPlayer *soundPlayer, u32 track) {
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
                i = func_0804c398(&byteStream);
                func_0804b80c(soundPlayer, byteStream);
                byteStream += i;
                break;

            // MIDI Meta Events (FF)
            case 0x0F:
                switch (func_0804b898(soundPlayer, &byteStream)) {
                    // End of Track
                    case META_EVENT_TRACK_END:
                        func_0804accc(soundPlayer->midiBus, track, 0);
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
                        for (i = 0; i < soundPlayer->nTracksUsed; i++) {
                            tempReader = &soundPlayer->midiReader[i];
                            tempReader->active_curr = tempReader->active_loop;
                            tempReader->command_curr = tempReader->command_loop;
                            if (reader == tempReader) {
                                byteStream = reader->stream_loop;
                            } else {
                                tempReader->stream_curr = tempReader->stream_loop;
                                tempReader->unkC = reader->unkC;
                            }
                            func_08049d30(soundPlayer->midiBus, i);
                        }
                        trackEndType = M_TRACK_STREAM_LOOP;
                        break;
                }
                break;

            // Else, Do Nothing
            default:
                i = func_0804c398(&byteStream);
                byteStream += i;
                break;
        }
    }

    // MIDI Messages { 80, 90, A0, B0, C0, D0, E0 }
    else {
        switch (command & 0xF0) {
            // Note Off
            case MSG_NOTE_OFF:
                func_0804bc5c(track, byteStream[0], 0);
                byteStream += 2;
                break;

            // Note On
            case MSG_NOTE_ON:
                func_0804bc5c(track, byteStream[0], byteStream[1]);
                byteStream += 2;
                break;

            // Polyphonic Key Pressure (Aftertouch) [Not Supported]
            case MSG_POLYPHONIC_KEY_PRESSURE:
                byteStream += 2;
                break;

            // MIDI Controller Change
            case MSG_CONTROLLER_CHANGE:
                func_0804b95c(soundPlayer, track, byteStream[0], byteStream[1]);
                byteStream += 2;
                break;

            // Program Change
            case MSG_PROGRAM_CHANGE:
                func_0804ab88(soundPlayer->midiBus, track, byteStream[0]);
                byteStream += 1;
                break;

            // Channel Pressure (Aftertouch) [Not Supported]
            case MSG_CHANNEL_PRESSURE:
                byteStream += 1;
                break;

            // Pitch Wheel Change
            case MSG_PITCH_WHEEL_CHANGE:
                pitch = (byteStream[0] & 0x7F) | ((byteStream[1] & 0x7F) << 7);
                func_0804aa40(soundPlayer->midiBus, track, pitch);
                byteStream += 2;
                break;
        }
    }

    // Close
    reader->stream_curr = byteStream;
    return trackEndType;
}


// Update MidiStream
void func_0804bed0(struct SoundPlayer *soundPlayer, u32 track) {
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

        if (func_0804bcc0(soundPlayer, track) == M_TRACK_STREAM_STOP) {
            reader->active_curr = FALSE;
            func_08049d30(soundPlayer->midiBus, track);
            return;
        }

        delta = func_0804c398(&reader->stream_curr);
        if (delta != 0) {
            for (note = D_03005650, i = 0; i < D_03005b78; i++, note++) {
                if (note->velocity != 0) { // Note has non-zero velocity.
                    func_0804a6b0(soundPlayer->midiBus, note->channel, note->key, note->velocity);
                    anyNotePlayed = TRUE;
                } else { // Note is muted.
                    func_0804a5b4(soundPlayer->midiBus, note->channel, note->key);
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
            func_08049be4();
            func_0804ae54(&D_03005b30);
        }
    }
}


// Update SoundPlayer Volume
void func_0804c040(struct SoundPlayer *soundPlayer) {
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
                func_0804b560(soundPlayer);
            } else {
                soundPlayer->volumeFadeEnv -= soundPlayer->volumeFadeSpd;
            }
            break;

        case VOL_FADE_OUT_PAUSE:
            if (soundPlayer->volumeFadeEnv < soundPlayer->volumeFadeSpd) {
                soundPlayer->volumeFadeEnv = 0;
                func_0804b574(soundPlayer, TRUE);
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
    func_0804adb4(soundPlayer->midiBus, volumeLevel);

    volumeLevel = ((volumeProduct >> 8) * soundPlayer->trackVolume) >> 15;
    if (volumeLevel > 0xFF) {
        volumeLevel = 0xFF;
    }
    func_08049ec4(soundPlayer->midiBus, volumeLevel, soundPlayer->trackMask);
}


// Update SoundPlayer MidiStream
void func_0804c0f8(struct SoundPlayer *soundPlayer) {
    struct MidiTrackStream *mTrkReader;
    u32 noActiveReader;
    u32 i;

    // If the SoundPlayer is stopped or paused, do not proceed.
    if ((soundPlayer->sequence == NULL) || soundPlayer->isPaused) {
        return;
    }

    D_0300562c = 0;

    // Update MIDI Track Streams
    for (i = 0; i < soundPlayer->nTracksUsed; i++) {
        func_0804bed0(soundPlayer, i);
    }

    // If the above loop modifies the value of D_0300562c, apply to channel as speed envelope.
    if (D_0300562c != 0) {
        soundPlayer->deltaTime = D_0300562c;
    }

    // Check if any MIDI Track Readers are currently operating.
    mTrkReader = soundPlayer->midiReader;
    noActiveReader = TRUE;
    for (i = 0; (i < soundPlayer->nTracksUsed) && noActiveReader; i++, mTrkReader++) {
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
void func_0804c170(void) {
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
            func_0804c040(soundPlayer);
            func_0804c0f8(soundPlayer);
            func_08049d08(soundPlayer->midiBus);
            if (soundPlayer->sequence != NULL) {
                rvb0 -= (64 * 2) - (soundPlayer->midiController4E * 2);
                rvb1 -= 64 - soundPlayer->midiController4F;
                rvb2 -= 64 - soundPlayer->midiController50;
                rvb3 -= 64 - soundPlayer->midiController51;
            }
        }
    }

    // DirectMidi Player
    soundPlayer = D_03001598;
    if (D_08aa431c && (soundPlayer != NULL)) {
        func_0804c6c8();
        rvb0 -= (64 * 2) - (soundPlayer->midiController4E * 2);
        rvb1 -= 64 - soundPlayer->midiController4F;
        rvb2 -= 64 - soundPlayer->midiController50;
        rvb3 -= 64 - soundPlayer->midiController51;
    }

    // LFO
    if ((D_03005644 != NULL) && (D_03005b3c != LFO_MODE_DISABLED)) {
        delta = func_0804b6f0(D_03005644->midiTempo, D_03005644->playerSpeed, 24);
        func_0804ae6c(&D_03005b30, delta);
        func_08049b70((D_03005b30.output * D_03005640) >> 8);
    }

    func_0804a334();
    D_03005b80 = REG_VCOUNT;

    if (rvb0 < 0) rvb0 = 0;
    if (rvb0 > 127) rvb0 = 127;
    if (rvb1 < 0) rvb1 = 0;
    if (rvb1 > 127) rvb1 = 127;
    if (rvb2 < 0) rvb2 = 0;
    if (rvb2 > 127) rvb2 = 127;
    if (rvb3 < 0) rvb3 = 0;
    if (rvb3 > 127) rvb3 = 127;

    func_08049b34(rvb0, rvb1, rvb2, rvb3);
    func_080497f8();
}


// Set Main Reverb Controller Scratch/Queue
void func_0804c340(u32 rvb0, u32 rvb1, u32 rvb2, u32 rvb3) {
    D_03005b90[0] = rvb0;
    D_03005b90[1] = rvb1;
    D_03005b90[2] = rvb2;
    D_03005b90[3] = rvb3;
}


// Stub
void func_0804c358(void) {
}


// Initialise SoundPlayer
void func_0804c35c(struct SoundPlayer *soundPlayer, struct MidiBus *midiBus, u32 nTracksMax, struct MidiTrackStream *midiReader, u32 priorityEnabled) {
    soundPlayer->sequence = NULL;
    soundPlayer->midiBus = midiBus;
    soundPlayer->nTracksMax = nTracksMax;
    soundPlayer->midiReader = midiReader;
    soundPlayer->priorityEnabled = priorityEnabled;
    soundPlayer->sequenceVolume = 100;
}


// Parse Midi Variable-Length Quantity
u32 func_0804c398(const u8 **upstream) {
    const u8 *stream = *upstream;
    u8 current;
    u32 time = 0;

    do {
        current = *stream;
        stream++;
        time <<= 7;
        time |= (current & 0x7F);
    } while ((current & 0x80) != 0);

    *upstream = stream;
    return time;
}


// Initialise DirectMidi Player
#include "asm/lib_08049144/asm_0804c3c0.s"


// Append DirectMidi Sequence Instructions
#include "asm/lib_08049144/asm_0804c4bc.s"


// Parse DirectMidi Sequence Instructions
#include "asm/lib_08049144/asm_0804c508.s"


// Update DirectMidi Player
#include "asm/lib_08049144/asm_0804c6c8.s"
