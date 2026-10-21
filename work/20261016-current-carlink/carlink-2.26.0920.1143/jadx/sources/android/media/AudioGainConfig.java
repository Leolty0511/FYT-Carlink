package android.media;

/* JADX INFO: loaded from: classes.dex */
public class AudioGainConfig {
    private final int mChannelMask;
    AudioGain mGain;
    private final int mIndex;
    private final int mMode;
    private final int mRampDurationMs;
    private final int[] mValues;

    public AudioGainConfig(int i2, AudioGain audioGain, int i3, int i4, int[] iArr, int i5) {
        this.mIndex = i2;
        this.mGain = audioGain;
        this.mMode = i3;
        this.mChannelMask = i4;
        this.mValues = iArr;
        this.mRampDurationMs = i5;
    }

    public int channelMask() {
        return this.mChannelMask;
    }

    public int index() {
        return this.mIndex;
    }

    public int mode() {
        return this.mMode;
    }

    public int rampDurationMs() {
        return this.mRampDurationMs;
    }

    public int[] values() {
        return this.mValues;
    }
}
