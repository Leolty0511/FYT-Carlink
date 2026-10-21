package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class VideoProfile implements Parcelable {
    public static final Parcelable.Creator<VideoProfile> CREATOR = new Parcelable.Creator<VideoProfile>() { // from class: android.telecom.VideoProfile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoProfile createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            VideoProfile.class.getClassLoader();
            return new VideoProfile(i2, i3);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoProfile[] newArray(int i2) {
            return new VideoProfile[i2];
        }
    };
    public static final int QUALITY_DEFAULT = 4;
    public static final int QUALITY_HIGH = 1;
    public static final int QUALITY_LOW = 3;
    public static final int QUALITY_MEDIUM = 2;
    public static final int QUALITY_UNKNOWN = 0;
    public static final int STATE_AUDIO_ONLY = 0;
    public static final int STATE_BIDIRECTIONAL = 3;
    public static final int STATE_PAUSED = 4;
    public static final int STATE_RX_ENABLED = 2;
    public static final int STATE_TX_ENABLED = 1;
    private final int mQuality;
    private final int mVideoState;

    public static final class CameraCapabilities implements Parcelable {
        public static final Parcelable.Creator<CameraCapabilities> CREATOR = new Parcelable.Creator<CameraCapabilities>() { // from class: android.telecom.VideoProfile.CameraCapabilities.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CameraCapabilities createFromParcel(Parcel parcel) {
                return new CameraCapabilities(parcel.readInt(), parcel.readInt(), parcel.readByte() != 0, parcel.readFloat());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CameraCapabilities[] newArray(int i2) {
                return new CameraCapabilities[i2];
            }
        };
        private final int mHeight;
        private final float mMaxZoom;
        private final int mWidth;
        private final boolean mZoomSupported;

        public CameraCapabilities(int i2, int i3) {
            this(i2, i3, false, 1.0f);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public float getMaxZoom() {
            return this.mMaxZoom;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public boolean isZoomSupported() {
            return this.mZoomSupported;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(getWidth());
            parcel.writeInt(getHeight());
            parcel.writeByte(isZoomSupported() ? (byte) 1 : (byte) 0);
            parcel.writeFloat(getMaxZoom());
        }

        public CameraCapabilities(int i2, int i3, boolean z2, float f2) {
            this.mWidth = i2;
            this.mHeight = i3;
            this.mZoomSupported = z2;
            this.mMaxZoom = f2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VideoQuality {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VideoState {
    }

    public VideoProfile(int i2) {
        this(i2, 4);
    }

    private static boolean hasState(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    public static boolean isAudioOnly(int i2) {
        return (hasState(i2, 1) || hasState(i2, 2)) ? false : true;
    }

    public static boolean isBidirectional(int i2) {
        return hasState(i2, 3);
    }

    public static boolean isPaused(int i2) {
        return hasState(i2, 4);
    }

    public static boolean isReceptionEnabled(int i2) {
        return hasState(i2, 2);
    }

    public static boolean isTransmissionEnabled(int i2) {
        return hasState(i2, 1);
    }

    public static boolean isVideo(int i2) {
        return hasState(i2, 1) || hasState(i2, 2) || hasState(i2, 3);
    }

    public static String videoStateToString(int i2) {
        StringBuilder sb = new StringBuilder("Audio");
        if (i2 == 0) {
            sb.append(" Only");
        } else {
            if (isTransmissionEnabled(i2)) {
                sb.append(" Tx");
            }
            if (isReceptionEnabled(i2)) {
                sb.append(" Rx");
            }
            if (isPaused(i2)) {
                sb.append(" Pause");
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[VideoProfile videoState = ");
        sb.append(videoStateToString(this.mVideoState));
        sb.append(" videoQuality = ");
        return android.accessibilityservice.c.m(sb, this.mQuality, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mVideoState);
        parcel.writeInt(this.mQuality);
    }

    public VideoProfile(int i2, int i3) {
        this.mVideoState = i2;
        this.mQuality = i3;
    }
}
