package com.android.ims.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallForwardInfoEx implements Parcelable {
    public static final Parcelable.Creator<ImsCallForwardInfoEx> CREATOR = new Parcelable.Creator<ImsCallForwardInfoEx>() { // from class: com.android.ims.internal.ImsCallForwardInfoEx.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallForwardInfoEx createFromParcel(Parcel parcel) {
            return new ImsCallForwardInfoEx(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallForwardInfoEx[] newArray(int i2) {
            return new ImsCallForwardInfoEx[i2];
        }
    };
    public int mCondition;
    public String mNumber;
    public int mNumberType;
    public String mRuleset;
    public int mServiceClass;
    public int mStatus;
    public int mTimeSeconds;
    public int mToA;

    public ImsCallForwardInfoEx() {
    }

    private void readFromParcel(Parcel parcel) {
        this.mCondition = parcel.readInt();
        this.mStatus = parcel.readInt();
        this.mToA = parcel.readInt();
        this.mNumber = parcel.readString();
        this.mTimeSeconds = parcel.readInt();
        this.mRuleset = parcel.readString();
        this.mNumberType = parcel.readInt();
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
        sb.append(", Number=");
        sb.append(this.mNumber);
        sb.append(", Time (seconds): ");
        sb.append(this.mTimeSeconds);
        sb.append(", mRuleset:");
        sb.append(this.mRuleset);
        sb.append(", mNumberType:");
        sb.append(this.mNumberType);
        sb.append(", mServiceClass:");
        sb.append(this.mServiceClass);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCondition);
        parcel.writeInt(this.mStatus);
        parcel.writeInt(this.mToA);
        parcel.writeString(this.mNumber);
        parcel.writeInt(this.mTimeSeconds);
        parcel.writeString(this.mRuleset);
        parcel.writeInt(this.mNumberType);
        parcel.writeInt(this.mServiceClass);
    }

    public ImsCallForwardInfoEx(Parcel parcel) {
        readFromParcel(parcel);
    }
}
