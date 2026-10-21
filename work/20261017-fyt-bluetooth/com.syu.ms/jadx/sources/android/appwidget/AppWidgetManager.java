package android.appwidget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.RemoteViews;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.WeakHashMap;
import k.b;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetManager {
    public static final String ACTION_APPWIDGET_BIND = "android.appwidget.action.APPWIDGET_BIND";
    public static final String ACTION_APPWIDGET_CONFIGURE = "android.appwidget.action.APPWIDGET_CONFIGURE";
    public static final String ACTION_APPWIDGET_DELETED = "android.appwidget.action.APPWIDGET_DELETED";
    public static final String ACTION_APPWIDGET_DISABLED = "android.appwidget.action.APPWIDGET_DISABLED";
    public static final String ACTION_APPWIDGET_ENABLED = "android.appwidget.action.APPWIDGET_ENABLED";
    public static final String ACTION_APPWIDGET_OPTIONS_CHANGED = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS";
    public static final String ACTION_APPWIDGET_PICK = "android.appwidget.action.APPWIDGET_PICK";
    public static final String ACTION_APPWIDGET_UPDATE = "android.appwidget.action.APPWIDGET_UPDATE";
    public static final String ACTION_KEYGUARD_APPWIDGET_PICK = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK";
    public static final String EXTRA_APPWIDGET_ID = "appWidgetId";
    public static final String EXTRA_APPWIDGET_IDS = "appWidgetIds";
    public static final String EXTRA_APPWIDGET_OPTIONS = "appWidgetOptions";
    public static final String EXTRA_APPWIDGET_PROVIDER = "appWidgetProvider";
    public static final String EXTRA_CATEGORY_FILTER = "categoryFilter";
    public static final String EXTRA_CUSTOM_EXTRAS = "customExtras";
    public static final String EXTRA_CUSTOM_INFO = "customInfo";
    public static final String EXTRA_CUSTOM_SORT = "customSort";
    public static final int INVALID_APPWIDGET_ID = 0;
    public static final String META_DATA_APPWIDGET_PROVIDER = "android.appwidget.provider";
    public static final String OPTION_APPWIDGET_HOST_CATEGORY = "appWidgetCategory";
    public static final String OPTION_APPWIDGET_MAX_HEIGHT = "appWidgetMaxHeight";
    public static final String OPTION_APPWIDGET_MAX_WIDTH = "appWidgetMaxWidth";
    public static final String OPTION_APPWIDGET_MIN_HEIGHT = "appWidgetMinHeight";
    public static final String OPTION_APPWIDGET_MIN_WIDTH = "appWidgetMinWidth";
    public static final String TAG = "AppWidgetManager";
    public static WeakHashMap<Context, WeakReference<AppWidgetManager>> sManagerCache = new WeakHashMap<>();
    public static b sService;
    public Context mContext;
    private DisplayMetrics mDisplayMetrics;

    private AppWidgetManager(Context context) {
        this.mContext = context;
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    public static AppWidgetManager getInstance(Context context) {
        AppWidgetManager appWidgetManager;
        synchronized (sManagerCache) {
            if (sService == null) {
                sService = b.a.J2(ServiceManager.getService(Context.APPWIDGET_SERVICE));
            }
            WeakReference<AppWidgetManager> weakReference = sManagerCache.get(context);
            appWidgetManager = weakReference != null ? weakReference.get() : null;
            if (appWidgetManager == null) {
                appWidgetManager = new AppWidgetManager(context);
                sManagerCache.put(context, new WeakReference<>(appWidgetManager));
            }
        }
        return appWidgetManager;
    }

    public void bindAppWidgetId(int i2, ComponentName componentName) {
        try {
            sService.y2(i2, componentName, null, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public boolean bindAppWidgetIdIfAllowed(int i2, ComponentName componentName) {
        Context context = this.mContext;
        if (context == null) {
            return false;
        }
        try {
            return sService.Y0(context.getPackageName(), i2, componentName, null, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void bindRemoteViewsService(int i2, Intent intent, IBinder iBinder, UserHandle userHandle) {
        try {
            sService.l0(i2, intent, iBinder, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public int[] getAppWidgetIds(ComponentName componentName) {
        try {
            return sService.J0(componentName, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public AppWidgetProviderInfo getAppWidgetInfo(int i2) {
        try {
            AppWidgetProviderInfo appWidgetProviderInfoW0 = sService.W0(i2, this.mContext.getUserId());
            if (appWidgetProviderInfoW0 != null) {
                appWidgetProviderInfoW0.minWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfoW0.minWidth, this.mDisplayMetrics);
                appWidgetProviderInfoW0.minHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfoW0.minHeight, this.mDisplayMetrics);
                appWidgetProviderInfoW0.minResizeWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfoW0.minResizeWidth, this.mDisplayMetrics);
                appWidgetProviderInfoW0.minResizeHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfoW0.minResizeHeight, this.mDisplayMetrics);
            }
            return appWidgetProviderInfoW0;
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public Bundle getAppWidgetOptions(int i2) {
        try {
            return sService.S0(i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public List<AppWidgetProviderInfo> getInstalledProviders() {
        return getInstalledProviders(1);
    }

    public boolean hasBindAppWidgetPermission(String str) {
        try {
            return sService.v(str, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void notifyAppWidgetViewDataChanged(int[] iArr, int i2) {
        try {
            sService.O1(iArr, i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void partiallyUpdateAppWidget(int[] iArr, RemoteViews remoteViews) {
        try {
            sService.d1(iArr, remoteViews, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void setBindAppWidgetPermission(String str, boolean z2) {
        try {
            sService.K1(str, z2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void unbindRemoteViewsService(int i2, Intent intent, UserHandle userHandle) {
        try {
            sService.t2(i2, intent, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void updateAppWidget(int[] iArr, RemoteViews remoteViews) {
        try {
            sService.d0(iArr, remoteViews, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void updateAppWidgetOptions(int i2, Bundle bundle) {
        try {
            sService.k(i2, bundle, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public List<AppWidgetProviderInfo> getInstalledProviders(int i2) {
        try {
            List<AppWidgetProviderInfo> listG = sService.G(i2, this.mContext.getUserId());
            for (AppWidgetProviderInfo appWidgetProviderInfo : listG) {
                appWidgetProviderInfo.minWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minWidth, this.mDisplayMetrics);
                appWidgetProviderInfo.minHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minHeight, this.mDisplayMetrics);
                appWidgetProviderInfo.minResizeWidth = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minResizeWidth, this.mDisplayMetrics);
                appWidgetProviderInfo.minResizeHeight = TypedValue.complexToDimensionPixelSize(appWidgetProviderInfo.minResizeHeight, this.mDisplayMetrics);
            }
            return listG;
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void bindAppWidgetId(int i2, ComponentName componentName, Bundle bundle) {
        try {
            sService.y2(i2, componentName, bundle, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void notifyAppWidgetViewDataChanged(int i2, int i3) {
        notifyAppWidgetViewDataChanged(new int[]{i2}, i3);
    }

    public void partiallyUpdateAppWidget(int i2, RemoteViews remoteViews) {
        partiallyUpdateAppWidget(new int[]{i2}, remoteViews);
    }

    public void updateAppWidget(int i2, RemoteViews remoteViews) {
        updateAppWidget(new int[]{i2}, remoteViews);
    }

    public boolean bindAppWidgetIdIfAllowed(int i2, ComponentName componentName, Bundle bundle) {
        Context context = this.mContext;
        if (context == null) {
            return false;
        }
        try {
            return sService.Y0(context.getPackageName(), i2, componentName, bundle, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }

    public void updateAppWidget(ComponentName componentName, RemoteViews remoteViews) {
        try {
            sService.L(componentName, remoteViews, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("system server dead?", e2);
        }
    }
}
