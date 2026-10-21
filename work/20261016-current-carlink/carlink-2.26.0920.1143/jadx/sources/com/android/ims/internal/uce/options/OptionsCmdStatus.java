package com.android.ims.internal.uce.options;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.ims.internal.uce.common.CapInfo;
import com.android.ims.internal.uce.common.StatusCode;

/* JADX INFO: loaded from: classes2.dex */
public class OptionsCmdStatus implements Parcelable {
    public static final Parcelable.Creator<OptionsCmdStatus> CREATOR = new Parcelable.Creator<OptionsCmdStatus>() { // from class: com.android.ims.internal.uce.options.OptionsCmdStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OptionsCmdStatus createFromParcel(Parcel parcel) {
            return new OptionsCmdStatus(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OptionsCmdStatus[] newArray(int i2) {
            return new OptionsCmdStatus[i2];
        }
    };
    private CapInfo mCapInfo;
    private OptionsCmdId mCmdId;
    private StatusCode mStatus;
    private int mUserData;

    public static OptionsCmdStatus getOptionsCmdStatusInstance() {
        return new OptionsCmdStatus();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CapInfo getCapInfo() {
        return this.mCapInfo;
    }

    public OptionsCmdId getCmdId() {
        return this.mCmdId;
    }

    public StatusCode getStatus() {
        return this.mStatus;
    }

    public int getUserData() {
        return this.mUserData;
    }

    public void readFromParcel(Parcel parcel) {
        this.mUserData = parcel.readInt();
        this.mCmdId = (OptionsCmdId) parcel.readParcelable(OptionsCmdId.class.getClassLoader());
        this.mStatus = (StatusCode) parcel.readParcelable(StatusCode.class.getClassLoader());
        this.mCapInfo = (CapInfo) parcel.readParcelable(CapInfo.class.getClassLoader());
    }

    public void setCapInfo(CapInfo capInfo) {
        this.mCapInfo = capInfo;
    }

    public void setCmdId(OptionsCmdId optionsCmdId) {
        this.mCmdId = optionsCmdId;
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
        parcel.writeParcelable(this.mCmdId, i2);
        parcel.writeParcelable(this.mStatus, i2);
        parcel.writeParcelable(this.mCapInfo, i2);
    }

    public OptionsCmdStatus() {
        this.mStatus = new StatusCode();
        this.mCapInfo = new CapInfo();
        this.mCmdId = new OptionsCmdId();
        this.mUserData = 0;
    }

    private OptionsCmdStatus(Parcel parcel) {
        readFromParcel(parcel);
    }
}
