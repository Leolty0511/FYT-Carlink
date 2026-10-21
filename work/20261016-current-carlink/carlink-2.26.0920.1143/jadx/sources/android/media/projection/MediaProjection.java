package android.media.projection;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.media.AudioRecord;
import android.os.Handler;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;
import android.view.Surface;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaProjection {
    private static final String TAG = "MediaProjection";
    private final Map<Callback, CallbackRecord> mCallbacks = new ArrayMap();
    private final Context mContext;
    private final IMediaProjection mImpl;

    public static abstract class Callback {
        public void onStop() {
        }
    }

    public static final class CallbackRecord {
        private final Callback mCallback;
        private final Handler mHandler;

        public CallbackRecord(Callback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler;
        }

        public void onStop() {
            this.mHandler.post(new Runnable() { // from class: android.media.projection.MediaProjection.CallbackRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    CallbackRecord.this.mCallback.onStop();
                }
            });
        }
    }

    public final class MediaProjectionCallback extends IMediaProjectionCallback.Stub {
        private MediaProjectionCallback() {
        }

        @Override // android.media.projection.IMediaProjectionCallback
        public void onStop() {
            Iterator it = MediaProjection.this.mCallbacks.values().iterator();
            while (it.hasNext()) {
                ((CallbackRecord) it.next()).onStop();
            }
        }
    }

    public MediaProjection(Context context, IMediaProjection iMediaProjection) {
        this.mContext = context;
        this.mImpl = iMediaProjection;
        try {
            iMediaProjection.start(new MediaProjectionCallback());
        } catch (RemoteException e2) {
            throw new RuntimeException("Failed to start media projection", e2);
        }
    }

    public AudioRecord createAudioRecord(int i2, int i3, int i4, int i5) {
        return null;
    }

    public VirtualDisplay createVirtualDisplay(String str, int i2, int i3, int i4, boolean z2, Surface surface, VirtualDisplay.Callback callback, Handler handler) {
        return ((DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE)).createVirtualDisplay(this, str, i2, i3, i4, surface, (z2 ? 4 : 0) | 16 | 2, callback, handler, null);
    }

    public IMediaProjection getProjection() {
        return this.mImpl;
    }

    public void registerCallback(Callback callback, Handler handler) {
        if (callback == null) {
            throw new IllegalArgumentException("callback should not be null");
        }
        if (handler == null) {
            handler = new Handler();
        }
        this.mCallbacks.put(callback, new CallbackRecord(callback, handler));
    }

    public void stop() {
        try {
            this.mImpl.stop();
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to stop projection", e2);
        }
    }

    public void unregisterCallback(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback should not be null");
        }
        this.mCallbacks.remove(callback);
    }

    public VirtualDisplay createVirtualDisplay(String str, int i2, int i3, int i4, int i5, Surface surface, VirtualDisplay.Callback callback, Handler handler) {
        return ((DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE)).createVirtualDisplay(this, str, i2, i3, i4, surface, i5, callback, handler, null);
    }
}
