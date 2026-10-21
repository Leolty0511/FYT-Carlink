package android.accessibilityservice;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityButtonController {
    private static final String LOG_TAG = "A11yButtonController";
    private ArrayMap<AccessibilityButtonCallback, Handler> mCallbacks;
    private final Object mLock = new Object();
    private final IAccessibilityServiceConnection mServiceConnection;

    public static abstract class AccessibilityButtonCallback {
        public void onAvailabilityChanged(AccessibilityButtonController accessibilityButtonController, boolean z2) {
        }

        public void onClicked(AccessibilityButtonController accessibilityButtonController) {
        }
    }

    public AccessibilityButtonController(IAccessibilityServiceConnection iAccessibilityServiceConnection) {
        this.mServiceConnection = iAccessibilityServiceConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchAccessibilityButtonAvailabilityChanged$1(AccessibilityButtonCallback accessibilityButtonCallback, boolean z2) {
        accessibilityButtonCallback.onAvailabilityChanged(this, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchAccessibilityButtonClicked$0(AccessibilityButtonCallback accessibilityButtonCallback) {
        accessibilityButtonCallback.onClicked(this);
    }

    public void dispatchAccessibilityButtonAvailabilityChanged(final boolean z2) {
        synchronized (this.mLock) {
            ArrayMap<AccessibilityButtonCallback, Handler> arrayMap = this.mCallbacks;
            if (arrayMap != null && !arrayMap.isEmpty()) {
                ArrayMap arrayMap2 = new ArrayMap(this.mCallbacks);
                int size = arrayMap2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    final AccessibilityButtonCallback accessibilityButtonCallback = (AccessibilityButtonCallback) arrayMap2.keyAt(i2);
                    ((Handler) arrayMap2.valueAt(i2)).post(new Runnable() { // from class: android.accessibilityservice.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5b.lambda$dispatchAccessibilityButtonAvailabilityChanged$1(accessibilityButtonCallback, z2);
                        }
                    });
                }
                return;
            }
            Slog.w(LOG_TAG, "Received accessibility button availability change with no callbacks!");
        }
    }

    public void dispatchAccessibilityButtonClicked() {
        synchronized (this.mLock) {
            ArrayMap<AccessibilityButtonCallback, Handler> arrayMap = this.mCallbacks;
            if (arrayMap != null && !arrayMap.isEmpty()) {
                ArrayMap arrayMap2 = new ArrayMap(this.mCallbacks);
                int size = arrayMap2.size();
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    ((Handler) arrayMap2.valueAt(i3)).post(new a(this, (AccessibilityButtonCallback) arrayMap2.keyAt(i3), i2));
                }
                return;
            }
            Slog.w(LOG_TAG, "Received accessibility button click with no callbacks!");
        }
    }

    public boolean isAccessibilityButtonAvailable() {
        try {
            return this.mServiceConnection.isAccessibilityButtonAvailable();
        } catch (RemoteException e2) {
            Slog.w(LOG_TAG, "Failed to get accessibility button availability.", e2);
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback) {
        registerAccessibilityButtonCallback(accessibilityButtonCallback, new Handler(Looper.getMainLooper()));
    }

    public void unregisterAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback) {
        Preconditions.checkNotNull(accessibilityButtonCallback);
        synchronized (this.mLock) {
            ArrayMap<AccessibilityButtonCallback, Handler> arrayMap = this.mCallbacks;
            if (arrayMap == null) {
                return;
            }
            int iIndexOfKey = arrayMap.indexOfKey(accessibilityButtonCallback);
            if (iIndexOfKey >= 0) {
                this.mCallbacks.removeAt(iIndexOfKey);
            }
        }
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback, Handler handler) {
        Preconditions.checkNotNull(accessibilityButtonCallback);
        Preconditions.checkNotNull(handler);
        synchronized (this.mLock) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new ArrayMap<>();
            }
            this.mCallbacks.put(accessibilityButtonCallback, handler);
        }
    }
}
