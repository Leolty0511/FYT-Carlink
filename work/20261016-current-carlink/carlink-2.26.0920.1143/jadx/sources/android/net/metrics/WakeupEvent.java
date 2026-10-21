package android.net.metrics;

/* JADX INFO: loaded from: classes.dex */
public class WakeupEvent {
    public String iface;
    public long timestampMs;
    public int uid;

    public String toString() {
        return String.format("WakeupEvent(%tT.%tL, %s, uid: %d)", Long.valueOf(this.timestampMs), Long.valueOf(this.timestampMs), this.iface, Integer.valueOf(this.uid));
    }
}
