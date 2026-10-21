package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class UidTraffic implements Cloneable, Parcelable {
    public static final Parcelable.Creator<UidTraffic> CREATOR = new Parcelable.Creator<UidTraffic>() { // from class: android.bluetooth.UidTraffic.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UidTraffic createFromParcel(Parcel parcel) {
            return new UidTraffic(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UidTraffic[] newArray(int i2) {
            return new UidTraffic[i2];
        }
    };
    private final int mAppUid;
    private long mRxBytes;
    private long mTxBytes;

    public UidTraffic(int i2) {
        this.mAppUid = i2;
    }

    public void addRxBytes(long j2) {
        this.mRxBytes += j2;
    }

    public void addTxBytes(long j2) {
        this.mTxBytes += j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getRxBytes() {
        return this.mRxBytes;
    }

    public long getTxBytes() {
        return this.mTxBytes;
    }

    public int getUid() {
        return this.mAppUid;
    }

    public void setRxBytes(long j2) {
        this.mRxBytes = j2;
    }

    public void setTxBytes(long j2) {
        this.mTxBytes = j2;
    }

    public String toString() {
        return "UidTraffic{mAppUid=" + this.mAppUid + ", mRxBytes=" + this.mRxBytes + ", mTxBytes=" + this.mTxBytes + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAppUid);
        parcel.writeLong(this.mRxBytes);
        parcel.writeLong(this.mTxBytes);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public UidTraffic m17clone() {
        return new UidTraffic(this.mAppUid, this.mRxBytes, this.mTxBytes);
    }

    public UidTraffic(int i2, long j2, long j3) {
        this.mAppUid = i2;
        this.mRxBytes = j2;
        this.mTxBytes = j3;
    }

    public UidTraffic(Parcel parcel) {
        this.mAppUid = parcel.readInt();
        this.mRxBytes = parcel.readLong();
        this.mTxBytes = parcel.readLong();
    }
}
