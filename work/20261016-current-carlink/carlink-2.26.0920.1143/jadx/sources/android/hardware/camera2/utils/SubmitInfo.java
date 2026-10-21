package android.hardware.camera2.utils;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SubmitInfo implements Parcelable {
    public static final Parcelable.Creator<SubmitInfo> CREATOR = new Parcelable.Creator<SubmitInfo>() { // from class: android.hardware.camera2.utils.SubmitInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubmitInfo createFromParcel(Parcel parcel) {
            return new SubmitInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubmitInfo[] newArray(int i2) {
            return new SubmitInfo[i2];
        }
    };
    private long mLastFrameNumber;
    private int mRequestId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getLastFrameNumber() {
        return this.mLastFrameNumber;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public void readFromParcel(Parcel parcel) {
        this.mRequestId = parcel.readInt();
        this.mLastFrameNumber = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRequestId);
        parcel.writeLong(this.mLastFrameNumber);
    }

    public SubmitInfo() {
        this.mRequestId = -1;
        this.mLastFrameNumber = -1L;
    }

    public SubmitInfo(int i2, long j2) {
        this.mRequestId = i2;
        this.mLastFrameNumber = j2;
    }

    private SubmitInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
