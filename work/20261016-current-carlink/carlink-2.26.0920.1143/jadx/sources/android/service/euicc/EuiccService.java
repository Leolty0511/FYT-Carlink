package android.service.euicc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.euicc.DownloadableSubscription;
import android.telephony.euicc.EuiccInfo;
import android.util.ArraySet;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EuiccService extends Service {
    public static final String ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS";
    public static final String ACTION_PROVISION_EMBEDDED_SUBSCRIPTION = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION";
    public static final String ACTION_RESOLVE_DEACTIVATE_SIM = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM";
    public static final String ACTION_RESOLVE_NO_PRIVILEGES = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES";
    public static final String CATEGORY_EUICC_UI = "android.service.euicc.category.EUICC_UI";
    public static final String EUICC_SERVICE_INTERFACE = "android.service.euicc.EuiccService";
    public static final String EXTRA_RESOLUTION_CALLING_PACKAGE = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE";
    public static final ArraySet<String> RESOLUTION_ACTIONS;
    public static final String RESOLUTION_EXTRA_CONSENT = "consent";
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_MUST_DEACTIVATE_SIM = -1;
    public static final int RESULT_OK = 0;
    private ThreadPoolExecutor mExecutor;
    private final IEuiccService.Stub mStubWrapper = new IEuiccServiceWrapper();

    public class IEuiccServiceWrapper extends IEuiccService.Stub {
        private IEuiccServiceWrapper() {
        }

        @Override // android.service.euicc.IEuiccService
        public void deleteSubscription(final int i2, final String str, final IDeleteSubscriptionCallback iDeleteSubscriptionCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iDeleteSubscriptionCallback.onComplete(EuiccService.this.onDeleteSubscription(i2, str));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void downloadSubscription(final int i2, final DownloadableSubscription downloadableSubscription, final boolean z2, final boolean z3, final IDownloadSubscriptionCallback iDownloadSubscriptionCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iDownloadSubscriptionCallback.onComplete(EuiccService.this.onDownloadSubscription(i2, downloadableSubscription, z2, z3));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void eraseSubscriptions(final int i2, final IEraseSubscriptionsCallback iEraseSubscriptionsCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iEraseSubscriptionsCallback.onComplete(EuiccService.this.onEraseSubscriptions(i2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void getDefaultDownloadableSubscriptionList(final int i2, final boolean z2, final IGetDefaultDownloadableSubscriptionListCallback iGetDefaultDownloadableSubscriptionListCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iGetDefaultDownloadableSubscriptionListCallback.onComplete(EuiccService.this.onGetDefaultDownloadableSubscriptionList(i2, z2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void getDownloadableSubscriptionMetadata(final int i2, final DownloadableSubscription downloadableSubscription, final boolean z2, final IGetDownloadableSubscriptionMetadataCallback iGetDownloadableSubscriptionMetadataCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iGetDownloadableSubscriptionMetadataCallback.onComplete(EuiccService.this.onGetDownloadableSubscriptionMetadata(i2, downloadableSubscription, z2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void getEid(final int i2, final IGetEidCallback iGetEidCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iGetEidCallback.onSuccess(EuiccService.this.onGetEid(i2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void getEuiccInfo(final int i2, final IGetEuiccInfoCallback iGetEuiccInfoCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iGetEuiccInfoCallback.onSuccess(EuiccService.this.onGetEuiccInfo(i2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void getEuiccProfileInfoList(final int i2, final IGetEuiccProfileInfoListCallback iGetEuiccProfileInfoListCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iGetEuiccProfileInfoListCallback.onComplete(EuiccService.this.onGetEuiccProfileInfoList(i2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void retainSubscriptionsForFactoryReset(final int i2, final IRetainSubscriptionsForFactoryResetCallback iRetainSubscriptionsForFactoryResetCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iRetainSubscriptionsForFactoryResetCallback.onComplete(EuiccService.this.onRetainSubscriptionsForFactoryReset(i2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void switchToSubscription(final int i2, final String str, final boolean z2, final ISwitchToSubscriptionCallback iSwitchToSubscriptionCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iSwitchToSubscriptionCallback.onComplete(EuiccService.this.onSwitchToSubscription(i2, str, z2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        @Override // android.service.euicc.IEuiccService
        public void updateSubscriptionNickname(final int i2, final String str, final String str2, final IUpdateSubscriptionNicknameCallback iUpdateSubscriptionNicknameCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iUpdateSubscriptionNicknameCallback.onComplete(EuiccService.this.onUpdateSubscriptionNickname(i2, str, str2));
                    } catch (RemoteException unused) {
                    }
                }
            });
        }
    }

    static {
        ArraySet<String> arraySet = new ArraySet<>();
        RESOLUTION_ACTIONS = arraySet;
        arraySet.add(ACTION_RESOLVE_DEACTIVATE_SIM);
        arraySet.add(ACTION_RESOLVE_NO_PRIVILEGES);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mStubWrapper;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: android.service.euicc.EuiccService.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "EuiccService #" + this.mCount.getAndIncrement());
            }
        });
        this.mExecutor = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public abstract int onDeleteSubscription(int i2, String str);

    @Override // android.app.Service
    public void onDestroy() {
        this.mExecutor.shutdownNow();
        super.onDestroy();
    }

    public abstract int onDownloadSubscription(int i2, DownloadableSubscription downloadableSubscription, boolean z2, boolean z3);

    public abstract int onEraseSubscriptions(int i2);

    public abstract GetDefaultDownloadableSubscriptionListResult onGetDefaultDownloadableSubscriptionList(int i2, boolean z2);

    public abstract GetDownloadableSubscriptionMetadataResult onGetDownloadableSubscriptionMetadata(int i2, DownloadableSubscription downloadableSubscription, boolean z2);

    public abstract String onGetEid(int i2);

    public abstract EuiccInfo onGetEuiccInfo(int i2);

    public abstract GetEuiccProfileInfoListResult onGetEuiccProfileInfoList(int i2);

    public abstract int onRetainSubscriptionsForFactoryReset(int i2);

    public abstract int onSwitchToSubscription(int i2, String str, boolean z2);

    public abstract int onUpdateSubscriptionNickname(int i2, String str, String str2);
}
