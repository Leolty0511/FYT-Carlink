package android.media;

import android.accessibilityservice.c;
import android.os.Handler;
import android.view.Surface;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteDisplay {
    public static final int DISPLAY_ERROR_CONNECTION_DROPPED = 2;
    public static final int DISPLAY_ERROR_UNKOWN = 1;
    public static final int DISPLAY_FLAG_SECURE = 1;
    private final CloseGuard mGuard = CloseGuard.get();
    private final Handler mHandler;
    private final Listener mListener;
    private final String mOpPackageName;
    private long mPtr;

    public interface Listener {
        void onDisplayConnected(Surface surface, int i2, int i3, int i4, int i5);

        void onDisplayDisconnected();

        void onDisplayError(int i2);
    }

    private RemoteDisplay(Listener listener, Handler handler, String str) {
        this.mListener = listener;
        this.mHandler = handler;
        this.mOpPackageName = str;
    }

    public static RemoteDisplay listen(String str, Listener listener, Handler handler, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("iface must not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        if (handler == null) {
            throw new IllegalArgumentException("handler must not be null");
        }
        RemoteDisplay remoteDisplay = new RemoteDisplay(listener, handler, str2);
        remoteDisplay.startListening(str);
        return remoteDisplay;
    }

    private native void nativeDispose(long j2);

    private native long nativeListen(String str, String str2);

    private native void nativePause(long j2);

    private native void nativeResume(long j2);

    private void notifyDisplayConnected(final Surface surface, final int i2, final int i3, final int i4, final int i5) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.1
            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayConnected(surface, i2, i3, i4, i5);
            }
        });
    }

    private void notifyDisplayDisconnected() {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.2
            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayDisconnected();
            }
        });
    }

    private void notifyDisplayError(final int i2) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.3
            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayError(i2);
            }
        });
    }

    private void startListening(String str) {
        long jNativeListen = nativeListen(str, this.mOpPackageName);
        this.mPtr = jNativeListen;
        if (jNativeListen == 0) {
            throw new IllegalStateException(c.k("Could not start listening for remote display connection on \"", str, "\""));
        }
        this.mGuard.open("dispose");
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

    public void pause() {
        nativePause(this.mPtr);
    }

    public void resume() {
        nativeResume(this.mPtr);
    }

    private void dispose(boolean z2) {
        if (this.mPtr != 0) {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                if (z2) {
                    closeGuard.warnIfOpen();
                } else {
                    closeGuard.close();
                }
            }
            nativeDispose(this.mPtr);
            this.mPtr = 0L;
        }
    }
}
