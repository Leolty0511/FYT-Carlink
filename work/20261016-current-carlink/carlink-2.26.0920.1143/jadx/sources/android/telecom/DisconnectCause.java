package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.android.internal.telephony.IccCardConstants;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DisconnectCause implements Parcelable {
    public static final int ANSWERED_ELSEWHERE = 11;
    public static final int BUSY = 7;
    public static final int CALL_PULLED = 12;
    public static final int CANCELED = 4;
    public static final int CONNECTION_MANAGER_NOT_SUPPORTED = 10;
    public static final Parcelable.Creator<DisconnectCause> CREATOR = new Parcelable.Creator<DisconnectCause>() { // from class: android.telecom.DisconnectCause.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisconnectCause createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            return new DisconnectCause(i2, creator.createFromParcel(parcel), creator.createFromParcel(parcel), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisconnectCause[] newArray(int i2) {
            return new DisconnectCause[i2];
        }
    };
    public static final int ERROR = 1;
    public static final int LOCAL = 2;
    public static final int MISSED = 5;
    public static final int OTHER = 9;
    public static final int REASON_CALL_CANCEL_BY_NETWORK = 64;
    public static final String REASON_IMS_ACCESS_BLOCKED = "REASON_IMS_ACCESS_BLOCKED";
    public static final String REASON_WIFI_ON_BUT_WFC_OFF = "REASON_WIFI_ON_BUT_WFC_OFF";
    public static final int REJECTED = 6;
    public static final int REMOTE = 3;
    public static final int RESTRICTED = 8;
    public static final int UNKNOWN = 0;
    private int mDisconnectCode;
    private CharSequence mDisconnectDescription;
    private CharSequence mDisconnectLabel;
    private String mDisconnectReason;
    private int mToneToPlay;

    public DisconnectCause(int i2) {
        this(i2, null, null, null, -1);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DisconnectCause)) {
            return false;
        }
        DisconnectCause disconnectCause = (DisconnectCause) obj;
        return Objects.equals(Integer.valueOf(this.mDisconnectCode), Integer.valueOf(disconnectCause.getCode())) && Objects.equals(this.mDisconnectLabel, disconnectCause.getLabel()) && Objects.equals(this.mDisconnectDescription, disconnectCause.getDescription()) && Objects.equals(this.mDisconnectReason, disconnectCause.getReason()) && Objects.equals(Integer.valueOf(this.mToneToPlay), Integer.valueOf(disconnectCause.getTone()));
    }

    public int getCode() {
        return this.mDisconnectCode;
    }

    public CharSequence getDescription() {
        return this.mDisconnectDescription;
    }

    public CharSequence getLabel() {
        return this.mDisconnectLabel;
    }

    public String getReason() {
        return this.mDisconnectReason;
    }

    public int getTone() {
        return this.mToneToPlay;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.mToneToPlay)) + Objects.hashCode(this.mDisconnectReason) + Objects.hashCode(this.mDisconnectDescription) + Objects.hashCode(this.mDisconnectLabel) + Objects.hashCode(Integer.valueOf(this.mDisconnectCode));
    }

    public String toString() {
        String str;
        switch (this.mDisconnectCode) {
            case 0:
                str = IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
                break;
            case 1:
                str = "ERROR";
                break;
            case 2:
                str = CalendarContract.ACCOUNT_TYPE_LOCAL;
                break;
            case 3:
                str = "REMOTE";
                break;
            case 4:
                str = "CANCELED";
                break;
            case 5:
                str = "MISSED";
                break;
            case 6:
                str = "REJECTED";
                break;
            case 7:
                str = "BUSY";
                break;
            case 8:
                str = "RESTRICTED";
                break;
            case 9:
                str = "OTHER";
                break;
            case 10:
                str = "CONNECTION_MANAGER_NOT_SUPPORTED";
                break;
            case 11:
                str = "ANSWERED_ELSEWHERE";
                break;
            case 12:
                str = "CALL_PULLED";
                break;
            default:
                str = "invalid code: " + this.mDisconnectCode;
                break;
        }
        CharSequence charSequence = this.mDisconnectLabel;
        String string = charSequence == null ? "" : charSequence.toString();
        CharSequence charSequence2 = this.mDisconnectDescription;
        String string2 = charSequence2 == null ? "" : charSequence2.toString();
        String str2 = this.mDisconnectReason;
        String str3 = str2 != null ? str2 : "";
        StringBuilder sbW = android.accessibilityservice.c.w("DisconnectCause [ Code: (", str, ") Label: (", string, ") Description: (");
        sbW.append(string2);
        sbW.append(") Reason: (");
        sbW.append(str3);
        sbW.append(") Tone: (");
        return android.accessibilityservice.c.m(sbW, this.mToneToPlay, ") ]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mDisconnectCode);
        TextUtils.writeToParcel(this.mDisconnectLabel, parcel, i2);
        TextUtils.writeToParcel(this.mDisconnectDescription, parcel, i2);
        parcel.writeString(this.mDisconnectReason);
        parcel.writeInt(this.mToneToPlay);
    }

    public DisconnectCause(int i2, String str) {
        this(i2, null, null, str, -1);
    }

    public DisconnectCause(int i2, CharSequence charSequence, CharSequence charSequence2, String str) {
        this(i2, charSequence, charSequence2, str, -1);
    }

    public DisconnectCause(int i2, CharSequence charSequence, CharSequence charSequence2, String str, int i3) {
        this.mDisconnectCode = i2;
        this.mDisconnectLabel = charSequence;
        this.mDisconnectDescription = charSequence2;
        this.mDisconnectReason = str;
        this.mToneToPlay = i3;
    }
}
