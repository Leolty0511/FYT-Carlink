package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SdpSapsRecord implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: android.bluetooth.SdpSapsRecord.1
        @Override // android.os.Parcelable.Creator
        public SdpSapsRecord createFromParcel(Parcel parcel) {
            return new SdpSapsRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdpRecord[] newArray(int i2) {
            return new SdpRecord[i2];
        }
    };
    private final int mProfileVersion;
    private final int mRfcommChannelNumber;
    private final String mServiceName;

    public SdpSapsRecord(int i2, int i3, String str) {
        this.mRfcommChannelNumber = i2;
        this.mProfileVersion = i3;
        this.mServiceName = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getProfileVersion() {
        return this.mProfileVersion;
    }

    public int getRfcommCannelNumber() {
        return this.mRfcommChannelNumber;
    }

    public String getServiceName() {
        return this.mServiceName;
    }

    public String toString() {
        String strM = this.mRfcommChannelNumber != -1 ? c.m(new StringBuilder("Bluetooth MAS SDP Record:\nRFCOMM Chan Number: "), this.mRfcommChannelNumber, "\n") : "Bluetooth MAS SDP Record:\n";
        if (this.mServiceName != null) {
            strM = c.n(c.u(strM, "Service Name: "), this.mServiceName, "\n");
        }
        return this.mProfileVersion != -1 ? c.m(c.u(strM, "Profile version: "), this.mProfileVersion, "\n") : strM;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRfcommChannelNumber);
        parcel.writeInt(this.mProfileVersion);
        parcel.writeString(this.mServiceName);
    }

    public SdpSapsRecord(Parcel parcel) {
        this.mRfcommChannelNumber = parcel.readInt();
        this.mProfileVersion = parcel.readInt();
        this.mServiceName = parcel.readString();
    }
}
