package android.filterpacks.performance;

/* JADX INFO: loaded from: classes.dex */
public class Throughput {
    private final int mPeriodFrames;
    private final int mPeriodTime;
    private final int mPixels;
    private final int mTotalFrames;

    public Throughput(int i2, int i3, int i4, int i5) {
        this.mTotalFrames = i2;
        this.mPeriodFrames = i3;
        this.mPeriodTime = i4;
        this.mPixels = i5;
    }

    public float getFramesPerSecond() {
        return this.mPeriodFrames / this.mPeriodTime;
    }

    public float getNanosPerPixel() {
        return (float) (((((double) this.mPeriodTime) / ((double) this.mPeriodFrames)) * 1000000.0d) / ((double) this.mPixels));
    }

    public int getPeriodFrameCount() {
        return this.mPeriodFrames;
    }

    public int getPeriodTime() {
        return this.mPeriodTime;
    }

    public int getTotalFrameCount() {
        return this.mTotalFrames;
    }

    public String toString() {
        return getFramesPerSecond() + " FPS";
    }
}
