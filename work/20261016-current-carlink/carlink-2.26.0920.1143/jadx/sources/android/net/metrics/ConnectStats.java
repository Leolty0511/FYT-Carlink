package android.net.metrics;

import android.net.NetworkCapabilities;
import android.provider.SettingsStringUtil;
import android.system.OsConstants;
import android.util.IntArray;
import android.util.SparseIntArray;
import com.android.internal.util.BitUtils;
import com.android.internal.util.TokenBucket;

/* JADX INFO: loaded from: classes.dex */
public class ConnectStats {
    private static final int EALREADY = OsConstants.EALREADY;
    private static final int EINPROGRESS = OsConstants.EINPROGRESS;
    public final TokenBucket mLatencyTb;
    public final int mMaxLatencyRecords;
    public final int netId;
    public final long transports;
    public final SparseIntArray errnos = new SparseIntArray();
    public final IntArray latencies = new IntArray();
    public int connectCount = 0;
    public int connectBlockingCount = 0;
    public int ipv6ConnectCount = 0;

    public ConnectStats(int i2, long j2, TokenBucket tokenBucket, int i3) {
        this.netId = i2;
        this.transports = j2;
        this.mLatencyTb = tokenBucket;
        this.mMaxLatencyRecords = i3;
    }

    private void countConnect(int i2, String str) {
        this.connectCount++;
        if (!isNonBlocking(i2)) {
            this.connectBlockingCount++;
        }
        if (isIPv6(str)) {
            this.ipv6ConnectCount++;
        }
    }

    private void countError(int i2) {
        this.errnos.put(i2, this.errnos.get(i2, 0) + 1);
    }

    private void countLatency(int i2, int i3) {
        if (!isNonBlocking(i2) && this.mLatencyTb.get() && this.latencies.size() < this.mMaxLatencyRecords) {
            this.latencies.add(i3);
        }
    }

    private static boolean isIPv6(String str) {
        return str.contains(SettingsStringUtil.DELIMITER);
    }

    private static boolean isNonBlocking(int i2) {
        return i2 == EINPROGRESS || i2 == EALREADY;
    }

    private static boolean isSuccess(int i2) {
        return i2 == 0 || isNonBlocking(i2);
    }

    public void addEvent(int i2, int i3, String str) {
        if (!isSuccess(i2)) {
            countError(i2);
        } else {
            countConnect(i2, str);
            countLatency(i2, i3);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConnectStats(");
        sb.append(this.netId);
        sb.append(", ");
        for (int i2 : BitUtils.unpackBits(this.transports)) {
            sb.append(NetworkCapabilities.transportNameOf(i2));
            sb.append(", ");
        }
        sb.append(String.format("%d success, ", Integer.valueOf(this.connectCount)));
        sb.append(String.format("%d blocking, ", Integer.valueOf(this.connectBlockingCount)));
        sb.append(String.format("%d IPv6 dst", Integer.valueOf(this.ipv6ConnectCount)));
        for (int i3 = 0; i3 < this.errnos.size(); i3++) {
            sb.append(String.format(", %s: %d", OsConstants.errnoName(this.errnos.keyAt(i3)), Integer.valueOf(this.errnos.valueAt(i3))));
        }
        sb.append(")");
        return sb.toString();
    }
}
