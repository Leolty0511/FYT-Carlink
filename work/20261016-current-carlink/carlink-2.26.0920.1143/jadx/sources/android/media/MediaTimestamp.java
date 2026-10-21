package android.media;

/* JADX INFO: loaded from: classes.dex */
public final class MediaTimestamp {
    public final float clockRate;
    public final long mediaTimeUs;
    public final long nanoTime;

    public MediaTimestamp(long j2, long j3, float f2) {
        this.mediaTimeUs = j2;
        this.nanoTime = j3;
        this.clockRate = f2;
    }

    public long getAnchorMediaTimeUs() {
        return this.mediaTimeUs;
    }

    public long getAnchorSytemNanoTime() {
        return this.nanoTime;
    }

    public float getMediaClockRate() {
        return this.clockRate;
    }

    public MediaTimestamp() {
        this.mediaTimeUs = 0L;
        this.nanoTime = 0L;
        this.clockRate = 1.0f;
    }
}
