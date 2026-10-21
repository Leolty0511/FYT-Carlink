package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InputEventReceiver {
    private static final String PROPERTY_PROFILE_DISPATCHINPUT = "persist.sys.dispatch_input_reciver";
    private static final String TAG = "InputEventReceiver";
    private static boolean sDebugDispatchInput = false;
    private final CloseGuard mCloseGuard;
    private InputChannel mInputChannel;
    private MessageQueue mMessageQueue;
    private long mReceiverPtr;
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
        sDebugDispatchInput = SystemProperties.getBoolean(PROPERTY_PROFILE_DISPATCHINPUT, false);
        this.mInputChannel = inputChannel;
        this.mMessageQueue = looper.getQueue();
        this.mReceiverPtr = nativeInit(new WeakReference(this), inputChannel, this.mMessageQueue);
        closeGuard.open("dispose");
    }

    private void dispatchBatchedInputEventPending() {
        onBatchedInputEventPending();
    }

    private void dispatchInputEvent(int i2, InputEvent inputEvent, int i3) {
        this.mSeqMap.put(inputEvent.getSequenceNumber(), i2);
        onInputEvent(inputEvent, i3);
        if (sDebugDispatchInput) {
            Log.d(TAG, "dispatchInputEvent event: " + inputEvent + ", displayId: " + i3);
        }
    }

    private static native boolean nativeConsumeBatchedInputEvents(long j2, long j3);

    private static native void nativeDispose(long j2);

    private static native void nativeFinishInputEvent(long j2, int i2, boolean z2);

    private static native long nativeInit(WeakReference<InputEventReceiver> weakReference, InputChannel inputChannel, MessageQueue messageQueue);

    public final boolean consumeBatchedInputEvents(long j2) {
        long j3 = this.mReceiverPtr;
        if (j3 != 0) {
            return nativeConsumeBatchedInputEvents(j3, j2);
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
        if (sDebugDispatchInput) {
            Log.d(TAG, "finishInputEvent handled is: " + z2 + " (True if the event was handled), event: " + inputEvent);
        }
    }

    public void onBatchedInputEventPending() {
        consumeBatchedInputEvents(-1L);
    }

    public void onInputEvent(InputEvent inputEvent, int i2) {
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
        long j2 = this.mReceiverPtr;
        if (j2 != 0) {
            nativeDispose(j2);
            this.mReceiverPtr = 0L;
        }
        this.mInputChannel = null;
        this.mMessageQueue = null;
    }
}
