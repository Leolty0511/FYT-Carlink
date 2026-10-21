package android.content.pm;

import android.net.LinkQualityInfo;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class LimitedLengthInputStream extends FilterInputStream {
    private final long mEnd;
    private long mOffset;

    public LimitedLengthInputStream(InputStream inputStream, long j2, long j3) throws IOException {
        super(inputStream);
        if (inputStream == null) {
            throw new IOException("in == null");
        }
        if (j2 < 0) {
            throw new IOException("offset < 0");
        }
        if (j3 < 0) {
            throw new IOException("length < 0");
        }
        if (j3 > LinkQualityInfo.UNKNOWN_LONG - j2) {
            throw new IOException("offset + length > Long.MAX_VALUE");
        }
        this.mEnd = j3 + j2;
        skip(j2);
        this.mOffset = j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        long j2 = this.mOffset;
        if (j2 >= this.mEnd) {
            return -1;
        }
        this.mOffset = j2 + 1;
        return super.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.mOffset >= this.mEnd) {
            return -1;
        }
        Arrays.checkOffsetAndCount(bArr.length, i2, i3);
        long j2 = this.mOffset;
        long j3 = i3;
        if (j2 <= LinkQualityInfo.UNKNOWN_LONG - j3) {
            long j4 = j3 + j2;
            long j5 = this.mEnd;
            if (j4 > j5) {
                i3 = (int) (j5 - j2);
            }
            int i4 = super.read(bArr, i2, i3);
            this.mOffset += (long) i4;
            return i4;
        }
        throw new IOException("offset out of bounds: " + this.mOffset + " + " + i3);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
