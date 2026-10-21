package android.media;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AmrInputStream extends InputStream {
    private static final int SAMPLES_PER_FRAME = 160;
    private static final String TAG = "AmrInputStream";
    private int mGae;
    private InputStream mInputStream;
    private final byte[] mBuf = new byte[320];
    private int mBufIn = 0;
    private int mBufOut = 0;
    private byte[] mOneByte = new byte[1];

    static {
        System.loadLibrary("media_jni");
    }

    public AmrInputStream(InputStream inputStream) {
        this.mInputStream = inputStream;
        int iGsmAmrEncoderNew = GsmAmrEncoderNew();
        this.mGae = iGsmAmrEncoderNew;
        GsmAmrEncoderInitialize(iGsmAmrEncoderNew);
    }

    private static native void GsmAmrEncoderCleanup(int i2);

    private static native void GsmAmrEncoderDelete(int i2);

    private static native int GsmAmrEncoderEncode(int i2, byte[] bArr, int i3, byte[] bArr2, int i4);

    private static native void GsmAmrEncoderInitialize(int i2);

    private static native int GsmAmrEncoderNew();

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            InputStream inputStream = this.mInputStream;
            if (inputStream != null) {
                inputStream.close();
            }
            this.mInputStream = null;
            try {
                int i2 = this.mGae;
                if (i2 != 0) {
                    GsmAmrEncoderCleanup(i2);
                }
                try {
                    int i3 = this.mGae;
                    if (i3 != 0) {
                        GsmAmrEncoderDelete(i3);
                    }
                } finally {
                    this.mGae = 0;
                }
            } catch (Throwable th) {
                try {
                    int i4 = this.mGae;
                    if (i4 != 0) {
                        GsmAmrEncoderDelete(i4);
                    }
                    throw th;
                } finally {
                    this.mGae = 0;
                }
            }
        } catch (Throwable th2) {
            this.mInputStream = null;
            try {
                int i5 = this.mGae;
                if (i5 != 0) {
                    GsmAmrEncoderCleanup(i5);
                }
                try {
                    int i6 = this.mGae;
                    if (i6 != 0) {
                        GsmAmrEncoderDelete(i6);
                    }
                    throw th2;
                } finally {
                    this.mGae = 0;
                }
            } catch (Throwable th3) {
                try {
                    int i7 = this.mGae;
                    if (i7 != 0) {
                        GsmAmrEncoderDelete(i7);
                    }
                    throw th3;
                } finally {
                    this.mGae = 0;
                }
            }
        }
    }

    public void finalize() {
        if (this.mGae == 0) {
            return;
        }
        close();
        throw new IllegalStateException("someone forgot to close AmrInputStream");
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
        if (this.mGae != 0) {
            if (this.mBufOut >= this.mBufIn) {
                this.mBufOut = 0;
                this.mBufIn = 0;
                int i4 = 0;
                while (i4 < 320) {
                    int i5 = this.mInputStream.read(this.mBuf, i4, 320 - i4);
                    if (i5 == -1) {
                        return -1;
                    }
                    i4 += i5;
                }
                int i6 = this.mGae;
                byte[] bArr2 = this.mBuf;
                this.mBufIn = GsmAmrEncoderEncode(i6, bArr2, 0, bArr2, 0);
            }
            int i7 = this.mBufIn;
            int i8 = this.mBufOut;
            if (i3 > i7 - i8) {
                i3 = i7 - i8;
            }
            System.arraycopy(this.mBuf, i8, bArr, i2, i3);
            this.mBufOut += i3;
            return i3;
        }
        throw new IllegalStateException("not open");
    }
}
