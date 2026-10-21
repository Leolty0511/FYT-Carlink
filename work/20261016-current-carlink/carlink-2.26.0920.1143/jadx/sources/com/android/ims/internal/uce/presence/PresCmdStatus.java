package com.android.ims.internal.uce.presence;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.ims.internal.uce.common.StatusCode;

/* JADX INFO: loaded from: classes2.dex */
public class PresCmdStatus implements Parcelable {
    public static final Parcelable.Creator<PresCmdStatus> CREATOR = new Parcelable.Creator<PresCmdStatus>() { // from class: com.android.ims.internal.uce.presence.PresCmdStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresCmdStatus createFromParcel(Parcel parcel) {
            return new PresCmdStatus(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PresCmdStatus[] newArray(int i2) {
            return new PresCmdStatus[i2];
        }
    };
    private PresCmdId mCmdId;
    private int mRequestId;
    private StatusCode mStatus;
    private int mUserData;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PresCmdId getCmdId() {
        return this.mCmdId;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public StatusCode getStatus() {
        return this.mStatus;
    }

    public int getUserData() {
        return this.mUserData;
    }

    public void readFromParcel(Parcel parcel) {
        this.mUserData = parcel.readInt();
        this.mRequestId = parcel.readInt();
        this.mCmdId = (PresCmdId) parcel.readParcelable(PresCmdId.class.getClassLoader());
        this.mStatus = (StatusCode) parcel.readParcelable(StatusCode.class.getClassLoader());
    }

    public void setCmdId(PresCmdId presCmdId) {
        this.mCmdId = presCmdId;
    }

    public void setRequestId(int i2) {
        this.mRequestId = i2;
    }

    public void setStatus(StatusCode statusCode) {
        this.mStatus = statusCode;
    }

    public void setUserData(int i2) {
        this.mUserData = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mUserData);
        parcel.writeInt(this.mRequestId);
        parcel.writeParcelable(this.mCmdId, i2);
        parcel.writeParcelable(this.mStatus, i2);
    }

    public PresCmdStatus() {
        this.mCmdId = new PresCmdId();
        this.mStatus = new StatusCode();
        this.mStatus = new StatusCode();
    }

    private PresCmdStatus(Parcel parcel) {
        this.mCmdId = new PresCmdId();
        this.mStatus = new StatusCode();
        readFromParcel(parcel);
    }
}
