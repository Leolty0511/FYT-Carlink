package android.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class Base64InputStream extends FilterInputStream {
    private static final int BUFFER_SIZE = 2048;
    private static byte[] EMPTY = new byte[0];
    private final Base64.Coder coder;
    private boolean eof;
    private byte[] inputBuffer;
    private int outputEnd;
    private int outputStart;

    public Base64InputStream(InputStream inputStream, int i2) {
        this(inputStream, i2, false);
    }

    private void refill() throws IOException {
        boolean zProcess;
        if (this.eof) {
            return;
        }
        int i2 = ((FilterInputStream) this).in.read(this.inputBuffer);
        if (i2 == -1) {
            this.eof = true;
            zProcess = this.coder.process(EMPTY, 0, 0, true);
        } else {
            zProcess = this.coder.process(this.inputBuffer, 0, i2, false);
        }
        if (!zProcess) {
            throw new Base64DataException("bad base-64");
        }
        this.outputEnd = this.coder.op;
        this.outputStart = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return this.outputEnd - this.outputStart;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        this.inputBuffer = null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.outputStart >= this.outputEnd) {
            refill();
        }
        int i2 = this.outputStart;
        if (i2 >= this.outputEnd) {
            return -1;
        }
        byte[] bArr = this.coder.output;
        this.outputStart = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        if (this.outputStart >= this.outputEnd) {
            refill();
        }
        int i2 = this.outputStart;
        int i3 = this.outputEnd;
        if (i2 >= i3) {
            return 0L;
        }
        long jMin = Math.min(j2, i3 - i2);
        this.outputStart = (int) (((long) this.outputStart) + jMin);
        return jMin;
    }

    public Base64InputStream(InputStream inputStream, int i2, boolean z2) {
        super(inputStream);
        this.eof = false;
        this.inputBuffer = new byte[2048];
        if (z2) {
            this.coder = new Base64.Encoder(i2, null);
        } else {
            this.coder = new Base64.Decoder(i2, null);
        }
        Base64.Coder coder = this.coder;
        coder.output = new byte[coder.maxOutputSize(2048)];
        this.outputStart = 0;
        this.outputEnd = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.outputStart >= this.outputEnd) {
            refill();
        }
        int i4 = this.outputStart;
        int i5 = this.outputEnd;
        if (i4 >= i5) {
            return -1;
        }
        int iMin = Math.min(i3, i5 - i4);
        System.arraycopy(this.coder.output, this.outputStart, bArr, i2, iMin);
        this.outputStart += iMin;
        return iMin;
    }
}
