package android.os;

/* JADX INFO: loaded from: classes.dex */
public final class SystemClock {
    private SystemClock() {
    }

    public static native long currentThreadTimeMicro();

    public static native long currentThreadTimeMillis();

    public static native long currentTimeMicro();

    public static native long elapsedRealtime();

    public static native long elapsedRealtimeNanos();

    public static native boolean setCurrentTimeMillis(long j2);

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

    public static native long uptimeMillis();
}
