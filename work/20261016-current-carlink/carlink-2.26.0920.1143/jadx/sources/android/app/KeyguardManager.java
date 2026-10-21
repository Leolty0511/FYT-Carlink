package android.app;

import android.app.trust.ITrustManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.persistentdata.IPersistentDataBlockService;
import android.util.Log;
import android.view.IOnKeyguardExitResult;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.widget.LockPatternUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KeyguardManager {
    public static final String ACTION_CONFIRM_DEVICE_CREDENTIAL = "android.app.action.CONFIRM_DEVICE_CREDENTIAL";
    public static final String ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER = "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER";
    public static final String ACTION_CONFIRM_FRP_CREDENTIAL = "android.app.action.CONFIRM_FRP_CREDENTIAL";
    public static final String EXTRA_ALTERNATE_BUTTON_LABEL = "android.app.extra.ALTERNATE_BUTTON_LABEL";
    public static final String EXTRA_DESCRIPTION = "android.app.extra.DESCRIPTION";
    public static final String EXTRA_TITLE = "android.app.extra.TITLE";
    public static final int RESULT_ALTERNATE = 1;
    private static final String TAG = "KeyguardManager";
    private final Context mContext;
    private final IWindowManager mWM = WindowManagerGlobal.getWindowManagerService();
    private final IActivityManager mAm = ActivityManager.getService();
    private final ITrustManager mTrustManager = ITrustManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.TRUST_SERVICE));

    public static abstract class KeyguardDismissCallback {
        public void onDismissCancelled() {
        }

        public void onDismissError() {
        }

        public void onDismissSucceeded() {
        }
    }

    @Deprecated
    public class KeyguardLock {
        private final String mTag;
        private final IBinder mToken = new Binder();

        public KeyguardLock(String str) {
            this.mTag = str;
        }

        public void disableKeyguard() {
            try {
                KeyguardManager.this.mWM.disableKeyguard(this.mToken, this.mTag);
            } catch (RemoteException unused) {
            }
        }

        public void reenableKeyguard() {
            try {
                KeyguardManager.this.mWM.reenableKeyguard(this.mToken);
            } catch (RemoteException unused) {
            }
        }
    }

    @Deprecated
    public interface OnKeyguardExitResult {
        void onKeyguardExitResult(boolean z2);
    }

    public KeyguardManager(Context context) {
        this.mContext = context;
    }

    private String getSettingsPackageForIntent(Intent intent) {
        List<ResolveInfo> listQueryIntentActivities = this.mContext.getPackageManager().queryIntentActivities(intent, 1048576);
        return listQueryIntentActivities.size() > 0 ? listQueryIntentActivities.get(0).activityInfo.packageName : "com.android.settings";
    }

    public Intent createConfirmDeviceCredentialIntent(CharSequence charSequence, CharSequence charSequence2) {
        if (!isDeviceSecure()) {
            return null;
        }
        Intent intent = new Intent(ACTION_CONFIRM_DEVICE_CREDENTIAL);
        intent.putExtra(EXTRA_TITLE, charSequence);
        intent.putExtra(EXTRA_DESCRIPTION, charSequence2);
        intent.setPackage(getSettingsPackageForIntent(intent));
        return intent;
    }

    public Intent createConfirmFactoryResetCredentialIntent(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        if (!LockPatternUtils.frpCredentialEnabled(this.mContext)) {
            Log.w(TAG, "Factory reset credentials not supported.");
            return null;
        }
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0) {
            Log.e(TAG, "Factory reset credential cannot be verified after provisioning.");
            return null;
        }
        try {
            IPersistentDataBlockService iPersistentDataBlockServiceAsInterface = IPersistentDataBlockService.Stub.asInterface(ServiceManager.getService(Context.PERSISTENT_DATA_BLOCK_SERVICE));
            if (iPersistentDataBlockServiceAsInterface == null) {
                Log.e(TAG, "No persistent data block service");
                return null;
            }
            if (!iPersistentDataBlockServiceAsInterface.hasFrpCredentialHandle()) {
                Log.i(TAG, "The persistent data block does not have a factory reset credential.");
                return null;
            }
            Intent intent = new Intent(ACTION_CONFIRM_FRP_CREDENTIAL);
            intent.putExtra(EXTRA_TITLE, charSequence);
            intent.putExtra(EXTRA_DESCRIPTION, charSequence2);
            intent.putExtra(EXTRA_ALTERNATE_BUTTON_LABEL, charSequence3);
            intent.setPackage(getSettingsPackageForIntent(intent));
            return intent;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void dismissKeyguard(Activity activity, KeyguardDismissCallback keyguardDismissCallback, Handler handler) {
        requestDismissKeyguard(activity, keyguardDismissCallback);
    }

    @Deprecated
    public void exitKeyguardSecurely(final OnKeyguardExitResult onKeyguardExitResult) {
        try {
            this.mWM.exitKeyguardSecurely(new IOnKeyguardExitResult.Stub() { // from class: android.app.KeyguardManager.2
                @Override // android.view.IOnKeyguardExitResult
                public void onKeyguardExitResult(boolean z2) {
                    OnKeyguardExitResult onKeyguardExitResult2 = onKeyguardExitResult;
                    if (onKeyguardExitResult2 != null) {
                        onKeyguardExitResult2.onKeyguardExitResult(z2);
                    }
                }
            });
        } catch (RemoteException unused) {
        }
    }

    public boolean inKeyguardRestrictedInputMode() {
        try {
            return this.mWM.inKeyguardRestrictedInputMode();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isDeviceLocked() {
        return isDeviceLocked(UserHandle.myUserId());
    }

    public boolean isDeviceSecure() {
        return isDeviceSecure(UserHandle.myUserId());
    }

    public boolean isKeyguardLocked() {
        try {
            return this.mWM.isKeyguardLocked();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isKeyguardSecure() {
        try {
            return this.mWM.isKeyguardSecure();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public KeyguardLock newKeyguardLock(String str) {
        return new KeyguardLock(str);
    }

    public void requestDismissKeyguard(final Activity activity, final KeyguardDismissCallback keyguardDismissCallback) {
        try {
            this.mAm.dismissKeyguard(activity.getActivityToken(), new IKeyguardDismissCallback.Stub() { // from class: android.app.KeyguardManager.1
                @Override // com.android.internal.policy.IKeyguardDismissCallback
                public void onDismissCancelled() {
                    if (keyguardDismissCallback == null || activity.isDestroyed()) {
                        return;
                    }
                    Handler handler = activity.mHandler;
                    KeyguardDismissCallback keyguardDismissCallback2 = keyguardDismissCallback;
                    keyguardDismissCallback2.getClass();
                    handler.post(new k(keyguardDismissCallback2, 1));
                }

                @Override // com.android.internal.policy.IKeyguardDismissCallback
                public void onDismissError() {
                    if (keyguardDismissCallback == null || activity.isDestroyed()) {
                        return;
                    }
                    Handler handler = activity.mHandler;
                    KeyguardDismissCallback keyguardDismissCallback2 = keyguardDismissCallback;
                    keyguardDismissCallback2.getClass();
                    handler.post(new k(keyguardDismissCallback2, 0));
                }

                @Override // com.android.internal.policy.IKeyguardDismissCallback
                public void onDismissSucceeded() {
                    if (keyguardDismissCallback == null || activity.isDestroyed()) {
                        return;
                    }
                    Handler handler = activity.mHandler;
                    KeyguardDismissCallback keyguardDismissCallback2 = keyguardDismissCallback;
                    keyguardDismissCallback2.getClass();
                    handler.post(new k(keyguardDismissCallback2, 2));
                }
            });
        } catch (RemoteException e2) {
            Log.i(TAG, "Failed to dismiss keyguard: " + e2);
        }
    }

    public boolean isDeviceLocked(int i2) {
        try {
            return this.mTrustManager.isDeviceLocked(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isDeviceSecure(int i2) {
        try {
            return this.mTrustManager.isDeviceSecure(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public Intent createConfirmDeviceCredentialIntent(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (!isDeviceSecure(i2)) {
            return null;
        }
        Intent intent = new Intent(ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER);
        intent.putExtra(EXTRA_TITLE, charSequence);
        intent.putExtra(EXTRA_DESCRIPTION, charSequence2);
        intent.putExtra(Intent.EXTRA_USER_ID, i2);
        intent.setPackage(getSettingsPackageForIntent(intent));
        return intent;
    }
}
