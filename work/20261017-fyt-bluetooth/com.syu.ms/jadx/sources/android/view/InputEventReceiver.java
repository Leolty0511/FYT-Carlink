package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import android.util.SparseIntArray;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class InputEventReceiver {
    private static final String TAG = "InputEventReceiver";
    private final CloseGuard mCloseGuard;
    private InputChannel mInputChannel;
    private MessageQueue mMessageQueue;
    private int mReceiverPtr;
    private final SparseIntArray mSeqMap;

    public interface Factory {
        InputEventReceiver createInputEventReceiver(InputChannel inputChannel, Looper looper);
    }

    public InputEventReceiver(InputChannel inputChannel, Looper looper) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mSeqMap = new SparseIntArray();
        if (inputChannel == null) {
            throw new IllegalArgumentException("inputChannel must not be null");
        }
        if (looper == null) {
            throw new IllegalArgumentException("looper must not be null");
        }
        this.mInputChannel = inputChannel;
        this.mMessageQueue = looper.getQueue();
        this.mReceiverPtr = nativeInit(new WeakReference(this), inputChannel, this.mMessageQueue);
        closeGuard.open("dispose");
    }

    private void dispatchBatchedInputEventPending() {
        onBatchedInputEventPending();
    }

    private void dispatchInputEvent(int i2, InputEvent inputEvent) {
        this.mSeqMap.put(inputEvent.getSequenceNumber(), i2);
        onInputEvent(inputEvent);
    }

    private static native boolean nativeConsumeBatchedInputEvents(int i2, long j2);

    private static native void nativeDispose(int i2);

    private static native void nativeFinishInputEvent(int i2, int i3, boolean z2);

    private static native int nativeInit(WeakReference<InputEventReceiver> weakReference, InputChannel inputChannel, MessageQueue messageQueue);

    public final boolean consumeBatchedInputEvents(long j2) {
        int i2 = this.mReceiverPtr;
        if (i2 != 0) {
            return nativeConsumeBatchedInputEvents(i2, j2);
        }
        Log.w(TAG, "Attempted to consume batched input events but the input event receiver has already been disposed.");
        return false;
    }

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

    public final void finishInputEvent(InputEvent inputEvent, boolean z2) {
        if (inputEvent == null) {
            throw new IllegalArgumentException("event must not be null");
        }
        if (this.mReceiverPtr == 0) {
            Log.w(TAG, "Attempted to finish an input event but the input event receiver has already been disposed.");
        } else {
            int iIndexOfKey = this.mSeqMap.indexOfKey(inputEvent.getSequenceNumber());
            if (iIndexOfKey < 0) {
                Log.w(TAG, "Attempted to finish an input event that is not in progress.");
            } else {
                int iValueAt = this.mSeqMap.valueAt(iIndexOfKey);
                this.mSeqMap.removeAt(iIndexOfKey);
                nativeFinishInputEvent(this.mReceiverPtr, iValueAt, z2);
            }
        }
        inputEvent.recycleIfNeededAfterDispatch();
    }

    public void onBatchedInputEventPending() {
        consumeBatchedInputEvents(-1L);
    }

    public void onInputEvent(InputEvent inputEvent) {
        finishInputEvent(inputEvent, false);
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
        this.mInputChannel = null;
        this.mMessageQueue = null;
    }
}
