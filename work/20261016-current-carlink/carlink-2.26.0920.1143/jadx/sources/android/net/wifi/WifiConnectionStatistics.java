package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WifiConnectionStatistics implements Parcelable {
    public static final Parcelable.Creator<WifiConnectionStatistics> CREATOR = new Parcelable.Creator<WifiConnectionStatistics>() { // from class: android.net.wifi.WifiConnectionStatistics.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiConnectionStatistics createFromParcel(Parcel parcel) {
            WifiConnectionStatistics wifiConnectionStatistics = new WifiConnectionStatistics();
            wifiConnectionStatistics.num24GhzConnected = parcel.readInt();
            wifiConnectionStatistics.num5GhzConnected = parcel.readInt();
            wifiConnectionStatistics.numAutoJoinAttempt = parcel.readInt();
            wifiConnectionStatistics.numAutoRoamAttempt = parcel.readInt();
            wifiConnectionStatistics.numWifiManagerJoinAttempt = parcel.readInt();
            int i2 = parcel.readInt();
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return wifiConnectionStatistics;
                }
                wifiConnectionStatistics.untrustedNetworkHistory.put(parcel.readString(), new WifiNetworkConnectionStatistics(parcel.readInt(), parcel.readInt()));
                i2 = i3;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiConnectionStatistics[] newArray(int i2) {
            return new WifiConnectionStatistics[i2];
        }
    };
    private static final String TAG = "WifiConnnectionStatistics";
    public int num24GhzConnected;
    public int num5GhzConnected;
    public int numAutoJoinAttempt;
    public int numAutoRoamAttempt;
    public int numWifiManagerJoinAttempt;
    public HashMap<String, WifiNetworkConnectionStatistics> untrustedNetworkHistory;

    public WifiConnectionStatistics() {
        this.untrustedNetworkHistory = new HashMap<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void incrementOrAddUntrusted(String str, int i2, int i3) {
        WifiNetworkConnectionStatistics wifiNetworkConnectionStatistics;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.untrustedNetworkHistory.containsKey(str)) {
            wifiNetworkConnectionStatistics = this.untrustedNetworkHistory.get(str);
            if (wifiNetworkConnectionStatistics != null) {
                wifiNetworkConnectionStatistics.numConnection = i2 + wifiNetworkConnectionStatistics.numConnection;
                wifiNetworkConnectionStatistics.numUsage = i3 + wifiNetworkConnectionStatistics.numUsage;
            }
        } else {
            wifiNetworkConnectionStatistics = new WifiNetworkConnectionStatistics(i2, i3);
        }
        if (wifiNetworkConnectionStatistics != null) {
            this.untrustedNetworkHistory.put(str, wifiNetworkConnectionStatistics);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Connected on: 2.4Ghz=");
        sb.append(this.num24GhzConnected);
        sb.append(" 5Ghz=");
        sb.append(this.num5GhzConnected);
        sb.append("\n join=");
        sb.append(this.numWifiManagerJoinAttempt);
        sb.append("\\");
        sb.append(this.numAutoJoinAttempt);
        sb.append("\n roam=");
        sb.append(this.numAutoRoamAttempt);
        sb.append("\n");
        for (String str : this.untrustedNetworkHistory.keySet()) {
            WifiNetworkConnectionStatistics wifiNetworkConnectionStatistics = this.untrustedNetworkHistory.get(str);
            if (wifiNetworkConnectionStatistics != null) {
                sb.append(str);
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(wifiNetworkConnectionStatistics.toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.num24GhzConnected);
        parcel.writeInt(this.num5GhzConnected);
        parcel.writeInt(this.numAutoJoinAttempt);
        parcel.writeInt(this.numAutoRoamAttempt);
        parcel.writeInt(this.numWifiManagerJoinAttempt);
        parcel.writeInt(this.untrustedNetworkHistory.size());
        for (String str : this.untrustedNetworkHistory.keySet()) {
            WifiNetworkConnectionStatistics wifiNetworkConnectionStatistics = this.untrustedNetworkHistory.get(str);
            parcel.writeString(str);
            parcel.writeInt(wifiNetworkConnectionStatistics.numConnection);
            parcel.writeInt(wifiNetworkConnectionStatistics.numUsage);
        }
    }

    public WifiConnectionStatistics(WifiConnectionStatistics wifiConnectionStatistics) {
        HashMap<String, WifiNetworkConnectionStatistics> map = new HashMap<>();
        this.untrustedNetworkHistory = map;
        if (wifiConnectionStatistics != null) {
            map.putAll(wifiConnectionStatistics.untrustedNetworkHistory);
        }
    }
}
