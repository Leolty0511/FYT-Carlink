package android.app.trust;

import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.ArrayMap;

/* JADX INFO: loaded from: classes.dex */
public class TrustManager {
    private static final String DATA_FLAGS = "initiatedByUser";
    private static final int MSG_TRUST_CHANGED = 1;
    private static final int MSG_TRUST_MANAGED_CHANGED = 2;
    private static final String TAG = "TrustManager";
    private final ITrustManager mService;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: android.app.trust.TrustManager.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                ((TrustListener) message.obj).onTrustChanged(message.arg1 != 0, message.arg2, message.peekData() != null ? message.peekData().getInt(TrustManager.DATA_FLAGS) : 0);
            } else {
                if (i2 != 2) {
                    return;
                }
                ((TrustListener) message.obj).onTrustManagedChanged(message.arg1 != 0, message.arg2);
            }
        }
    };
    private final ArrayMap<TrustListener, ITrustListener> mTrustListeners = new ArrayMap<>();

    public interface TrustListener {
        void onTrustChanged(boolean z2, int i2, int i3);

        void onTrustManagedChanged(boolean z2, int i2);
    }

    public TrustManager(IBinder iBinder) {
        this.mService = ITrustManager.Stub.asInterface(iBinder);
    }

    public void clearAllFingerprints() {
        try {
            this.mService.clearAllFingerprints();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isTrustUsuallyManaged(int i2) {
        try {
            return this.mService.isTrustUsuallyManaged(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerTrustListener(final TrustListener trustListener) {
        try {
            ITrustListener.Stub stub = new ITrustListener.Stub() { // from class: android.app.trust.TrustManager.1
                @Override // android.app.trust.ITrustListener
                public void onTrustChanged(boolean z2, int i2, int i3) {
                    Message messageObtainMessage = TrustManager.this.mHandler.obtainMessage(1, z2 ? 1 : 0, i2, trustListener);
                    if (i3 != 0) {
                        messageObtainMessage.getData().putInt(TrustManager.DATA_FLAGS, i3);
                    }
                    messageObtainMessage.sendToTarget();
                }

                @Override // android.app.trust.ITrustListener
                public void onTrustManagedChanged(boolean z2, int i2) {
                    TrustManager.this.mHandler.obtainMessage(2, z2 ? 1 : 0, i2, trustListener).sendToTarget();
                }
            };
            this.mService.registerTrustListener(stub);
            this.mTrustListeners.put(trustListener, stub);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportEnabledTrustAgentsChanged(int i2) {
        try {
            this.mService.reportEnabledTrustAgentsChanged(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportKeyguardShowingChanged() {
        try {
            this.mService.reportKeyguardShowingChanged();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportUnlockAttempt(boolean z2, int i2) {
        try {
            this.mService.reportUnlockAttempt(z2, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportUnlockLockout(int i2, int i3) {
        try {
            this.mService.reportUnlockLockout(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setDeviceLockedForUser(int i2, boolean z2) {
        try {
            this.mService.setDeviceLockedForUser(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unlockedByFingerprintForUser(int i2) {
        try {
            this.mService.unlockedByFingerprintForUser(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterTrustListener(TrustListener trustListener) {
        ITrustListener iTrustListenerRemove = this.mTrustListeners.remove(trustListener);
        if (iTrustListenerRemove != null) {
            try {
                this.mService.unregisterTrustListener(iTrustListenerRemove);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }
}
