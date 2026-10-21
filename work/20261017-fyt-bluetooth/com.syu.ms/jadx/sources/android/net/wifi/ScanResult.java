package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ScanResult implements Parcelable {
    public static final Parcelable.Creator<ScanResult> CREATOR = new Parcelable.Creator<ScanResult>() { // from class: android.net.wifi.ScanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult createFromParcel(Parcel parcel) {
            return new ScanResult(parcel.readInt() == 1 ? WifiSsid.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult[] newArray(int i2) {
            return new ScanResult[i2];
        }
    };
    public static final int UNSPECIFIED = -1;
    public String BSSID;
    public String SSID;
    public String capabilities;
    public int distanceCm;
    public int distanceSdCm;
    public int frequency;
    public int level;
    public long timestamp;
    public WifiSsid wifiSsid;

    public ScanResult(WifiSsid wifiSsid, String str, String str2, int i2, int i3, long j2) {
        this.wifiSsid = wifiSsid;
        this.SSID = wifiSsid != null ? wifiSsid.toString() : WifiSsid.NONE;
        this.BSSID = str;
        this.capabilities = str2;
        this.level = i2;
        this.frequency = i3;
        this.timestamp = j2;
        this.distanceCm = -1;
        this.distanceSdCm = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SSID: ");
        Object obj = this.wifiSsid;
        if (obj == null) {
            obj = WifiSsid.NONE;
        }
        stringBuffer.append(obj);
        stringBuffer.append(", BSSID: ");
        String str = this.BSSID;
        if (str == null) {
            str = "<none>";
        }
        stringBuffer.append(str);
        stringBuffer.append(", capabilities: ");
        String str2 = this.capabilities;
        stringBuffer.append(str2 != null ? str2 : "<none>");
        stringBuffer.append(", level: ");
        stringBuffer.append(this.level);
        stringBuffer.append(", frequency: ");
        stringBuffer.append(this.frequency);
        stringBuffer.append(", timestamp: ");
        stringBuffer.append(this.timestamp);
        stringBuffer.append(", distance: ");
        int i2 = this.distanceCm;
        stringBuffer.append(i2 != -1 ? Integer.valueOf(i2) : "?");
        stringBuffer.append("(cm)");
        stringBuffer.append(", distanceSd: ");
        int i3 = this.distanceSdCm;
        stringBuffer.append(i3 != -1 ? Integer.valueOf(i3) : "?");
        stringBuffer.append("(cm)");
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.wifiSsid != null) {
            parcel.writeInt(1);
            this.wifiSsid.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.BSSID);
        parcel.writeString(this.capabilities);
        parcel.writeInt(this.level);
        parcel.writeInt(this.frequency);
        parcel.writeLong(this.timestamp);
        parcel.writeInt(this.distanceCm);
        parcel.writeInt(this.distanceSdCm);
    }

    public ScanResult(WifiSsid wifiSsid, String str, String str2, int i2, int i3, long j2, int i4, int i5) {
        this.wifiSsid = wifiSsid;
        this.SSID = wifiSsid != null ? wifiSsid.toString() : WifiSsid.NONE;
        this.BSSID = str;
        this.capabilities = str2;
        this.level = i2;
        this.frequency = i3;
        this.timestamp = j2;
        this.distanceCm = i4;
        this.distanceSdCm = i5;
    }

    public ScanResult(ScanResult scanResult) {
        if (scanResult != null) {
            this.wifiSsid = scanResult.wifiSsid;
            this.SSID = scanResult.SSID;
            this.BSSID = scanResult.BSSID;
            this.capabilities = scanResult.capabilities;
            this.level = scanResult.level;
            this.frequency = scanResult.frequency;
            this.timestamp = scanResult.timestamp;
            this.distanceCm = scanResult.distanceCm;
            this.distanceSdCm = scanResult.distanceSdCm;
        }
    }
}
