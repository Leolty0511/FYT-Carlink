package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothAudioConfig implements Parcelable {
    public static final Parcelable.Creator<BluetoothAudioConfig> CREATOR = new Parcelable.Creator<BluetoothAudioConfig>() { // from class: android.bluetooth.BluetoothAudioConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAudioConfig createFromParcel(Parcel parcel) {
            return new BluetoothAudioConfig(parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAudioConfig[] newArray(int i2) {
            return new BluetoothAudioConfig[i2];
        }
    };
    private final int mAudioFormat;
    private final int mChannelConfig;
    private final int mSampleRate;

    public BluetoothAudioConfig(int i2, int i3, int i4) {
        this.mSampleRate = i2;
        this.mChannelConfig = i3;
        this.mAudioFormat = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BluetoothAudioConfig)) {
            return false;
        }
        BluetoothAudioConfig bluetoothAudioConfig = (BluetoothAudioConfig) obj;
        return bluetoothAudioConfig.mSampleRate == this.mSampleRate && bluetoothAudioConfig.mChannelConfig == this.mChannelConfig && bluetoothAudioConfig.mAudioFormat == this.mAudioFormat;
    }

    public int getAudioFormat() {
        return this.mAudioFormat;
    }

    public int getChannelConfig() {
        return this.mChannelConfig;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int hashCode() {
        return this.mSampleRate | (this.mChannelConfig << 24) | (this.mAudioFormat << 28);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{mSampleRate:");
        sb.append(this.mSampleRate);
        sb.append(",mChannelConfig:");
        sb.append(this.mChannelConfig);
        sb.append(",mAudioFormat:");
        return c.m(sb, this.mAudioFormat, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSampleRate);
        parcel.writeInt(this.mChannelConfig);
        parcel.writeInt(this.mAudioFormat);
    }
}
