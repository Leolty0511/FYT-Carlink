package android.app;

import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ActivityManagerNative {
    public static IActivityManager asInterface(IBinder iBinder) {
        return IActivityManager.Stub.asInterface(iBinder);
    }

    public static void broadcastStickyIntent(Intent intent, String str, int i2) {
        broadcastStickyIntent(intent, str, -1, i2);
    }

    public static IActivityManager getDefault() {
        return ActivityManager.getService();
    }

    public static boolean isSystemReady() {
        return ActivityManager.isSystemReady();
    }

    public static void noteAlarmFinish(PendingIntent pendingIntent, int i2, String str) {
        ActivityManager.noteAlarmFinish(pendingIntent, i2, str);
    }

    public static void noteAlarmStart(PendingIntent pendingIntent, int i2, String str) {
        ActivityManager.noteAlarmStart(pendingIntent, i2, str);
    }

    public static void noteWakeupAlarm(PendingIntent pendingIntent, int i2, String str, String str2) {
        ActivityManager.noteWakeupAlarm(pendingIntent, i2, str, str2);
    }

    public static void broadcastStickyIntent(Intent intent, String str, int i2, int i3) {
        ActivityManager.broadcastStickyIntent(intent, i2, i3);
    }
}
