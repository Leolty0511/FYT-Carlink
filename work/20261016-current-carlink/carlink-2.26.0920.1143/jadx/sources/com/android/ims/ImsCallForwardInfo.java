package com.android.ims;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallForwardInfo implements Parcelable {
    public static final Parcelable.Creator<ImsCallForwardInfo> CREATOR = new Parcelable.Creator<ImsCallForwardInfo>() { // from class: com.android.ims.ImsCallForwardInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallForwardInfo createFromParcel(Parcel parcel) {
            return new ImsCallForwardInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallForwardInfo[] newArray(int i2) {
            return new ImsCallForwardInfo[i2];
        }
    };
    public int mCondition;
    public String mNumber;
    public int mServiceClass;
    public int mStatus;
    public int mTimeSeconds;
    public int mToA;

    public ImsCallForwardInfo() {
    }

    private void readFromParcel(Parcel parcel) {
        this.mCondition = parcel.readInt();
        this.mStatus = parcel.readInt();
        this.mToA = parcel.readInt();
        this.mNumber = parcel.readString();
        this.mTimeSeconds = parcel.readInt();
        this.mServiceClass = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", Condition: ");
        sb.append(this.mCondition);
        sb.append(", Status: ");
        sb.append(this.mStatus == 0 ? "disabled" : "enabled");
        sb.append(", ToA: ");
        sb.append(this.mToA);
        sb.append(", Service Class: ");
        sb.append(this.mServiceClass);
        sb.append(", Number=");
        sb.append(this.mNumber);
        sb.append(", Time (seconds): ");
        sb.append(this.mTimeSeconds);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCondition);
        parcel.writeInt(this.mStatus);
        parcel.writeInt(this.mToA);
        parcel.writeString(this.mNumber);
        parcel.writeInt(this.mTimeSeconds);
        parcel.writeInt(this.mServiceClass);
    }

    public ImsCallForwardInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
