package android.app;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.UserHandle;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class NotificationManager {
    private static String TAG = "NotificationManager";
    private static boolean localLOGV = false;
    private static INotificationManager sService;
    private Context mContext;

    public NotificationManager(Context context, Handler handler) {
        this.mContext = context;
    }

    public static NotificationManager from(Context context) {
        return (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
    }

    public static INotificationManager getService() {
        INotificationManager iNotificationManager = sService;
        if (iNotificationManager != null) {
            return iNotificationManager;
        }
        INotificationManager iNotificationManagerAsInterface = INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE));
        sService = iNotificationManagerAsInterface;
        return iNotificationManagerAsInterface;
    }

    public void cancel(int i2) {
        cancel(null, i2);
    }

    public void cancelAll() {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        if (localLOGV) {
            Log.v(TAG, packageName + ": cancelAll()");
        }
        try {
            service.cancelAllNotifications(packageName, UserHandle.myUserId());
        } catch (RemoteException unused) {
        }
    }

    public void cancelAsUser(String str, int i2, UserHandle userHandle) {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        if (localLOGV) {
            Log.v(TAG, packageName + ": cancel(" + i2 + ")");
        }
        try {
            service.cancelNotificationWithTag(packageName, str, i2, userHandle.getIdentifier());
        } catch (RemoteException unused) {
        }
    }

    public void notify(int i2, Notification notification) {
        notify(null, i2, notification);
    }

    public void notifyAsUser(String str, int i2, Notification notification, UserHandle userHandle) {
        int[] iArr = new int[1];
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        Uri uri = notification.sound;
        if (uri != null) {
            notification.sound = uri.getCanonicalUri();
            if (StrictMode.vmFileUriExposureEnabled()) {
                notification.sound.checkFileUriExposed("Notification.sound");
            }
        }
        if (localLOGV) {
            Log.v(TAG, packageName + ": notify(" + i2 + ", " + notification + ")");
        }
        try {
            service.enqueueNotificationWithTag(packageName, this.mContext.getOpPackageName(), str, i2, notification, iArr, userHandle.getIdentifier());
            if (i2 != iArr[0]) {
                Log.w(TAG, "notify: id corrupted: sent " + i2 + ", got back " + iArr[0]);
            }
        } catch (RemoteException unused) {
        }
    }

    public void cancel(String str, int i2) {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        if (localLOGV) {
            Log.v(TAG, packageName + ": cancel(" + i2 + ")");
        }
        try {
            service.cancelNotificationWithTag(packageName, str, i2, UserHandle.myUserId());
        } catch (RemoteException unused) {
        }
    }

    public void notify(String str, int i2, Notification notification) {
        int[] iArr = new int[1];
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        Uri uri = notification.sound;
        if (uri != null) {
            notification.sound = uri.getCanonicalUri();
            if (StrictMode.vmFileUriExposureEnabled()) {
                notification.sound.checkFileUriExposed("Notification.sound");
            }
        }
        if (localLOGV) {
            Log.v(TAG, packageName + ": notify(" + i2 + ", " + notification + ")");
        }
        try {
            service.enqueueNotificationWithTag(packageName, this.mContext.getOpPackageName(), str, i2, notification, iArr, UserHandle.myUserId());
            if (i2 != iArr[0]) {
                Log.w(TAG, "notify: id corrupted: sent " + i2 + ", got back " + iArr[0]);
            }
        } catch (RemoteException unused) {
        }
    }
}
