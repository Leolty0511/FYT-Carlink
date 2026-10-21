package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CellInfoWcdma extends CellInfo {
    public static final Parcelable.Creator<CellInfoWcdma> CREATOR = new Parcelable.Creator<CellInfoWcdma>() { // from class: android.telephony.CellInfoWcdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoWcdma createFromParcel(Parcel parcel) {
            parcel.readInt();
            return CellInfoWcdma.createFromParcelBody(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoWcdma[] newArray(int i2) {
            return new CellInfoWcdma[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellInfoWcdma";
    private CellIdentityWcdma mCellIdentityWcdma;
    private CellSignalStrengthWcdma mCellSignalStrengthWcdma;

    public CellInfoWcdma() {
        this.mCellIdentityWcdma = new CellIdentityWcdma();
        this.mCellSignalStrengthWcdma = new CellSignalStrengthWcdma();
    }

    public static CellInfoWcdma createFromParcelBody(Parcel parcel) {
        return new CellInfoWcdma(parcel);
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
            CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) obj;
            return this.mCellIdentityWcdma.equals(cellInfoWcdma.mCellIdentityWcdma) && this.mCellSignalStrengthWcdma.equals(cellInfoWcdma.mCellSignalStrengthWcdma);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public CellIdentityWcdma getCellIdentity() {
        return this.mCellIdentityWcdma;
    }

    public CellSignalStrengthWcdma getCellSignalStrength() {
        return this.mCellSignalStrengthWcdma;
    }

    @Override // android.telephony.CellInfo
    public int hashCode() {
        return super.hashCode() + this.mCellIdentityWcdma.hashCode() + this.mCellSignalStrengthWcdma.hashCode();
    }

    public void setCellIdentity(CellIdentityWcdma cellIdentityWcdma) {
        this.mCellIdentityWcdma = cellIdentityWcdma;
    }

    public void setCellSignalStrength(CellSignalStrengthWcdma cellSignalStrengthWcdma) {
        this.mCellSignalStrengthWcdma = cellSignalStrengthWcdma;
    }

    @Override // android.telephony.CellInfo
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CellInfoWcdma:{");
        stringBuffer.append(super.toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.mCellIdentityWcdma);
        stringBuffer.append(" ");
        stringBuffer.append(this.mCellSignalStrengthWcdma);
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    @Override // android.telephony.CellInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2, 4);
        this.mCellIdentityWcdma.writeToParcel(parcel, i2);
        this.mCellSignalStrengthWcdma.writeToParcel(parcel, i2);
    }

    public CellInfoWcdma(CellInfoWcdma cellInfoWcdma) {
        super(cellInfoWcdma);
        this.mCellIdentityWcdma = cellInfoWcdma.mCellIdentityWcdma.copy();
        this.mCellSignalStrengthWcdma = cellInfoWcdma.mCellSignalStrengthWcdma.copy();
    }

    private CellInfoWcdma(Parcel parcel) {
        super(parcel);
        this.mCellIdentityWcdma = CellIdentityWcdma.CREATOR.createFromParcel(parcel);
        this.mCellSignalStrengthWcdma = CellSignalStrengthWcdma.CREATOR.createFromParcel(parcel);
    }
}
