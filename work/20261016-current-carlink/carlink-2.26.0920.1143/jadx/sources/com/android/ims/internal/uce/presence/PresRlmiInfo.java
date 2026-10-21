package com.android.ims.internal.uce.presence;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PresRlmiInfo implements Parcelable {
    public static final Parcelable.Creator<PresRlmiInfo> CREATOR = new Parcelable.Creator<PresRlmiInfo>() { // from class: com.android.ims.internal.uce.presence.PresRlmiInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresRlmiInfo createFromParcel(Parcel parcel) {
            return new PresRlmiInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresRlmiInfo[] newArray(int i2) {
            return new PresRlmiInfo[i2];
        }
    };
    private boolean mFullState;
    private String mListName;
    private PresSubscriptionState mPresSubscriptionState;
    private int mRequestId;
    private int mSubscriptionExpireTime;
    private String mSubscriptionTerminatedReason;
    private String mUri;
    private int mVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getListName() {
        return this.mListName;
    }

    public PresSubscriptionState getPresSubscriptionState() {
        return this.mPresSubscriptionState;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public int getSubscriptionExpireTime() {
        return this.mSubscriptionExpireTime;
    }

    public String getSubscriptionTerminatedReason() {
        return this.mSubscriptionTerminatedReason;
    }

    public String getUri() {
        return this.mUri;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean isFullState() {
        return this.mFullState;
    }

    public void readFromParcel(Parcel parcel) {
        this.mUri = parcel.readString();
        this.mVersion = parcel.readInt();
        this.mFullState = parcel.readInt() != 0;
        this.mListName = parcel.readString();
        this.mRequestId = parcel.readInt();
        this.mPresSubscriptionState = (PresSubscriptionState) parcel.readParcelable(PresSubscriptionState.class.getClassLoader());
        this.mSubscriptionExpireTime = parcel.readInt();
        this.mSubscriptionTerminatedReason = parcel.readString();
    }

    public void setFullState(boolean z2) {
        this.mFullState = z2;
    }

    public void setListName(String str) {
        this.mListName = str;
    }

    public void setPresSubscriptionState(PresSubscriptionState presSubscriptionState) {
        this.mPresSubscriptionState = presSubscriptionState;
    }

    public void setRequestId(int i2) {
        this.mRequestId = i2;
    }

    public void setSubscriptionExpireTime(int i2) {
        this.mSubscriptionExpireTime = i2;
    }

    public void setSubscriptionTerminatedReason(String str) {
        this.mSubscriptionTerminatedReason = str;
    }

    public void setUri(String str) {
        this.mUri = str;
    }

    public void setVersion(int i2) {
        this.mVersion = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mUri);
        parcel.writeInt(this.mVersion);
        parcel.writeInt(this.mFullState ? 1 : 0);
        parcel.writeString(this.mListName);
        parcel.writeInt(this.mRequestId);
        parcel.writeParcelable(this.mPresSubscriptionState, i2);
        parcel.writeInt(this.mSubscriptionExpireTime);
        parcel.writeString(this.mSubscriptionTerminatedReason);
    }

    public PresRlmiInfo() {
        this.mUri = "";
        this.mListName = "";
    }

    private PresRlmiInfo(Parcel parcel) {
        this.mUri = "";
        this.mListName = "";
        readFromParcel(parcel);
    }
}
