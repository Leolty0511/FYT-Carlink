package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SdpMasRecord implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: android.bluetooth.SdpMasRecord.1
        @Override // android.os.Parcelable.Creator
        public SdpMasRecord createFromParcel(Parcel parcel) {
            return new SdpMasRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdpRecord[] newArray(int i2) {
            return new SdpRecord[i2];
        }
    };
    private final int mL2capPsm;
    private final int mMasInstanceId;
    private final int mProfileVersion;
    private final int mRfcommChannelNumber;
    private final String mServiceName;
    private final int mSupportedFeatures;
    private final int mSupportedMessageTypes;

    public static final class MessageType {
        public static final int EMAIL = 1;
        public static final int MMS = 8;
        public static final int SMS_CDMA = 4;
        public static final int SMS_GSM = 2;
    }

    public SdpMasRecord(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
        this.mMasInstanceId = i2;
        this.mL2capPsm = i3;
        this.mRfcommChannelNumber = i4;
        this.mProfileVersion = i5;
        this.mSupportedFeatures = i6;
        this.mSupportedMessageTypes = i7;
        this.mServiceName = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getL2capPsm() {
        return this.mL2capPsm;
    }

    public int getMasInstanceId() {
        return this.mMasInstanceId;
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

    public int getSupportedFeatures() {
        return this.mSupportedFeatures;
    }

    public int getSupportedMessageTypes() {
        return this.mSupportedMessageTypes;
    }

    public boolean msgSupported(int i2) {
        return (i2 & this.mSupportedMessageTypes) != 0;
    }

    public String toString() {
        String strM = this.mMasInstanceId != -1 ? c.m(new StringBuilder("Bluetooth MAS SDP Record:\nMas Instance Id: "), this.mMasInstanceId, "\n") : "Bluetooth MAS SDP Record:\n";
        if (this.mRfcommChannelNumber != -1) {
            strM = c.m(c.u(strM, "RFCOMM Chan Number: "), this.mRfcommChannelNumber, "\n");
        }
        if (this.mL2capPsm != -1) {
            strM = c.m(c.u(strM, "L2CAP PSM: "), this.mL2capPsm, "\n");
        }
        if (this.mServiceName != null) {
            strM = c.n(c.u(strM, "Service Name: "), this.mServiceName, "\n");
        }
        if (this.mProfileVersion != -1) {
            strM = c.m(c.u(strM, "Profile version: "), this.mProfileVersion, "\n");
        }
        if (this.mSupportedMessageTypes != -1) {
            strM = c.m(c.u(strM, "Supported msg types: "), this.mSupportedMessageTypes, "\n");
        }
        return this.mSupportedFeatures != -1 ? c.m(c.u(strM, "Supported features: "), this.mSupportedFeatures, "\n") : strM;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMasInstanceId);
        parcel.writeInt(this.mL2capPsm);
        parcel.writeInt(this.mRfcommChannelNumber);
        parcel.writeInt(this.mProfileVersion);
        parcel.writeInt(this.mSupportedFeatures);
        parcel.writeInt(this.mSupportedMessageTypes);
        parcel.writeString(this.mServiceName);
    }

    public SdpMasRecord(Parcel parcel) {
        this.mMasInstanceId = parcel.readInt();
        this.mL2capPsm = parcel.readInt();
        this.mRfcommChannelNumber = parcel.readInt();
        this.mProfileVersion = parcel.readInt();
        this.mSupportedFeatures = parcel.readInt();
        this.mSupportedMessageTypes = parcel.readInt();
        this.mServiceName = parcel.readString();
    }
}
