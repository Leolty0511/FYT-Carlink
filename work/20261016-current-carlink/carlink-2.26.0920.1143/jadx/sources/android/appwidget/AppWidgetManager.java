package android.appwidget;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.widget.RemoteViews;
import com.android.internal.appwidget.IAppWidgetService;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetManager {
    public static final String ACTION_APPWIDGET_BIND = "android.appwidget.action.APPWIDGET_BIND";
    public static final String ACTION_APPWIDGET_CONFIGURE = "android.appwidget.action.APPWIDGET_CONFIGURE";
    public static final String ACTION_APPWIDGET_DELETED = "android.appwidget.action.APPWIDGET_DELETED";
    public static final String ACTION_APPWIDGET_DISABLED = "android.appwidget.action.APPWIDGET_DISABLED";
    public static final String ACTION_APPWIDGET_ENABLED = "android.appwidget.action.APPWIDGET_ENABLED";
    public static final String ACTION_APPWIDGET_HOST_RESTORED = "android.appwidget.action.APPWIDGET_HOST_RESTORED";
    public static final String ACTION_APPWIDGET_OPTIONS_CHANGED = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS";
    public static final String ACTION_APPWIDGET_PICK = "android.appwidget.action.APPWIDGET_PICK";
    public static final String ACTION_APPWIDGET_RESTORED = "android.appwidget.action.APPWIDGET_RESTORED";
    public static final String ACTION_APPWIDGET_UPDATE = "android.appwidget.action.APPWIDGET_UPDATE";
    public static final String ACTION_KEYGUARD_APPWIDGET_PICK = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK";
    public static final String EXTRA_APPWIDGET_ID = "appWidgetId";
    public static final String EXTRA_APPWIDGET_IDS = "appWidgetIds";
    public static final String EXTRA_APPWIDGET_OLD_IDS = "appWidgetOldIds";
    public static final String EXTRA_APPWIDGET_OPTIONS = "appWidgetOptions";
    public static final String EXTRA_APPWIDGET_PREVIEW = "appWidgetPreview";
    public static final String EXTRA_APPWIDGET_PROVIDER = "appWidgetProvider";
    public static final String EXTRA_APPWIDGET_PROVIDER_PROFILE = "appWidgetProviderProfile";
    public static final String EXTRA_CATEGORY_FILTER = "categoryFilter";
    public static final String EXTRA_CUSTOM_EXTRAS = "customExtras";
    public static final String EXTRA_CUSTOM_INFO = "customInfo";
    public static final String EXTRA_CUSTOM_SORT = "customSort";
    public static final String EXTRA_HOST_ID = "hostId";
    public static final int INVALID_APPWIDGET_ID = 0;
    public static final String META_DATA_APPWIDGET_PROVIDER = "android.appwidget.provider";
    public static final String OPTION_APPWIDGET_HOST_CATEGORY = "appWidgetCategory";
    public static final String OPTION_APPWIDGET_MAX_HEIGHT = "appWidgetMaxHeight";
    public static final String OPTION_APPWIDGET_MAX_WIDTH = "appWidgetMaxWidth";
    public static final String OPTION_APPWIDGET_MIN_HEIGHT = "appWidgetMinHeight";
    public static final String OPTION_APPWIDGET_MIN_WIDTH = "appWidgetMinWidth";
    private final DisplayMetrics mDisplayMetrics;
    private final String mPackageName;
    private final IAppWidgetService mService;

    public AppWidgetManager(Context context, IAppWidgetService iAppWidgetService) {
        this.mPackageName = context.getOpPackageName();
        this.mService = iAppWidgetService;
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    public static AppWidgetManager getInstance(Context context) {
        return (AppWidgetManager) context.getSystemService(Context.APPWIDGET_SERVICE);
    }

    public void bindAppWidgetId(int i2, ComponentName componentName) {
        if (this.mService == null) {
            return;
        }
        bindAppWidgetId(i2, componentName, null);
    }

    public boolean bindAppWidgetIdIfAllowed(int i2, ComponentName componentName) {
        if (this.mService == null) {
            return false;
        }
        return bindAppWidgetIdIfAllowed(i2, UserHandle.myUserId(), componentName, (Bundle) null);
    }

    public void bindRemoteViewsService(String str, int i2, Intent intent, IBinder iBinder) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.bindRemoteViewsService(str, i2, intent, iBinder);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getAppWidgetIds(ComponentName componentName) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return new int[0];
        }
        try {
            return iAppWidgetService.getAppWidgetIds(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AppWidgetProviderInfo getAppWidgetInfo(int i2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return null;
        }
        try {
            AppWidgetProviderInfo appWidgetInfo = iAppWidgetService.getAppWidgetInfo(this.mPackageName, i2);
            if (appWidgetInfo != null) {
                appWidgetInfo.updateDimensions(this.mDisplayMetrics);
            }
            return appWidgetInfo;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Bundle getAppWidgetOptions(int i2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return Bundle.EMPTY;
        }
        try {
            return iAppWidgetService.getAppWidgetOptions(this.mPackageName, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<AppWidgetProviderInfo> getInstalledProviders() {
        return this.mService == null ? Collections.emptyList() : getInstalledProvidersForProfile(1, null, null);
    }

    public List<AppWidgetProviderInfo> getInstalledProvidersForPackage(String str, UserHandle userHandle) {
        if (str != null) {
            return this.mService == null ? Collections.emptyList() : getInstalledProvidersForProfile(1, userHandle, str);
        }
        throw new NullPointerException("A non-null package must be passed to this method. If you want all widgets regardless of package, see getInstalledProvidersForProfile(UserHandle)");
    }

    public List<AppWidgetProviderInfo> getInstalledProvidersForProfile(UserHandle userHandle) {
        return this.mService == null ? Collections.emptyList() : getInstalledProvidersForProfile(1, userHandle, null);
    }

    public boolean hasBindAppWidgetPermission(String str, int i2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return false;
        }
        try {
            return iAppWidgetService.hasBindAppWidgetPermission(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isBoundWidgetPackage(String str, int i2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return false;
        }
        try {
            return iAppWidgetService.isBoundWidgetPackage(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isRequestPinAppWidgetSupported() {
        try {
            return this.mService.isRequestPinAppWidgetSupported();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notifyAppWidgetViewDataChanged(int[] iArr, int i2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.notifyAppWidgetViewDataChanged(this.mPackageName, iArr, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void partiallyUpdateAppWidget(int[] iArr, RemoteViews remoteViews) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.partiallyUpdateAppWidgetIds(this.mPackageName, iArr, remoteViews);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean requestPinAppWidget(ComponentName componentName, PendingIntent pendingIntent) {
        return requestPinAppWidget(componentName, null, pendingIntent);
    }

    public void setBindAppWidgetPermission(String str, boolean z2) {
        if (this.mService == null) {
            return;
        }
        setBindAppWidgetPermission(str, UserHandle.myUserId(), z2);
    }

    public void unbindRemoteViewsService(String str, int i2, Intent intent) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.unbindRemoteViewsService(str, i2, intent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateAppWidget(int[] iArr, RemoteViews remoteViews) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.updateAppWidgetIds(this.mPackageName, iArr, remoteViews);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateAppWidgetOptions(int i2, Bundle bundle) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.updateAppWidgetOptions(this.mPackageName, i2, bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean requestPinAppWidget(ComponentName componentName, Bundle bundle, PendingIntent pendingIntent) {
        try {
            return this.mService.requestPinAppWidget(this.mPackageName, componentName, bundle, pendingIntent == null ? null : pendingIntent.getIntentSender());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void bindAppWidgetId(int i2, ComponentName componentName, Bundle bundle) {
        if (this.mService == null) {
            return;
        }
        bindAppWidgetIdIfAllowed(i2, Process.myUserHandle(), componentName, bundle);
    }

    public boolean bindAppWidgetIdIfAllowed(int i2, ComponentName componentName, Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        return bindAppWidgetIdIfAllowed(i2, UserHandle.myUserId(), componentName, bundle);
    }

    public void setBindAppWidgetPermission(String str, int i2, boolean z2) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.setBindAppWidgetPermission(str, i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<AppWidgetProviderInfo> getInstalledProviders(int i2) {
        if (this.mService == null) {
            return Collections.emptyList();
        }
        return getInstalledProvidersForProfile(i2, null, null);
    }

    public List<AppWidgetProviderInfo> getInstalledProvidersForProfile(int i2, UserHandle userHandle, String str) {
        if (this.mService == null) {
            return Collections.emptyList();
        }
        if (userHandle == null) {
            userHandle = Process.myUserHandle();
        }
        try {
            ParceledListSlice installedProvidersForProfile = this.mService.getInstalledProvidersForProfile(i2, userHandle.getIdentifier(), str);
            if (installedProvidersForProfile == null) {
                return Collections.emptyList();
            }
            Iterator it = installedProvidersForProfile.getList().iterator();
            while (it.hasNext()) {
                ((AppWidgetProviderInfo) it.next()).updateDimensions(this.mDisplayMetrics);
            }
            return installedProvidersForProfile.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasBindAppWidgetPermission(String str) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return false;
        }
        try {
            return iAppWidgetService.hasBindAppWidgetPermission(str, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notifyAppWidgetViewDataChanged(int i2, int i3) {
        if (this.mService == null) {
            return;
        }
        notifyAppWidgetViewDataChanged(new int[]{i2}, i3);
    }

    public void partiallyUpdateAppWidget(int i2, RemoteViews remoteViews) {
        if (this.mService == null) {
            return;
        }
        partiallyUpdateAppWidget(new int[]{i2}, remoteViews);
    }

    public void updateAppWidget(int i2, RemoteViews remoteViews) {
        if (this.mService == null) {
            return;
        }
        updateAppWidget(new int[]{i2}, remoteViews);
    }

    public boolean bindAppWidgetIdIfAllowed(int i2, UserHandle userHandle, ComponentName componentName, Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        return bindAppWidgetIdIfAllowed(i2, userHandle.getIdentifier(), componentName, bundle);
    }

    public void updateAppWidget(ComponentName componentName, RemoteViews remoteViews) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return;
        }
        try {
            iAppWidgetService.updateAppWidgetProvider(componentName, remoteViews);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private boolean bindAppWidgetIdIfAllowed(int i2, int i3, ComponentName componentName, Bundle bundle) {
        IAppWidgetService iAppWidgetService = this.mService;
        if (iAppWidgetService == null) {
            return false;
        }
        try {
            return iAppWidgetService.bindAppWidgetId(this.mPackageName, i2, i3, componentName, bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
