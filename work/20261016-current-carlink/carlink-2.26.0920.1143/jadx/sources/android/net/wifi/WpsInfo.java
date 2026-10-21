package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class WpsInfo implements Parcelable {
    public static final Parcelable.Creator<WpsInfo> CREATOR = new Parcelable.Creator<WpsInfo>() { // from class: android.net.wifi.WpsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WpsInfo createFromParcel(Parcel parcel) {
            WpsInfo wpsInfo = new WpsInfo();
            wpsInfo.setup = parcel.readInt();
            wpsInfo.BSSID = parcel.readString();
            wpsInfo.pin = parcel.readString();
            return wpsInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WpsInfo[] newArray(int i2) {
            return new WpsInfo[i2];
        }
    };
    public static final int DISPLAY = 1;
    public static final int INVALID = 4;
    public static final int KEYPAD = 2;
    public static final int LABEL = 3;
    public static final int PBC = 0;
    public String BSSID;
    public String pin;
    public int setup;

    public WpsInfo() {
        this.setup = 4;
        this.BSSID = null;
        this.pin = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(" setup: ");
        stringBuffer.append(this.setup);
        stringBuffer.append("\n BSSID: ");
        stringBuffer.append(this.BSSID);
        stringBuffer.append("\n pin: ");
        stringBuffer.append(this.pin);
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.setup);
        parcel.writeString(this.BSSID);
        parcel.writeString(this.pin);
    }

    public WpsInfo(WpsInfo wpsInfo) {
        if (wpsInfo != null) {
            this.setup = wpsInfo.setup;
            this.BSSID = wpsInfo.BSSID;
            this.pin = wpsInfo.pin;
        }
    }
}
