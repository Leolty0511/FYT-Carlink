package com.android.ims;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ImsSsInfo implements Parcelable {
    public static final Parcelable.Creator<ImsSsInfo> CREATOR = new Parcelable.Creator<ImsSsInfo>() { // from class: com.android.ims.ImsSsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSsInfo createFromParcel(Parcel parcel) {
            return new ImsSsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSsInfo[] newArray(int i2) {
            return new ImsSsInfo[i2];
        }
    };
    public static final int DISABLED = 0;
    public static final int ENABLED = 1;
    public static final int NOT_REGISTERED = -1;
    public String mIcbNum;
    public int mStatus;

    public ImsSsInfo() {
    }

    private void readFromParcel(Parcel parcel) {
        this.mStatus = parcel.readInt();
        this.mIcbNum = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", Status: ");
        sb.append(this.mStatus == 0 ? "disabled" : "enabled");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mStatus);
        parcel.writeString(this.mIcbNum);
    }

    public ImsSsInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
