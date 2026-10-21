package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import dalvik.annotation.optimization.FastNative;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DisplayEventReceiver {
    private static final String TAG = "DisplayEventReceiver";
    public static final int VSYNC_SOURCE_APP = 0;
    public static final int VSYNC_SOURCE_SURFACE_FLINGER = 1;
    private final CloseGuard mCloseGuard;
    private MessageQueue mMessageQueue;
    private long mReceiverPtr;

    public DisplayEventReceiver(Looper looper) {
        this(looper, 0);
    }

    private void dispatchHotplug(long j2, int i2, boolean z2) {
        onHotplug(j2, i2, z2);
    }

    private void dispatchVsync(long j2, int i2, int i3) {
        onVsync(j2, i2, i3);
    }

    private static native void nativeDispose(long j2);

    private static native long nativeInit(WeakReference<DisplayEventReceiver> weakReference, MessageQueue messageQueue, int i2);

    @FastNative
    private static native void nativeScheduleVsync(long j2);

    public void dispose() {
        dispose(false);
    }

    public void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public void onHotplug(long j2, int i2, boolean z2) {
    }

    public void onVsync(long j2, int i2, int i3) {
    }

    public void scheduleVsync() {
        long j2 = this.mReceiverPtr;
        if (j2 == 0) {
            Log.w(TAG, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed.");
        } else {
            nativeScheduleVsync(j2);
        }
    }

    public DisplayEventReceiver(Looper looper, int i2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (looper == null) {
            throw new IllegalArgumentException("looper must not be null");
        }
        this.mMessageQueue = looper.getQueue();
        this.mReceiverPtr = nativeInit(new WeakReference(this), this.mMessageQueue, i2);
        closeGuard.open("dispose");
    }

    private void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        long j2 = this.mReceiverPtr;
        if (j2 != 0) {
            nativeDispose(j2);
            this.mReceiverPtr = 0L;
        }
        this.mMessageQueue = null;
    }
}
