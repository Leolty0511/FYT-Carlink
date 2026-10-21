package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public abstract class DisplayEventReceiver {
    private static final String TAG = "DisplayEventReceiver";
    private final CloseGuard mCloseGuard;
    private MessageQueue mMessageQueue;
    private int mReceiverPtr;

    public DisplayEventReceiver(Looper looper) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (looper == null) {
            throw new IllegalArgumentException("looper must not be null");
        }
        MessageQueue queue = looper.getQueue();
        this.mMessageQueue = queue;
        this.mReceiverPtr = nativeInit(this, queue);
        closeGuard.open("dispose");
    }

    private void dispatchHotplug(long j2, int i2, boolean z2) {
        onHotplug(j2, i2, z2);
    }

    private void dispatchVsync(long j2, int i2, int i3) {
        onVsync(j2, i2, i3);
    }

    private static native void nativeDispose(int i2);

    private static native int nativeInit(DisplayEventReceiver displayEventReceiver, MessageQueue messageQueue);

    private static native void nativeScheduleVsync(int i2);

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
        int i2 = this.mReceiverPtr;
        if (i2 == 0) {
            Log.w(TAG, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed.");
        } else {
            nativeScheduleVsync(i2);
        }
    }

    private void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        int i2 = this.mReceiverPtr;
        if (i2 != 0) {
            nativeDispose(i2);
            this.mReceiverPtr = 0;
        }
        this.mMessageQueue = null;
    }
}
