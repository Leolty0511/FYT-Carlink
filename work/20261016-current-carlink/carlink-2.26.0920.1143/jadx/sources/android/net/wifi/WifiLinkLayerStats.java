package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class WifiLinkLayerStats implements Parcelable {
    public static final Parcelable.Creator<WifiLinkLayerStats> CREATOR = new Parcelable.Creator<WifiLinkLayerStats>() { // from class: android.net.wifi.WifiLinkLayerStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiLinkLayerStats createFromParcel(Parcel parcel) {
            WifiLinkLayerStats wifiLinkLayerStats = new WifiLinkLayerStats();
            wifiLinkLayerStats.SSID = parcel.readString();
            wifiLinkLayerStats.BSSID = parcel.readString();
            wifiLinkLayerStats.on_time = parcel.readInt();
            wifiLinkLayerStats.tx_time = parcel.readInt();
            wifiLinkLayerStats.tx_time_per_level = parcel.createIntArray();
            wifiLinkLayerStats.rx_time = parcel.readInt();
            wifiLinkLayerStats.on_time_scan = parcel.readInt();
            return wifiLinkLayerStats;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiLinkLayerStats[] newArray(int i2) {
            return new WifiLinkLayerStats[i2];
        }
    };
    private static final String TAG = "WifiLinkLayerStats";
    public String BSSID;
    public String SSID;
    public int beacon_rx;
    public long lostmpdu_be;
    public long lostmpdu_bk;
    public long lostmpdu_vi;
    public long lostmpdu_vo;
    public int on_time;
    public int on_time_scan;
    public long retries_be;
    public long retries_bk;
    public long retries_vi;
    public long retries_vo;
    public int rssi_mgmt;
    public int rx_time;
    public long rxmpdu_be;
    public long rxmpdu_bk;
    public long rxmpdu_vi;
    public long rxmpdu_vo;
    public int status;
    public int tx_time;
    public int[] tx_time_per_level;
    public long txmpdu_be;
    public long txmpdu_bk;
    public long txmpdu_vi;
    public long txmpdu_vo;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPrintableSsid() {
        String str = this.SSID;
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length > 2 && this.SSID.charAt(0) == '\"') {
            int i2 = length - 1;
            if (this.SSID.charAt(i2) == '\"') {
                return this.SSID.substring(1, i2);
            }
        }
        if (length > 3 && this.SSID.charAt(0) == 'P' && this.SSID.charAt(1) == '\"') {
            int i3 = length - 1;
            if (this.SSID.charAt(i3) == '\"') {
                return WifiSsid.createFromAsciiEncoded(this.SSID.substring(2, i3)).toString();
            }
        }
        return this.SSID;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(" WifiLinkLayerStats: \n");
        if (this.SSID != null) {
            sb.append(" SSID: ");
            sb.append(this.SSID);
            sb.append('\n');
        }
        if (this.BSSID != null) {
            sb.append(" BSSID: ");
            sb.append(this.BSSID);
            sb.append('\n');
        }
        sb.append(" my bss beacon rx: ");
        sb.append(Integer.toString(this.beacon_rx));
        sb.append("\n RSSI mgmt: ");
        sb.append(Integer.toString(this.rssi_mgmt));
        sb.append("\n BE :  rx=");
        sb.append(Long.toString(this.rxmpdu_be));
        sb.append(" tx=");
        sb.append(Long.toString(this.txmpdu_be));
        sb.append(" lost=");
        sb.append(Long.toString(this.lostmpdu_be));
        sb.append(" retries=");
        sb.append(Long.toString(this.retries_be));
        sb.append("\n BK :  rx=");
        sb.append(Long.toString(this.rxmpdu_bk));
        sb.append(" tx=");
        sb.append(Long.toString(this.txmpdu_bk));
        sb.append(" lost=");
        sb.append(Long.toString(this.lostmpdu_bk));
        sb.append(" retries=");
        sb.append(Long.toString(this.retries_bk));
        sb.append("\n VI :  rx=");
        sb.append(Long.toString(this.rxmpdu_vi));
        sb.append(" tx=");
        sb.append(Long.toString(this.txmpdu_vi));
        sb.append(" lost=");
        sb.append(Long.toString(this.lostmpdu_vi));
        sb.append(" retries=");
        sb.append(Long.toString(this.retries_vi));
        sb.append("\n VO :  rx=");
        sb.append(Long.toString(this.rxmpdu_vo));
        sb.append(" tx=");
        sb.append(Long.toString(this.txmpdu_vo));
        sb.append(" lost=");
        sb.append(Long.toString(this.lostmpdu_vo));
        sb.append(" retries=");
        sb.append(Long.toString(this.retries_vo));
        sb.append("\n on_time : ");
        sb.append(Integer.toString(this.on_time));
        sb.append(" rx_time=");
        sb.append(Integer.toString(this.rx_time));
        sb.append(" scan_time=");
        sb.append(Integer.toString(this.on_time_scan));
        sb.append("\n tx_time=");
        sb.append(Integer.toString(this.tx_time));
        sb.append(" tx_time_per_level=" + Arrays.toString(this.tx_time_per_level));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.SSID);
        parcel.writeString(this.BSSID);
        parcel.writeInt(this.on_time);
        parcel.writeInt(this.tx_time);
        parcel.writeIntArray(this.tx_time_per_level);
        parcel.writeInt(this.rx_time);
        parcel.writeInt(this.on_time_scan);
    }
}
