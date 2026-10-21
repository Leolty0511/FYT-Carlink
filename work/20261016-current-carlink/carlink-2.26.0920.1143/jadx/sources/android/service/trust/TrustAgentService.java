package android.service.trust;

import android.Manifest;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import android.util.Slog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TrustAgentService extends Service {
    private static final boolean DEBUG = false;
    private static final String EXTRA_TOKEN = "token";
    private static final String EXTRA_TOKEN_HANDLE = "token_handle";
    private static final String EXTRA_TOKEN_REMOVED_RESULT = "token_removed_result";
    private static final String EXTRA_TOKEN_STATE = "token_state";
    private static final String EXTRA_USER_HANDLE = "user_handle";
    public static final int FLAG_GRANT_TRUST_DISMISS_KEYGUARD = 2;
    public static final int FLAG_GRANT_TRUST_INITIATED_BY_USER = 1;
    private static final int MSG_CONFIGURE = 2;
    private static final int MSG_DEVICE_LOCKED = 4;
    private static final int MSG_DEVICE_UNLOCKED = 5;
    private static final int MSG_ESCROW_TOKEN_ADDED = 7;
    private static final int MSG_ESCROW_TOKEN_REMOVED = 9;
    private static final int MSG_ESCROW_TOKEN_STATE_RECEIVED = 8;
    private static final int MSG_TRUST_TIMEOUT = 3;
    private static final int MSG_UNLOCK_ATTEMPT = 1;
    private static final int MSG_UNLOCK_LOCKOUT = 6;
    public static final String SERVICE_INTERFACE = "android.service.trust.TrustAgentService";
    public static final int TOKEN_STATE_ACTIVE = 1;
    public static final int TOKEN_STATE_INACTIVE = 0;
    public static final String TRUST_AGENT_META_DATA = "android.service.trust.trustagent";
    private ITrustAgentServiceCallback mCallback;
    private boolean mManagingTrust;
    private Runnable mPendingGrantTrustTask;
    private final String TAG = "TrustAgentService[" + getClass().getSimpleName() + "]";
    private final Object mLock = new Object();
    private Handler mHandler = new Handler() { // from class: android.service.trust.TrustAgentService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    TrustAgentService.this.onUnlockAttempt(message.arg1 != 0);
                    return;
                case 2:
                    ConfigurationData configurationData = (ConfigurationData) message.obj;
                    boolean zOnConfigure = TrustAgentService.this.onConfigure(configurationData.options);
                    if (configurationData.token != null) {
                        try {
                            synchronized (TrustAgentService.this.mLock) {
                                TrustAgentService.this.mCallback.onConfigureCompleted(zOnConfigure, configurationData.token);
                                break;
                            }
                            return;
                        } catch (RemoteException unused) {
                            TrustAgentService.this.onError("calling onSetTrustAgentFeaturesEnabledCompleted()");
                            return;
                        }
                    }
                    return;
                case 3:
                    TrustAgentService.this.onTrustTimeout();
                    return;
                case 4:
                    TrustAgentService.this.onDeviceLocked();
                    return;
                case 5:
                    TrustAgentService.this.onDeviceUnlocked();
                    return;
                case 6:
                    TrustAgentService.this.onDeviceUnlockLockout(message.arg1);
                    return;
                case 7:
                    Bundle data = message.getData();
                    TrustAgentService.this.onEscrowTokenAdded(data.getByteArray("token"), data.getLong(TrustAgentService.EXTRA_TOKEN_HANDLE), (UserHandle) data.getParcelable(TrustAgentService.EXTRA_USER_HANDLE));
                    return;
                case 8:
                    Bundle data2 = message.getData();
                    TrustAgentService.this.onEscrowTokenStateReceived(data2.getLong(TrustAgentService.EXTRA_TOKEN_HANDLE), data2.getInt(TrustAgentService.EXTRA_TOKEN_STATE, 0));
                    return;
                case 9:
                    Bundle data3 = message.getData();
                    TrustAgentService.this.onEscrowTokenRemoved(data3.getLong(TrustAgentService.EXTRA_TOKEN_HANDLE), data3.getBoolean(TrustAgentService.EXTRA_TOKEN_REMOVED_RESULT));
                    return;
                default:
                    return;
            }
        }
    };

    public static final class ConfigurationData {
        final List<PersistableBundle> options;
        final IBinder token;

        public ConfigurationData(List<PersistableBundle> list, IBinder iBinder) {
            this.options = list;
            this.token = iBinder;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GrantTrustFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TokenState {
    }

    public final class TrustAgentServiceWrapper extends ITrustAgentService.Stub {
        private TrustAgentServiceWrapper() {
        }

        @Override // android.service.trust.ITrustAgentService
        public void onConfigure(List<PersistableBundle> list, IBinder iBinder) {
            TrustAgentService.this.mHandler.obtainMessage(2, new ConfigurationData(list, iBinder)).sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onDeviceLocked() {
            TrustAgentService.this.mHandler.obtainMessage(4).sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onDeviceUnlocked() {
            TrustAgentService.this.mHandler.obtainMessage(5).sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onEscrowTokenAdded(byte[] bArr, long j2, UserHandle userHandle) {
            Message messageObtainMessage = TrustAgentService.this.mHandler.obtainMessage(7);
            messageObtainMessage.getData().putByteArray("token", bArr);
            messageObtainMessage.getData().putLong(TrustAgentService.EXTRA_TOKEN_HANDLE, j2);
            messageObtainMessage.getData().putParcelable(TrustAgentService.EXTRA_USER_HANDLE, userHandle);
            messageObtainMessage.sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onEscrowTokenRemoved(long j2, boolean z2) {
            Message messageObtainMessage = TrustAgentService.this.mHandler.obtainMessage(9);
            messageObtainMessage.getData().putLong(TrustAgentService.EXTRA_TOKEN_HANDLE, j2);
            messageObtainMessage.getData().putBoolean(TrustAgentService.EXTRA_TOKEN_REMOVED_RESULT, z2);
            messageObtainMessage.sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onTokenStateReceived(long j2, int i2) {
            Message messageObtainMessage = TrustAgentService.this.mHandler.obtainMessage(8);
            messageObtainMessage.getData().putLong(TrustAgentService.EXTRA_TOKEN_HANDLE, j2);
            messageObtainMessage.getData().putInt(TrustAgentService.EXTRA_TOKEN_STATE, i2);
            messageObtainMessage.sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onTrustTimeout() {
            TrustAgentService.this.mHandler.sendEmptyMessage(3);
        }

        @Override // android.service.trust.ITrustAgentService
        public void onUnlockAttempt(boolean z2) {
            TrustAgentService.this.mHandler.obtainMessage(1, z2 ? 1 : 0, 0).sendToTarget();
        }

        @Override // android.service.trust.ITrustAgentService
        public void onUnlockLockout(int i2) {
            TrustAgentService.this.mHandler.obtainMessage(6, i2, 0).sendToTarget();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0033 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0014, B:9:0x002b, B:11:0x0033, B:12:0x0042, B:8:0x0024), top: B:17:0x0007, inners: #1 }] */
        @Override // android.service.trust.ITrustAgentService
        public void setCallback(ITrustAgentServiceCallback iTrustAgentServiceCallback) {
            synchronized (TrustAgentService.this.mLock) {
                TrustAgentService.this.mCallback = iTrustAgentServiceCallback;
                if (TrustAgentService.this.mManagingTrust) {
                    try {
                        TrustAgentService.this.mCallback.setManagingTrust(TrustAgentService.this.mManagingTrust);
                    } catch (RemoteException unused) {
                        TrustAgentService.this.onError("calling setManagingTrust()");
                    }
                    if (TrustAgentService.this.mPendingGrantTrustTask != null) {
                        TrustAgentService.this.mPendingGrantTrustTask.run();
                        TrustAgentService.this.mPendingGrantTrustTask = null;
                    }
                } else if (TrustAgentService.this.mPendingGrantTrustTask != null) {
                    TrustAgentService.this.mPendingGrantTrustTask.run();
                    TrustAgentService.this.mPendingGrantTrustTask = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(String str) {
        Slog.v(this.TAG, "Remote exception while " + str);
    }

    public final void addEscrowToken(byte[] bArr, UserHandle userHandle) {
        synchronized (this.mLock) {
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback == null) {
                Slog.w(this.TAG, "Cannot add escrow token if the agent is not connecting to framework");
                throw new IllegalStateException("Trust agent is not connected");
            }
            try {
                iTrustAgentServiceCallback.addEscrowToken(bArr, userHandle.getIdentifier());
            } catch (RemoteException unused) {
                onError("calling addEscrowToken");
            }
        }
    }

    @Deprecated
    public final void grantTrust(CharSequence charSequence, long j2, boolean z2) {
        grantTrust(charSequence, j2, z2 ? 1 : 0);
    }

    public final void isEscrowTokenActive(long j2, UserHandle userHandle) {
        synchronized (this.mLock) {
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback == null) {
                Slog.w(this.TAG, "Cannot add escrow token if the agent is not connecting to framework");
                throw new IllegalStateException("Trust agent is not connected");
            }
            try {
                iTrustAgentServiceCallback.isEscrowTokenActive(j2, userHandle.getIdentifier());
            } catch (RemoteException unused) {
                onError("calling isEscrowTokenActive");
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new TrustAgentServiceWrapper();
    }

    public boolean onConfigure(List<PersistableBundle> list) {
        return false;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ComponentName componentName = new ComponentName(this, getClass());
        try {
            if (Manifest.permission.BIND_TRUST_AGENT.equals(getPackageManager().getServiceInfo(componentName, 0).permission)) {
                return;
            }
            throw new IllegalStateException(componentName.flattenToShortString() + " is not declared with the permission \"android.permission.BIND_TRUST_AGENT\"");
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(this.TAG, "Can't get ServiceInfo for " + componentName.toShortString());
        }
    }

    public void onDeviceLocked() {
    }

    public void onDeviceUnlockLockout(long j2) {
    }

    public void onDeviceUnlocked() {
    }

    public void onEscrowTokenAdded(byte[] bArr, long j2, UserHandle userHandle) {
    }

    public void onEscrowTokenRemoved(long j2, boolean z2) {
    }

    public void onEscrowTokenStateReceived(long j2, int i2) {
    }

    public void onTrustTimeout() {
    }

    public void onUnlockAttempt(boolean z2) {
    }

    public final void removeEscrowToken(long j2, UserHandle userHandle) {
        synchronized (this.mLock) {
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback == null) {
                Slog.w(this.TAG, "Cannot add escrow token if the agent is not connecting to framework");
                throw new IllegalStateException("Trust agent is not connected");
            }
            try {
                iTrustAgentServiceCallback.removeEscrowToken(j2, userHandle.getIdentifier());
            } catch (RemoteException unused) {
                onError("callling removeEscrowToken");
            }
        }
    }

    public final void revokeTrust() {
        synchronized (this.mLock) {
            if (this.mPendingGrantTrustTask != null) {
                this.mPendingGrantTrustTask = null;
            }
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback != null) {
                try {
                    iTrustAgentServiceCallback.revokeTrust();
                } catch (RemoteException unused) {
                    onError("calling revokeTrust()");
                }
            }
        }
    }

    public final void setManagingTrust(boolean z2) {
        synchronized (this.mLock) {
            if (this.mManagingTrust != z2) {
                this.mManagingTrust = z2;
                ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
                if (iTrustAgentServiceCallback != null) {
                    try {
                        iTrustAgentServiceCallback.setManagingTrust(z2);
                    } catch (RemoteException unused) {
                        onError("calling setManagingTrust()");
                    }
                }
            }
        }
    }

    public final void unlockUserWithToken(long j2, byte[] bArr, UserHandle userHandle) {
        if (((UserManager) getSystemService("user")).isUserUnlocked()) {
            Slog.i(this.TAG, "User already unlocked");
            return;
        }
        synchronized (this.mLock) {
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback == null) {
                Slog.w(this.TAG, "Cannot add escrow token if the agent is not connecting to framework");
                throw new IllegalStateException("Trust agent is not connected");
            }
            try {
                iTrustAgentServiceCallback.unlockUserWithToken(j2, bArr, userHandle.getIdentifier());
            } catch (RemoteException unused) {
                onError("calling unlockUserWithToken");
            }
        }
    }

    public final void grantTrust(final CharSequence charSequence, final long j2, final int i2) {
        synchronized (this.mLock) {
            if (!this.mManagingTrust) {
                throw new IllegalStateException("Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first.");
            }
            ITrustAgentServiceCallback iTrustAgentServiceCallback = this.mCallback;
            if (iTrustAgentServiceCallback != null) {
                try {
                    iTrustAgentServiceCallback.grantTrust(charSequence.toString(), j2, i2);
                } catch (RemoteException unused) {
                    onError("calling enableTrust()");
                }
            } else {
                this.mPendingGrantTrustTask = new Runnable() { // from class: android.service.trust.TrustAgentService.2
                    @Override // java.lang.Runnable
                    public void run() {
                        TrustAgentService.this.grantTrust(charSequence, j2, i2);
                    }
                };
            }
        }
    }
}
