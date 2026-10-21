package android.bluetooth;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import android.security.keystore.KeyProperties;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothCodecConfig implements Parcelable {
    public static final int BITS_PER_SAMPLE_16 = 1;
    public static final int BITS_PER_SAMPLE_24 = 2;
    public static final int BITS_PER_SAMPLE_32 = 4;
    public static final int BITS_PER_SAMPLE_NONE = 0;
    public static final int CHANNEL_MODE_MONO = 1;
    public static final int CHANNEL_MODE_NONE = 0;
    public static final int CHANNEL_MODE_STEREO = 2;
    public static final int CODEC_PRIORITY_DEFAULT = 0;
    public static final int CODEC_PRIORITY_DISABLED = -1;
    public static final int CODEC_PRIORITY_HIGHEST = 1000000;
    public static final Parcelable.Creator<BluetoothCodecConfig> CREATOR = new Parcelable.Creator<BluetoothCodecConfig>() { // from class: android.bluetooth.BluetoothCodecConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecConfig createFromParcel(Parcel parcel) {
            return new BluetoothCodecConfig(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecConfig[] newArray(int i2) {
            return new BluetoothCodecConfig[i2];
        }
    };
    public static final int SAMPLE_RATE_176400 = 16;
    public static final int SAMPLE_RATE_192000 = 32;
    public static final int SAMPLE_RATE_44100 = 1;
    public static final int SAMPLE_RATE_48000 = 2;
    public static final int SAMPLE_RATE_88200 = 4;
    public static final int SAMPLE_RATE_96000 = 8;
    public static final int SAMPLE_RATE_NONE = 0;
    public static final int SOURCE_CODEC_TYPE_AAC = 1;
    public static final int SOURCE_CODEC_TYPE_APTX = 2;
    public static final int SOURCE_CODEC_TYPE_APTX_HD = 3;
    public static final int SOURCE_CODEC_TYPE_INVALID = 1000000;
    public static final int SOURCE_CODEC_TYPE_LDAC = 4;
    public static final int SOURCE_CODEC_TYPE_MAX = 5;
    public static final int SOURCE_CODEC_TYPE_SBC = 0;
    private final int mBitsPerSample;
    private final int mChannelMode;
    private int mCodecPriority;
    private final long mCodecSpecific1;
    private final long mCodecSpecific2;
    private final long mCodecSpecific3;
    private final long mCodecSpecific4;
    private final int mCodecType;
    private final int mSampleRate;

    public BluetoothCodecConfig(int i2, int i3, int i4, int i5, int i6, long j2, long j3, long j4, long j5) {
        this.mCodecType = i2;
        this.mCodecPriority = i3;
        this.mSampleRate = i4;
        this.mBitsPerSample = i5;
        this.mChannelMode = i6;
        this.mCodecSpecific1 = j2;
        this.mCodecSpecific2 = j3;
        this.mCodecSpecific3 = j4;
        this.mCodecSpecific4 = j5;
    }

    private static String appendCapabilityToString(String str, String str2) {
        return str == null ? str2 : m.h(str, "|", str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BluetoothCodecConfig)) {
            return false;
        }
        BluetoothCodecConfig bluetoothCodecConfig = (BluetoothCodecConfig) obj;
        return bluetoothCodecConfig.mCodecType == this.mCodecType && bluetoothCodecConfig.mCodecPriority == this.mCodecPriority && bluetoothCodecConfig.mSampleRate == this.mSampleRate && bluetoothCodecConfig.mBitsPerSample == this.mBitsPerSample && bluetoothCodecConfig.mChannelMode == this.mChannelMode && bluetoothCodecConfig.mCodecSpecific1 == this.mCodecSpecific1 && bluetoothCodecConfig.mCodecSpecific2 == this.mCodecSpecific2 && bluetoothCodecConfig.mCodecSpecific3 == this.mCodecSpecific3 && bluetoothCodecConfig.mCodecSpecific4 == this.mCodecSpecific4;
    }

    public int getBitsPerSample() {
        return this.mBitsPerSample;
    }

    public int getChannelMode() {
        return this.mChannelMode;
    }

    public String getCodecName() {
        int i2 = this.mCodecType;
        if (i2 == 0) {
            return "SBC";
        }
        if (i2 == 1) {
            return "AAC";
        }
        if (i2 == 2) {
            return "aptX";
        }
        if (i2 == 3) {
            return "aptX HD";
        }
        if (i2 != 4) {
            return i2 != 1000000 ? c.m(new StringBuilder("UNKNOWN CODEC("), this.mCodecType, ")") : "INVALID CODEC";
        }
        return "LDAC";
    }

    public int getCodecPriority() {
        return this.mCodecPriority;
    }

    public long getCodecSpecific1() {
        return this.mCodecSpecific1;
    }

    public long getCodecSpecific2() {
        return this.mCodecSpecific2;
    }

    public long getCodecSpecific3() {
        return this.mCodecSpecific3;
    }

    public long getCodecSpecific4() {
        return this.mCodecSpecific4;
    }

    public int getCodecType() {
        return this.mCodecType;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mCodecType), Integer.valueOf(this.mCodecPriority), Integer.valueOf(this.mSampleRate), Integer.valueOf(this.mBitsPerSample), Integer.valueOf(this.mChannelMode), Long.valueOf(this.mCodecSpecific1), Long.valueOf(this.mCodecSpecific2), Long.valueOf(this.mCodecSpecific3), Long.valueOf(this.mCodecSpecific4));
    }

    public boolean isMandatoryCodec() {
        return this.mCodecType == 0;
    }

    public boolean isValid() {
        return (this.mSampleRate == 0 || this.mBitsPerSample == 0 || this.mChannelMode == 0) ? false : true;
    }

    public boolean sameAudioFeedingParameters(BluetoothCodecConfig bluetoothCodecConfig) {
        return bluetoothCodecConfig != null && bluetoothCodecConfig.mSampleRate == this.mSampleRate && bluetoothCodecConfig.mBitsPerSample == this.mBitsPerSample && bluetoothCodecConfig.mChannelMode == this.mChannelMode;
    }

    public void setCodecPriority(int i2) {
        this.mCodecPriority = i2;
    }

    public String toString() {
        String strAppendCapabilityToString = this.mSampleRate == 0 ? appendCapabilityToString(null, KeyProperties.DIGEST_NONE) : null;
        if ((this.mSampleRate & 1) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "44100");
        }
        if ((this.mSampleRate & 2) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "48000");
        }
        if ((this.mSampleRate & 4) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "88200");
        }
        if ((this.mSampleRate & 8) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "96000");
        }
        if ((this.mSampleRate & 16) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "176400");
        }
        if ((this.mSampleRate & 32) != 0) {
            strAppendCapabilityToString = appendCapabilityToString(strAppendCapabilityToString, "192000");
        }
        String strAppendCapabilityToString2 = this.mBitsPerSample == 0 ? appendCapabilityToString(null, KeyProperties.DIGEST_NONE) : null;
        if ((this.mBitsPerSample & 1) != 0) {
            strAppendCapabilityToString2 = appendCapabilityToString(strAppendCapabilityToString2, "16");
        }
        if ((this.mBitsPerSample & 2) != 0) {
            strAppendCapabilityToString2 = appendCapabilityToString(strAppendCapabilityToString2, "24");
        }
        if ((this.mBitsPerSample & 4) != 0) {
            strAppendCapabilityToString2 = appendCapabilityToString(strAppendCapabilityToString2, "32");
        }
        String strAppendCapabilityToString3 = this.mChannelMode == 0 ? appendCapabilityToString(null, KeyProperties.DIGEST_NONE) : null;
        if ((this.mChannelMode & 1) != 0) {
            strAppendCapabilityToString3 = appendCapabilityToString(strAppendCapabilityToString3, "MONO");
        }
        if ((this.mChannelMode & 2) != 0) {
            strAppendCapabilityToString3 = appendCapabilityToString(strAppendCapabilityToString3, "STEREO");
        }
        StringBuilder sb = new StringBuilder("{codecName:");
        sb.append(getCodecName());
        sb.append(",mCodecType:");
        sb.append(this.mCodecType);
        sb.append(",mCodecPriority:");
        sb.append(this.mCodecPriority);
        sb.append(",mSampleRate:");
        sb.append(String.format("0x%x", Integer.valueOf(this.mSampleRate)));
        sb.append("(");
        sb.append(strAppendCapabilityToString);
        sb.append("),mBitsPerSample:");
        sb.append(String.format("0x%x", Integer.valueOf(this.mBitsPerSample)));
        sb.append("(");
        sb.append(strAppendCapabilityToString2);
        sb.append("),mChannelMode:");
        sb.append(String.format("0x%x", Integer.valueOf(this.mChannelMode)));
        sb.append("(");
        sb.append(strAppendCapabilityToString3);
        sb.append("),mCodecSpecific1:");
        sb.append(this.mCodecSpecific1);
        sb.append(",mCodecSpecific2:");
        sb.append(this.mCodecSpecific2);
        sb.append(",mCodecSpecific3:");
        sb.append(this.mCodecSpecific3);
        sb.append(",mCodecSpecific4:");
        return m.k(sb, this.mCodecSpecific4, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCodecType);
        parcel.writeInt(this.mCodecPriority);
        parcel.writeInt(this.mSampleRate);
        parcel.writeInt(this.mBitsPerSample);
        parcel.writeInt(this.mChannelMode);
        parcel.writeLong(this.mCodecSpecific1);
        parcel.writeLong(this.mCodecSpecific2);
        parcel.writeLong(this.mCodecSpecific3);
        parcel.writeLong(this.mCodecSpecific4);
    }
}
