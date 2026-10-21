package com.android.ims.internal;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ImsSrvccCallInfo implements Parcelable {
    public static final Parcelable.Creator<ImsSrvccCallInfo> CREATOR = new Parcelable.Creator<ImsSrvccCallInfo>() { // from class: com.android.ims.internal.ImsSrvccCallInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSrvccCallInfo createFromParcel(Parcel parcel) {
            return new ImsSrvccCallInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSrvccCallInfo[] newArray(int i2) {
            return new ImsSrvccCallInfo[i2];
        }
    };
    public int mCallId;
    public int mCallState;
    public int mCallType;
    public int mDir;
    public int mHoldState;
    public int mMptyOrder;
    public int mMptyState;
    public int mNumType;
    public String mNumber;

    public ImsSrvccCallInfo() {
    }

    private void readFromParcel(Parcel parcel) {
        this.mCallId = parcel.readInt();
        this.mDir = parcel.readInt();
        this.mCallState = parcel.readInt();
        this.mHoldState = parcel.readInt();
        this.mMptyState = parcel.readInt();
        this.mMptyOrder = parcel.readInt();
        this.mCallType = parcel.readInt();
        this.mNumType = parcel.readInt();
        this.mNumber = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toAtCommands() {
        StringBuilder sb = new StringBuilder("\"");
        sb.append(this.mCallId);
        sb.append(",");
        sb.append(this.mDir);
        sb.append(",");
        sb.append(this.mCallState);
        sb.append(",");
        sb.append(this.mHoldState);
        sb.append(",");
        sb.append(this.mMptyState);
        sb.append(",");
        sb.append(this.mMptyOrder);
        sb.append(",");
        sb.append(this.mCallType);
        sb.append(",");
        sb.append(this.mNumType);
        sb.append(",");
        return c.n(sb, this.mNumber, "\"");
    }

    public String toString() {
        return ImsSrvccCallInfo.class.toString() + ":mCallId: " + this.mCallId + ", mDir: " + this.mDir + ", mCallState: " + this.mCallState + ", mHoldState=" + this.mHoldState + ", mMptyState: " + this.mMptyState + ", mMptyOrder:" + this.mMptyOrder + ", mCallType:" + this.mCallType + ", mNumType:" + this.mNumType + ", mNumber:" + this.mNumber;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCallId);
        parcel.writeInt(this.mDir);
        parcel.writeInt(this.mCallState);
        parcel.writeInt(this.mHoldState);
        parcel.writeInt(this.mMptyState);
        parcel.writeInt(this.mMptyOrder);
        parcel.writeInt(this.mCallType);
        parcel.writeInt(this.mNumType);
        parcel.writeString(this.mNumber);
    }

    public ImsSrvccCallInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
