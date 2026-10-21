package android.service.euicc;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class GetEuiccProfileInfoListResult implements Parcelable {
    public static final Parcelable.Creator<GetEuiccProfileInfoListResult> CREATOR = new Parcelable.Creator<GetEuiccProfileInfoListResult>() { // from class: android.service.euicc.GetEuiccProfileInfoListResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetEuiccProfileInfoListResult createFromParcel(Parcel parcel) {
            return new GetEuiccProfileInfoListResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetEuiccProfileInfoListResult[] newArray(int i2) {
            return new GetEuiccProfileInfoListResult[i2];
        }
    };
    public final boolean isRemovable;
    public final EuiccProfileInfo[] profiles;
    public final int result;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.result);
        parcel.writeTypedArray(this.profiles, i2);
        parcel.writeBoolean(this.isRemovable);
    }

    public GetEuiccProfileInfoListResult(int i2, EuiccProfileInfo[] euiccProfileInfoArr, boolean z2) {
        this.result = i2;
        this.isRemovable = z2;
        if (i2 == 0) {
            this.profiles = euiccProfileInfoArr;
        } else {
            if (euiccProfileInfoArr != null) {
                throw new IllegalArgumentException(c.d("Error result with non-null profiles: ", i2));
            }
            this.profiles = null;
        }
    }

    private GetEuiccProfileInfoListResult(Parcel parcel) {
        this.result = parcel.readInt();
        this.profiles = (EuiccProfileInfo[]) parcel.createTypedArray(EuiccProfileInfo.CREATOR);
        this.isRemovable = parcel.readBoolean();
    }
}
