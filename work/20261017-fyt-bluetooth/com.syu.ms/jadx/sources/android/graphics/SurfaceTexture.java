package android.graphics;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceTexture {
    private int mBufferQueue;
    private EventHandler mEventHandler;
    private int mFrameAvailableListener;
    private OnFrameAvailableListener mOnFrameAvailableListener;
    private int mSurfaceTexture;

    public class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (SurfaceTexture.this.mOnFrameAvailableListener != null) {
                SurfaceTexture.this.mOnFrameAvailableListener.onFrameAvailable(SurfaceTexture.this);
            }
        }
    }

    public interface OnFrameAvailableListener {
        void onFrameAvailable(SurfaceTexture surfaceTexture);
    }

    @Deprecated
    public static class OutOfResourcesException extends Exception {
        public OutOfResourcesException() {
        }

        public OutOfResourcesException(String str) {
            super(str);
        }
    }

    static {
        nativeClassInit();
    }

    public SurfaceTexture(int i2) {
        init(i2, false);
    }

    private void init(int i2, boolean z2) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        nativeInit(i2, z2, new WeakReference(this));
    }

    private native int nativeAttachToGLContext(int i2);

    private static native void nativeClassInit();

    private native int nativeDetachFromGLContext();

    private native void nativeFinalize();

    private native int nativeGetQueuedCount();

    private native long nativeGetTimestamp();

    private native void nativeGetTransformMatrix(float[] fArr);

    private native void nativeInit(int i2, boolean z2, Object obj);

    private native void nativeRelease();

    private native void nativeReleaseTexImage();

    private native void nativeSetDefaultBufferSize(int i2, int i3);

    private native void nativeUpdateTexImage();

    private static void postEventFromNative(Object obj) {
        EventHandler eventHandler;
        SurfaceTexture surfaceTexture = (SurfaceTexture) ((WeakReference) obj).get();
        if (surfaceTexture == null || (eventHandler = surfaceTexture.mEventHandler) == null) {
            return;
        }
        surfaceTexture.mEventHandler.sendMessage(eventHandler.obtainMessage());
    }

    public void attachToGLContext(int i2) {
        if (nativeAttachToGLContext(i2) != 0) {
            throw new RuntimeException("Error during attachToGLContext (see logcat for details)");
        }
    }

    public void detachFromGLContext() {
        if (nativeDetachFromGLContext() != 0) {
            throw new RuntimeException("Error during detachFromGLContext (see logcat for details)");
        }
    }

    public void finalize() throws Throwable {
        try {
            nativeFinalize();
        } finally {
            super.finalize();
        }
    }

    public long getTimestamp() {
        return nativeGetTimestamp();
    }

    public void getTransformMatrix(float[] fArr) {
        if (fArr.length != 16) {
            throw new IllegalArgumentException();
        }
        nativeGetTransformMatrix(fArr);
    }

    public void release() {
        nativeRelease();
    }

    public void releaseTexImage() {
        nativeReleaseTexImage();
    }

    public void setDefaultBufferSize(int i2, int i3) {
        nativeSetDefaultBufferSize(i2, i3);
    }

    public void setOnFrameAvailableListener(OnFrameAvailableListener onFrameAvailableListener) {
        this.mOnFrameAvailableListener = onFrameAvailableListener;
    }

    public void updateTexImage() {
        nativeUpdateTexImage();
    }

    public SurfaceTexture(int i2, boolean z2) {
        init(i2, z2);
    }
}
