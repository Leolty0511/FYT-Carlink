package android.media.tv;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class TvInputHardwareInfo implements Parcelable {
    public static final int CABLE_CONNECTION_STATUS_CONNECTED = 1;
    public static final int CABLE_CONNECTION_STATUS_DISCONNECTED = 2;
    public static final int CABLE_CONNECTION_STATUS_UNKNOWN = 0;
    public static final Parcelable.Creator<TvInputHardwareInfo> CREATOR = new Parcelable.Creator<TvInputHardwareInfo>() { // from class: android.media.tv.TvInputHardwareInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvInputHardwareInfo createFromParcel(Parcel parcel) {
            try {
                TvInputHardwareInfo tvInputHardwareInfo = new TvInputHardwareInfo();
                tvInputHardwareInfo.readFromParcel(parcel);
                return tvInputHardwareInfo;
            } catch (Exception e2) {
                Log.e(TvInputHardwareInfo.TAG, "Exception creating TvInputHardwareInfo from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvInputHardwareInfo[] newArray(int i2) {
            return new TvInputHardwareInfo[i2];
        }
    };
    static final String TAG = "TvInputHardwareInfo";
    public static final int TV_INPUT_TYPE_COMPONENT = 6;
    public static final int TV_INPUT_TYPE_COMPOSITE = 3;
    public static final int TV_INPUT_TYPE_DISPLAY_PORT = 10;
    public static final int TV_INPUT_TYPE_DVI = 8;
    public static final int TV_INPUT_TYPE_HDMI = 9;
    public static final int TV_INPUT_TYPE_OTHER_HARDWARE = 1;
    public static final int TV_INPUT_TYPE_SCART = 5;
    public static final int TV_INPUT_TYPE_SVIDEO = 4;
    public static final int TV_INPUT_TYPE_TUNER = 2;
    public static final int TV_INPUT_TYPE_VGA = 7;
    private String mAudioAddress;
    private int mAudioType;
    private int mCableConnectionStatus;
    private int mDeviceId;
    private int mHdmiPortId;
    private int mType;

    public static final class Builder {
        private Integer mDeviceId = null;
        private Integer mType = null;
        private int mAudioType = 0;
        private String mAudioAddress = "";
        private Integer mHdmiPortId = null;
        private Integer mCableConnectionStatus = 0;

        public Builder audioAddress(String str) {
            this.mAudioAddress = str;
            return this;
        }

        public Builder audioType(int i2) {
            this.mAudioType = i2;
            return this;
        }

        public TvInputHardwareInfo build() {
            Integer num;
            if (this.mDeviceId == null || (num = this.mType) == null) {
                throw new UnsupportedOperationException();
            }
            if ((num.intValue() == 9 && this.mHdmiPortId == null) || (this.mType.intValue() != 9 && this.mHdmiPortId != null)) {
                throw new UnsupportedOperationException();
            }
            TvInputHardwareInfo tvInputHardwareInfo = new TvInputHardwareInfo();
            tvInputHardwareInfo.mDeviceId = this.mDeviceId.intValue();
            tvInputHardwareInfo.mType = this.mType.intValue();
            tvInputHardwareInfo.mAudioType = this.mAudioType;
            if (tvInputHardwareInfo.mAudioType != 0) {
                tvInputHardwareInfo.mAudioAddress = this.mAudioAddress;
            }
            Integer num2 = this.mHdmiPortId;
            if (num2 != null) {
                tvInputHardwareInfo.mHdmiPortId = num2.intValue();
            }
            tvInputHardwareInfo.mCableConnectionStatus = this.mCableConnectionStatus.intValue();
            return tvInputHardwareInfo;
        }

        public Builder cableConnectionStatus(int i2) {
            this.mCableConnectionStatus = Integer.valueOf(i2);
            return this;
        }

        public Builder deviceId(int i2) {
            this.mDeviceId = Integer.valueOf(i2);
            return this;
        }

        public Builder hdmiPortId(int i2) {
            this.mHdmiPortId = Integer.valueOf(i2);
            return this;
        }

        public Builder type(int i2) {
            this.mType = Integer.valueOf(i2);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CableConnectionStatus {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAudioAddress() {
        return this.mAudioAddress;
    }

    public int getAudioType() {
        return this.mAudioType;
    }

    public int getCableConnectionStatus() {
        return this.mCableConnectionStatus;
    }

    public int getDeviceId() {
        return this.mDeviceId;
    }

    public int getHdmiPortId() {
        if (this.mType == 9) {
            return this.mHdmiPortId;
        }
        throw new IllegalStateException();
    }

    public int getType() {
        return this.mType;
    }

    public void readFromParcel(Parcel parcel) {
        this.mDeviceId = parcel.readInt();
        this.mType = parcel.readInt();
        this.mAudioType = parcel.readInt();
        this.mAudioAddress = parcel.readString();
        if (this.mType == 9) {
            this.mHdmiPortId = parcel.readInt();
        }
        this.mCableConnectionStatus = parcel.readInt();
    }

    public String toString() {
        StringBuilder sbQ = c.q(128, "TvInputHardwareInfo {id=");
        sbQ.append(this.mDeviceId);
        sbQ.append(", type=");
        sbQ.append(this.mType);
        sbQ.append(", audio_type=");
        sbQ.append(this.mAudioType);
        sbQ.append(", audio_addr=");
        sbQ.append(this.mAudioAddress);
        if (this.mType == 9) {
            sbQ.append(", hdmi_port=");
            sbQ.append(this.mHdmiPortId);
        }
        sbQ.append(", cable_connection_status=");
        return c.m(sbQ, this.mCableConnectionStatus, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mDeviceId);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mAudioType);
        parcel.writeString(this.mAudioAddress);
        if (this.mType == 9) {
            parcel.writeInt(this.mHdmiPortId);
        }
        parcel.writeInt(this.mCableConnectionStatus);
    }

    private TvInputHardwareInfo() {
    }
}
