package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class KeyAttestationApplicationId implements Parcelable {
    public static final Parcelable.Creator<KeyAttestationApplicationId> CREATOR = new Parcelable.Creator<KeyAttestationApplicationId>() { // from class: android.security.keymaster.KeyAttestationApplicationId.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId createFromParcel(Parcel parcel) {
            return new KeyAttestationApplicationId(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId[] newArray(int i2) {
            return new KeyAttestationApplicationId[i2];
        }
    };
    private final KeyAttestationPackageInfo[] mAttestationPackageInfos;

    public KeyAttestationApplicationId(KeyAttestationPackageInfo[] keyAttestationPackageInfoArr) {
        this.mAttestationPackageInfos = keyAttestationPackageInfoArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public KeyAttestationPackageInfo[] getAttestationPackageInfos() {
        return this.mAttestationPackageInfos;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedArray(this.mAttestationPackageInfos, i2);
    }

    public KeyAttestationApplicationId(Parcel parcel) {
        this.mAttestationPackageInfos = (KeyAttestationPackageInfo[]) parcel.createTypedArray(KeyAttestationPackageInfo.CREATOR);
    }
}
