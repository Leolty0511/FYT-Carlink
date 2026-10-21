package android.hardware;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import dalvik.annotation.optimization.FastNative;
import dalvik.system.CloseGuard;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public final class HardwareBuffer implements Parcelable, AutoCloseable {
    public static final int BLOB = 33;
    public static final Parcelable.Creator<HardwareBuffer> CREATOR = new Parcelable.Creator<HardwareBuffer>() { // from class: android.hardware.HardwareBuffer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HardwareBuffer createFromParcel(Parcel parcel) {
            long jNReadHardwareBufferFromParcel = HardwareBuffer.nReadHardwareBufferFromParcel(parcel);
            if (jNReadHardwareBufferFromParcel != 0) {
                return new HardwareBuffer(jNReadHardwareBufferFromParcel);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HardwareBuffer[] newArray(int i2) {
            return new HardwareBuffer[i2];
        }
    };
    private static final long NATIVE_HARDWARE_BUFFER_SIZE = 232;
    public static final int RGBA_1010102 = 43;
    public static final int RGBA_8888 = 1;
    public static final int RGBA_FP16 = 22;
    public static final int RGBX_8888 = 2;
    public static final int RGB_565 = 4;
    public static final int RGB_888 = 3;
    public static final long USAGE_CPU_READ_OFTEN = 3;
    public static final long USAGE_CPU_READ_RARELY = 2;
    public static final long USAGE_CPU_WRITE_OFTEN = 48;
    public static final long USAGE_CPU_WRITE_RARELY = 32;
    public static final long USAGE_GPU_COLOR_OUTPUT = 512;
    public static final long USAGE_GPU_DATA_BUFFER = 16777216;
    public static final long USAGE_GPU_SAMPLED_IMAGE = 256;
    public static final long USAGE_PROTECTED_CONTENT = 16384;
    public static final long USAGE_SENSOR_DIRECT_DATA = 8388608;
    public static final long USAGE_VIDEO_ENCODE = 65536;
    private Runnable mCleaner;
    private final CloseGuard mCloseGuard;
    private long mNativeObject;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Format {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Usage {
    }

    public static HardwareBuffer create(int i2, int i3, int i4, int i5, long j2) {
        if (!isSupportedFormat(i4)) {
            throw new IllegalArgumentException(c.d("Invalid pixel format ", i4));
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException(c.d("Invalid width ", i2));
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException(c.d("Invalid height ", i3));
        }
        if (i5 <= 0) {
            throw new IllegalArgumentException(c.d("Invalid layer count ", i5));
        }
        if (i4 == 33 && i3 != 1) {
            throw new IllegalArgumentException("Height must be 1 when using the BLOB format");
        }
        long jNCreateHardwareBuffer = nCreateHardwareBuffer(i2, i3, i4, i5, j2);
        if (jNCreateHardwareBuffer != 0) {
            return new HardwareBuffer(jNCreateHardwareBuffer);
        }
        throw new IllegalArgumentException("Unable to create a HardwareBuffer, either the dimensions passed were too large, too many image layers were requested, or an invalid set of usage flags was passed");
    }

    private static boolean isSupportedFormat(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 22 || i2 == 33 || i2 == 43;
    }

    private static native long nCreateHardwareBuffer(int i2, int i3, int i4, int i5, long j2);

    @FastNative
    private static native int nGetFormat(long j2);

    @FastNative
    private static native int nGetHeight(long j2);

    @FastNative
    private static native int nGetLayers(long j2);

    private static native long nGetNativeFinalizer();

    @FastNative
    private static native long nGetUsage(long j2);

    @FastNative
    private static native int nGetWidth(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nReadHardwareBufferFromParcel(Parcel parcel);

    private static native void nWriteHardwareBufferToParcel(long j2, Parcel parcel);

    @Override // java.lang.AutoCloseable
    public void close() {
        if (isClosed()) {
            return;
        }
        this.mCloseGuard.close();
        this.mNativeObject = 0L;
        this.mCleaner.run();
        this.mCleaner = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    @Deprecated
    public void destroy() {
        close();
    }

    public void finalize() throws Throwable {
        try {
            this.mCloseGuard.warnIfOpen();
            close();
        } finally {
            super.finalize();
        }
    }

    public int getFormat() {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and its format cannot be obtained.");
        }
        return nGetFormat(this.mNativeObject);
    }

    public int getHeight() {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and its height cannot be obtained.");
        }
        return nGetHeight(this.mNativeObject);
    }

    public int getLayers() {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and its layer count cannot be obtained.");
        }
        return nGetLayers(this.mNativeObject);
    }

    public long getUsage() {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and its usage cannot be obtained.");
        }
        return nGetUsage(this.mNativeObject);
    }

    public int getWidth() {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and its width cannot be obtained.");
        }
        return nGetWidth(this.mNativeObject);
    }

    public boolean isClosed() {
        return this.mNativeObject == 0;
    }

    @Deprecated
    public boolean isDestroyed() {
        return isClosed();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (isClosed()) {
            throw new IllegalStateException("This HardwareBuffer has been closed and cannot be written to a parcel.");
        }
        nWriteHardwareBufferToParcel(this.mNativeObject, parcel);
    }

    private HardwareBuffer(long j2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mNativeObject = j2;
        this.mCleaner = new NativeAllocationRegistry(HardwareBuffer.class.getClassLoader(), nGetNativeFinalizer(), NATIVE_HARDWARE_BUFFER_SIZE).registerNativeAllocation(this, this.mNativeObject);
        closeGuard.open("close");
    }
}
