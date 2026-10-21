package android.companion;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import com.android.internal.util.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CompanionDeviceManager {
    public static final String COMPANION_DEVICE_DISCOVERY_PACKAGE_NAME = "com.android.companiondevicemanager";
    private static final boolean DEBUG = false;
    public static final String EXTRA_DEVICE = "android.companion.extra.DEVICE";
    private static final String LOG_TAG = "CompanionDeviceManager";
    private final Context mContext;
    private final ICompanionDeviceManager mService;

    public static abstract class Callback {
        public abstract void onDeviceFound(IntentSender intentSender);

        public abstract void onFailure(CharSequence charSequence);
    }

    public class CallbackProxy extends IFindDeviceCallback.Stub implements Application.ActivityLifecycleCallbacks {
        private Callback mCallback;
        private Handler mHandler;
        private AssociationRequest mRequest;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFailure$1(CharSequence charSequence) {
            Callback callback = this.mCallback;
            if (callback == null) {
                return;
            }
            callback.onFailure(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSuccess$0(PendingIntent pendingIntent) {
            Callback callback = this.mCallback;
            if (callback == null) {
                return;
            }
            callback.onDeviceFound(pendingIntent.getIntentSender());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity != CompanionDeviceManager.this.getActivity()) {
                return;
            }
            try {
                CompanionDeviceManager.this.mService.stopScan(this.mRequest, this, CompanionDeviceManager.this.getCallingPackage());
            } catch (RemoteException e2) {
                e2.rethrowFromSystemServer();
            }
            CompanionDeviceManager.this.getActivity().getApplication().unregisterActivityLifecycleCallbacks(this);
            this.mCallback = null;
            this.mHandler = null;
            this.mRequest = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.companion.IFindDeviceCallback
        public void onFailure(CharSequence charSequence) {
            Handler handler = this.mHandler;
            if (handler == null) {
                return;
            }
            handler.post(new a(this, charSequence, 1));
        }

        @Override // android.companion.IFindDeviceCallback
        public void onSuccess(PendingIntent pendingIntent) {
            Handler handler = this.mHandler;
            if (handler == null) {
                return;
            }
            handler.post(new a(this, pendingIntent, 0));
        }

        private CallbackProxy(AssociationRequest associationRequest, Callback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler;
            this.mRequest = associationRequest;
            CompanionDeviceManager.this.getActivity().getApplication().registerActivityLifecycleCallbacks(this);
        }
    }

    public CompanionDeviceManager(ICompanionDeviceManager iCompanionDeviceManager, Context context) {
        this.mService = iCompanionDeviceManager;
        this.mContext = context;
    }

    private boolean checkFeaturePresent() {
        return this.mService != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity getActivity() {
        return (Activity) this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCallingPackage() {
        return this.mContext.getPackageName();
    }

    public void associate(AssociationRequest associationRequest, Callback callback, Handler handler) {
        if (checkFeaturePresent()) {
            Preconditions.checkNotNull(associationRequest, "Request cannot be null");
            Preconditions.checkNotNull(callback, "Callback cannot be null");
            try {
                this.mService.associate(associationRequest, new CallbackProxy(associationRequest, callback, Handler.mainIfNull(handler)), getCallingPackage());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void disassociate(String str) {
        if (checkFeaturePresent()) {
            try {
                this.mService.disassociate(str, getCallingPackage());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public List<String> getAssociations() {
        if (!checkFeaturePresent()) {
            return Collections.emptyList();
        }
        try {
            return this.mService.getAssociations(getCallingPackage(), this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasNotificationAccess(ComponentName componentName) {
        if (!checkFeaturePresent()) {
            return false;
        }
        try {
            return this.mService.hasNotificationAccess(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestNotificationAccess(ComponentName componentName) {
        if (checkFeaturePresent()) {
            try {
                this.mContext.startIntentSender(this.mService.requestNotificationAccess(componentName).getIntentSender(), null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e2) {
                throw new RuntimeException(e2);
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }
    }
}
