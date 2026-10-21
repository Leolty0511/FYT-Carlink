package android.service.notification;

import android.app.INotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ConditionProviderService extends Service {
    public static final String EXTRA_RULE_ID = "android.service.notification.extra.RULE_ID";
    public static final String META_DATA_CONFIGURATION_ACTIVITY = "android.service.zen.automatic.configurationActivity";
    public static final String META_DATA_RULE_INSTANCE_LIMIT = "android.service.zen.automatic.ruleInstanceLimit";
    public static final String META_DATA_RULE_TYPE = "android.service.zen.automatic.ruleType";
    public static final String SERVICE_INTERFACE = "android.service.notification.ConditionProviderService";
    private final String TAG = "ConditionProviderService[" + getClass().getSimpleName() + "]";
    private final H mHandler = new H();
    private INotificationManager mNoMan;
    private Provider mProvider;

    public final class H extends Handler {
        private static final int ON_CONNECTED = 1;
        private static final int ON_SUBSCRIBE = 3;
        private static final int ON_UNSUBSCRIBE = 4;

        private H() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (ConditionProviderService.this.isBound()) {
                String str = null;
                try {
                    int i2 = message.what;
                    if (i2 == 1) {
                        str = "onConnected";
                        ConditionProviderService.this.onConnected();
                    } else if (i2 == 3) {
                        str = "onSubscribe";
                        ConditionProviderService.this.onSubscribe((Uri) message.obj);
                    } else if (i2 == 4) {
                        str = "onUnsubscribe";
                        ConditionProviderService.this.onUnsubscribe((Uri) message.obj);
                    }
                } catch (Throwable th) {
                    Log.w(ConditionProviderService.this.TAG, "Error running " + str, th);
                }
            }
        }
    }

    public final class Provider extends IConditionProvider.Stub {
        private Provider() {
        }

        @Override // android.service.notification.IConditionProvider
        public void onConnected() {
            ConditionProviderService.this.mHandler.obtainMessage(1).sendToTarget();
        }

        @Override // android.service.notification.IConditionProvider
        public void onSubscribe(Uri uri) {
            ConditionProviderService.this.mHandler.obtainMessage(3, uri).sendToTarget();
        }

        @Override // android.service.notification.IConditionProvider
        public void onUnsubscribe(Uri uri) {
            ConditionProviderService.this.mHandler.obtainMessage(4, uri).sendToTarget();
        }
    }

    private final INotificationManager getNotificationInterface() {
        if (this.mNoMan == null) {
            this.mNoMan = INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE));
        }
        return this.mNoMan;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBound() {
        if (this.mProvider != null) {
            return true;
        }
        Log.w(this.TAG, "Condition provider service not yet bound.");
        return false;
    }

    public static final void requestRebind(ComponentName componentName) {
        try {
            INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE)).requestBindProvider(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public final void notifyCondition(Condition condition) {
        if (condition == null) {
            return;
        }
        notifyConditions(condition);
    }

    public final void notifyConditions(Condition... conditionArr) {
        if (!isBound() || conditionArr == null) {
            return;
        }
        try {
            getNotificationInterface().notifyConditions(getPackageName(), this.mProvider, conditionArr);
        } catch (RemoteException e2) {
            Log.v(this.TAG, "Unable to contact notification manager", e2);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.mProvider == null) {
            this.mProvider = new Provider();
        }
        return this.mProvider;
    }

    public abstract void onConnected();

    public void onRequestConditions(int i2) {
    }

    public abstract void onSubscribe(Uri uri);

    public abstract void onUnsubscribe(Uri uri);

    public final void requestUnbind() {
        try {
            getNotificationInterface().requestUnbindProvider(this.mProvider);
            this.mProvider = null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
