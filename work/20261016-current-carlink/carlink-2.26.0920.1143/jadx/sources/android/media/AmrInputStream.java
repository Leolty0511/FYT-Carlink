package android.media;

import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AmrInputStream extends InputStream {
    private static final int SAMPLES_PER_FRAME = 160;
    private static final String TAG = "AmrInputStream";
    MediaCodec mCodec;
    MediaCodec.BufferInfo mInfo;
    private InputStream mInputStream;
    boolean mSawInputEOS;
    boolean mSawOutputEOS;
    private final byte[] mBuf = new byte[320];
    private int mBufIn = 0;
    private int mBufOut = 0;
    private byte[] mOneByte = new byte[1];

    public AmrInputStream(InputStream inputStream) {
        this.mInputStream = inputStream;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(MediaFormat.KEY_MIME, MediaFormat.MIMETYPE_AUDIO_AMR_NB);
        mediaFormat.setInteger(MediaFormat.KEY_SAMPLE_RATE, 8000);
        mediaFormat.setInteger(MediaFormat.KEY_CHANNEL_COUNT, 1);
        mediaFormat.setInteger(MediaFormat.KEY_BIT_RATE, 12200);
        String strFindEncoderForFormat = new MediaCodecList(0).findEncoderForFormat(mediaFormat);
        if (strFindEncoderForFormat != null) {
            try {
                MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(strFindEncoderForFormat);
                this.mCodec = mediaCodecCreateByCodecName;
                mediaCodecCreateByCodecName.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                this.mCodec.start();
            } catch (IOException unused) {
                MediaCodec mediaCodec = this.mCodec;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                this.mCodec = null;
            }
        }
        this.mInfo = new MediaCodec.BufferInfo();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            InputStream inputStream = this.mInputStream;
            if (inputStream != null) {
                inputStream.close();
            }
            this.mInputStream = null;
            try {
                MediaCodec mediaCodec = this.mCodec;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
            } finally {
                this.mCodec = null;
            }
        } catch (Throwable th) {
            this.mInputStream = null;
            try {
                MediaCodec mediaCodec2 = this.mCodec;
                if (mediaCodec2 != null) {
                    mediaCodec2.release();
                }
                throw th;
            } finally {
                this.mCodec = null;
            }
        }
    }

    public void finalize() {
        if (this.mCodec != null) {
            Log.w(TAG, "AmrInputStream wasn't closed");
            this.mCodec.release();
        }
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
        int iDequeueOutputBuffer;
        int iDequeueInputBuffer;
        if (this.mCodec != null) {
            if (this.mBufOut >= this.mBufIn && !this.mSawOutputEOS) {
                this.mBufOut = 0;
                this.mBufIn = 0;
                while (!this.mSawInputEOS && (iDequeueInputBuffer = this.mCodec.dequeueInputBuffer(0L)) >= 0) {
                    int i4 = 0;
                    while (i4 < 320) {
                        int i5 = this.mInputStream.read(this.mBuf, i4, 320 - i4);
                        if (i5 == -1) {
                            this.mSawInputEOS = true;
                            break;
                        }
                        i4 += i5;
                    }
                    this.mCodec.getInputBuffer(iDequeueInputBuffer).put(this.mBuf, 0, i4);
                    this.mCodec.queueInputBuffer(iDequeueInputBuffer, 0, i4, 0L, this.mSawInputEOS ? 4 : 0);
                }
                do {
                    iDequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(this.mInfo, -1L);
                } while (iDequeueOutputBuffer < 0);
                this.mBufIn = this.mInfo.size;
                this.mCodec.getOutputBuffer(iDequeueOutputBuffer).get(this.mBuf, 0, this.mBufIn);
                this.mCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.mInfo.flags & 4) != 0) {
                    this.mSawOutputEOS = true;
                }
            }
            int i6 = this.mBufOut;
            int i7 = this.mBufIn;
            if (i6 >= i7) {
                return (this.mSawInputEOS && this.mSawOutputEOS) ? -1 : 0;
            }
            int i8 = i3 > i7 - i6 ? i7 - i6 : i3;
            System.arraycopy(this.mBuf, i6, bArr, i2, i8);
            this.mBufOut += i8;
            return i8;
        }
        throw new IllegalStateException("not open");
    }
}
