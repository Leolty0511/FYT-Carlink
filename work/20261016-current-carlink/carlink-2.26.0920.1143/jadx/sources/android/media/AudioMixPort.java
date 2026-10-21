package android.media;

/* JADX INFO: loaded from: classes.dex */
public class AudioMixPort extends AudioPort {
    private final int mIoHandle;

    public AudioMixPort(AudioHandle audioHandle, int i2, int i3, String str, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, AudioGain[] audioGainArr) {
        super(audioHandle, i3, str, iArr, iArr2, iArr3, iArr4, audioGainArr);
        this.mIoHandle = i2;
    }

    @Override // android.media.AudioPort
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof AudioMixPort) && this.mIoHandle == ((AudioMixPort) obj).ioHandle()) {
            return super.equals(obj);
        }
        return false;
    }

    public int ioHandle() {
        return this.mIoHandle;
    }

    @Override // android.media.AudioPort
    public AudioMixPortConfig buildConfig(int i2, int i3, int i4, AudioGainConfig audioGainConfig) {
        return new AudioMixPortConfig(this, i2, i3, i4, audioGainConfig);
    }
}
