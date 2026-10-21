package android.media;

import android.accessibilityservice.c;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.io.RandomAccessFile;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMuxer {
    private static final int MUXER_STATE_INITIALIZED = 0;
    private static final int MUXER_STATE_STARTED = 1;
    private static final int MUXER_STATE_STOPPED = 2;
    private static final int MUXER_STATE_UNINITIALIZED = -1;
    private long mNativeObject;
    private int mState = -1;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private int mLastTrackIndex = -1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Format {
    }

    public static final class OutputFormat {
        public static final int MUXER_OUTPUT_3GPP = 2;
        public static final int MUXER_OUTPUT_MPEG_4 = 0;
        public static final int MUXER_OUTPUT_WEBM = 1;

        private OutputFormat() {
        }
    }

    static {
        System.loadLibrary("media_jni");
    }

    public MediaMuxer(String str, int i2) throws Throwable {
        if (str == null) {
            throw new IllegalArgumentException("path must not be null");
        }
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "rws");
            try {
                setUpMediaMuxer(randomAccessFile2.getFD(), i2);
                randomAccessFile2.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static native int nativeAddTrack(long j2, String[] strArr, Object[] objArr);

    private static native void nativeRelease(long j2);

    private static native void nativeSetLocation(long j2, int i2, int i3);

    private static native void nativeSetOrientationHint(long j2, int i2);

    private static native long nativeSetup(FileDescriptor fileDescriptor, int i2);

    private static native void nativeStart(long j2);

    private static native void nativeStop(long j2);

    private static native void nativeWriteSampleData(long j2, int i2, ByteBuffer byteBuffer, int i3, int i4, long j3, int i5);

    private void setUpMediaMuxer(FileDescriptor fileDescriptor, int i2) {
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(c.e("format: ", i2, " is invalid"));
        }
        this.mNativeObject = nativeSetup(fileDescriptor, i2);
        this.mState = 0;
        this.mCloseGuard.open("release");
    }

    public int addTrack(MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            throw new IllegalArgumentException("format must not be null.");
        }
        if (this.mState != 0) {
            throw new IllegalStateException("Muxer is not initialized.");
        }
        if (this.mNativeObject == 0) {
            throw new IllegalStateException("Muxer has been released!");
        }
        Map<String, Object> map = mediaFormat.getMap();
        int size = map.size();
        if (size <= 0) {
            throw new IllegalArgumentException("format must not be empty.");
        }
        String[] strArr = new String[size];
        Object[] objArr = new Object[size];
        int i2 = 0;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            strArr[i2] = entry.getKey();
            objArr[i2] = entry.getValue();
            i2++;
        }
        int iNativeAddTrack = nativeAddTrack(this.mNativeObject, strArr, objArr);
        if (this.mLastTrackIndex >= iNativeAddTrack) {
            throw new IllegalArgumentException("Invalid format.");
        }
        this.mLastTrackIndex = iNativeAddTrack;
        return iNativeAddTrack;
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            long j2 = this.mNativeObject;
            if (j2 != 0) {
                nativeRelease(j2);
                this.mNativeObject = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    public void release() {
        if (this.mState == 1) {
            stop();
        }
        long j2 = this.mNativeObject;
        if (j2 != 0) {
            nativeRelease(j2);
            this.mNativeObject = 0L;
            this.mCloseGuard.close();
        }
        this.mState = -1;
    }

    public void setLocation(float f2, float f3) {
        int i2 = (int) (((double) (f2 * 10000.0f)) + 0.5d);
        int i3 = (int) (((double) (10000.0f * f3)) + 0.5d);
        if (i2 > 900000 || i2 < -900000) {
            throw new IllegalArgumentException("Latitude: " + f2 + " out of range.");
        }
        if (i3 > 1800000 || i3 < -1800000) {
            throw new IllegalArgumentException("Longitude: " + f3 + " out of range");
        }
        if (this.mState == 0) {
            long j2 = this.mNativeObject;
            if (j2 != 0) {
                nativeSetLocation(j2, i2, i3);
                return;
            }
        }
        throw new IllegalStateException("Can't set location due to wrong state.");
    }

    public void setOrientationHint(int i2) {
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            throw new IllegalArgumentException(c.d("Unsupported angle: ", i2));
        }
        if (this.mState != 0) {
            throw new IllegalStateException("Can't set rotation degrees due to wrong state.");
        }
        nativeSetOrientationHint(this.mNativeObject, i2);
    }

    public void start() {
        long j2 = this.mNativeObject;
        if (j2 == 0) {
            throw new IllegalStateException("Muxer has been released!");
        }
        if (this.mState != 0) {
            throw new IllegalStateException("Can't start due to wrong state.");
        }
        nativeStart(j2);
        this.mState = 1;
    }

    public void stop() {
        if (this.mState != 1) {
            throw new IllegalStateException("Can't stop due to wrong state.");
        }
        nativeStop(this.mNativeObject);
        this.mState = 2;
    }

    public void writeSampleData(int i2, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int i3;
        if (i2 < 0 || i2 > this.mLastTrackIndex) {
            throw new IllegalArgumentException("trackIndex is invalid");
        }
        if (byteBuffer == null) {
            throw new IllegalArgumentException("byteBuffer must not be null");
        }
        if (bufferInfo == null) {
            throw new IllegalArgumentException("bufferInfo must not be null");
        }
        int i4 = bufferInfo.size;
        if (i4 >= 0 && (i3 = bufferInfo.offset) >= 0 && i3 + i4 <= byteBuffer.capacity()) {
            long j2 = bufferInfo.presentationTimeUs;
            if (j2 >= 0) {
                long j3 = this.mNativeObject;
                if (j3 == 0) {
                    throw new IllegalStateException("Muxer has been released!");
                }
                if (this.mState != 1) {
                    throw new IllegalStateException("Can't write, muxer is not started");
                }
                nativeWriteSampleData(j3, i2, byteBuffer, bufferInfo.offset, bufferInfo.size, j2, bufferInfo.flags);
                return;
            }
        }
        throw new IllegalArgumentException("bufferInfo must specify a valid buffer offset, size and presentation time");
    }

    public MediaMuxer(FileDescriptor fileDescriptor, int i2) {
        setUpMediaMuxer(fileDescriptor, i2);
    }
}
