package android.speech.srec;

import android.view.WindowManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class UlawEncoderInputStream extends InputStream {
    private static final int MAX_ULAW = 8192;
    private static final int SCALE_BITS = 16;
    private static final String TAG = "UlawEncoderInputStream";
    private InputStream mIn;
    private int mMax;
    private final byte[] mBuf = new byte[1024];
    private int mBufCount = 0;
    private final byte[] mOneByte = new byte[1];

    public UlawEncoderInputStream(InputStream inputStream, int i2) {
        this.mMax = 0;
        this.mIn = inputStream;
        this.mMax = i2;
    }

    public static void encode(byte[] bArr, int i2, byte[] bArr2, int i3, int i4, int i5) {
        int i6;
        if (i5 <= 0) {
            i5 = 8192;
        }
        int i7 = 536870912 / i5;
        int i8 = 0;
        while (i8 < i4) {
            int i9 = i2 + 1;
            int i10 = 255;
            int i11 = i9 + 1;
            int i12 = (((bArr[i2] & 255) + (bArr[i9] << 8)) * i7) >> 16;
            if (i12 < 0) {
                if (-1 <= i12) {
                    i6 = 127;
                } else if (-31 <= i12) {
                    i6 = ((i12 + 31) >> 1) + 112;
                } else if (-95 <= i12) {
                    i6 = ((i12 + 95) >> 2) + 96;
                } else if (-223 <= i12) {
                    i6 = ((i12 + 223) >> 3) + 80;
                } else if (-479 <= i12) {
                    i6 = ((i12 + 479) >> 4) + 64;
                } else if (-991 <= i12) {
                    i6 = ((i12 + 991) >> 5) + 48;
                } else if (-2015 <= i12) {
                    i6 = ((i12 + WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY) >> 6) + 32;
                } else if (-4063 <= i12) {
                    i6 = ((i12 + 4063) >> 7) + 16;
                } else if (-8159 <= i12) {
                    i6 = ((i12 + 8159) >> 8) + 0;
                } else {
                    i10 = 0;
                }
                i10 = i6;
            } else if (i12 > 0) {
                if (i12 <= 30) {
                    i10 = ((30 - i12) >> 1) + 240;
                } else if (i12 <= 94) {
                    i10 = ((94 - i12) >> 2) + 224;
                } else if (i12 <= 222) {
                    i10 = ((222 - i12) >> 3) + 208;
                } else if (i12 <= 478) {
                    i10 = ((478 - i12) >> 4) + 192;
                } else if (i12 <= 990) {
                    i10 = ((990 - i12) >> 5) + 176;
                } else if (i12 <= 2014) {
                    i10 = ((2014 - i12) >> 6) + 160;
                } else if (i12 <= 4062) {
                    i10 = ((4062 - i12) >> 7) + 144;
                } else {
                    i10 = i12 <= 8158 ? ((8158 - i12) >> 8) + 128 : 128;
                }
            }
            bArr2[i3] = (byte) i10;
            i8++;
            i3++;
            i2 = i11;
        }
    }

    public static int maxAbsPcm(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i2 + 1;
            int i7 = i6 + 1;
            int i8 = (bArr[i2] & 255) + (bArr[i6] << 8);
            if (i8 < 0) {
                i8 = -i8;
            }
            if (i8 > i5) {
                i5 = i8;
            }
            i4++;
            i2 = i7;
        }
        return i5;
    }

    @Override // java.io.InputStream
    public int available() {
        return (this.mIn.available() + this.mBufCount) / 2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.mIn;
        if (inputStream != null) {
            this.mIn = null;
            inputStream.close();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.mIn == null) {
            throw new IllegalStateException("not open");
        }
        while (true) {
            int i4 = this.mBufCount;
            if (i4 >= 2) {
                int iMin = Math.min(i4 / 2, i3);
                encode(this.mBuf, 0, bArr, i2, iMin, this.mMax);
                int i5 = iMin * 2;
                this.mBufCount -= i5;
                for (int i6 = 0; i6 < this.mBufCount; i6++) {
                    byte[] bArr2 = this.mBuf;
                    bArr2[i6] = bArr2[i6 + i5];
                }
                return iMin;
            }
            InputStream inputStream = this.mIn;
            byte[] bArr3 = this.mBuf;
            int i7 = inputStream.read(bArr3, i4, Math.min(i3 * 2, bArr3.length - i4));
            if (i7 == -1) {
                return -1;
            }
            this.mBufCount += i7;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.mOneByte, 0, 1) == -1) {
            return -1;
        }
        return this.mOneByte[0] & 255;
    }
}
