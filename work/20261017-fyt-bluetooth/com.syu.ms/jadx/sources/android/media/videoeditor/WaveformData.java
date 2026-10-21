package android.media.videoeditor;

import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes.dex */
public class WaveformData {
    private final int mFrameDurationMs;
    private final int mFramesCount;
    private final short[] mGains;

    private WaveformData() {
        this.mFrameDurationMs = 0;
        this.mFramesCount = 0;
        this.mGains = null;
    }

    public int getFrameDuration() {
        return this.mFrameDurationMs;
    }

    public short[] getFrameGains() {
        return this.mGains;
    }

    public int getFramesCount() {
        return this.mFramesCount;
    }

    public WaveformData(String str) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        if (str != null) {
            try {
                fileInputStream = new FileInputStream(new File(str));
                try {
                    byte[] bArr = new byte[4];
                    fileInputStream.read(bArr, 0, 4);
                    int i2 = 0;
                    for (int i3 = 0; i3 < 4; i3++) {
                        i2 = (i2 << 8) | (bArr[i3] & 255);
                    }
                    this.mFrameDurationMs = i2;
                    byte[] bArr2 = new byte[4];
                    fileInputStream.read(bArr2, 0, 4);
                    int i4 = 0;
                    for (int i5 = 0; i5 < 4; i5++) {
                        i4 = (i4 << 8) | (bArr2[i5] & 255);
                    }
                    this.mFramesCount = i4;
                    this.mGains = new short[i4];
                    for (int i6 = 0; i6 < this.mFramesCount; i6++) {
                        this.mGains[i6] = (short) fileInputStream.read();
                    }
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
            }
        } else {
            throw new IllegalArgumentException("WaveformData : filename is null");
        }
    }
}
