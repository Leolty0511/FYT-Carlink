package android.view;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowContentFrameStats extends FrameStats implements Parcelable {
    public static final Parcelable.Creator<WindowContentFrameStats> CREATOR = new Parcelable.Creator<WindowContentFrameStats>() { // from class: android.view.WindowContentFrameStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowContentFrameStats createFromParcel(Parcel parcel) {
            return new WindowContentFrameStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowContentFrameStats[] newArray(int i2) {
            return new WindowContentFrameStats[i2];
        }
    };
    private long[] mFramesPostedTimeNano;
    private long[] mFramesReadyTimeNano;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getFramePostedTimeNano(int i2) {
        long[] jArr = this.mFramesPostedTimeNano;
        if (jArr != null) {
            return jArr[i2];
        }
        throw new IndexOutOfBoundsException();
    }

    public long getFrameReadyTimeNano(int i2) {
        long[] jArr = this.mFramesReadyTimeNano;
        if (jArr != null) {
            return jArr[i2];
        }
        throw new IndexOutOfBoundsException();
    }

    public void init(long j2, long[] jArr, long[] jArr2, long[] jArr3) {
        this.mRefreshPeriodNano = j2;
        this.mFramesPostedTimeNano = jArr;
        this.mFramesPresentedTimeNano = jArr2;
        this.mFramesReadyTimeNano = jArr3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowContentFrameStats[");
        sb.append("frameCount:" + getFrameCount());
        sb.append(", fromTimeNano:" + getStartTimeNano());
        sb.append(", toTimeNano:" + getEndTimeNano());
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mRefreshPeriodNano);
        parcel.writeLongArray(this.mFramesPostedTimeNano);
        parcel.writeLongArray(this.mFramesPresentedTimeNano);
        parcel.writeLongArray(this.mFramesReadyTimeNano);
    }

    public WindowContentFrameStats() {
    }

    private WindowContentFrameStats(Parcel parcel) {
        this.mRefreshPeriodNano = parcel.readLong();
        this.mFramesPostedTimeNano = parcel.createLongArray();
        this.mFramesPresentedTimeNano = parcel.createLongArray();
        this.mFramesReadyTimeNano = parcel.createLongArray();
    }
}
