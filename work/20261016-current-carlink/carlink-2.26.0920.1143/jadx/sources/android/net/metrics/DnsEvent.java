package android.net.metrics;

import android.accessibilityservice.c;
import android.net.NetworkCapabilities;
import com.android.internal.util.BitUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DnsEvent {
    private static final int SIZE_LIMIT = 20000;
    public int eventCount;
    public byte[] eventTypes;
    public int[] latenciesMs;
    public final int netId;
    public byte[] returnCodes;
    public final long transports;

    public DnsEvent(int i2, long j2, int i3) {
        this.netId = i2;
        this.transports = j2;
        this.eventTypes = new byte[i3];
        this.returnCodes = new byte[i3];
        this.latenciesMs = new int[i3];
    }

    public void addResult(byte b2, byte b3, int i2) {
        int i3 = this.eventCount;
        if (i3 >= 20000) {
            return;
        }
        if (i3 == this.eventTypes.length) {
            resize((int) (((double) i3) * 1.4d));
        }
        byte[] bArr = this.eventTypes;
        int i4 = this.eventCount;
        bArr[i4] = b2;
        this.returnCodes[i4] = b3;
        this.latenciesMs[i4] = i2;
        this.eventCount = i4 + 1;
    }

    public void resize(int i2) {
        this.eventTypes = Arrays.copyOf(this.eventTypes, i2);
        this.returnCodes = Arrays.copyOf(this.returnCodes, i2);
        this.latenciesMs = Arrays.copyOf(this.latenciesMs, i2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DnsEvent(");
        sb.append(this.netId);
        sb.append(", ");
        for (int i2 : BitUtils.unpackBits(this.transports)) {
            sb.append(NetworkCapabilities.transportNameOf(i2));
            sb.append(", ");
        }
        return c.m(sb, this.eventCount, " events)");
    }
}
