package android.media;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class ResampleInputStream extends InputStream {
    private static final String TAG = "ResampleInputStream";
    private static final int mFirLength = 29;
    private byte[] mBuf;
    private int mBufCount;
    private InputStream mInputStream;
    private final byte[] mOneByte = new byte[1];
    private final int mRateIn;
    private final int mRateOut;

    static {
        System.loadLibrary("media_jni");
    }

    public ResampleInputStream(InputStream inputStream, int i2, int i3) {
        if (i2 != i3 * 2) {
            throw new IllegalArgumentException("only support 2:1 at the moment");
        }
        this.mInputStream = inputStream;
        this.mRateIn = 2;
        this.mRateOut = 1;
    }

    private static native void fir21(byte[] bArr, int i2, byte[] bArr2, int i3, int i4);

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            InputStream inputStream = this.mInputStream;
            if (inputStream != null) {
                inputStream.close();
            }
        } finally {
            this.mInputStream = null;
        }
    }

    public void finalize() {
        if (this.mInputStream == null) {
            return;
        }
        close();
        throw new IllegalStateException("someone forgot to close ResampleInputStream");
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.mOneByte, 0, 1) == 1) {
            return this.mOneByte[0] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.mInputStream != null) {
            int i4 = i3 / 2;
            int i5 = (((this.mRateIn * i4) / this.mRateOut) + 29) * 2;
            byte[] bArr2 = this.mBuf;
            if (bArr2 == null) {
                this.mBuf = new byte[i5];
            } else if (i5 > bArr2.length) {
                byte[] bArr3 = new byte[i5];
                System.arraycopy(bArr2, 0, bArr3, 0, this.mBufCount);
                this.mBuf = bArr3;
            }
            while (true) {
                int i6 = this.mBufCount;
                int i7 = ((((i6 / 2) - 29) * this.mRateOut) / this.mRateIn) * 2;
                if (i7 > 0) {
                    if (i7 >= i3) {
                        i7 = i4 * 2;
                    }
                    fir21(this.mBuf, 0, bArr, i2, i7 / 2);
                    int i8 = (this.mRateIn * i7) / this.mRateOut;
                    int i9 = this.mBufCount - i8;
                    this.mBufCount = i9;
                    if (i9 > 0) {
                        byte[] bArr4 = this.mBuf;
                        System.arraycopy(bArr4, i8, bArr4, 0, i9);
                    }
                    return i7;
                }
                InputStream inputStream = this.mInputStream;
                byte[] bArr5 = this.mBuf;
                int i10 = inputStream.read(bArr5, i6, bArr5.length - i6);
                if (i10 == -1) {
                    return -1;
                }
                this.mBufCount += i10;
            }
        } else {
            throw new IllegalStateException("not open");
        }
    }
}
