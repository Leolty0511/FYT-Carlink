package android.accessibilityservice;

import android.os.Handler;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class FingerprintGestureController {
    public static final int FINGERPRINT_GESTURE_SWIPE_DOWN = 8;
    public static final int FINGERPRINT_GESTURE_SWIPE_LEFT = 2;
    public static final int FINGERPRINT_GESTURE_SWIPE_RIGHT = 1;
    public static final int FINGERPRINT_GESTURE_SWIPE_UP = 4;
    private static final String LOG_TAG = "FingerprintGestureController";
    private final IAccessibilityServiceConnection mAccessibilityServiceConnection;
    private final Object mLock = new Object();
    private final ArrayMap<FingerprintGestureCallback, Handler> mCallbackHandlerMap = new ArrayMap<>(1);

    public static abstract class FingerprintGestureCallback {
        public void onGestureDetected(int i2) {
        }

        public void onGestureDetectionAvailabilityChanged(boolean z2) {
        }
    }

    public FingerprintGestureController(IAccessibilityServiceConnection iAccessibilityServiceConnection) {
        this.mAccessibilityServiceConnection = iAccessibilityServiceConnection;
    }

    public boolean isGestureDetectionAvailable() {
        try {
            return this.mAccessibilityServiceConnection.isFingerprintGestureDetectionAvailable();
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Failed to check if fingerprint gestures are active", e2);
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public void onGesture(int i2) {
        ArrayMap arrayMap;
        synchronized (this.mLock) {
            arrayMap = new ArrayMap(this.mCallbackHandlerMap);
        }
        int size = arrayMap.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            FingerprintGestureCallback fingerprintGestureCallback = (FingerprintGestureCallback) arrayMap.keyAt(i4);
            Handler handler = (Handler) arrayMap.valueAt(i4);
            if (handler != null) {
                handler.post(new e(fingerprintGestureCallback, i2, i3));
            } else {
                fingerprintGestureCallback.onGestureDetected(i2);
            }
        }
    }

    public void onGestureDetectionActiveChanged(boolean z2) {
        ArrayMap arrayMap;
        synchronized (this.mLock) {
            arrayMap = new ArrayMap(this.mCallbackHandlerMap);
        }
        int size = arrayMap.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            FingerprintGestureCallback fingerprintGestureCallback = (FingerprintGestureCallback) arrayMap.keyAt(i3);
            Handler handler = (Handler) arrayMap.valueAt(i3);
            if (handler != null) {
                handler.post(new d(i2, z2, fingerprintGestureCallback));
            } else {
                fingerprintGestureCallback.onGestureDetectionAvailabilityChanged(z2);
            }
        }
    }

    public void registerFingerprintGestureCallback(FingerprintGestureCallback fingerprintGestureCallback, Handler handler) {
        synchronized (this.mLock) {
            this.mCallbackHandlerMap.put(fingerprintGestureCallback, handler);
        }
    }

    public void unregisterFingerprintGestureCallback(FingerprintGestureCallback fingerprintGestureCallback) {
        synchronized (this.mLock) {
            this.mCallbackHandlerMap.remove(fingerprintGestureCallback);
        }
    }
}
