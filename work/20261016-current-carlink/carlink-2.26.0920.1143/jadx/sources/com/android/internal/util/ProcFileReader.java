package com.android.internal.util;

import com.android.internal.midi.MidiConstants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public class ProcFileReader implements Closeable {
    private final byte[] mBuffer;
    private boolean mLineFinished;
    private final InputStream mStream;
    private int mTail;

    public ProcFileReader(InputStream inputStream) {
        this(inputStream, 4096);
    }

    private void consumeBuf(int i2) throws IOException {
        byte[] bArr = this.mBuffer;
        System.arraycopy(bArr, i2, bArr, 0, this.mTail - i2);
        int i3 = this.mTail - i2;
        this.mTail = i3;
        if (i3 == 0) {
            fillBuf();
        }
    }

    private int fillBuf() throws IOException {
        byte[] bArr = this.mBuffer;
        int length = bArr.length;
        int i2 = this.mTail;
        int i3 = length - i2;
        if (i3 == 0) {
            throw new IOException("attempting to fill already-full buffer");
        }
        int i4 = this.mStream.read(bArr, i2, i3);
        if (i4 != -1) {
            this.mTail += i4;
        }
        return i4;
    }

    private NumberFormatException invalidLong(int i2) {
        return new NumberFormatException("invalid long: ".concat(new String(this.mBuffer, 0, i2, StandardCharsets.US_ASCII)));
    }

    private int nextTokenIndex() throws ProtocolException {
        if (this.mLineFinished) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.mTail) {
                byte b2 = this.mBuffer[i2];
                if (b2 == 10) {
                    this.mLineFinished = true;
                    return i2;
                }
                if (b2 == 32) {
                    return i2;
                }
                i2++;
            } else if (fillBuf() <= 0) {
                throw new ProtocolException("End of stream while looking for token boundary");
            }
        }
    }

    private long parseAndConsumeLong(int i2) throws IOException {
        int i3 = this.mBuffer[0] == 45 ? 1 : 0;
        long j2 = 0;
        int i4 = i3;
        while (i4 < i2) {
            int i5 = this.mBuffer[i4] + MidiConstants.STATUS_CHANNEL_PRESSURE;
            if (i5 < 0 || i5 > 9) {
                throw invalidLong(i2);
            }
            long j3 = (10 * j2) - ((long) i5);
            if (j3 > j2) {
                throw invalidLong(i2);
            }
            i4++;
            j2 = j3;
        }
        consumeBuf(i2 + 1);
        return i3 != 0 ? j2 : -j2;
    }

    private String parseAndConsumeString(int i2) throws IOException {
        String str = new String(this.mBuffer, 0, i2, StandardCharsets.US_ASCII);
        consumeBuf(i2 + 1);
        return str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mStream.close();
    }

    public void finishLine() throws IOException {
        int i2 = 0;
        if (this.mLineFinished) {
            this.mLineFinished = false;
            return;
        }
        while (true) {
            if (i2 < this.mTail) {
                if (this.mBuffer[i2] == 10) {
                    consumeBuf(i2 + 1);
                    return;
                }
                i2++;
            } else if (fillBuf() <= 0) {
                throw new ProtocolException("End of stream while looking for line boundary");
            }
        }
    }

    public boolean hasMoreData() {
        return this.mTail > 0;
    }

    public int nextInt() throws ProtocolException {
        long jNextLong = nextLong();
        if (jNextLong > 2147483647L || jNextLong < -2147483648L) {
            throw new NumberFormatException("parsed value larger than integer");
        }
        return (int) jNextLong;
    }

    public long nextLong() throws ProtocolException {
        int iNextTokenIndex = nextTokenIndex();
        if (iNextTokenIndex != -1) {
            return parseAndConsumeLong(iNextTokenIndex);
        }
        throw new ProtocolException("Missing required long");
    }

    public long nextOptionalLong(long j2) throws ProtocolException {
        int iNextTokenIndex = nextTokenIndex();
        return iNextTokenIndex == -1 ? j2 : parseAndConsumeLong(iNextTokenIndex);
    }

    public String nextString() throws ProtocolException {
        int iNextTokenIndex = nextTokenIndex();
        if (iNextTokenIndex != -1) {
            return parseAndConsumeString(iNextTokenIndex);
        }
        throw new ProtocolException("Missing required string");
    }

    public ProcFileReader(InputStream inputStream, int i2) throws IOException {
        this.mStream = inputStream;
        this.mBuffer = new byte[i2];
        fillBuf();
    }
}
