package com.android.ims.internal.uce.presence;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PresResInstanceInfo implements Parcelable {
    public static final Parcelable.Creator<PresResInstanceInfo> CREATOR = new Parcelable.Creator<PresResInstanceInfo>() { // from class: com.android.ims.internal.uce.presence.PresResInstanceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresResInstanceInfo createFromParcel(Parcel parcel) {
            return new PresResInstanceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresResInstanceInfo[] newArray(int i2) {
            return new PresResInstanceInfo[i2];
        }
    };
    public static final int UCE_PRES_RES_INSTANCE_STATE_ACTIVE = 0;
    public static final int UCE_PRES_RES_INSTANCE_STATE_PENDING = 1;
    public static final int UCE_PRES_RES_INSTANCE_STATE_TERMINATED = 2;
    public static final int UCE_PRES_RES_INSTANCE_STATE_UNKNOWN = 3;
    public static final int UCE_PRES_RES_INSTANCE_UNKNOWN = 4;
    private String mId;
    private String mPresentityUri;
    private String mReason;
    private int mResInstanceState;
    private PresTupleInfo[] mTupleInfoArray;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPresentityUri() {
        return this.mPresentityUri;
    }

    public String getReason() {
        return this.mReason;
    }

    public String getResId() {
        return this.mId;
    }

    public int getResInstanceState() {
        return this.mResInstanceState;
    }

    public PresTupleInfo[] getTupleInfo() {
        return this.mTupleInfoArray;
    }

    public void readFromParcel(Parcel parcel) {
        this.mId = parcel.readString();
        this.mReason = parcel.readString();
        this.mResInstanceState = parcel.readInt();
        this.mPresentityUri = parcel.readString();
        Parcelable[] parcelableArray = parcel.readParcelableArray(PresTupleInfo.class.getClassLoader());
        this.mTupleInfoArray = new PresTupleInfo[0];
        if (parcelableArray != null) {
            this.mTupleInfoArray = (PresTupleInfo[]) Arrays.copyOf(parcelableArray, parcelableArray.length, PresTupleInfo[].class);
        }
    }

    public void setPresentityUri(String str) {
        this.mPresentityUri = str;
    }

    public void setReason(String str) {
        this.mReason = str;
    }

    public void setResId(String str) {
        this.mId = str;
    }

    public void setResInstanceState(int i2) {
        this.mResInstanceState = i2;
    }

    public void setTupleInfo(PresTupleInfo[] presTupleInfoArr) {
        PresTupleInfo[] presTupleInfoArr2 = new PresTupleInfo[presTupleInfoArr.length];
        this.mTupleInfoArray = presTupleInfoArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeString(this.mReason);
        parcel.writeInt(this.mResInstanceState);
        parcel.writeString(this.mPresentityUri);
        parcel.writeParcelableArray(this.mTupleInfoArray, i2);
    }

    public PresResInstanceInfo() {
        this.mId = "";
        this.mReason = "";
        this.mPresentityUri = "";
    }

    private PresResInstanceInfo(Parcel parcel) {
        this.mId = "";
        this.mReason = "";
        this.mPresentityUri = "";
        readFromParcel(parcel);
    }
}
