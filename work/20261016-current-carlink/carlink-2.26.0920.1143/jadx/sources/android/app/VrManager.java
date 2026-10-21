package android.app;

import android.content.ComponentName;
import android.os.Handler;
import android.os.RemoteException;
import android.service.vr.IPersistentVrStateCallbacks;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.util.ArrayMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class VrManager {
    private Map<VrStateCallback, CallbackEntry> mCallbackMap = new ArrayMap();
    private final IVrManager mService;

    public static class CallbackEntry {
        final VrStateCallback mCallback;
        final Handler mHandler;
        final IVrStateCallbacks mStateCallback = new AnonymousClass1();
        final IPersistentVrStateCallbacks mPersistentStateCallback = new AnonymousClass2();

        /* JADX INFO: renamed from: android.app.VrManager$CallbackEntry$1, reason: invalid class name */
        public class AnonymousClass1 extends IVrStateCallbacks.Stub {
            public AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onVrStateChanged$0(boolean z2) {
                CallbackEntry.this.mCallback.onVrStateChanged(z2);
            }

            @Override // android.service.vr.IVrStateCallbacks
            public void onVrStateChanged(boolean z2) {
                CallbackEntry.this.mHandler.post(new p(this, z2, 0));
            }
        }

        /* JADX INFO: renamed from: android.app.VrManager$CallbackEntry$2, reason: invalid class name */
        public class AnonymousClass2 extends IPersistentVrStateCallbacks.Stub {
            public AnonymousClass2() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPersistentVrStateChanged$0(boolean z2) {
                CallbackEntry.this.mCallback.onPersistentVrStateChanged(z2);
            }

            @Override // android.service.vr.IPersistentVrStateCallbacks
            public void onPersistentVrStateChanged(boolean z2) {
                CallbackEntry.this.mHandler.post(new p(this, z2, 1));
            }
        }

        public CallbackEntry(VrStateCallback vrStateCallback, Handler handler) {
            this.mCallback = vrStateCallback;
            this.mHandler = handler;
        }
    }

    public VrManager(IVrManager iVrManager) {
        this.mService = iVrManager;
    }

    public boolean getPersistentVrModeEnabled() {
        try {
            return this.mService.getPersistentVrModeEnabled();
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public boolean getVrModeEnabled() {
        try {
            return this.mService.getVrModeState();
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public void registerVrStateCallback(VrStateCallback vrStateCallback, Handler handler) {
        if (vrStateCallback == null || this.mCallbackMap.containsKey(vrStateCallback)) {
            return;
        }
        CallbackEntry callbackEntry = new CallbackEntry(vrStateCallback, handler);
        this.mCallbackMap.put(vrStateCallback, callbackEntry);
        try {
            this.mService.registerListener(callbackEntry.mStateCallback);
            this.mService.registerPersistentVrStateListener(callbackEntry.mPersistentStateCallback);
        } catch (RemoteException e2) {
            try {
                unregisterVrStateCallback(vrStateCallback);
            } catch (Exception unused) {
                e2.rethrowFromSystemServer();
            }
        }
    }

    public void setAndBindVrCompositor(ComponentName componentName) {
        try {
            this.mService.setAndBindCompositor(componentName == null ? null : componentName.flattenToString());
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
        }
    }

    public void setPersistentVrModeEnabled(boolean z2) {
        try {
            this.mService.setPersistentVrModeEnabled(z2);
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
        }
    }

    public void setVr2dDisplayProperties(Vr2dDisplayProperties vr2dDisplayProperties) {
        try {
            this.mService.setVr2dDisplayProperties(vr2dDisplayProperties);
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
        }
    }

    public void unregisterVrStateCallback(VrStateCallback vrStateCallback) {
        CallbackEntry callbackEntryRemove = this.mCallbackMap.remove(vrStateCallback);
        if (callbackEntryRemove != null) {
            try {
                this.mService.unregisterListener(callbackEntryRemove.mStateCallback);
            } catch (RemoteException unused) {
            }
            try {
                this.mService.unregisterPersistentVrStateListener(callbackEntryRemove.mPersistentStateCallback);
            } catch (RemoteException unused2) {
            }
        }
    }
}
