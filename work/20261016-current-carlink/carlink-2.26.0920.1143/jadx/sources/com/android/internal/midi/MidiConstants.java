package com.android.internal.midi;

/* JADX INFO: loaded from: classes2.dex */
public final class MidiConstants {
    public static final byte STATUS_ACTIVE_SENSING = -2;
    public static final byte STATUS_CHANNEL_MASK = 15;
    public static final byte STATUS_CHANNEL_PRESSURE = -48;
    public static final byte STATUS_COMMAND_MASK = -16;
    public static final byte STATUS_CONTINUE = -5;
    public static final byte STATUS_CONTROL_CHANGE = -80;
    public static final byte STATUS_END_SYSEX = -9;
    public static final byte STATUS_MIDI_TIME_CODE = -15;
    public static final byte STATUS_NOTE_OFF = -128;
    public static final byte STATUS_NOTE_ON = -112;
    public static final byte STATUS_PITCH_BEND = -32;
    public static final byte STATUS_POLYPHONIC_AFTERTOUCH = -96;
    public static final byte STATUS_PROGRAM_CHANGE = -64;
    public static final byte STATUS_RESET = -1;
    public static final byte STATUS_SONG_POSITION = -14;
    public static final byte STATUS_SONG_SELECT = -13;
    public static final byte STATUS_START = -6;
    public static final byte STATUS_STOP = -4;
    public static final byte STATUS_SYSTEM_EXCLUSIVE = -16;
    public static final byte STATUS_TIMING_CLOCK = -8;
    public static final byte STATUS_TUNE_REQUEST = -10;
    public static final int[] CHANNEL_BYTE_LENGTHS = {3, 3, 3, 3, 2, 2, 3};
    public static final int[] SYSTEM_BYTE_LENGTHS = {1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    public static boolean allowRunningStatus(byte b2) {
        return b2 >= -128 && b2 < -16;
    }

    public static boolean cancelsRunningStatus(byte b2) {
        return b2 >= -16 && b2 <= -9;
    }

    public static int getBytesPerMessage(byte b2) {
        int i2 = b2 & 255;
        if (i2 >= 240) {
            return SYSTEM_BYTE_LENGTHS[i2 & 15];
        }
        if (i2 >= 128) {
            return CHANNEL_BYTE_LENGTHS[(i2 >> 4) - 8];
        }
        return 0;
    }

    public static boolean isAllActiveSensing(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            if (bArr[i2 + i5] != -2) {
                i4++;
            }
        }
        return i4 == 0;
    }
}
