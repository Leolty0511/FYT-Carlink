package android.media;

import com.syu.jni.BuildConfig;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMuxer {
    private static final int MUXER_STATE_INITIALIZED = 0;
    private static final int MUXER_STATE_STARTED = 1;
    private static final int MUXER_STATE_STOPPED = 2;
    private static final int MUXER_STATE_UNINITIALIZED = -1;
    private final CloseGuard mCloseGuard;
    private int mLastTrackIndex;
    private int mNativeContext;
    private int mNativeObject;
    private int mState;

    public static final class OutputFormat {
        public static final int MUXER_OUTPUT_MPEG_4 = 0;

        private OutputFormat() {
        }
    }

    static {
        System.loadLibrary("media_jni");
    }

    public MediaMuxer(String str, int i2) throws Throwable {
        this.mState = -1;
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mLastTrackIndex = -1;
        if (str == null) {
            throw new IllegalArgumentException("path must not be null");
        }
        if (i2 != 0) {
            throw new IllegalArgumentException("format is invalid");
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str));
            try {
                this.mNativeObject = nativeSetup(fileOutputStream2.getFD(), i2);
                this.mState = 0;
                closeGuard.open(BuildConfig.BUILD_TYPE);
                fileOutputStream2.close();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static native int nativeAddTrack(int i2, String[] strArr, Object[] objArr);

    private static native void nativeRelease(int i2);

    private static native void nativeSetLocation(int i2, int i3, int i4);

    private static native void nativeSetOrientationHint(int i2, int i3);

    private static native int nativeSetup(FileDescriptor fileDescriptor, int i2);

    private static native void nativeStart(int i2);

    private static native void nativeStop(int i2);

    private static native void nativeWriteSampleData(int i2, int i3, ByteBuffer byteBuffer, int i4, int i5, long j2, int i6);

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
            int i2 = this.mNativeObject;
            if (i2 != 0) {
                nativeRelease(i2);
                this.mNativeObject = 0;
            }
        } finally {
            super.finalize();
        }
    }

    public void release() {
        if (this.mState == 1) {
            stop();
        }
        int i2 = this.mNativeObject;
        if (i2 != 0) {
            nativeRelease(i2);
            this.mNativeObject = 0;
            this.mCloseGuard.close();
        }
        this.mState = -1;
    }

    public void setLocation(float f2, float f3) {
        int i2;
        int i3 = (int) (((double) (f2 * 10000.0f)) + 0.5d);
        int i4 = (int) (((double) (10000.0f * f3)) + 0.5d);
        if (i3 > 900000 || i3 < -900000) {
            throw new IllegalArgumentException("Latitude: " + f2 + " out of range.");
        }
        if (i4 > 1800000 || i4 < -1800000) {
            throw new IllegalArgumentException("Longitude: " + f3 + " out of range");
        }
        if (this.mState != 0 || (i2 = this.mNativeObject) == 0) {
            throw new IllegalStateException("Can't set location due to wrong state.");
        }
        nativeSetLocation(i2, i3, i4);
    }

    public void setOrientationHint(int i2) {
        if (i2 == 0 || i2 == 90 || i2 == 180 || i2 == 270) {
            if (this.mState != 0) {
                throw new IllegalStateException("Can't set rotation degrees due to wrong state.");
            }
            nativeSetOrientationHint(this.mNativeObject, i2);
        } else {
            throw new IllegalArgumentException("Unsupported angle: " + i2);
        }
    }

    public void start() {
        int i2 = this.mNativeObject;
        if (i2 == 0) {
            throw new IllegalStateException("Muxer has been released!");
        }
        if (this.mState != 0) {
            throw new IllegalStateException("Can't start due to wrong state.");
        }
        nativeStart(i2);
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
                int i5 = this.mNativeObject;
                if (i5 == 0) {
                    throw new IllegalStateException("Muxer has been released!");
                }
                if (this.mState != 1) {
                    throw new IllegalStateException("Can't write, muxer is not started");
                }
                nativeWriteSampleData(i5, i2, byteBuffer, bufferInfo.offset, bufferInfo.size, j2, bufferInfo.flags);
                return;
            }
        }
        throw new IllegalArgumentException("bufferInfo must specify a valid buffer offset, size and presentation time");
    }
}
