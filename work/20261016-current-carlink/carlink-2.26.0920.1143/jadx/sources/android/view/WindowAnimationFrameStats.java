package android.view;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowAnimationFrameStats extends FrameStats implements Parcelable {
    public static final Parcelable.Creator<WindowAnimationFrameStats> CREATOR = new Parcelable.Creator<WindowAnimationFrameStats>() { // from class: android.view.WindowAnimationFrameStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowAnimationFrameStats createFromParcel(Parcel parcel) {
            return new WindowAnimationFrameStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowAnimationFrameStats[] newArray(int i2) {
            return new WindowAnimationFrameStats[i2];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void init(long j2, long[] jArr) {
        this.mRefreshPeriodNano = j2;
        this.mFramesPresentedTimeNano = jArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowAnimationFrameStats[");
        sb.append("frameCount:" + getFrameCount());
        sb.append(", fromTimeNano:" + getStartTimeNano());
        sb.append(", toTimeNano:" + getEndTimeNano());
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mRefreshPeriodNano);
        parcel.writeLongArray(this.mFramesPresentedTimeNano);
    }

    public WindowAnimationFrameStats() {
    }

    private WindowAnimationFrameStats(Parcel parcel) {
        this.mRefreshPeriodNano = parcel.readLong();
        this.mFramesPresentedTimeNano = parcel.createLongArray();
    }
}
