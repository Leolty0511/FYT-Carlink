package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributes implements Parcelable {
    private static final int ALL_PARCEL_FLAGS = 1;
    private static final int ATTR_PARCEL_IS_NULL_BUNDLE = -1977;
    private static final int ATTR_PARCEL_IS_VALID_BUNDLE = 1980;
    public static final int CONTENT_TYPE_MOVIE = 3;
    public static final int CONTENT_TYPE_MUSIC = 2;
    public static final int CONTENT_TYPE_SONIFICATION = 4;
    public static final int CONTENT_TYPE_SPEECH = 1;
    public static final int CONTENT_TYPE_UNKNOWN = 0;
    public static final Parcelable.Creator<AudioAttributes> CREATOR;
    private static final int FLAG_ALL = 1023;
    private static final int FLAG_ALL_PUBLIC = 273;
    public static final int FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int FLAG_BEACON = 8;
    public static final int FLAG_BYPASS_INTERRUPTION_POLICY = 64;
    public static final int FLAG_BYPASS_MUTE = 128;
    public static final int FLAG_DEEP_BUFFER = 512;
    public static final int FLAG_HW_AV_SYNC = 16;
    public static final int FLAG_HW_HOTWORD = 32;
    public static final int FLAG_LOW_LATENCY = 256;
    public static final int FLAG_SCO = 4;
    public static final int FLAG_SECURE = 2;
    public static final int FLATTEN_TAGS = 1;
    public static final int[] SDK_USAGES;
    public static final int SUPPRESSIBLE_CALL = 2;
    public static final int SUPPRESSIBLE_NEVER = 3;
    public static final int SUPPRESSIBLE_NOTIFICATION = 1;
    public static final SparseIntArray SUPPRESSIBLE_USAGES;
    private static final String TAG = "AudioAttributes";
    public static final int USAGE_ALARM = 4;
    public static final int USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int USAGE_ASSISTANT = 16;
    public static final int USAGE_GAME = 14;
    public static final int USAGE_MEDIA = 1;
    public static final int USAGE_NOTIFICATION = 5;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int USAGE_NOTIFICATION_EVENT = 10;
    public static final int USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int USAGE_UNKNOWN = 0;
    public static final int USAGE_VIRTUAL_SOURCE = 15;
    public static final int USAGE_VOICE_COMMUNICATION = 2;
    public static final int USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    private Bundle mBundle;
    private int mContentType;
    private int mFlags;
    private String mFormattedTags;
    private int mSource;
    private HashSet<String> mTags;
    private int mUsage;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AttributeContentType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AttributeUsage {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        SUPPRESSIBLE_USAGES = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
        sparseIntArray.put(11, 3);
        sparseIntArray.put(2, 3);
        SDK_USAGES = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};
        CREATOR = new Parcelable.Creator<AudioAttributes>() { // from class: android.media.AudioAttributes.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AudioAttributes createFromParcel(Parcel parcel) {
                return new AudioAttributes(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AudioAttributes[] newArray(int i2) {
                return new AudioAttributes[i2];
            }
        };
    }

    public static int toLegacyStreamType(AudioAttributes audioAttributes) {
        return toVolumeStreamType(false, audioAttributes);
    }

    private static int toVolumeStreamType(boolean z2, AudioAttributes audioAttributes) {
        if ((audioAttributes.getFlags() & 1) == 1) {
            return z2 ? 1 : 7;
        }
        if ((audioAttributes.getFlags() & 4) == 4) {
            return z2 ? 0 : 6;
        }
        switch (audioAttributes.getUsage()) {
            case 0:
                return z2 ? Integer.MIN_VALUE : 3;
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                return 0;
            case 3:
                return z2 ? 0 : 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                if (!z2) {
                    return 3;
                }
                throw new IllegalArgumentException("Unknown usage value " + audioAttributes.getUsage() + " in audio attributes");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int usageForStreamType(int i2) {
        switch (i2) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    public String contentTypeToString() {
        int i2 = this.mContentType;
        if (i2 == 0) {
            return new String("CONTENT_TYPE_UNKNOWN");
        }
        if (i2 == 1) {
            return new String("CONTENT_TYPE_SPEECH");
        }
        if (i2 == 2) {
            return new String("CONTENT_TYPE_MUSIC");
        }
        if (i2 == 3) {
            return new String("CONTENT_TYPE_MOVIE");
        }
        if (i2 == 4) {
            return new String("CONTENT_TYPE_SONIFICATION");
        }
        return new String("unknown content type " + this.mContentType);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioAttributes.class != obj.getClass()) {
            return false;
        }
        AudioAttributes audioAttributes = (AudioAttributes) obj;
        return this.mContentType == audioAttributes.mContentType && this.mFlags == audioAttributes.mFlags && this.mSource == audioAttributes.mSource && this.mUsage == audioAttributes.mUsage && this.mFormattedTags.equals(audioAttributes.mFormattedTags);
    }

    public int getAllFlags() {
        return this.mFlags & 1023;
    }

    public Bundle getBundle() {
        Bundle bundle = this.mBundle;
        return bundle == null ? bundle : new Bundle(this.mBundle);
    }

    public int getCapturePreset() {
        return this.mSource;
    }

    public int getContentType() {
        return this.mContentType;
    }

    public int getFlags() {
        return this.mFlags & 273;
    }

    public Set<String> getTags() {
        return Collections.unmodifiableSet(this.mTags);
    }

    public int getUsage() {
        return this.mUsage;
    }

    public int getVolumeControlStream() {
        return toVolumeStreamType(true, this);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mContentType), Integer.valueOf(this.mFlags), Integer.valueOf(this.mSource), Integer.valueOf(this.mUsage), this.mFormattedTags, this.mBundle);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributes: usage=");
        sb.append(usageToString());
        sb.append(" content=");
        sb.append(contentTypeToString());
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.mFlags).toUpperCase());
        sb.append(" tags=");
        sb.append(this.mFormattedTags);
        sb.append(" bundle=");
        Bundle bundle = this.mBundle;
        sb.append(bundle == null ? "null" : bundle.toString());
        return new String(sb.toString());
    }

    public String usageToString() {
        return usageToString(this.mUsage);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mUsage);
        parcel.writeInt(this.mContentType);
        parcel.writeInt(this.mSource);
        parcel.writeInt(this.mFlags);
        int i3 = i2 & 1;
        parcel.writeInt(i3);
        if (i3 == 0) {
            String[] strArr = new String[this.mTags.size()];
            this.mTags.toArray(strArr);
            parcel.writeStringArray(strArr);
        } else if (i3 == 1) {
            parcel.writeString(this.mFormattedTags);
        }
        if (this.mBundle == null) {
            parcel.writeInt(ATTR_PARCEL_IS_NULL_BUNDLE);
        } else {
            parcel.writeInt(ATTR_PARCEL_IS_VALID_BUNDLE);
            parcel.writeBundle(this.mBundle);
        }
    }

    public static String usageToString(int i2) {
        switch (i2) {
            case 0:
                return new String("USAGE_UNKNOWN");
            case 1:
                return new String("USAGE_MEDIA");
            case 2:
                return new String("USAGE_VOICE_COMMUNICATION");
            case 3:
                return new String("USAGE_VOICE_COMMUNICATION_SIGNALLING");
            case 4:
                return new String("USAGE_ALARM");
            case 5:
                return new String("USAGE_NOTIFICATION");
            case 6:
                return new String("USAGE_NOTIFICATION_RINGTONE");
            case 7:
                return new String("USAGE_NOTIFICATION_COMMUNICATION_REQUEST");
            case 8:
                return new String("USAGE_NOTIFICATION_COMMUNICATION_INSTANT");
            case 9:
                return new String("USAGE_NOTIFICATION_COMMUNICATION_DELAYED");
            case 10:
                return new String("USAGE_NOTIFICATION_EVENT");
            case 11:
                return new String("USAGE_ASSISTANCE_ACCESSIBILITY");
            case 12:
                return new String("USAGE_ASSISTANCE_NAVIGATION_GUIDANCE");
            case 13:
                return new String("USAGE_ASSISTANCE_SONIFICATION");
            case 14:
                return new String("USAGE_GAME");
            case 15:
            default:
                return new String(c.d("unknown usage ", i2));
            case 16:
                return new String("USAGE_ASSISTANT");
        }
    }

    private AudioAttributes() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mSource = -1;
        this.mFlags = 0;
    }

    public static class Builder {
        private Bundle mBundle;
        private int mContentType;
        private int mFlags;
        private int mSource;
        private HashSet<String> mTags;
        private int mUsage;

        public Builder() {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mSource = -1;
            this.mFlags = 0;
            this.mTags = new HashSet<>();
        }

        public Builder addBundle(Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("Illegal null bundle");
            }
            Bundle bundle2 = this.mBundle;
            if (bundle2 == null) {
                this.mBundle = new Bundle(bundle);
            } else {
                bundle2.putAll(bundle);
            }
            return this;
        }

        public Builder addTag(String str) {
            this.mTags.add(str);
            return this;
        }

        public AudioAttributes build() {
            AudioAttributes audioAttributes = new AudioAttributes();
            audioAttributes.mContentType = this.mContentType;
            audioAttributes.mUsage = this.mUsage;
            audioAttributes.mSource = this.mSource;
            audioAttributes.mFlags = this.mFlags;
            audioAttributes.mTags = (HashSet) this.mTags.clone();
            audioAttributes.mFormattedTags = TextUtils.join(";", this.mTags);
            if (this.mBundle != null) {
                audioAttributes.mBundle = new Bundle(this.mBundle);
            }
            return audioAttributes;
        }

        public Builder replaceFlags(int i2) {
            this.mFlags = i2 & 1023;
            return this;
        }

        public Builder setCapturePreset(int i2) {
            if (i2 == 0 || i2 == 1 || i2 == 5 || i2 == 6 || i2 == 7 || i2 == 9 || i2 == 10) {
                this.mSource = i2;
            } else {
                m.q("Invalid capture preset ", i2, " for AudioAttributes", AudioAttributes.TAG);
            }
            return this;
        }

        public Builder setContentType(int i2) {
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                this.mContentType = i2;
            } else {
                this.mUsage = 0;
            }
            return this;
        }

        public Builder setFlags(int i2) {
            this.mFlags = (i2 & 1023) | this.mFlags;
            return this;
        }

        public Builder setInternalCapturePreset(int i2) {
            if (i2 == 1999 || i2 == 8 || i2 == 1998) {
                this.mSource = i2;
            } else {
                setCapturePreset(i2);
            }
            return this;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public Builder setInternalLegacyStreamType(int i2) {
            switch (i2) {
                case 0:
                    this.mContentType = 1;
                    break;
                case 1:
                    this.mContentType = 4;
                    break;
                case 2:
                    this.mContentType = 4;
                    break;
                case 3:
                    this.mContentType = 2;
                    break;
                case 4:
                    this.mContentType = 4;
                    break;
                case 5:
                    this.mContentType = 4;
                    break;
                case 6:
                    this.mContentType = 1;
                    this.mFlags |= 4;
                    break;
                case 7:
                    this.mFlags = 1 | this.mFlags;
                    this.mContentType = 4;
                    break;
                case 8:
                    this.mContentType = 4;
                    break;
                case 9:
                    this.mContentType = 4;
                    break;
                case 10:
                    this.mContentType = 1;
                    break;
                default:
                    m.q("Invalid stream type ", i2, " for AudioAttributes", AudioAttributes.TAG);
                    break;
            }
            this.mUsage = AudioAttributes.usageForStreamType(i2);
            return this;
        }

        public Builder setLegacyStreamType(int i2) {
            if (i2 != 10) {
                return setInternalLegacyStreamType(i2);
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }

        public Builder setUsage(int i2) {
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    this.mUsage = i2;
                    return this;
                default:
                    this.mUsage = 0;
                    return this;
            }
        }

        public Builder(AudioAttributes audioAttributes) {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mSource = -1;
            this.mFlags = 0;
            this.mTags = new HashSet<>();
            this.mUsage = audioAttributes.mUsage;
            this.mContentType = audioAttributes.mContentType;
            this.mFlags = audioAttributes.mFlags;
            this.mTags = (HashSet) audioAttributes.mTags.clone();
        }
    }

    private AudioAttributes(Parcel parcel) {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mSource = -1;
        this.mFlags = 0;
        this.mUsage = parcel.readInt();
        this.mContentType = parcel.readInt();
        this.mSource = parcel.readInt();
        this.mFlags = parcel.readInt();
        boolean z2 = (parcel.readInt() & 1) == 1;
        this.mTags = new HashSet<>();
        if (z2) {
            String str = new String(parcel.readString());
            this.mFormattedTags = str;
            this.mTags.add(str);
        } else {
            String[] stringArray = parcel.readStringArray();
            for (int length = stringArray.length - 1; length >= 0; length--) {
                this.mTags.add(stringArray[length]);
            }
            this.mFormattedTags = TextUtils.join(";", this.mTags);
        }
        int i2 = parcel.readInt();
        if (i2 == ATTR_PARCEL_IS_NULL_BUNDLE) {
            this.mBundle = null;
        } else if (i2 != ATTR_PARCEL_IS_VALID_BUNDLE) {
            Log.e(TAG, "Illegal value unmarshalling AudioAttributes, can't initialize bundle");
        } else {
            this.mBundle = new Bundle(parcel.readBundle());
        }
    }
}
