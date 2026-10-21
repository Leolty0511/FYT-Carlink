package android.security.keymaster;

import android.content.pm.Signature;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class KeyAttestationPackageInfo implements Parcelable {
    public static final Parcelable.Creator<KeyAttestationPackageInfo> CREATOR = new Parcelable.Creator<KeyAttestationPackageInfo>() { // from class: android.security.keymaster.KeyAttestationPackageInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyAttestationPackageInfo createFromParcel(Parcel parcel) {
            return new KeyAttestationPackageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyAttestationPackageInfo[] newArray(int i2) {
            return new KeyAttestationPackageInfo[i2];
        }
    };
    private final String mPackageName;
    private final Signature[] mPackageSignatures;
    private final int mPackageVersionCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Signature[] getPackageSignatures() {
        return this.mPackageSignatures;
    }

    public int getPackageVersionCode() {
        return this.mPackageVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mPackageVersionCode);
        parcel.writeTypedArray(this.mPackageSignatures, i2);
    }

    public KeyAttestationPackageInfo(String str, int i2, Signature[] signatureArr) {
        this.mPackageName = str;
        this.mPackageVersionCode = i2;
        this.mPackageSignatures = signatureArr;
    }

    private KeyAttestationPackageInfo(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mPackageVersionCode = parcel.readInt();
        this.mPackageSignatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
    }
}
