package com.android.ims;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ImsStreamMediaProfile implements Parcelable {
    public static final int AUDIO_QUALITY_AMR = 1;
    public static final int AUDIO_QUALITY_AMR_WB = 2;
    public static final int AUDIO_QUALITY_EVRC = 4;
    public static final int AUDIO_QUALITY_EVRC_B = 5;
    public static final int AUDIO_QUALITY_EVRC_NW = 7;
    public static final int AUDIO_QUALITY_EVRC_WB = 6;
    public static final int AUDIO_QUALITY_EVS_FB = 20;
    public static final int AUDIO_QUALITY_EVS_NB = 17;
    public static final int AUDIO_QUALITY_EVS_SWB = 19;
    public static final int AUDIO_QUALITY_EVS_WB = 18;
    public static final int AUDIO_QUALITY_G711A = 13;
    public static final int AUDIO_QUALITY_G711AB = 15;
    public static final int AUDIO_QUALITY_G711U = 11;
    public static final int AUDIO_QUALITY_G722 = 14;
    public static final int AUDIO_QUALITY_G723 = 12;
    public static final int AUDIO_QUALITY_G729 = 16;
    public static final int AUDIO_QUALITY_GSM_EFR = 8;
    public static final int AUDIO_QUALITY_GSM_FR = 9;
    public static final int AUDIO_QUALITY_GSM_HR = 10;
    public static final int AUDIO_QUALITY_NONE = 0;
    public static final int AUDIO_QUALITY_QCELP13K = 3;
    public static final Parcelable.Creator<ImsStreamMediaProfile> CREATOR = new Parcelable.Creator<ImsStreamMediaProfile>() { // from class: com.android.ims.ImsStreamMediaProfile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsStreamMediaProfile createFromParcel(Parcel parcel) {
            return new ImsStreamMediaProfile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsStreamMediaProfile[] newArray(int i2) {
            return new ImsStreamMediaProfile[i2];
        }
    };
    public static final int DIRECTION_INACTIVE = 0;
    public static final int DIRECTION_INVALID = -1;
    public static final int DIRECTION_RECEIVE = 1;
    public static final int DIRECTION_SEND = 2;
    public static final int DIRECTION_SEND_RECEIVE = 3;
    public static final int RTT_MODE_DISABLED = 0;
    public static final int RTT_MODE_FULL = 1;
    private static final String TAG = "ImsStreamMediaProfile";
    public static final int VIDEO_QUALITY_NONE = 0;
    public static final int VIDEO_QUALITY_QCIF = 1;
    public static final int VIDEO_QUALITY_QVGA_LANDSCAPE = 2;
    public static final int VIDEO_QUALITY_QVGA_PORTRAIT = 4;
    public static final int VIDEO_QUALITY_VGA_LANDSCAPE = 8;
    public static final int VIDEO_QUALITY_VGA_PORTRAIT = 16;
    public int mAudioDirection;
    public int mAudioQuality;
    public int mRttMode;
    public int mVideoDirection;
    public int mVideoQuality;

    public ImsStreamMediaProfile(Parcel parcel) {
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.mAudioQuality = parcel.readInt();
        this.mAudioDirection = parcel.readInt();
        this.mVideoQuality = parcel.readInt();
        this.mVideoDirection = parcel.readInt();
        this.mRttMode = parcel.readInt();
    }

    public void copyFrom(ImsStreamMediaProfile imsStreamMediaProfile) {
        this.mAudioQuality = imsStreamMediaProfile.mAudioQuality;
        this.mAudioDirection = imsStreamMediaProfile.mAudioDirection;
        this.mVideoQuality = imsStreamMediaProfile.mVideoQuality;
        this.mVideoDirection = imsStreamMediaProfile.mVideoDirection;
        this.mRttMode = imsStreamMediaProfile.mRttMode;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isRttCall() {
        return this.mRttMode == 1;
    }

    public void setRttMode(int i2) {
        this.mRttMode = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ audioQuality=");
        sb.append(this.mAudioQuality);
        sb.append(", audioDirection=");
        sb.append(this.mAudioDirection);
        sb.append(", videoQuality=");
        sb.append(this.mVideoQuality);
        sb.append(", videoDirection=");
        sb.append(this.mVideoDirection);
        sb.append(", rttMode=");
        return c.m(sb, this.mRttMode, " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAudioQuality);
        parcel.writeInt(this.mAudioDirection);
        parcel.writeInt(this.mVideoQuality);
        parcel.writeInt(this.mVideoDirection);
        parcel.writeInt(this.mRttMode);
    }

    public ImsStreamMediaProfile() {
        this.mAudioQuality = 0;
        this.mAudioDirection = 3;
        this.mVideoQuality = 0;
        this.mVideoDirection = -1;
        this.mRttMode = 0;
    }

    public ImsStreamMediaProfile(int i2, int i3, int i4, int i5) {
        this.mAudioQuality = i2;
        this.mAudioDirection = i3;
        this.mVideoQuality = i4;
        this.mVideoDirection = i5;
    }

    public ImsStreamMediaProfile(int i2) {
        this.mRttMode = i2;
    }
}
