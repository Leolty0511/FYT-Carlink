package android.media.tv;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class TvTrackInfo implements Parcelable {
    public static final Parcelable.Creator<TvTrackInfo> CREATOR = new Parcelable.Creator<TvTrackInfo>() { // from class: android.media.tv.TvTrackInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvTrackInfo createFromParcel(Parcel parcel) {
            return new TvTrackInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvTrackInfo[] newArray(int i2) {
            return new TvTrackInfo[i2];
        }
    };
    public static final int TYPE_AUDIO = 0;
    public static final int TYPE_SUBTITLE = 2;
    public static final int TYPE_VIDEO = 1;
    private final int mAudioChannelCount;
    private final int mAudioSampleRate;
    private final CharSequence mDescription;
    private final Bundle mExtra;
    private final String mId;
    private final String mLanguage;
    private final int mType;
    private final byte mVideoActiveFormatDescription;
    private final float mVideoFrameRate;
    private final int mVideoHeight;
    private final float mVideoPixelAspectRatio;
    private final int mVideoWidth;

    public static final class Builder {
        private int mAudioChannelCount;
        private int mAudioSampleRate;
        private CharSequence mDescription;
        private Bundle mExtra;
        private final String mId;
        private String mLanguage;
        private final int mType;
        private byte mVideoActiveFormatDescription;
        private float mVideoFrameRate;
        private int mVideoHeight;
        private float mVideoPixelAspectRatio = 1.0f;
        private int mVideoWidth;

        public Builder(int i2, String str) {
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                throw new IllegalArgumentException(c.d("Unknown type: ", i2));
            }
            Preconditions.checkNotNull(str);
            this.mType = i2;
            this.mId = str;
        }

        public TvTrackInfo build() {
            return new TvTrackInfo(this.mType, this.mId, this.mLanguage, this.mDescription, this.mAudioChannelCount, this.mAudioSampleRate, this.mVideoWidth, this.mVideoHeight, this.mVideoFrameRate, this.mVideoPixelAspectRatio, this.mVideoActiveFormatDescription, this.mExtra);
        }

        public final Builder setAudioChannelCount(int i2) {
            if (this.mType != 0) {
                throw new IllegalStateException("Not an audio track");
            }
            this.mAudioChannelCount = i2;
            return this;
        }

        public final Builder setAudioSampleRate(int i2) {
            if (this.mType != 0) {
                throw new IllegalStateException("Not an audio track");
            }
            this.mAudioSampleRate = i2;
            return this;
        }

        public final Builder setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public final Builder setExtra(Bundle bundle) {
            this.mExtra = new Bundle(bundle);
            return this;
        }

        public final Builder setLanguage(String str) {
            this.mLanguage = str;
            return this;
        }

        public final Builder setVideoActiveFormatDescription(byte b2) {
            if (this.mType != 1) {
                throw new IllegalStateException("Not a video track");
            }
            this.mVideoActiveFormatDescription = b2;
            return this;
        }

        public final Builder setVideoFrameRate(float f2) {
            if (this.mType != 1) {
                throw new IllegalStateException("Not a video track");
            }
            this.mVideoFrameRate = f2;
            return this;
        }

        public final Builder setVideoHeight(int i2) {
            if (this.mType != 1) {
                throw new IllegalStateException("Not a video track");
            }
            this.mVideoHeight = i2;
            return this;
        }

        public final Builder setVideoPixelAspectRatio(float f2) {
            if (this.mType != 1) {
                throw new IllegalStateException("Not a video track");
            }
            this.mVideoPixelAspectRatio = f2;
            return this;
        }

        public final Builder setVideoWidth(int i2) {
            if (this.mType != 1) {
                throw new IllegalStateException("Not a video track");
            }
            this.mVideoWidth = i2;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TvTrackInfo)) {
            return false;
        }
        TvTrackInfo tvTrackInfo = (TvTrackInfo) obj;
        if (TextUtils.equals(this.mId, tvTrackInfo.mId) && this.mType == tvTrackInfo.mType && TextUtils.equals(this.mLanguage, tvTrackInfo.mLanguage) && TextUtils.equals(this.mDescription, tvTrackInfo.mDescription) && Objects.equals(this.mExtra, tvTrackInfo.mExtra)) {
            int i2 = this.mType;
            if (i2 == 0) {
                if (this.mAudioChannelCount == tvTrackInfo.mAudioChannelCount && this.mAudioSampleRate == tvTrackInfo.mAudioSampleRate) {
                    return true;
                }
            } else {
                if (i2 != 1) {
                    return true;
                }
                if (this.mVideoWidth == tvTrackInfo.mVideoWidth && this.mVideoHeight == tvTrackInfo.mVideoHeight && this.mVideoFrameRate == tvTrackInfo.mVideoFrameRate && this.mVideoPixelAspectRatio == tvTrackInfo.mVideoPixelAspectRatio) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int getAudioChannelCount() {
        if (this.mType == 0) {
            return this.mAudioChannelCount;
        }
        throw new IllegalStateException("Not an audio track");
    }

    public final int getAudioSampleRate() {
        if (this.mType == 0) {
            return this.mAudioSampleRate;
        }
        throw new IllegalStateException("Not an audio track");
    }

    public final CharSequence getDescription() {
        return this.mDescription;
    }

    public final Bundle getExtra() {
        return this.mExtra;
    }

    public final String getId() {
        return this.mId;
    }

    public final String getLanguage() {
        return this.mLanguage;
    }

    public final int getType() {
        return this.mType;
    }

    public final byte getVideoActiveFormatDescription() {
        if (this.mType == 1) {
            return this.mVideoActiveFormatDescription;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final float getVideoFrameRate() {
        if (this.mType == 1) {
            return this.mVideoFrameRate;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final int getVideoHeight() {
        if (this.mType == 1) {
            return this.mVideoHeight;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final float getVideoPixelAspectRatio() {
        if (this.mType == 1) {
            return this.mVideoPixelAspectRatio;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final int getVideoWidth() {
        if (this.mType == 1) {
            return this.mVideoWidth;
        }
        throw new IllegalStateException("Not a video track");
    }

    public int hashCode() {
        return Objects.hashCode(this.mId);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeString(this.mId);
        parcel.writeString(this.mLanguage);
        CharSequence charSequence = this.mDescription;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        parcel.writeInt(this.mAudioChannelCount);
        parcel.writeInt(this.mAudioSampleRate);
        parcel.writeInt(this.mVideoWidth);
        parcel.writeInt(this.mVideoHeight);
        parcel.writeFloat(this.mVideoFrameRate);
        parcel.writeFloat(this.mVideoPixelAspectRatio);
        parcel.writeByte(this.mVideoActiveFormatDescription);
        parcel.writeBundle(this.mExtra);
    }

    private TvTrackInfo(int i2, String str, String str2, CharSequence charSequence, int i3, int i4, int i5, int i6, float f2, float f3, byte b2, Bundle bundle) {
        this.mType = i2;
        this.mId = str;
        this.mLanguage = str2;
        this.mDescription = charSequence;
        this.mAudioChannelCount = i3;
        this.mAudioSampleRate = i4;
        this.mVideoWidth = i5;
        this.mVideoHeight = i6;
        this.mVideoFrameRate = f2;
        this.mVideoPixelAspectRatio = f3;
        this.mVideoActiveFormatDescription = b2;
        this.mExtra = bundle;
    }

    private TvTrackInfo(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mId = parcel.readString();
        this.mLanguage = parcel.readString();
        this.mDescription = parcel.readString();
        this.mAudioChannelCount = parcel.readInt();
        this.mAudioSampleRate = parcel.readInt();
        this.mVideoWidth = parcel.readInt();
        this.mVideoHeight = parcel.readInt();
        this.mVideoFrameRate = parcel.readFloat();
        this.mVideoPixelAspectRatio = parcel.readFloat();
        this.mVideoActiveFormatDescription = parcel.readByte();
        this.mExtra = parcel.readBundle();
    }
}
