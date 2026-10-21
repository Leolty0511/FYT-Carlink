package com.android.ims.internal.uce.presence;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PresTupleInfo implements Parcelable {
    public static final Parcelable.Creator<PresTupleInfo> CREATOR = new Parcelable.Creator<PresTupleInfo>() { // from class: com.android.ims.internal.uce.presence.PresTupleInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresTupleInfo createFromParcel(Parcel parcel) {
            return new PresTupleInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresTupleInfo[] newArray(int i2) {
            return new PresTupleInfo[i2];
        }
    };
    private String mContactUri;
    private String mFeatureTag;
    private String mTimestamp;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getContactUri() {
        return this.mContactUri;
    }

    public String getFeatureTag() {
        return this.mFeatureTag;
    }

    public String getTimestamp() {
        return this.mTimestamp;
    }

    public void readFromParcel(Parcel parcel) {
        this.mFeatureTag = parcel.readString();
        this.mContactUri = parcel.readString();
        this.mTimestamp = parcel.readString();
    }

    public void setContactUri(String str) {
        this.mContactUri = str;
    }

    public void setFeatureTag(String str) {
        this.mFeatureTag = str;
    }

    public void setTimestamp(String str) {
        this.mTimestamp = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mFeatureTag);
        parcel.writeString(this.mContactUri);
        parcel.writeString(this.mTimestamp);
    }

    public PresTupleInfo() {
        this.mFeatureTag = "";
        this.mContactUri = "";
        this.mTimestamp = "";
    }

    private PresTupleInfo(Parcel parcel) {
        this.mFeatureTag = "";
        this.mContactUri = "";
        this.mTimestamp = "";
        readFromParcel(parcel);
    }
}
