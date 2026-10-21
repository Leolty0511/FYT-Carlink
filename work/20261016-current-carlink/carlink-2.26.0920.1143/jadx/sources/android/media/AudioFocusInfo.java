package android.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioFocusInfo implements Parcelable {
    public static final Parcelable.Creator<AudioFocusInfo> CREATOR = new Parcelable.Creator<AudioFocusInfo>() { // from class: android.media.AudioFocusInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioFocusInfo createFromParcel(Parcel parcel) {
            return new AudioFocusInfo(AudioAttributes.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioFocusInfo[] newArray(int i2) {
            return new AudioFocusInfo[i2];
        }
    };
    private final AudioAttributes mAttributes;
    private final String mClientId;
    private final int mClientUid;
    private int mFlags;
    private int mGainRequest;
    private int mLossReceived;
    private final String mPackageName;
    private final int mSdkTarget;

    public AudioFocusInfo(AudioAttributes audioAttributes, int i2, String str, String str2, int i3, int i4, int i5, int i6) {
        this.mAttributes = audioAttributes == null ? new AudioAttributes.Builder().build() : audioAttributes;
        this.mClientUid = i2;
        this.mClientId = str == null ? "" : str;
        this.mPackageName = str2 == null ? "" : str2;
        this.mGainRequest = i3;
        this.mLossReceived = i4;
        this.mFlags = i5;
        this.mSdkTarget = i6;
    }

    public void clearLossReceived() {
        this.mLossReceived = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioFocusInfo.class != obj.getClass()) {
            return false;
        }
        AudioFocusInfo audioFocusInfo = (AudioFocusInfo) obj;
        return this.mAttributes.equals(audioFocusInfo.mAttributes) && this.mClientUid == audioFocusInfo.mClientUid && this.mClientId.equals(audioFocusInfo.mClientId) && this.mPackageName.equals(audioFocusInfo.mPackageName) && this.mGainRequest == audioFocusInfo.mGainRequest && this.mLossReceived == audioFocusInfo.mLossReceived && this.mFlags == audioFocusInfo.mFlags && this.mSdkTarget == audioFocusInfo.mSdkTarget;
    }

    public AudioAttributes getAttributes() {
        return this.mAttributes;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public int getClientUid() {
        return this.mClientUid;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public int getGainRequest() {
        return this.mGainRequest;
    }

    public int getLossReceived() {
        return this.mLossReceived;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getSdkTarget() {
        return this.mSdkTarget;
    }

    public int hashCode() {
        return Objects.hash(this.mAttributes, Integer.valueOf(this.mClientUid), this.mClientId, this.mPackageName, Integer.valueOf(this.mGainRequest), Integer.valueOf(this.mFlags));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mAttributes.writeToParcel(parcel, i2);
        parcel.writeInt(this.mClientUid);
        parcel.writeString(this.mClientId);
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mGainRequest);
        parcel.writeInt(this.mLossReceived);
        parcel.writeInt(this.mFlags);
        parcel.writeInt(this.mSdkTarget);
    }
}
