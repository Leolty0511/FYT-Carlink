package android.os.health;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class TimerStat implements Parcelable {
    public static final Parcelable.Creator<TimerStat> CREATOR = new Parcelable.Creator<TimerStat>() { // from class: android.os.health.TimerStat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimerStat createFromParcel(Parcel parcel) {
            return new TimerStat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimerStat[] newArray(int i2) {
            return new TimerStat[i2];
        }
    };
    private int mCount;
    private long mTime;

    public TimerStat() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCount() {
        return this.mCount;
    }

    public long getTime() {
        return this.mTime;
    }

    public void setCount(int i2) {
        this.mCount = i2;
    }

    public void setTime(long j2) {
        this.mTime = j2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCount);
        parcel.writeLong(this.mTime);
    }

    public TimerStat(int i2, long j2) {
        this.mCount = i2;
        this.mTime = j2;
    }

    public TimerStat(Parcel parcel) {
        this.mCount = parcel.readInt();
        this.mTime = parcel.readLong();
    }
}
