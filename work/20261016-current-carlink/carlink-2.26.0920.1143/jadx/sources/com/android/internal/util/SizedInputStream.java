package com.android.internal.util;

import android.app.m;
import java.io.IOException;
import java.io.InputStream;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
public class SizedInputStream extends InputStream {
    private long mLength;
    private final InputStream mWrapped;

    public SizedInputStream(InputStream inputStream, long j2) {
        this.mWrapped = inputStream;
        this.mLength = j2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.mWrapped.close();
    }

    @Override // java.io.InputStream
    public int read() {
        return Streams.readSingleByte(this);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        long j2 = this.mLength;
        if (j2 <= 0) {
            return -1;
        }
        if (i3 > j2) {
            i3 = (int) j2;
        }
        int i4 = this.mWrapped.read(bArr, i2, i3);
        if (i4 != -1) {
            this.mLength -= (long) i4;
        } else if (this.mLength > 0) {
            throw new IOException(m.k(new StringBuilder("Unexpected EOF; expected "), this.mLength, " more bytes"));
        }
        return i4;
    }
}
