package android.app;

import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Slog;
import q.a;

/* JADX INFO: loaded from: classes.dex */
public class StatusBarManager {
    public static final int DISABLE_BACK = 4194304;
    public static final int DISABLE_CLOCK = 8388608;
    public static final int DISABLE_EXPAND = 65536;
    public static final int DISABLE_HOME = 2097152;
    public static final int DISABLE_MASK = 67043328;

    @Deprecated
    public static final int DISABLE_NAVIGATION = 18874368;
    public static final int DISABLE_NONE = 0;
    public static final int DISABLE_NOTIFICATION_ALERTS = 262144;
    public static final int DISABLE_NOTIFICATION_ICONS = 131072;
    public static final int DISABLE_NOTIFICATION_TICKER = 524288;
    public static final int DISABLE_RECENT = 16777216;
    public static final int DISABLE_SEARCH = 33554432;
    public static final int DISABLE_SYSTEM_INFO = 1048576;
    public static final int NAVIGATION_HINT_BACK_ALT = 1;
    public static final int WINDOW_NAVIGATION_BAR = 2;
    public static final int WINDOW_STATE_HIDDEN = 2;
    public static final int WINDOW_STATE_HIDING = 1;
    public static final int WINDOW_STATE_SHOWING = 0;
    public static final int WINDOW_STATUS_BAR = 1;
    private Context mContext;
    private a mService;
    private IBinder mToken = new Binder();

    public StatusBarManager(Context context) {
        this.mContext = context;
    }

    private synchronized a getService() {
        if (this.mService == null) {
            a aVarJ2 = a.AbstractBinderC0095a.J2(ServiceManager.getService(Context.STATUS_BAR_SERVICE));
            this.mService = aVarJ2;
            if (aVarJ2 == null) {
                Slog.w("StatusBarManager", "warning: no STATUS_BAR_SERVICE");
            }
        }
        return this.mService;
    }

    public static String windowStateToString(int i2) {
        if (i2 == 1) {
            return "WINDOW_STATE_HIDING";
        }
        if (i2 == 2) {
            return "WINDOW_STATE_HIDDEN";
        }
        return i2 == 0 ? "WINDOW_STATE_SHOWING" : "WINDOW_STATE_UNKNOWN";
    }

    public void collapsePanels() {
        try {
            a service = getService();
            if (service != null) {
                service.j1();
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void disable(int i2) {
        try {
            a service = getService();
            if (service != null) {
                service.F(i2, this.mToken, this.mContext.getPackageName());
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void expandNotificationsPanel() {
        try {
            a service = getService();
            if (service != null) {
                service.T();
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void expandSettingsPanel() {
        try {
            a service = getService();
            if (service != null) {
                service.I2();
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void removeIcon(String str) {
        try {
            a service = getService();
            if (service != null) {
                service.y1(str);
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void setIcon(String str, int i2, int i3, String str2) {
        try {
            a service = getService();
            if (service != null) {
                service.i1(str, this.mContext.getPackageName(), i2, i3, str2);
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void setIconVisibility(String str, boolean z2) {
        try {
            a service = getService();
            if (service != null) {
                service.r2(str, z2);
            }
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }
}
