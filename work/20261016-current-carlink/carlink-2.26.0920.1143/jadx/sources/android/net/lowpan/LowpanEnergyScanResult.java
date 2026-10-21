package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public class LowpanEnergyScanResult {
    public static final int UNKNOWN = Integer.MAX_VALUE;
    private int mChannel = Integer.MAX_VALUE;
    private int mMaxRssi = Integer.MAX_VALUE;

    public int getChannel() {
        return this.mChannel;
    }

    public int getMaxRssi() {
        return this.mMaxRssi;
    }

    public void setChannel(int i2) {
        this.mChannel = i2;
    }

    public void setMaxRssi(int i2) {
        this.mMaxRssi = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LowpanEnergyScanResult(channel: ");
        sb.append(this.mChannel);
        sb.append(", maxRssi:");
        return android.accessibilityservice.c.m(sb, this.mMaxRssi, ")");
    }
}
