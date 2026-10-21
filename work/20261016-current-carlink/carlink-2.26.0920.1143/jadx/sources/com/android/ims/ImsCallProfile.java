package com.android.ims;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.telecom.VideoProfile;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallProfile implements Parcelable {
    public static final int CALL_RESTRICT_CAUSE_DISABLED = 2;
    public static final int CALL_RESTRICT_CAUSE_HD = 3;
    public static final int CALL_RESTRICT_CAUSE_NONE = 0;
    public static final int CALL_RESTRICT_CAUSE_RAT = 1;
    public static final int CALL_TYPE_VIDEO_N_VOICE = 3;
    public static final int CALL_TYPE_VOICE = 2;
    public static final int CALL_TYPE_VOICE_N_VIDEO = 1;
    public static final int CALL_TYPE_VS = 8;
    public static final int CALL_TYPE_VS_RX = 10;
    public static final int CALL_TYPE_VS_TX = 9;
    public static final int CALL_TYPE_VT = 4;
    public static final int CALL_TYPE_VT_NODIR = 7;
    public static final int CALL_TYPE_VT_RX = 6;
    public static final int CALL_TYPE_VT_TX = 5;
    public static final Parcelable.Creator<ImsCallProfile> CREATOR = new Parcelable.Creator<ImsCallProfile>() { // from class: com.android.ims.ImsCallProfile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallProfile createFromParcel(Parcel parcel) {
            return new ImsCallProfile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsCallProfile[] newArray(int i2) {
            return new ImsCallProfile[i2];
        }
    };
    public static final int DIALSTRING_NORMAL = 0;
    public static final int DIALSTRING_SS_CONF = 1;
    public static final int DIALSTRING_USSD = 2;
    public static final String EXTRA_ADDITIONAL_CALL_INFO = "AdditionalCallInfo";
    public static final String EXTRA_CALL_MODE_CHANGEABLE = "call_mode_changeable";
    public static final String EXTRA_CALL_RAT_TYPE = "CallRadioTech";
    public static final String EXTRA_CALL_RAT_TYPE_ALT = "callRadioTech";
    public static final String EXTRA_CHILD_NUMBER = "ChildNum";
    public static final String EXTRA_CNA = "cna";
    public static final String EXTRA_CNAP = "cnap";
    public static final String EXTRA_CODEC = "Codec";
    public static final String EXTRA_CONFERENCE = "conference";
    public static final String EXTRA_CONFERENCE_AVAIL = "conference_avail";
    public static final String EXTRA_DIALSTRING = "dialstring";
    public static final String EXTRA_DISPLAY_TEXT = "DisplayText";
    public static final String EXTRA_E_CALL = "e_call";
    public static final String EXTRA_IS_CALL_PULL = "CallPull";
    public static final String EXTRA_OEM_EXTRAS = "OemCallExtras";
    public static final String EXTRA_OI = "oi";
    public static final String EXTRA_OIR = "oir";
    public static final String EXTRA_REMOTE_URI = "remote_uri";
    public static final String EXTRA_USSD = "ussd";
    public static final String EXTRA_VMS = "vms";
    public static final int OIR_DEFAULT = 0;
    public static final int OIR_PRESENTATION_NOT_RESTRICTED = 2;
    public static final int OIR_PRESENTATION_PAYPHONE = 4;
    public static final int OIR_PRESENTATION_RESTRICTED = 1;
    public static final int OIR_PRESENTATION_UNKNOWN = 3;
    public static final int SERVICE_TYPE_EMERGENCY = 2;
    public static final int SERVICE_TYPE_NONE = 0;
    public static final int SERVICE_TYPE_NORMAL = 1;
    private static final String TAG = "ImsCallProfile";
    public Bundle mCallExtras;
    public int mCallType;
    public ImsStreamMediaProfile mMediaProfile;
    public int mRestrictCause;
    public int mServiceType;

    public ImsCallProfile(Parcel parcel) {
        this.mRestrictCause = 0;
        readFromParcel(parcel);
    }

    public static int OIRToPresentation(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 4 ? 3 : 4;
        }
        return 1;
    }

    public static int getCallTypeFromVideoState(int i2) {
        boolean zIsVideoStateSet = isVideoStateSet(i2, 1);
        boolean zIsVideoStateSet2 = isVideoStateSet(i2, 2);
        if (isVideoStateSet(i2, 4)) {
            return 7;
        }
        if (zIsVideoStateSet && !zIsVideoStateSet2) {
            return 5;
        }
        if (zIsVideoStateSet || !zIsVideoStateSet2) {
            return (zIsVideoStateSet && zIsVideoStateSet2) ? 4 : 2;
        }
        return 6;
    }

    public static int getVideoStateFromCallType(int i2) {
        if (i2 == 2) {
            return 0;
        }
        if (i2 == 4) {
            return 3;
        }
        if (i2 != 5) {
            return i2 != 6 ? 0 : 2;
        }
        return 1;
    }

    public static int getVideoStateFromImsCallProfile(ImsCallProfile imsCallProfile) {
        int videoStateFromCallType = getVideoStateFromCallType(imsCallProfile.mCallType);
        return (!imsCallProfile.isVideoPaused() || VideoProfile.isAudioOnly(videoStateFromCallType)) ? videoStateFromCallType & (-5) : videoStateFromCallType | 4;
    }

    private static boolean isVideoStateSet(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    public static int presentationToOIR(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 1;
        }
        int i3 = 3;
        if (i2 != 3) {
            i3 = 4;
            if (i2 != 4) {
                return 0;
            }
        }
        return i3;
    }

    private void readFromParcel(Parcel parcel) {
        this.mServiceType = parcel.readInt();
        this.mCallType = parcel.readInt();
        this.mCallExtras = (Bundle) parcel.readParcelable(null);
        this.mMediaProfile = (ImsStreamMediaProfile) parcel.readParcelable(null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallExtra(String str) {
        return getCallExtra(str, "");
    }

    public boolean getCallExtraBoolean(String str) {
        return getCallExtraBoolean(str, false);
    }

    public int getCallExtraInt(String str) {
        return getCallExtraInt(str, -1);
    }

    public boolean isVideoCall() {
        return VideoProfile.isVideo(getVideoStateFromCallType(this.mCallType));
    }

    public boolean isVideoPaused() {
        return this.mMediaProfile.mVideoDirection == 0;
    }

    public void setCallExtra(String str, String str2) {
        Bundle bundle = this.mCallExtras;
        if (bundle != null) {
            bundle.putString(str, str2);
        }
    }

    public void setCallExtraBoolean(String str, boolean z2) {
        Bundle bundle = this.mCallExtras;
        if (bundle != null) {
            bundle.putBoolean(str, z2);
        }
    }

    public void setCallExtraInt(String str, int i2) {
        Bundle bundle = this.mCallExtras;
        if (bundle != null) {
            bundle.putInt(str, i2);
        }
    }

    public String toString() {
        return "{ serviceType=" + this.mServiceType + ", callType=" + this.mCallType + ", restrictCause=" + this.mRestrictCause + ", mediaProfile=" + this.mMediaProfile.toString() + " }";
    }

    public void updateCallExtras(ImsCallProfile imsCallProfile) {
        this.mCallExtras.clear();
        this.mCallExtras = (Bundle) imsCallProfile.mCallExtras.clone();
    }

    public void updateCallType(ImsCallProfile imsCallProfile) {
        this.mCallType = imsCallProfile.mCallType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mServiceType);
        parcel.writeInt(this.mCallType);
        parcel.writeParcelable(this.mCallExtras, 0);
        parcel.writeParcelable(this.mMediaProfile, 0);
    }

    public String getCallExtra(String str, String str2) {
        Bundle bundle = this.mCallExtras;
        return bundle == null ? str2 : bundle.getString(str, str2);
    }

    public boolean getCallExtraBoolean(String str, boolean z2) {
        Bundle bundle = this.mCallExtras;
        return bundle == null ? z2 : bundle.getBoolean(str, z2);
    }

    public int getCallExtraInt(String str, int i2) {
        Bundle bundle = this.mCallExtras;
        return bundle == null ? i2 : bundle.getInt(str, i2);
    }

    public ImsCallProfile() {
        this.mRestrictCause = 0;
        this.mServiceType = 1;
        this.mCallType = 1;
        this.mCallExtras = new Bundle();
        this.mMediaProfile = new ImsStreamMediaProfile();
    }

    public ImsCallProfile(int i2, int i3) {
        this.mRestrictCause = 0;
        this.mServiceType = i2;
        this.mCallType = i3;
        this.mCallExtras = new Bundle();
        this.mMediaProfile = new ImsStreamMediaProfile();
    }
}
