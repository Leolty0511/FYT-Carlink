package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SdpPseRecord implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: android.bluetooth.SdpPseRecord.1
        @Override // android.os.Parcelable.Creator
        public SdpPseRecord createFromParcel(Parcel parcel) {
            return new SdpPseRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdpPseRecord[] newArray(int i2) {
            return new SdpPseRecord[i2];
        }
    };
    private final int mL2capPsm;
    private final int mProfileVersion;
    private final int mRfcommChannelNumber;
    private final String mServiceName;
    private final int mSupportedFeatures;
    private final int mSupportedRepositories;

    public SdpPseRecord(int i2, int i3, int i4, int i5, int i6, String str) {
        this.mL2capPsm = i2;
        this.mRfcommChannelNumber = i3;
        this.mProfileVersion = i4;
        this.mSupportedFeatures = i5;
        this.mSupportedRepositories = i6;
        this.mServiceName = str;
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

    public int getSupportedRepositories() {
        return this.mSupportedRepositories;
    }

    public String toString() {
        String strM = this.mRfcommChannelNumber != -1 ? c.m(new StringBuilder("Bluetooth MNS SDP Record:\nRFCOMM Chan Number: "), this.mRfcommChannelNumber, "\n") : "Bluetooth MNS SDP Record:\n";
        if (this.mL2capPsm != -1) {
            strM = c.m(c.u(strM, "L2CAP PSM: "), this.mL2capPsm, "\n");
        }
        if (this.mProfileVersion != -1) {
            strM = c.m(c.u(strM, "profile version: "), this.mProfileVersion, "\n");
        }
        if (this.mServiceName != null) {
            strM = c.n(c.u(strM, "Service Name: "), this.mServiceName, "\n");
        }
        if (this.mSupportedFeatures != -1) {
            strM = c.m(c.u(strM, "Supported features: "), this.mSupportedFeatures, "\n");
        }
        return this.mSupportedRepositories != -1 ? c.m(c.u(strM, "Supported repositories: "), this.mSupportedRepositories, "\n") : strM;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRfcommChannelNumber);
        parcel.writeInt(this.mL2capPsm);
        parcel.writeInt(this.mProfileVersion);
        parcel.writeInt(this.mSupportedFeatures);
        parcel.writeInt(this.mSupportedRepositories);
        parcel.writeString(this.mServiceName);
    }

    public SdpPseRecord(Parcel parcel) {
        this.mRfcommChannelNumber = parcel.readInt();
        this.mL2capPsm = parcel.readInt();
        this.mProfileVersion = parcel.readInt();
        this.mSupportedFeatures = parcel.readInt();
        this.mSupportedRepositories = parcel.readInt();
        this.mServiceName = parcel.readString();
    }
}
