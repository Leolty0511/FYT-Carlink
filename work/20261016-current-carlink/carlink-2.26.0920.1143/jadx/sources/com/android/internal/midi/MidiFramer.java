package com.android.internal.midi;

import android.accessibilityservice.c;
import android.media.midi.MidiReceiver;

/* JADX INFO: loaded from: classes2.dex */
public class MidiFramer extends MidiReceiver {
    public String TAG = "MidiFramer";
    private byte[] mBuffer = new byte[3];
    private int mCount;
    private boolean mInSysEx;
    private int mNeeded;
    private MidiReceiver mReceiver;
    private byte mRunningStatus;

    public MidiFramer(MidiReceiver midiReceiver) {
        this.mReceiver = midiReceiver;
    }

    public static String formatMidiData(byte[] bArr, int i2, int i3) {
        String strE = c.e("MIDI+", i2, " : ");
        for (int i4 = 0; i4 < i3; i4++) {
            StringBuilder sbR = c.r(strE);
            sbR.append(String.format("0x%02X, ", Byte.valueOf(bArr[i2 + i4])));
            strE = sbR.toString();
        }
        return strE;
    }

    @Override // android.media.midi.MidiReceiver
    public void onSend(byte[] bArr, int i2, int i3, long j2) {
        int i4 = this.mInSysEx ? i2 : -1;
        int i5 = i2;
        for (int i6 = 0; i6 < i3; i6++) {
            byte b2 = bArr[i5];
            int i7 = b2 & 255;
            if (i7 >= 128) {
                if (i7 < 240) {
                    this.mRunningStatus = b2;
                    this.mCount = 1;
                    this.mNeeded = MidiConstants.getBytesPerMessage(b2) - 1;
                } else if (i7 >= 248) {
                    if (this.mInSysEx) {
                        this.mReceiver.send(bArr, i4, i5 - i4, j2);
                        i4 = i5 + 1;
                    }
                    this.mReceiver.send(bArr, i5, 1, j2);
                    i4 = i4;
                } else if (i7 == 240) {
                    this.mInSysEx = true;
                    i4 = i5;
                } else if (i7 != 247) {
                    this.mBuffer[0] = b2;
                    this.mRunningStatus = (byte) 0;
                    this.mCount = 1;
                    this.mNeeded = MidiConstants.getBytesPerMessage(b2) - 1;
                } else if (this.mInSysEx) {
                    this.mReceiver.send(bArr, i4, (i5 - i4) + 1, j2);
                    this.mInSysEx = false;
                    i4 = -1;
                }
            } else if (!this.mInSysEx) {
                byte[] bArr2 = this.mBuffer;
                int i8 = this.mCount;
                int i9 = i8 + 1;
                this.mCount = i9;
                bArr2[i8] = b2;
                int i10 = this.mNeeded - 1;
                this.mNeeded = i10;
                if (i10 == 0) {
                    byte b3 = this.mRunningStatus;
                    if (b3 != 0) {
                        bArr2[0] = b3;
                    }
                    this.mReceiver.send(bArr2, 0, i9, j2);
                    this.mNeeded = MidiConstants.getBytesPerMessage(this.mBuffer[0]) - 1;
                    this.mCount = 1;
                }
            }
            i5++;
        }
        if (i4 < 0 || i4 >= i5) {
            return;
        }
        this.mReceiver.send(bArr, i4, i5 - i4, j2);
    }
}
