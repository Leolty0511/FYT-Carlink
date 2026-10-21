package android.telephony.cdma;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class CdmaSmsCbProgramResults implements Parcelable {
    public static final Parcelable.Creator<CdmaSmsCbProgramResults> CREATOR = new Parcelable.Creator<CdmaSmsCbProgramResults>() { // from class: android.telephony.cdma.CdmaSmsCbProgramResults.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CdmaSmsCbProgramResults createFromParcel(Parcel parcel) {
            return new CdmaSmsCbProgramResults(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CdmaSmsCbProgramResults[] newArray(int i2) {
            return new CdmaSmsCbProgramResults[i2];
        }
    };
    public static final int RESULT_CATEGORY_ALREADY_ADDED = 3;
    public static final int RESULT_CATEGORY_ALREADY_DELETED = 4;
    public static final int RESULT_CATEGORY_LIMIT_EXCEEDED = 2;
    public static final int RESULT_INVALID_ALERT_OPTION = 6;
    public static final int RESULT_INVALID_CATEGORY_NAME = 7;
    public static final int RESULT_INVALID_MAX_MESSAGES = 5;
    public static final int RESULT_MEMORY_LIMIT_EXCEEDED = 1;
    public static final int RESULT_SUCCESS = 0;
    public static final int RESULT_UNSPECIFIED_FAILURE = 8;
    private final int mCategory;
    private final int mCategoryResult;
    private final int mLanguage;

    public CdmaSmsCbProgramResults(int i2, int i3, int i4) {
        this.mCategory = i2;
        this.mLanguage = i3;
        this.mCategoryResult = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCategory() {
        return this.mCategory;
    }

    public int getCategoryResult() {
        return this.mCategoryResult;
    }

    public int getLanguage() {
        return this.mLanguage;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CdmaSmsCbProgramResults{category=");
        sb.append(this.mCategory);
        sb.append(", language=");
        sb.append(this.mLanguage);
        sb.append(", result=");
        return m.j(sb, this.mCategoryResult, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCategory);
        parcel.writeInt(this.mLanguage);
        parcel.writeInt(this.mCategoryResult);
    }

    public CdmaSmsCbProgramResults(Parcel parcel) {
        this.mCategory = parcel.readInt();
        this.mLanguage = parcel.readInt();
        this.mCategoryResult = parcel.readInt();
    }
}
