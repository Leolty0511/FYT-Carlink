package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class WifiNetworkConnectionStatistics implements Parcelable {
    public static final Parcelable.Creator<WifiNetworkConnectionStatistics> CREATOR = new Parcelable.Creator<WifiNetworkConnectionStatistics>() { // from class: android.net.wifi.WifiNetworkConnectionStatistics.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiNetworkConnectionStatistics createFromParcel(Parcel parcel) {
            return new WifiNetworkConnectionStatistics(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiNetworkConnectionStatistics[] newArray(int i2) {
            return new WifiNetworkConnectionStatistics[i2];
        }
    };
    private static final String TAG = "WifiNetworkConnnectionStatistics";
    public int numConnection;
    public int numUsage;

    public WifiNetworkConnectionStatistics() {
    }

    public WifiNetworkConnectionStatistics(int i2, int i3) {
        this.numConnection = i2;
        this.numUsage = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "c=" + this.numConnection + " u=" + this.numUsage;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.numConnection);
        parcel.writeInt(this.numUsage);
    }

    public WifiNetworkConnectionStatistics(WifiNetworkConnectionStatistics wifiNetworkConnectionStatistics) {
        this.numConnection = wifiNetworkConnectionStatistics.numConnection;
        this.numUsage = wifiNetworkConnectionStatistics.numUsage;
    }
}
