package android.os;

/* JADX INFO: loaded from: classes.dex */
public final class CpuUsageInfo implements Parcelable {
    public static final Parcelable.Creator<CpuUsageInfo> CREATOR = new Parcelable.Creator<CpuUsageInfo>() { // from class: android.os.CpuUsageInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo createFromParcel(Parcel parcel) {
            return new CpuUsageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo[] newArray(int i2) {
            return new CpuUsageInfo[i2];
        }
    };
    private long mActive;
    private long mTotal;

    private void readFromParcel(Parcel parcel) {
        this.mActive = parcel.readLong();
        this.mTotal = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getActive() {
        return this.mActive;
    }

    public long getTotal() {
        return this.mTotal;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mActive);
        parcel.writeLong(this.mTotal);
    }

    public CpuUsageInfo(long j2, long j3) {
        this.mActive = j2;
        this.mTotal = j3;
    }

    private CpuUsageInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
