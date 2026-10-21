package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InputEventSender {
    private static final String TAG = "InputEventSender";
    private final CloseGuard mCloseGuard;
    private InputChannel mInputChannel;
    private MessageQueue mMessageQueue;
    private long mSenderPtr;

    public InputEventSender(InputChannel inputChannel, Looper looper) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (inputChannel == null) {
            throw new IllegalArgumentException("inputChannel must not be null");
        }
        if (looper == null) {
            throw new IllegalArgumentException("looper must not be null");
        }
        this.mInputChannel = inputChannel;
        this.mMessageQueue = looper.getQueue();
        this.mSenderPtr = nativeInit(new WeakReference(this), inputChannel, this.mMessageQueue);
        closeGuard.open("dispose");
    }

    private void dispatchInputEventFinished(int i2, boolean z2) {
        onInputEventFinished(i2, z2);
    }

    private static native void nativeDispose(long j2);

    private static native long nativeInit(WeakReference<InputEventSender> weakReference, InputChannel inputChannel, MessageQueue messageQueue);

    private static native boolean nativeSendKeyEvent(long j2, int i2, KeyEvent keyEvent);

    private static native boolean nativeSendMotionEvent(long j2, int i2, MotionEvent motionEvent);

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

    public void onInputEventFinished(int i2, boolean z2) {
    }

    public final boolean sendInputEvent(int i2, InputEvent inputEvent) {
        if (inputEvent == null) {
            throw new IllegalArgumentException("event must not be null");
        }
        long j2 = this.mSenderPtr;
        if (j2 != 0) {
            return inputEvent instanceof KeyEvent ? nativeSendKeyEvent(j2, i2, (KeyEvent) inputEvent) : nativeSendMotionEvent(j2, i2, (MotionEvent) inputEvent);
        }
        Log.w(TAG, "Attempted to send an input event but the input event sender has already been disposed.");
        return false;
    }

    private void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        long j2 = this.mSenderPtr;
        if (j2 != 0) {
            nativeDispose(j2);
            this.mSenderPtr = 0L;
        }
        this.mInputChannel = null;
        this.mMessageQueue = null;
    }
}
