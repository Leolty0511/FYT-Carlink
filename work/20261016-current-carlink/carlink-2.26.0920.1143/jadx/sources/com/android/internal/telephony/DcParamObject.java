package com.android.internal.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class DcParamObject implements Parcelable {
    public static final Parcelable.Creator<DcParamObject> CREATOR = new Parcelable.Creator<DcParamObject>() { // from class: com.android.internal.telephony.DcParamObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DcParamObject createFromParcel(Parcel parcel) {
            return new DcParamObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DcParamObject[] newArray(int i2) {
            return new DcParamObject[i2];
        }
    };
    private int mSubId;

    public DcParamObject(int i2) {
        this.mSubId = i2;
    }

    private void readFromParcel(Parcel parcel) {
        this.mSubId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSubId() {
        return this.mSubId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSubId);
    }

    public DcParamObject(Parcel parcel) {
        readFromParcel(parcel);
    }
}
