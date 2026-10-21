package android.view;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FrameStats {
    public static final long UNDEFINED_TIME_NANO = -1;
    protected long[] mFramesPresentedTimeNano;
    protected long mRefreshPeriodNano;

    public final long getEndTimeNano() {
        if (getFrameCount() <= 0) {
            return -1L;
        }
        long[] jArr = this.mFramesPresentedTimeNano;
        return jArr[jArr.length - 1];
    }

    public final int getFrameCount() {
        long[] jArr = this.mFramesPresentedTimeNano;
        if (jArr != null) {
            return jArr.length;
        }
        return 0;
    }

    public final long getFramePresentedTimeNano(int i2) {
        long[] jArr = this.mFramesPresentedTimeNano;
        if (jArr != null) {
            return jArr[i2];
        }
        throw new IndexOutOfBoundsException();
    }

    public final long getRefreshPeriodNano() {
        return this.mRefreshPeriodNano;
    }

    public final long getStartTimeNano() {
        if (getFrameCount() <= 0) {
            return -1L;
        }
        return this.mFramesPresentedTimeNano[0];
    }
}
