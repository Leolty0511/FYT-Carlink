package android.telephony;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class CellInfoLte extends CellInfo {
    public static final Parcelable.Creator<CellInfoLte> CREATOR = new Parcelable.Creator<CellInfoLte>() { // from class: android.telephony.CellInfoLte.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoLte createFromParcel(Parcel parcel) {
            parcel.readInt();
            return CellInfoLte.createFromParcelBody(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoLte[] newArray(int i2) {
            return new CellInfoLte[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellInfoLte";
    private CellIdentityLte mCellIdentityLte;
    private CellSignalStrengthLte mCellSignalStrengthLte;

    public CellInfoLte() {
        this.mCellIdentityLte = new CellIdentityLte();
        this.mCellSignalStrengthLte = new CellSignalStrengthLte();
    }

    public static CellInfoLte createFromParcelBody(Parcel parcel) {
        return new CellInfoLte(parcel);
    }

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    @Override // android.telephony.CellInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.telephony.CellInfo
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        try {
            CellInfoLte cellInfoLte = (CellInfoLte) obj;
            return this.mCellIdentityLte.equals(cellInfoLte.mCellIdentityLte) && this.mCellSignalStrengthLte.equals(cellInfoLte.mCellSignalStrengthLte);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public CellIdentityLte getCellIdentity() {
        return this.mCellIdentityLte;
    }

    public CellSignalStrengthLte getCellSignalStrength() {
        return this.mCellSignalStrengthLte;
    }

    @Override // android.telephony.CellInfo
    public int hashCode() {
        return this.mCellSignalStrengthLte.hashCode() + this.mCellIdentityLte.hashCode() + super.hashCode();
    }

    public void setCellIdentity(CellIdentityLte cellIdentityLte) {
        this.mCellIdentityLte = cellIdentityLte;
    }

    public void setCellSignalStrength(CellSignalStrengthLte cellSignalStrengthLte) {
        this.mCellSignalStrengthLte = cellSignalStrengthLte;
    }

    @Override // android.telephony.CellInfo
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("CellInfoLte:{");
        stringBuffer.append(super.toString());
        stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        stringBuffer.append(this.mCellIdentityLte);
        stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        stringBuffer.append(this.mCellSignalStrengthLte);
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    @Override // android.telephony.CellInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2, 3);
        this.mCellIdentityLte.writeToParcel(parcel, i2);
        this.mCellSignalStrengthLte.writeToParcel(parcel, i2);
    }

    public CellInfoLte(CellInfoLte cellInfoLte) {
        super(cellInfoLte);
        this.mCellIdentityLte = cellInfoLte.mCellIdentityLte.copy();
        this.mCellSignalStrengthLte = cellInfoLte.mCellSignalStrengthLte.copy();
    }

    private CellInfoLte(Parcel parcel) {
        super(parcel);
        this.mCellIdentityLte = CellIdentityLte.CREATOR.createFromParcel(parcel);
        this.mCellSignalStrengthLte = CellSignalStrengthLte.CREATOR.createFromParcel(parcel);
    }
}
