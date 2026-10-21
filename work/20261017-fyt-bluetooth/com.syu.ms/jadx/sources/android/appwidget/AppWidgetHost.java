package android.appwidget;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.HashMap;
import k.a;
import k.b;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetHost {
    public static final int HANDLE_PROVIDERS_CHANGED = 3;
    public static final int HANDLE_PROVIDER_CHANGED = 2;
    public static final int HANDLE_UPDATE = 1;
    public static final int HANDLE_VIEW_DATA_CHANGED = 4;
    public static b sService;
    public static final Object sServiceLock = new Object();
    public Callbacks mCallbacks;
    public Context mContext;
    private DisplayMetrics mDisplayMetrics;
    public Handler mHandler;
    public int mHostId;
    private RemoteViews.OnClickHandler mOnClickHandler;
    public String mPackageName;
    public final HashMap<Integer, AppWidgetHostView> mViews;

    public class Callbacks extends a.AbstractBinderC0061a {
        public Callbacks() {
        }

        @Override // k.a
        public void providerChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo, int i3) {
            if (AppWidgetHost.this.isLocalBinder() && appWidgetProviderInfo != null) {
                appWidgetProviderInfo = appWidgetProviderInfo.m7clone();
            }
            AppWidgetHost.this.mHandler.obtainMessage(2, i2, i3, appWidgetProviderInfo).sendToTarget();
        }

        @Override // k.a
        public void providersChanged(int i2) {
            AppWidgetHost.this.mHandler.obtainMessage(3, i2, 0).sendToTarget();
        }

        @Override // k.a
        public void updateAppWidget(int i2, RemoteViews remoteViews, int i3) {
            if (AppWidgetHost.this.isLocalBinder() && remoteViews != null) {
                remoteViews = remoteViews.m22clone();
                remoteViews.setUser(new UserHandle(i3));
            }
            AppWidgetHost.this.mHandler.obtainMessage(1, i2, i3, remoteViews).sendToTarget();
        }

        @Override // k.a
        public void viewDataChanged(int i2, int i3, int i4) {
            AppWidgetHost.this.mHandler.obtainMessage(4, i2, i3, Integer.valueOf(i4)).sendToTarget();
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
                AppWidgetHost.this.updateAppWidgetView(message.arg1, (RemoteViews) message.obj, message.arg2);
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
                AppWidgetHost.this.viewDataChanged(message.arg1, message.arg2, ((Integer) message.obj).intValue());
            }
        }
    }

    public AppWidgetHost(Context context, int i2) {
        this(context, i2, null, context.getMainLooper());
    }

    public static int allocateAppWidgetIdForPackage(int i2, int i3, String str) {
        checkCallerIsSystem();
        try {
            if (sService == null) {
                bindService();
            }
            return sService.W1(str, i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    private static void bindService() {
        synchronized (sServiceLock) {
            if (sService == null) {
                sService = b.a.J2(ServiceManager.getService(Context.APPWIDGET_SERVICE));
            }
        }
    }

    private static void checkCallerIsSystem() {
        int iMyUid = Process.myUid();
        if (UserHandle.getAppId(iMyUid) == 1000 || iMyUid == 0) {
            return;
        }
        throw new SecurityException("Disallowed call for uid " + iMyUid);
    }

    public static void deleteAllHosts() {
        deleteAllHosts(UserHandle.myUserId());
    }

    public static void deleteAppWidgetIdForSystem(int i2, int i3) {
        checkCallerIsSystem();
        try {
            if (sService == null) {
                bindService();
            }
            sService.M0(i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLocalBinder() {
        return Process.myPid() == Binder.getCallingPid();
    }

    public int allocateAppWidgetId() {
        try {
            if (this.mPackageName == null) {
                this.mPackageName = this.mContext.getPackageName();
            }
            return sService.W1(this.mPackageName, this.mHostId, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void clearViews() {
        this.mViews.clear();
    }

    public final AppWidgetHostView createView(Context context, int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        int userId = this.mContext.getUserId();
        AppWidgetHostView appWidgetHostViewOnCreateView = onCreateView(this.mContext, i2, appWidgetProviderInfo);
        appWidgetHostViewOnCreateView.setUserId(userId);
        appWidgetHostViewOnCreateView.setOnClickHandler(this.mOnClickHandler);
        appWidgetHostViewOnCreateView.setAppWidget(i2, appWidgetProviderInfo);
        synchronized (this.mViews) {
            this.mViews.put(Integer.valueOf(i2), appWidgetHostViewOnCreateView);
        }
        try {
            RemoteViews remoteViewsV1 = sService.v1(i2, userId);
            if (remoteViewsV1 != null) {
                remoteViewsV1.setUser(new UserHandle(this.mContext.getUserId()));
            }
            appWidgetHostViewOnCreateView.updateAppWidget(remoteViewsV1);
            return appWidgetHostViewOnCreateView;
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void deleteAppWidgetId(int i2) {
        synchronized (this.mViews) {
            this.mViews.remove(Integer.valueOf(i2));
            try {
                sService.M0(i2, this.mContext.getUserId());
            } catch (RemoteException e2) {
                throw new RuntimeException("system server dead?", e2);
            }
        }
    }

    public void deleteHost() {
        try {
            sService.T1(this.mHostId, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public int[] getAppWidgetIds() {
        try {
            if (sService == null) {
                bindService();
            }
            return sService.L1(this.mHostId, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public AppWidgetHostView onCreateView(Context context, int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        return new AppWidgetHostView(context, this.mOnClickHandler);
    }

    public void onProviderChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        AppWidgetHostView appWidgetHostView;
        appWidgetProviderInfo.minWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minWidth, this.mDisplayMetrics);
        appWidgetProviderInfo.minHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minHeight, this.mDisplayMetrics);
        appWidgetProviderInfo.minResizeWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minResizeWidth, this.mDisplayMetrics);
        appWidgetProviderInfo.minResizeHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minResizeHeight, this.mDisplayMetrics);
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(Integer.valueOf(i2));
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.resetAppWidget(appWidgetProviderInfo);
        }
    }

    public void onProvidersChanged() {
    }

    public void startListening() {
        ArrayList arrayList = new ArrayList();
        int userId = this.mContext.getUserId();
        try {
            if (this.mPackageName == null) {
                this.mPackageName = this.mContext.getPackageName();
            }
            int[] iArrZ1 = sService.Z1(this.mCallbacks, this.mPackageName, this.mHostId, arrayList, userId);
            int length = iArrZ1.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (arrayList.get(i2) != null) {
                    ((RemoteViews) arrayList.get(i2)).setUser(new UserHandle(userId));
                }
                updateAppWidgetView(iArrZ1[i2], (RemoteViews) arrayList.get(i2), userId);
            }
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void stopListening() {
        try {
            sService.X1(this.mHostId, this.mContext.getUserId());
            clearViews();
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void updateAppWidgetView(int i2, RemoteViews remoteViews, int i3) {
        AppWidgetHostView appWidgetHostView;
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(Integer.valueOf(i2));
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.updateAppWidget(remoteViews);
        }
    }

    public void viewDataChanged(int i2, int i3, int i4) {
        AppWidgetHostView appWidgetHostView;
        synchronized (this.mViews) {
            appWidgetHostView = this.mViews.get(Integer.valueOf(i2));
        }
        if (appWidgetHostView != null) {
            appWidgetHostView.viewDataChanged(i3);
        }
    }

    public AppWidgetHost(Context context, int i2, RemoteViews.OnClickHandler onClickHandler, Looper looper) {
        this.mCallbacks = new Callbacks();
        this.mViews = new HashMap<>();
        this.mContext = context;
        this.mHostId = i2;
        this.mOnClickHandler = onClickHandler;
        this.mHandler = new UpdateHandler(looper);
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
        bindService();
    }

    public static void deleteAllHosts(int i2) {
        try {
            sService.y(i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }
}
