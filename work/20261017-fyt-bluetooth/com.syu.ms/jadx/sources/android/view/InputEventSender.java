package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class InputEventSender {
    private static final String TAG = "InputEventSender";
    private final CloseGuard mCloseGuard;
    private InputChannel mInputChannel;
    private MessageQueue mMessageQueue;
    private int mSenderPtr;

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

    private static native void nativeDispose(int i2);

    private static native int nativeInit(WeakReference<InputEventSender> weakReference, InputChannel inputChannel, MessageQueue messageQueue);

    private static native boolean nativeSendKeyEvent(int i2, int i3, KeyEvent keyEvent);

    private static native boolean nativeSendMotionEvent(int i2, int i3, MotionEvent motionEvent);

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
        int i3 = this.mSenderPtr;
        if (i3 != 0) {
            return inputEvent instanceof KeyEvent ? nativeSendKeyEvent(i3, i2, (KeyEvent) inputEvent) : nativeSendMotionEvent(i3, i2, (MotionEvent) inputEvent);
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
        int i2 = this.mSenderPtr;
        if (i2 != 0) {
            nativeDispose(i2);
            this.mSenderPtr = 0;
        }
        this.mInputChannel = null;
        this.mMessageQueue = null;
    }
}
