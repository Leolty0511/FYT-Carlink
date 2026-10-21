package android.telephony.euicc;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.telephony.euicc.IEuiccController;

/* JADX INFO: loaded from: classes2.dex */
public class EuiccManager {
    public static final String ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS";
    public static final String ACTION_PROVISION_EMBEDDED_SUBSCRIPTION = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION";
    public static final String ACTION_RESOLVE_ERROR = "android.telephony.euicc.action.RESOLVE_ERROR";
    public static final int EMBEDDED_SUBSCRIPTION_RESULT_ERROR = 2;
    public static final int EMBEDDED_SUBSCRIPTION_RESULT_OK = 0;
    public static final int EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR = 1;
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE";
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION";
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS";
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION";
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT";
    public static final String EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT";
    public static final String EXTRA_FORCE_PROVISION = "android.telephony.euicc.extra.FORCE_PROVISION";
    public static final String META_DATA_CARRIER_ICON = "android.telephony.euicc.carriericon";
    private final Context mContext;
    private final IEuiccController mController = IEuiccController.Stub.asInterface(ServiceManager.getService("econtroller"));

    public EuiccManager(Context context) {
        this.mContext = context;
    }

    private static void sendUnavailableError(PendingIntent pendingIntent) {
        try {
            pendingIntent.send(2);
        } catch (PendingIntent.CanceledException unused) {
        }
    }

    public void continueOperation(Intent intent, Bundle bundle) {
        if (isEnabled()) {
            try {
                this.mController.continueOperation(intent, bundle);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        } else {
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT);
            if (pendingIntent != null) {
                sendUnavailableError(pendingIntent);
            }
        }
    }

    public void deleteSubscription(int i2, PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.deleteSubscription(i2, this.mContext.getOpPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void downloadSubscription(DownloadableSubscription downloadableSubscription, boolean z2, PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.downloadSubscription(downloadableSubscription, z2, this.mContext.getOpPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void eraseSubscriptions(PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.eraseSubscriptions(pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void getDefaultDownloadableSubscriptionList(PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.getDefaultDownloadableSubscriptionList(this.mContext.getOpPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void getDownloadableSubscriptionMetadata(DownloadableSubscription downloadableSubscription, PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.getDownloadableSubscriptionMetadata(downloadableSubscription, this.mContext.getOpPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getEid() {
        if (!isEnabled()) {
            return null;
        }
        try {
            return this.mController.getEid();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public EuiccInfo getEuiccInfo() {
        if (!isEnabled()) {
            return null;
        }
        try {
            return this.mController.getEuiccInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isEnabled() {
        return this.mController != null;
    }

    public void retainSubscriptionsForFactoryReset(PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.retainSubscriptionsForFactoryReset(pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startResolutionActivity(Activity activity, int i2, Intent intent, PendingIntent pendingIntent) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent2 = (PendingIntent) intent.getParcelableExtra(EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT);
        if (pendingIntent2 == null) {
            throw new IllegalArgumentException("Invalid result intent");
        }
        Intent intent2 = new Intent();
        intent2.putExtra(EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT, pendingIntent);
        activity.startIntentSenderForResult(pendingIntent2.getIntentSender(), i2, intent2, 0, 0, 0);
    }

    public void switchToSubscription(int i2, PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.switchToSubscription(i2, this.mContext.getOpPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateSubscriptionNickname(int i2, String str, PendingIntent pendingIntent) {
        if (!isEnabled()) {
            sendUnavailableError(pendingIntent);
            return;
        }
        try {
            this.mController.updateSubscriptionNickname(i2, str, pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
