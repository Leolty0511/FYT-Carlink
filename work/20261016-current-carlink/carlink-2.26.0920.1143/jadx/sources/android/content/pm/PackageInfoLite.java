package android.content.pm;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PackageInfoLite implements Parcelable {
    public static final Parcelable.Creator<PackageInfoLite> CREATOR = new Parcelable.Creator<PackageInfoLite>() { // from class: android.content.pm.PackageInfoLite.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageInfoLite createFromParcel(Parcel parcel) {
            return new PackageInfoLite(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageInfoLite[] newArray(int i2) {
            return new PackageInfoLite[i2];
        }
    };
    public int baseRevisionCode;
    public int installLocation;
    public boolean multiArch;
    public String packageName;
    public int recommendedInstallLocation;
    public String[] splitNames;
    public int[] splitRevisionCodes;
    public VerifierInfo[] verifiers;
    public int versionCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PackageInfoLite{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        return c.n(sb, this.packageName, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.packageName);
        parcel.writeStringArray(this.splitNames);
        parcel.writeInt(this.versionCode);
        parcel.writeInt(this.baseRevisionCode);
        parcel.writeIntArray(this.splitRevisionCodes);
        parcel.writeInt(this.recommendedInstallLocation);
        parcel.writeInt(this.installLocation);
        parcel.writeInt(this.multiArch ? 1 : 0);
        VerifierInfo[] verifierInfoArr = this.verifiers;
        if (verifierInfoArr == null || verifierInfoArr.length == 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(verifierInfoArr.length);
            parcel.writeTypedArray(this.verifiers, i2);
        }
    }

    public PackageInfoLite() {
    }

    private PackageInfoLite(Parcel parcel) {
        this.packageName = parcel.readString();
        this.splitNames = parcel.createStringArray();
        this.versionCode = parcel.readInt();
        this.baseRevisionCode = parcel.readInt();
        this.splitRevisionCodes = parcel.createIntArray();
        this.recommendedInstallLocation = parcel.readInt();
        this.installLocation = parcel.readInt();
        this.multiArch = parcel.readInt() != 0;
        int i2 = parcel.readInt();
        if (i2 == 0) {
            this.verifiers = new VerifierInfo[0];
            return;
        }
        VerifierInfo[] verifierInfoArr = new VerifierInfo[i2];
        this.verifiers = verifierInfoArr;
        parcel.readTypedArray(verifierInfoArr, VerifierInfo.CREATOR);
    }
}
