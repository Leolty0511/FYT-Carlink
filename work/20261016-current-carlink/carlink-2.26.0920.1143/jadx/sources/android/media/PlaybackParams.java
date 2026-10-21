package android.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackParams implements Parcelable {
    public static final int AUDIO_FALLBACK_MODE_DEFAULT = 0;
    public static final int AUDIO_FALLBACK_MODE_FAIL = 2;
    public static final int AUDIO_FALLBACK_MODE_MUTE = 1;
    public static final int AUDIO_STRETCH_MODE_DEFAULT = 0;
    public static final int AUDIO_STRETCH_MODE_VOICE = 1;
    public static final Parcelable.Creator<PlaybackParams> CREATOR = new Parcelable.Creator<PlaybackParams>() { // from class: android.media.PlaybackParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackParams createFromParcel(Parcel parcel) {
            return new PlaybackParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackParams[] newArray(int i2) {
            return new PlaybackParams[i2];
        }
    };
    private static final int SET_AUDIO_FALLBACK_MODE = 4;
    private static final int SET_AUDIO_STRETCH_MODE = 8;
    private static final int SET_PITCH = 2;
    private static final int SET_SPEED = 1;
    private int mAudioFallbackMode;
    private int mAudioStretchMode;
    private float mPitch;
    private int mSet;
    private float mSpeed;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AudioFallbackMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AudioStretchMode {
    }

    public PlaybackParams allowDefaults() {
        this.mSet |= 15;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAudioFallbackMode() {
        if ((this.mSet & 4) != 0) {
            return this.mAudioFallbackMode;
        }
        throw new IllegalStateException("audio fallback mode not set");
    }

    public int getAudioStretchMode() {
        if ((this.mSet & 8) != 0) {
            return this.mAudioStretchMode;
        }
        throw new IllegalStateException("audio stretch mode not set");
    }

    public float getPitch() {
        if ((this.mSet & 2) != 0) {
            return this.mPitch;
        }
        throw new IllegalStateException("pitch not set");
    }

    public float getSpeed() {
        if ((this.mSet & 1) != 0) {
            return this.mSpeed;
        }
        throw new IllegalStateException("speed not set");
    }

    public PlaybackParams setAudioFallbackMode(int i2) {
        this.mAudioFallbackMode = i2;
        this.mSet |= 4;
        return this;
    }

    public PlaybackParams setAudioStretchMode(int i2) {
        this.mAudioStretchMode = i2;
        this.mSet |= 8;
        return this;
    }

    public PlaybackParams setPitch(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("pitch must not be negative");
        }
        this.mPitch = f2;
        this.mSet |= 2;
        return this;
    }

    public PlaybackParams setSpeed(float f2) {
        this.mSpeed = f2;
        this.mSet |= 1;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSet);
        parcel.writeInt(this.mAudioFallbackMode);
        parcel.writeInt(this.mAudioStretchMode);
        parcel.writeFloat(this.mPitch);
        parcel.writeFloat(this.mSpeed);
    }

    public PlaybackParams() {
        this.mSet = 0;
        this.mAudioFallbackMode = 0;
        this.mAudioStretchMode = 0;
        this.mPitch = 1.0f;
        this.mSpeed = 1.0f;
    }

    private PlaybackParams(Parcel parcel) {
        this.mSet = 0;
        this.mAudioFallbackMode = 0;
        this.mAudioStretchMode = 0;
        this.mPitch = 1.0f;
        this.mSpeed = 1.0f;
        this.mSet = parcel.readInt();
        this.mAudioFallbackMode = parcel.readInt();
        this.mAudioStretchMode = parcel.readInt();
        float f2 = parcel.readFloat();
        this.mPitch = f2;
        if (f2 < 0.0f) {
            this.mPitch = 0.0f;
        }
        this.mSpeed = parcel.readFloat();
    }
}
