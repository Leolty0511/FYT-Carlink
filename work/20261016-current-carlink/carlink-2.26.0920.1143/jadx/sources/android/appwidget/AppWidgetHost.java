package android.appwidget;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.android.internal.appwidget.IAppWidgetHost;
import com.android.internal.appwidget.IAppWidgetService;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetHost {
    static final int HANDLE_PROVIDERS_CHANGED = 3;
    static final int HANDLE_PROVIDER_CHANGED = 2;
    static final int HANDLE_UPDATE = 1;
    static final int HANDLE_VIEW_DATA_CHANGED = 4;
    static IAppWidgetService sService = null;
    static boolean sServiceInitialized = false;
    static final Object sServiceLock = new Object();
    private final Callbacks mCallbacks;
    private String mContextOpPackageName;
    private DisplayMetrics mDisplayMetrics;
    private final Handler mHandler;
    private final int mHostId;
    private RemoteViews.OnClickHandler mOnClickHandler;
    private final SparseArray<AppWidgetHostView> mViews;

    public static class Callbacks extends IAppWidgetHost.Stub {
        private final WeakReference<Handler> mWeakHandler;

        public Callbacks(Handler handler) {
            this.mWeakHandler = new WeakReference<>(handler);
        }

        private static boolean isLocalBinder() {
            return Process.myPid() == Binder.getCallingPid();
        }

        @Override // com.android.internal.appwidget.IAppWidgetHost
        public void providerChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
            if (isLocalBinder() && appWidgetProviderInfo != null) {
                appWidgetProviderInfo = appWidgetProviderInfo.m16clone();
            }
            Handler handler = this.mWeakHandler.get();
            if (handler == null) {
                return;
            }
            handler.obtainMessage(2, i2, 0, appWidgetProviderInfo).sendToTarget();
        }

        @Override // com.android.internal.appwidget.IAppWidgetHost
        public void providersChanged() {
            Handler handler = this.mWeakHandler.get();
            if (handler == null) {
                return;
            }
            handler.obtainMessage(3).sendToTarget();
        }

        @Override // com.android.internal.appwidget.IAppWidgetHost
        public void updateAppWidget(int i2, RemoteViews remoteViews) {
            if (isLocalBinder() && remoteViews != null) {
                remoteViews = remoteViews.mo11clone();
            }
            Handler handler = this.mWeakHandler.get();
            if (handler == null) {
                return;
            }
            handler.obtainMessage(1, i2, 0, remoteViews).sendToTarget();
        }

        @Override // com.android.internal.appwidget.IAppWidgetHost
        public void viewDataChanged(int i2, int i3) {
            Handler handler = this.mWeakHandler.get();
            if (handler == null) {
                return;
            }
            handler.obtainMessage(4, i2, i3).sendToTarget();
        }
    }

    public class UpdateHandler extends Handler {
        public UpdateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                AppWidgetHost.this.updateAppWidgetView(message.arg1, (RemoteViews) message.obj);
                return;
            }
            if (i2 == 2) {
                AppWidgetHost.this.onProviderChanged(message.arg1, (AppWidgetProviderInfo) message.obj);
            } else if (i2 == 3) {
                AppWidgetHost.this.onProvidersChanged();
            } else {
                if (i2 != 4) {
                    return;
                }
                AppWidgetHost.this.viewDataChanged(message.arg1, message.arg2);
            }
        }
    }

    public AppWidgetHost(Context context, int i2) {
        this(context, i2, null, context.getMainLooper());
    }

    private static void bindService(Context context) {
        synchronized (sServiceLock) {
            if (sServiceInitialized) {
                return;
            }
            sServiceInitialized = true;
            if (context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_APP_WIDGETS)) {
                sService = IAppWidgetService.Stub.asInterface(ServiceManager.getService(Context.APPWIDGET_SERVICE));
            }
        }
    }

    public static void deleteAllHosts() {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.deleteAllHosts();
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public int allocateAppWidgetId() {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return -1;
        }
        try {
            return iAppWidgetService.allocateAppWidgetId(this.mContextOpPackageName, this.mHostId);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void clearViews() {
        synchronized (this.mViews) {
            this.mViews.clear();
        }
    }

    public final AppWidgetHostView createView(Context context, int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        if (sService == null) {
            return null;
        }
        AppWidgetHostView appWidgetHostViewOnCreateView = onCreateView(context, i2, appWidgetProviderInfo);
        appWidgetHostViewOnCreateView.setOnClickHandler(this.mOnClickHandler);
        appWidgetHostViewOnCreateView.setAppWidget(i2, appWidgetProviderInfo);
        synchronized (this.mViews) {
            this.mViews.put(i2, appWidgetHostViewOnCreateView);
        }
        try {
            appWidgetHostViewOnCreateView.updateAppWidget(sService.getAppWidgetViews(this.mContextOpPackageName, i2));
            return appWidgetHostViewOnCreateView;
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void deleteAppWidgetId(int i2) {
        if (sService == null) {
            return;
        }
        synchronized (this.mViews) {
            this.mViews.remove(i2);
            try {
                sService.deleteAppWidgetId(this.mContextOpPackageName, i2);
            } catch (RemoteException e2) {
                throw new RuntimeException("system server dead?", e2);
            }
        }
    }

    public void deleteHost() {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.deleteHost(this.mContextOpPackageName, this.mHostId);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public int[] getAppWidgetIds() {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return new int[0];
        }
        try {
            return iAppWidgetService.getAppWidgetIdsForHost(this.mContextOpPackageName, this.mHostId);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public AppWidgetHostView onCreateView(Context context, int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        return new AppWidgetHostView(context, this.mOnClickHandler);
    }

    public void onProviderChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        AppWidgetHostView appWidgetHostView;
        appWidgetProviderInfo.updateDimensions(this.mDisplayMetrics);
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(i2);
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.resetAppWidget(appWidgetProviderInfo);
        }
    }

    public void onProvidersChanged() {
    }

    public final void startAppWidgetConfigureActivityForResult(Activity activity, int i2, int i3, int i4, Bundle bundle) {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            IntentSender intentSenderCreateAppWidgetConfigIntentSender = iAppWidgetService.createAppWidgetConfigIntentSender(this.mContextOpPackageName, i2, i3);
            if (intentSenderCreateAppWidgetConfigIntentSender == null) {
                throw new ActivityNotFoundException();
            }
            activity.startIntentSenderForResult(intentSenderCreateAppWidgetConfigIntentSender, i4, null, 0, 0, 0, bundle);
        } catch (IntentSender.SendIntentException unused) {
            throw new ActivityNotFoundException();
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void startListening() {
        int[] iArr;
        int i2;
        if (sService == null) {
            return;
        }
        synchronized (this.mViews) {
            int size = this.mViews.size();
            iArr = new int[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.mViews.keyAt(i3);
            }
        }
        try {
            List list = sService.startListening(this.mCallbacks, this.mContextOpPackageName, this.mHostId, iArr).getList();
            int size2 = list.size();
            for (i2 = 0; i2 < size2; i2++) {
                PendingHostUpdate pendingHostUpdate = (PendingHostUpdate) list.get(i2);
                int i4 = pendingHostUpdate.type;
                if (i4 == 0) {
                    updateAppWidgetView(pendingHostUpdate.appWidgetId, pendingHostUpdate.views);
                } else if (i4 == 1) {
                    onProviderChanged(pendingHostUpdate.appWidgetId, pendingHostUpdate.widgetInfo);
                } else if (i4 == 2) {
                    viewDataChanged(pendingHostUpdate.appWidgetId, pendingHostUpdate.viewId);
                }
            }
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void stopListening() {
        IAppWidgetService iAppWidgetService = sService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.stopListening(this.mContextOpPackageName, this.mHostId);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void updateAppWidgetView(int i2, RemoteViews remoteViews) {
        AppWidgetHostView appWidgetHostView;
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(i2);
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.updateAppWidget(remoteViews);
        }
    }

    public void viewDataChanged(int i2, int i3) {
        AppWidgetHostView appWidgetHostView;
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(i2);
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.viewDataChanged(i3);
        }
    }

    public AppWidgetHost(Context context, int i2, RemoteViews.OnClickHandler onClickHandler, Looper looper) {
        this.mViews = new SparseArray<>();
        this.mContextOpPackageName = context.getOpPackageName();
        this.mHostId = i2;
        this.mOnClickHandler = onClickHandler;
        UpdateHandler updateHandler = new UpdateHandler(looper);
        this.mHandler = updateHandler;
        this.mCallbacks = new Callbacks(updateHandler);
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
        bindService(context);
    }
}
