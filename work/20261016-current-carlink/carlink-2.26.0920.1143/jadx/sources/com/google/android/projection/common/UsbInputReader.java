package com.google.android.projection.common;

import android.accessibilityservice.c;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class UsbInputReader {
    private final byte[] bufferFragment;
    private int fragBufferEndPosition = 0;
    private int fragBufferStartPosition = 0;
    private final int minBufferLength;
    private final RawUsbInputReader usbInputReader;

    public interface RawUsbInputReader {
        int read(byte[] bArr, int i2, int i3);
    }

    public UsbInputReader(RawUsbInputReader rawUsbInputReader, int i2) {
        this.usbInputReader = rawUsbInputReader;
        this.minBufferLength = i2;
        this.bufferFragment = new byte[i2 * 2];
    }

    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        int i5 = this.fragBufferEndPosition;
        int i6 = this.fragBufferStartPosition;
        int i7 = i5 - i6;
        if (i7 > 0) {
            System.arraycopy(this.bufferFragment, i6, bArr, i2, Math.min(i3, i7));
            if (i7 >= i3) {
                this.fragBufferStartPosition += i3;
                return i3;
            }
            i4 = i3 - i7;
            i2 += i7;
        } else {
            i4 = i3;
        }
        this.fragBufferEndPosition = 0;
        this.fragBufferStartPosition = 0;
        Thread threadCurrentThread = Thread.currentThread();
        while (i4 > this.minBufferLength) {
            if (threadCurrentThread.isInterrupted()) {
                throw new IOException("interrupted");
            }
            int i8 = this.usbInputReader.read(bArr, i2, i4);
            if (i8 > 0) {
                i2 += i8;
                i4 -= i8;
            } else if (i8 < 0) {
                throw new IOException(c.d("read failed ", i8));
            }
        }
        while (i4 > this.fragBufferEndPosition) {
            if (threadCurrentThread.isInterrupted()) {
                throw new IOException("interrupted");
            }
            int i9 = this.usbInputReader.read(this.bufferFragment, this.fragBufferEndPosition, this.minBufferLength);
            if (i9 > 0) {
                this.fragBufferEndPosition += i9;
            } else if (i9 < 0) {
                throw new IOException(c.d("read failed ", i9));
            }
        }
        System.arraycopy(this.bufferFragment, 0, bArr, i2, i4);
        this.fragBufferStartPosition += i4;
        return i3;
    }
}
