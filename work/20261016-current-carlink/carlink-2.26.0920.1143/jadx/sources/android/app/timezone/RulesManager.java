package android.app.timezone;

import android.content.Context;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class RulesManager {
    private static final boolean DEBUG = false;
    public static final int ERROR_OPERATION_IN_PROGRESS = 1;
    public static final int ERROR_UNKNOWN_FAILURE = 2;
    public static final int SUCCESS = 0;
    private static final String TAG = "timezone.RulesManager";
    private final Context mContext;
    private final IRulesManager mIRulesManager = IRulesManager.Stub.asInterface(ServiceManager.getService(Context.TIME_ZONE_RULES_MANAGER_SERVICE));

    public class CallbackWrapper extends ICallback.Stub {
        final Callback mCallback;
        final Handler mHandler;

        public CallbackWrapper(Context context, Callback callback) {
            this.mCallback = callback;
            this.mHandler = new Handler(context.getMainLooper());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinished$0(int i2) {
            this.mCallback.onFinished(i2);
        }

        @Override // android.app.timezone.ICallback
        public void onFinished(final int i2) {
            RulesManager.logDebug("mCallback.onFinished(status), status=" + i2);
            this.mHandler.post(new Runnable() { // from class: android.app.timezone.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f53b.lambda$onFinished$0(i2);
                }
            });
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResultCode {
    }

    public RulesManager(Context context) {
        this.mContext = context;
    }

    public static void logDebug(String str) {
    }

    public RulesState getRulesState() {
        try {
            logDebug("sIRulesManager.getRulesState()");
            RulesState rulesState = this.mIRulesManager.getRulesState();
            logDebug("sIRulesManager.getRulesState() returned " + rulesState);
            return rulesState;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int requestInstall(ParcelFileDescriptor parcelFileDescriptor, byte[] bArr, Callback callback) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(this.mContext, callback);
        try {
            logDebug("sIRulesManager.requestInstall()");
            return this.mIRulesManager.requestInstall(parcelFileDescriptor, bArr, callbackWrapper);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestNothing(byte[] bArr, boolean z2) {
        try {
            logDebug("sIRulesManager.requestNothing() with token=" + Arrays.toString(bArr));
            this.mIRulesManager.requestNothing(bArr, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int requestUninstall(byte[] bArr, Callback callback) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(this.mContext, callback);
        try {
            logDebug("sIRulesManager.requestUninstall()");
            return this.mIRulesManager.requestUninstall(bArr, callbackWrapper);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
