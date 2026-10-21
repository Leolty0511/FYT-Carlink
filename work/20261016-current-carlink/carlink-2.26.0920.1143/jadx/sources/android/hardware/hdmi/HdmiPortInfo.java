package android.hardware.hdmi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiPortInfo implements Parcelable {
    public static final Parcelable.Creator<HdmiPortInfo> CREATOR = new Parcelable.Creator<HdmiPortInfo>() { // from class: android.hardware.hdmi.HdmiPortInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiPortInfo createFromParcel(Parcel parcel) {
            return new HdmiPortInfo(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiPortInfo[] newArray(int i2) {
            return new HdmiPortInfo[i2];
        }
    };
    public static final int PORT_INPUT = 0;
    public static final int PORT_OUTPUT = 1;
    private final int mAddress;
    private final boolean mArcSupported;
    private final boolean mCecSupported;
    private final int mId;
    private final boolean mMhlSupported;
    private final int mType;

    public HdmiPortInfo(int i2, int i3, int i4, boolean z2, boolean z3, boolean z4) {
        this.mId = i2;
        this.mType = i3;
        this.mAddress = i4;
        this.mCecSupported = z2;
        this.mArcSupported = z4;
        this.mMhlSupported = z3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HdmiPortInfo)) {
            return false;
        }
        HdmiPortInfo hdmiPortInfo = (HdmiPortInfo) obj;
        return this.mId == hdmiPortInfo.mId && this.mType == hdmiPortInfo.mType && this.mAddress == hdmiPortInfo.mAddress && this.mCecSupported == hdmiPortInfo.mCecSupported && this.mArcSupported == hdmiPortInfo.mArcSupported && this.mMhlSupported == hdmiPortInfo.mMhlSupported;
    }

    public int getAddress() {
        return this.mAddress;
    }

    public int getId() {
        return this.mId;
    }

    public int getType() {
        return this.mType;
    }

    public boolean isArcSupported() {
        return this.mArcSupported;
    }

    public boolean isCecSupported() {
        return this.mCecSupported;
    }

    public boolean isMhlSupported() {
        return this.mMhlSupported;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("port_id: ");
        stringBuffer.append(this.mId);
        stringBuffer.append(", address: ");
        stringBuffer.append(String.format("0x%04x", Integer.valueOf(this.mAddress)));
        stringBuffer.append(", cec: ");
        stringBuffer.append(this.mCecSupported);
        stringBuffer.append(", arc: ");
        stringBuffer.append(this.mArcSupported);
        stringBuffer.append(", mhl: ");
        stringBuffer.append(this.mMhlSupported);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mAddress);
        parcel.writeInt(this.mCecSupported ? 1 : 0);
        parcel.writeInt(this.mArcSupported ? 1 : 0);
        parcel.writeInt(this.mMhlSupported ? 1 : 0);
    }
}
