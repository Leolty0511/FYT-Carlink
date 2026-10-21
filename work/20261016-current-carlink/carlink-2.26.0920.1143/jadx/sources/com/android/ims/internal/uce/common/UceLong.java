package com.android.ims.internal.uce.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class UceLong implements Parcelable {
    public static final Parcelable.Creator<UceLong> CREATOR = new Parcelable.Creator<UceLong>() { // from class: com.android.ims.internal.uce.common.UceLong.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UceLong createFromParcel(Parcel parcel) {
            return new UceLong(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UceLong[] newArray(int i2) {
            return new UceLong[i2];
        }
    };
    private int mClientId;
    private long mUceLong;

    public static UceLong getUceLongInstance() {
        return new UceLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getClientId() {
        return this.mClientId;
    }

    public long getUceLong() {
        return this.mUceLong;
    }

    public void readFromParcel(Parcel parcel) {
        this.mUceLong = parcel.readLong();
        this.mClientId = parcel.readInt();
    }

    public void setClientId(int i2) {
        this.mClientId = i2;
    }

    public void setUceLong(long j2) {
        this.mUceLong = j2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcel(parcel);
    }

    public UceLong() {
        this.mClientId = 1001;
    }

    private void writeToParcel(Parcel parcel) {
        parcel.writeLong(this.mUceLong);
        parcel.writeInt(this.mClientId);
    }

    private UceLong(Parcel parcel) {
        this.mClientId = 1001;
        readFromParcel(parcel);
    }
}
