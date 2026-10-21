package android.app;

import android.content.Context;
import android.os.RemoteException;
import android.os.WorkSource;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManager {
    public static final int ELAPSED_REALTIME = 3;
    public static final int ELAPSED_REALTIME_WAKEUP = 2;
    public static final long INTERVAL_DAY = 86400000;
    public static final long INTERVAL_FIFTEEN_MINUTES = 900000;
    public static final long INTERVAL_HALF_DAY = 43200000;
    public static final long INTERVAL_HALF_HOUR = 1800000;
    public static final long INTERVAL_HOUR = 3600000;
    public static final int RTC = 1;
    public static final int RTC_WAKEUP = 0;
    private static final String TAG = "AlarmManager";
    public static final long WINDOW_EXACT = 0;
    public static final long WINDOW_HEURISTIC = -1;
    private final boolean mAlwaysExact;
    private final IAlarmManager mService;

    public AlarmManager(IAlarmManager iAlarmManager, Context context) {
        this.mService = iAlarmManager;
        this.mAlwaysExact = context.getApplicationInfo().targetSdkVersion < 19;
    }

    private long legacyExactLength() {
        return this.mAlwaysExact ? 0L : -1L;
    }

    private void setImpl(int i2, long j2, long j3, long j4, PendingIntent pendingIntent, WorkSource workSource) {
        try {
            this.mService.set(i2, j2 < 0 ? 0L : j2, j3, j4, pendingIntent, workSource);
        } catch (RemoteException unused) {
        }
    }

    public void cancel(PendingIntent pendingIntent) {
        try {
            this.mService.remove(pendingIntent);
        } catch (RemoteException unused) {
        }
    }

    public void set(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, legacyExactLength(), 0L, pendingIntent, null);
    }

    public void setExact(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, 0L, 0L, pendingIntent, null);
    }

    public void setInexactRepeating(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, -1L, j3, pendingIntent, null);
    }

    public void setRepeating(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, legacyExactLength(), j3, pendingIntent, null);
    }

    public void setTime(long j2) {
        try {
            this.mService.setTime(j2);
        } catch (RemoteException unused) {
        }
    }

    public void setTimeZone(String str) {
        try {
            this.mService.setTimeZone(str);
        } catch (RemoteException unused) {
        }
    }

    public void setWindow(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, j3, 0L, pendingIntent, null);
    }

    public void set(int i2, long j2, long j3, long j4, PendingIntent pendingIntent, WorkSource workSource) {
        setImpl(i2, j2, j3, j4, pendingIntent, workSource);
    }
}
