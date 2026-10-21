package android.media;

/* JADX INFO: loaded from: classes.dex */
public class AudioMixPortConfig extends AudioPortConfig {
    public AudioMixPortConfig(AudioMixPort audioMixPort, int i2, int i3, int i4, AudioGainConfig audioGainConfig) {
        super(audioMixPort, i2, i3, i4, audioGainConfig);
    }

    @Override // android.media.AudioPortConfig
    public AudioMixPort port() {
        return (AudioMixPort) this.mPort;
    }
}
