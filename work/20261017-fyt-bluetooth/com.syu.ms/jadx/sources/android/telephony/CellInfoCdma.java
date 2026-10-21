package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CellInfoCdma extends CellInfo {
    public static final Parcelable.Creator<CellInfoCdma> CREATOR = new Parcelable.Creator<CellInfoCdma>() { // from class: android.telephony.CellInfoCdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoCdma createFromParcel(Parcel parcel) {
            parcel.readInt();
            return CellInfoCdma.createFromParcelBody(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfoCdma[] newArray(int i2) {
            return new CellInfoCdma[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellInfoCdma";
    private CellIdentityCdma mCellIdentityCdma;
    private CellSignalStrengthCdma mCellSignalStrengthCdma;

    public CellInfoCdma() {
        this.mCellIdentityCdma = new CellIdentityCdma();
        this.mCellSignalStrengthCdma = new CellSignalStrengthCdma();
    }

    public static CellInfoCdma createFromParcelBody(Parcel parcel) {
        return new CellInfoCdma(parcel);
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
            CellInfoCdma cellInfoCdma = (CellInfoCdma) obj;
            return this.mCellIdentityCdma.equals(cellInfoCdma.mCellIdentityCdma) && this.mCellSignalStrengthCdma.equals(cellInfoCdma.mCellSignalStrengthCdma);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public CellIdentityCdma getCellIdentity() {
        return this.mCellIdentityCdma;
    }

    public CellSignalStrengthCdma getCellSignalStrength() {
        return this.mCellSignalStrengthCdma;
    }

    @Override // android.telephony.CellInfo
    public int hashCode() {
        return super.hashCode() + this.mCellIdentityCdma.hashCode() + this.mCellSignalStrengthCdma.hashCode();
    }

    public void setCellIdentity(CellIdentityCdma cellIdentityCdma) {
        this.mCellIdentityCdma = cellIdentityCdma;
    }

    public void setCellSignalStrength(CellSignalStrengthCdma cellSignalStrengthCdma) {
        this.mCellSignalStrengthCdma = cellSignalStrengthCdma;
    }

    @Override // android.telephony.CellInfo
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CellInfoCdma:{");
        stringBuffer.append(super.toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.mCellIdentityCdma);
        stringBuffer.append(" ");
        stringBuffer.append(this.mCellSignalStrengthCdma);
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    @Override // android.telephony.CellInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2, 2);
        this.mCellIdentityCdma.writeToParcel(parcel, i2);
        this.mCellSignalStrengthCdma.writeToParcel(parcel, i2);
    }

    public CellInfoCdma(CellInfoCdma cellInfoCdma) {
        super(cellInfoCdma);
        this.mCellIdentityCdma = cellInfoCdma.mCellIdentityCdma.copy();
        this.mCellSignalStrengthCdma = cellInfoCdma.mCellSignalStrengthCdma.copy();
    }

    private CellInfoCdma(Parcel parcel) {
        super(parcel);
        this.mCellIdentityCdma = CellIdentityCdma.CREATOR.createFromParcel(parcel);
        this.mCellSignalStrengthCdma = CellSignalStrengthCdma.CREATOR.createFromParcel(parcel);
    }
}
