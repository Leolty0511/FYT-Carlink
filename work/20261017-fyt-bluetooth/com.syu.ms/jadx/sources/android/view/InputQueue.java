package android.view;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Pools;
import android.util.SparseArray;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class InputQueue {
    private final SparseArray<ActiveInputEvent> mActiveEventArray = new SparseArray<>(20);
    private final Pools.Pool<ActiveInputEvent> mActiveInputEventPool = new Pools.SimplePool(20);
    private final CloseGuard mCloseGuard;
    private int mPtr;

    public final class ActiveInputEvent {
        public FinishedInputEventCallback mCallback;
        public Object mToken;

        private ActiveInputEvent() {
        }

        public void recycle() {
            this.mToken = null;
            this.mCallback = null;
        }
    }

    public interface Callback {
        void onInputQueueCreated(InputQueue inputQueue);

        void onInputQueueDestroyed(InputQueue inputQueue);
    }

    public interface FinishedInputEventCallback {
        void onFinishedInputEvent(Object obj, boolean z2);
    }

    public InputQueue() {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mPtr = nativeInit(new WeakReference(this), Looper.myQueue());
        closeGuard.open("dispose");
    }

    private void finishInputEvent(int i2, boolean z2) {
        int iIndexOfKey = this.mActiveEventArray.indexOfKey(i2);
        if (iIndexOfKey >= 0) {
            ActiveInputEvent activeInputEventValueAt = this.mActiveEventArray.valueAt(iIndexOfKey);
            this.mActiveEventArray.removeAt(iIndexOfKey);
            activeInputEventValueAt.mCallback.onFinishedInputEvent(activeInputEventValueAt.mToken, z2);
            recycleActiveInputEvent(activeInputEventValueAt);
        }
    }

    private static native void nativeDispose(int i2);

    private static native int nativeInit(WeakReference<InputQueue> weakReference, MessageQueue messageQueue);

    private static native int nativeSendKeyEvent(int i2, KeyEvent keyEvent, boolean z2);

    private static native int nativeSendMotionEvent(int i2, MotionEvent motionEvent);

    private ActiveInputEvent obtainActiveInputEvent(Object obj, FinishedInputEventCallback finishedInputEventCallback) {
        ActiveInputEvent activeInputEventAcquire = this.mActiveInputEventPool.acquire();
        if (activeInputEventAcquire == null) {
            activeInputEventAcquire = new ActiveInputEvent();
        }
        activeInputEventAcquire.mToken = obj;
        activeInputEventAcquire.mCallback = finishedInputEventCallback;
        return activeInputEventAcquire;
    }

    private void recycleActiveInputEvent(ActiveInputEvent activeInputEvent) {
        activeInputEvent.recycle();
        this.mActiveInputEventPool.release(activeInputEvent);
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

    public int getNativePtr() {
        return this.mPtr;
    }

    public void sendInputEvent(InputEvent inputEvent, Object obj, boolean z2, FinishedInputEventCallback finishedInputEventCallback) {
        this.mActiveEventArray.put(inputEvent instanceof KeyEvent ? nativeSendKeyEvent(this.mPtr, (KeyEvent) inputEvent, z2) : nativeSendMotionEvent(this.mPtr, (MotionEvent) inputEvent), obtainActiveInputEvent(obj, finishedInputEventCallback));
    }

    public void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        int i2 = this.mPtr;
        if (i2 != 0) {
            nativeDispose(i2);
            this.mPtr = 0;
        }
    }
}
