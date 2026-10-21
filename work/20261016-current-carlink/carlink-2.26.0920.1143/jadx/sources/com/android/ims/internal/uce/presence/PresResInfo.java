package com.android.ims.internal.uce.presence;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PresResInfo implements Parcelable {
    public static final Parcelable.Creator<PresResInfo> CREATOR = new Parcelable.Creator<PresResInfo>() { // from class: com.android.ims.internal.uce.presence.PresResInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresResInfo createFromParcel(Parcel parcel) {
            return new PresResInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresResInfo[] newArray(int i2) {
            return new PresResInfo[i2];
        }
    };
    private String mDisplayName;
    private PresResInstanceInfo mInstanceInfo;
    private String mResUri;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public PresResInstanceInfo getInstanceInfo() {
        return this.mInstanceInfo;
    }

    public String getResUri() {
        return this.mResUri;
    }

    public void readFromParcel(Parcel parcel) {
        this.mResUri = parcel.readString();
        this.mDisplayName = parcel.readString();
        this.mInstanceInfo = (PresResInstanceInfo) parcel.readParcelable(PresResInstanceInfo.class.getClassLoader());
    }

    public void setDisplayName(String str) {
        this.mDisplayName = str;
    }

    public void setInstanceInfo(PresResInstanceInfo presResInstanceInfo) {
        this.mInstanceInfo = presResInstanceInfo;
    }

    public void setResUri(String str) {
        this.mResUri = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mResUri);
        parcel.writeString(this.mDisplayName);
        parcel.writeParcelable(this.mInstanceInfo, i2);
    }

    public PresResInfo() {
        this.mResUri = "";
        this.mDisplayName = "";
        this.mInstanceInfo = new PresResInstanceInfo();
    }

    private PresResInfo(Parcel parcel) {
        this.mResUri = "";
        this.mDisplayName = "";
        readFromParcel(parcel);
    }
}
