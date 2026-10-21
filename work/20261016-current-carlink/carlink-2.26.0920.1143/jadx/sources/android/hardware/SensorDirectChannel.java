package android.hardware;

import android.os.MemoryFile;
import dalvik.system.CloseGuard;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.channels.Channel;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class SensorDirectChannel implements Channel {
    public static final int RATE_FAST = 2;
    public static final int RATE_NORMAL = 1;
    public static final int RATE_STOP = 0;
    public static final int RATE_VERY_FAST = 3;
    public static final int TYPE_HARDWARE_BUFFER = 2;
    public static final int TYPE_MEMORY_FILE = 1;
    private final CloseGuard mCloseGuard;
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final SensorManager mManager;
    private final int mNativeHandle;
    private final long mSize;
    private final int mType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MemoryType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RateLevel {
    }

    public SensorDirectChannel(SensorManager sensorManager, int i2, int i3, long j2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mManager = sensorManager;
        this.mNativeHandle = i2;
        this.mType = i3;
        this.mSize = j2;
        closeGuard.open("SensorDirectChannel");
    }

    public static long[] encodeData(MemoryFile memoryFile) {
        int int$;
        try {
            int$ = memoryFile.getFileDescriptor().getInt$();
        } catch (IOException unused) {
            int$ = -1;
        }
        return new long[]{1, 0, int$};
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.mClosed.compareAndSet(false, true)) {
            this.mCloseGuard.close();
            this.mManager.destroyDirectChannel(this);
        }
    }

    public int configure(Sensor sensor, int i2) {
        return this.mManager.configureDirectChannelImpl(this, sensor, i2);
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public int getNativeHandle() {
        return this.mNativeHandle;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.mClosed.get();
    }

    @Deprecated
    public boolean isValid() {
        return isOpen();
    }
}
