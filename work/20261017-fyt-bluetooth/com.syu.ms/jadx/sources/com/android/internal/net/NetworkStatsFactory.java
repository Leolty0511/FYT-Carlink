package com.android.internal.net;

import android.net.NetworkStats;
import android.os.SystemClock;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatsFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f985c;

    public NetworkStatsFactory() {
        this(new File("/proc/"));
    }

    public static native int nativeReadNetworkStatsDetail(NetworkStats networkStats, String str, int i2);

    public NetworkStats a() {
        return b(-1);
    }

    public NetworkStats b(int i2) throws IOException {
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 0);
        if (nativeReadNetworkStatsDetail(networkStats, this.f985c.getAbsolutePath(), i2) == 0) {
            return networkStats;
        }
        throw new IOException("Failed to parse network stats");
    }

    public NetworkStatsFactory(File file) {
        this.f983a = new File(file, "net/xt_qtaguid/iface_stat_all");
        this.f984b = new File(file, "net/xt_qtaguid/iface_stat_fmt");
        this.f985c = new File(file, "net/xt_qtaguid/stats");
    }
}
