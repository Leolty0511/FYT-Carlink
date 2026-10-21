package android.telephony.euicc;

import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.UiccAccessRule;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadableSubscription implements Parcelable {
    public static final Parcelable.Creator<DownloadableSubscription> CREATOR = new Parcelable.Creator<DownloadableSubscription>() { // from class: android.telephony.euicc.DownloadableSubscription.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadableSubscription createFromParcel(Parcel parcel) {
            return new DownloadableSubscription(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadableSubscription[] newArray(int i2) {
            return new DownloadableSubscription[i2];
        }
    };
    private UiccAccessRule[] accessRules;
    private String carrierName;
    public final String encodedActivationCode;

    public static DownloadableSubscription forActivationCode(String str) {
        Preconditions.checkNotNull(str, "Activation code may not be null");
        return new DownloadableSubscription(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UiccAccessRule[] getAccessRules() {
        return this.accessRules;
    }

    public String getCarrierName() {
        return this.carrierName;
    }

    public void setAccessRules(UiccAccessRule[] uiccAccessRuleArr) {
        this.accessRules = uiccAccessRuleArr;
    }

    public void setCarrierName(String str) {
        this.carrierName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.encodedActivationCode);
        parcel.writeString(this.carrierName);
        parcel.writeTypedArray(this.accessRules, i2);
    }

    private DownloadableSubscription(String str) {
        this.encodedActivationCode = str;
    }

    private DownloadableSubscription(Parcel parcel) {
        this.encodedActivationCode = parcel.readString();
        this.carrierName = parcel.readString();
        this.accessRules = (UiccAccessRule[]) parcel.createTypedArray(UiccAccessRule.CREATOR);
    }
}
