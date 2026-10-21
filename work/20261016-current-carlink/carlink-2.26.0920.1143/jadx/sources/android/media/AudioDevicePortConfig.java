package android.media;

/* JADX INFO: loaded from: classes.dex */
public class AudioDevicePortConfig extends AudioPortConfig {
    public AudioDevicePortConfig(AudioDevicePort audioDevicePort, int i2, int i3, int i4, AudioGainConfig audioGainConfig) {
        super(audioDevicePort, i2, i3, i4, audioGainConfig);
    }

    public AudioDevicePortConfig(AudioDevicePortConfig audioDevicePortConfig) {
        this(audioDevicePortConfig.port(), audioDevicePortConfig.samplingRate(), audioDevicePortConfig.channelMask(), audioDevicePortConfig.format(), audioDevicePortConfig.gain());
    }

    @Override // android.media.AudioPortConfig
    public AudioDevicePort port() {
        return (AudioDevicePort) this.mPort;
    }
}
