package android.net;

import android.accessibilityservice.c;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiSsid;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkKey implements Parcelable {
    public static final Parcelable.Creator<NetworkKey> CREATOR = new Parcelable.Creator<NetworkKey>() { // from class: android.net.NetworkKey.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkKey createFromParcel(Parcel parcel) {
            return new NetworkKey(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkKey[] newArray(int i2) {
            return new NetworkKey[i2];
        }
    };
    private static final String TAG = "NetworkKey";
    public static final int TYPE_WIFI = 1;
    public final int type;
    public final WifiKey wifiKey;

    public static NetworkKey createFromScanResult(ScanResult scanResult) {
        WifiSsid wifiSsid;
        if (scanResult != null && (wifiSsid = scanResult.wifiSsid) != null) {
            String string = wifiSsid.toString();
            String str = scanResult.BSSID;
            if (!TextUtils.isEmpty(string) && !string.equals("<unknown ssid>") && !TextUtils.isEmpty(str)) {
                try {
                    return new NetworkKey(new WifiKey(String.format("\"%s\"", string), str));
                } catch (IllegalArgumentException e2) {
                    Log.e(TAG, "Unable to create WifiKey.", e2);
                }
            }
        }
        return null;
    }

    public static NetworkKey createFromWifiInfo(WifiInfo wifiInfo) {
        if (wifiInfo != null) {
            String ssid = wifiInfo.getSSID();
            String bssid = wifiInfo.getBSSID();
            if (!TextUtils.isEmpty(ssid) && !ssid.equals("<unknown ssid>") && !TextUtils.isEmpty(bssid)) {
                try {
                    return new NetworkKey(new WifiKey(ssid, bssid));
                } catch (IllegalArgumentException e2) {
                    Log.e(TAG, "Unable to create WifiKey.", e2);
                }
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NetworkKey networkKey = (NetworkKey) obj;
        return this.type == networkKey.type && Objects.equals(this.wifiKey, networkKey.wifiKey);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.type), this.wifiKey);
    }

    public String toString() {
        return this.type != 1 ? "InvalidKey" : this.wifiKey.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.type);
        if (this.type == 1) {
            this.wifiKey.writeToParcel(parcel, i2);
        } else {
            throw new IllegalStateException("NetworkKey has unknown type " + this.type);
        }
    }

    public NetworkKey(WifiKey wifiKey) {
        this.type = 1;
        this.wifiKey = wifiKey;
    }

    private NetworkKey(Parcel parcel) {
        int i2 = parcel.readInt();
        this.type = i2;
        if (i2 == 1) {
            this.wifiKey = WifiKey.CREATOR.createFromParcel(parcel);
            return;
        }
        throw new IllegalArgumentException(c.d("Parcel has unknown type: ", i2));
    }
}
