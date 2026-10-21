package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SdpMnsRecord implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: android.bluetooth.SdpMnsRecord.1
        @Override // android.os.Parcelable.Creator
        public SdpMnsRecord createFromParcel(Parcel parcel) {
            return new SdpMnsRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdpMnsRecord[] newArray(int i2) {
            return new SdpMnsRecord[i2];
        }
    };
    private final int mL2capPsm;
    private final int mProfileVersion;
    private final int mRfcommChannelNumber;
    private final String mServiceName;
    private final int mSupportedFeatures;

    public SdpMnsRecord(int i2, int i3, int i4, int i5, String str) {
        this.mL2capPsm = i2;
        this.mRfcommChannelNumber = i3;
        this.mSupportedFeatures = i5;
        this.mServiceName = str;
        this.mProfileVersion = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getL2capPsm() {
        return this.mL2capPsm;
    }

    public int getProfileVersion() {
        return this.mProfileVersion;
    }

    public int getRfcommChannelNumber() {
        return this.mRfcommChannelNumber;
    }

    public String getServiceName() {
        return this.mServiceName;
    }

    public int getSupportedFeatures() {
        return this.mSupportedFeatures;
    }

    public String toString() {
        String strM = this.mRfcommChannelNumber != -1 ? c.m(new StringBuilder("Bluetooth MNS SDP Record:\nRFCOMM Chan Number: "), this.mRfcommChannelNumber, "\n") : "Bluetooth MNS SDP Record:\n";
        if (this.mL2capPsm != -1) {
            strM = c.m(c.u(strM, "L2CAP PSM: "), this.mL2capPsm, "\n");
        }
        if (this.mServiceName != null) {
            strM = c.n(c.u(strM, "Service Name: "), this.mServiceName, "\n");
        }
        if (this.mSupportedFeatures != -1) {
            strM = c.m(c.u(strM, "Supported features: "), this.mSupportedFeatures, "\n");
        }
        return this.mProfileVersion != -1 ? c.m(c.u(strM, "Profile_version: "), this.mProfileVersion, "\n") : strM;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRfcommChannelNumber);
        parcel.writeInt(this.mL2capPsm);
        parcel.writeString(this.mServiceName);
        parcel.writeInt(this.mSupportedFeatures);
        parcel.writeInt(this.mProfileVersion);
    }

    public SdpMnsRecord(Parcel parcel) {
        this.mRfcommChannelNumber = parcel.readInt();
        this.mL2capPsm = parcel.readInt();
        this.mServiceName = parcel.readString();
        this.mSupportedFeatures = parcel.readInt();
        this.mProfileVersion = parcel.readInt();
    }
}
