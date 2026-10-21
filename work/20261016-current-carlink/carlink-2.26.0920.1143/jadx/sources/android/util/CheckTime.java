package android.util;

import android.accessibilityservice.c;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class CheckTime {
    private static final long ACTION_TIMEOUT = 200;
    private static final String TAG = "CheckTime";

    public static class System {
        public System() {
            throw new RuntimeException("You should never call new CheckTime.System().");
        }

        public static boolean checkTime(long j2, String str) {
            return CheckTime.checkTime(j2, str, CheckTime.ACTION_TIMEOUT, false);
        }

        public static boolean checkTime(long j2, String str, long j3) {
            return CheckTime.checkTime(j2, str, j3, false);
        }
    }

    public static boolean checkTime(long j2, String str) {
        return checkTime(j2, str, ACTION_TIMEOUT);
    }

    public static long getTime() {
        return SystemClock.elapsedRealtime();
    }

    public static boolean checkTime(long j2, String str, long j3) {
        return checkTime(j2, str, j3, true);
    }

    public static boolean checkTime(long j2, String str, long j3, boolean z2) {
        long time = getTime() - j2;
        boolean z3 = time > j3;
        if (z3) {
            if (z2) {
                StringBuilder sb = new StringBuilder("App running slow: Executing ");
                sb.append(str);
                sb.append(" took ");
                sb.append(time);
                c.C(sb, "ms", TAG);
            } else {
                Slog.w(TAG, "System running slow: Executing " + str + " took " + time + "ms");
            }
        }
        return z3;
    }
}
