package android.service.euicc;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.UiccAccessRule;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class EuiccProfileInfo implements Parcelable {
    public static final Parcelable.Creator<EuiccProfileInfo> CREATOR = new Parcelable.Creator<EuiccProfileInfo>() { // from class: android.service.euicc.EuiccProfileInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EuiccProfileInfo createFromParcel(Parcel parcel) {
            return new EuiccProfileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EuiccProfileInfo[] newArray(int i2) {
            return new EuiccProfileInfo[i2];
        }
    };
    public final UiccAccessRule[] accessRules;
    public final String iccid;
    public final String nickname;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.iccid);
        parcel.writeTypedArray(this.accessRules, i2);
        parcel.writeString(this.nickname);
    }

    public EuiccProfileInfo(String str, UiccAccessRule[] uiccAccessRuleArr, String str2) {
        if (!TextUtils.isDigitsOnly(str)) {
            throw new IllegalArgumentException(c.j("iccid contains invalid characters: ", str));
        }
        this.iccid = str;
        this.accessRules = uiccAccessRuleArr;
        this.nickname = str2;
    }

    private EuiccProfileInfo(Parcel parcel) {
        this.iccid = parcel.readString();
        this.accessRules = (UiccAccessRule[]) parcel.createTypedArray(UiccAccessRule.CREATOR);
        this.nickname = parcel.readString();
    }
}
