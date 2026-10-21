package android.os;

import android.app.IAlarmManager;
import android.util.Slog;
import dalvik.annotation.optimization.CriticalNative;

/* JADX INFO: loaded from: classes.dex */
public final class SystemClock {
    private static final String TAG = "SystemClock";

    private SystemClock() {
    }

    @CriticalNative
    public static native long currentThreadTimeMicro();

    @CriticalNative
    public static native long currentThreadTimeMillis();

    @CriticalNative
    public static native long currentTimeMicro();

    @CriticalNative
    public static native long elapsedRealtime();

    @CriticalNative
    public static native long elapsedRealtimeNanos();

    public static boolean setCurrentTimeMillis(long j2) {
        IAlarmManager iAlarmManagerAsInterface = IAlarmManager.Stub.asInterface(ServiceManager.getService("alarm"));
        if (iAlarmManagerAsInterface == null) {
            return false;
        }
        try {
            return iAlarmManagerAsInterface.setTime(j2);
        } catch (RemoteException e2) {
            Slog.e(TAG, "Unable to set RTC", e2);
            return false;
        } catch (SecurityException e3) {
            Slog.e(TAG, "Unable to set RTC", e3);
            return false;
        }
    }

    public static void sleep(long j2) {
        long jUptimeMillis = uptimeMillis();
        boolean z2 = false;
        long jUptimeMillis2 = j2;
        do {
            try {
                Thread.sleep(jUptimeMillis2);
            } catch (InterruptedException unused) {
                z2 = true;
            }
            jUptimeMillis2 = (jUptimeMillis + j2) - uptimeMillis();
        } while (jUptimeMillis2 > 0);
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    @CriticalNative
    public static native long uptimeMillis();
}
