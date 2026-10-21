package android.net.metrics;

import android.app.m;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class WakeupStats {
    private static final int NO_UID = -1;
    public final String iface;
    public final long creationTimeMs = SystemClock.elapsedRealtime();
    public long totalWakeups = 0;
    public long rootWakeups = 0;
    public long systemWakeups = 0;
    public long nonApplicationWakeups = 0;
    public long applicationWakeups = 0;
    public long noUidWakeups = 0;
    public long durationSec = 0;

    public WakeupStats(String str) {
        this.iface = str;
    }

    public void countEvent(WakeupEvent wakeupEvent) {
        this.totalWakeups++;
        int i2 = wakeupEvent.uid;
        if (i2 == -1) {
            this.noUidWakeups++;
            return;
        }
        if (i2 == 0) {
            this.rootWakeups++;
            return;
        }
        if (i2 == 1000) {
            this.systemWakeups++;
        } else if (i2 >= 10000) {
            this.applicationWakeups++;
        } else {
            this.nonApplicationWakeups++;
        }
    }

    public String toString() {
        updateDuration();
        StringBuilder sb = new StringBuilder("WakeupStats(");
        sb.append(this.iface);
        sb.append(", total: ");
        sb.append(this.totalWakeups);
        sb.append(", root: ");
        sb.append(this.rootWakeups);
        sb.append(", system: ");
        sb.append(this.systemWakeups);
        sb.append(", apps: ");
        sb.append(this.applicationWakeups);
        sb.append(", non-apps: ");
        sb.append(this.nonApplicationWakeups);
        sb.append(", no uid: ");
        sb.append(this.noUidWakeups);
        sb.append(", ");
        return m.k(sb, this.durationSec, "s)");
    }

    public void updateDuration() {
        this.durationSec = (SystemClock.elapsedRealtime() - this.creationTimeMs) / 1000;
    }
}
