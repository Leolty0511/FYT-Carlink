package android.media;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class AudioDevicePort extends AudioPort {
    private final String mAddress;
    private final int mType;

    public AudioDevicePort(AudioHandle audioHandle, String str, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, AudioGain[] audioGainArr, int i2, String str2) {
        super(audioHandle, AudioManager.isInputDevice(i2) ? 1 : 2, str, iArr, iArr2, iArr3, iArr4, audioGainArr);
        this.mType = i2;
        this.mAddress = str2;
    }

    public String address() {
        return this.mAddress;
    }

    @Override // android.media.AudioPort
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AudioDevicePort)) {
            return false;
        }
        AudioDevicePort audioDevicePort = (AudioDevicePort) obj;
        if (this.mType != audioDevicePort.type()) {
            return false;
        }
        if ((this.mAddress != null || audioDevicePort.address() == null) && this.mAddress.equals(audioDevicePort.address())) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // android.media.AudioPort
    public String toString() {
        String inputDeviceName = this.mRole == 1 ? AudioSystem.getInputDeviceName(this.mType) : AudioSystem.getOutputDeviceName(this.mType);
        StringBuilder sb = new StringBuilder("{");
        sb.append(super.toString());
        sb.append(", mType: ");
        sb.append(inputDeviceName);
        sb.append(", mAddress: ");
        return c.n(sb, this.mAddress, "}");
    }

    public int type() {
        return this.mType;
    }

    @Override // android.media.AudioPort
    public AudioDevicePortConfig buildConfig(int i2, int i3, int i4, AudioGainConfig audioGainConfig) {
        return new AudioDevicePortConfig(this, i2, i3, i4, audioGainConfig);
    }
}
