package android.speech.srec;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class MicrophoneInputStream extends InputStream {
    private static final String TAG = "MicrophoneInputStream";
    private int mAudioRecord;
    private byte[] mOneByte = new byte[1];

    static {
        System.loadLibrary("srec_jni");
    }

    public MicrophoneInputStream(int i2, int i3) throws IOException {
        this.mAudioRecord = 0;
        int iAudioRecordNew = AudioRecordNew(i2, i3);
        this.mAudioRecord = iAudioRecordNew;
        if (iAudioRecordNew == 0) {
            throw new IOException("AudioRecord constructor failed - busy?");
        }
        int iAudioRecordStart = AudioRecordStart(iAudioRecordNew);
        if (iAudioRecordStart == 0) {
            return;
        }
        close();
        throw new IOException("AudioRecord start failed: " + iAudioRecordStart);
    }

    private static native void AudioRecordDelete(int i2);

    private static native int AudioRecordNew(int i2, int i3);

    private static native int AudioRecordRead(int i2, byte[] bArr, int i3, int i4);

    private static native int AudioRecordStart(int i2);

    private static native void AudioRecordStop(int i2);

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int i2 = this.mAudioRecord;
        if (i2 != 0) {
            try {
                AudioRecordStop(i2);
                try {
                    AudioRecordDelete(this.mAudioRecord);
                } finally {
                    this.mAudioRecord = 0;
                }
            } catch (Throwable th) {
                try {
                    AudioRecordDelete(this.mAudioRecord);
                    throw th;
                } finally {
                    this.mAudioRecord = 0;
                }
            }
        }
    }

    public void finalize() throws IOException {
        if (this.mAudioRecord == 0) {
            return;
        }
        close();
        throw new IOException("someone forgot to close MicrophoneInputStream");
    }

    @Override // java.io.InputStream
    public int read() {
        int i2 = this.mAudioRecord;
        if (i2 == 0) {
            throw new IllegalStateException("not open");
        }
        if (AudioRecordRead(i2, this.mOneByte, 0, 1) == 1) {
            return this.mOneByte[0] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        int i2 = this.mAudioRecord;
        if (i2 != 0) {
            return AudioRecordRead(i2, bArr, 0, bArr.length);
        }
        throw new IllegalStateException("not open");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        int i4 = this.mAudioRecord;
        if (i4 != 0) {
            return AudioRecordRead(i4, bArr, i2, i3);
        }
        throw new IllegalStateException("not open");
    }
}
