package android.telephony;

import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class CellSignalStrengthGsm extends CellSignalStrength implements Parcelable {
    public static final Parcelable.Creator<CellSignalStrengthGsm> CREATOR = new Parcelable.Creator<CellSignalStrengthGsm>() { // from class: android.telephony.CellSignalStrengthGsm.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthGsm createFromParcel(Parcel parcel) {
            return new CellSignalStrengthGsm(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthGsm[] newArray(int i2) {
            return new CellSignalStrengthGsm[i2];
        }
    };
    private static final boolean DBG = false;
    private static final int GSM_SIGNAL_STRENGTH_GOOD = 8;
    private static final int GSM_SIGNAL_STRENGTH_GREAT = 12;
    private static final int GSM_SIGNAL_STRENGTH_MODERATE = 5;
    private static final String LOG_TAG = "CellSignalStrengthGsm";
    private int mBitErrorRate;
    private int mSignalStrength;
    private int mTimingAdvance;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public void copyFrom(CellSignalStrengthGsm cellSignalStrengthGsm) {
        this.mSignalStrength = cellSignalStrengthGsm.mSignalStrength;
        this.mBitErrorRate = cellSignalStrengthGsm.mBitErrorRate;
        this.mTimingAdvance = cellSignalStrengthGsm.mTimingAdvance;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.telephony.CellSignalStrength
    public boolean equals(Object obj) {
        try {
            CellSignalStrengthGsm cellSignalStrengthGsm = (CellSignalStrengthGsm) obj;
            return obj != null && this.mSignalStrength == cellSignalStrengthGsm.mSignalStrength && this.mBitErrorRate == cellSignalStrengthGsm.mBitErrorRate && cellSignalStrengthGsm.mTimingAdvance == this.mTimingAdvance;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // android.telephony.CellSignalStrength
    public int getAsuLevel() {
        return this.mSignalStrength;
    }

    @Override // android.telephony.CellSignalStrength
    public int getDbm() {
        int i2 = this.mSignalStrength;
        if (i2 == 99) {
            i2 = Integer.MAX_VALUE;
        }
        if (i2 != Integer.MAX_VALUE) {
            return (i2 * 2) + PackageManager.INSTALL_FAILED_NO_MATCHING_ABIS;
        }
        return Integer.MAX_VALUE;
    }

    @Override // android.telephony.CellSignalStrength
    public int getLevel() {
        int i2 = this.mSignalStrength;
        if (i2 <= 2 || i2 == 99) {
            return 0;
        }
        if (i2 >= 12) {
            return 4;
        }
        if (i2 >= 8) {
            return 3;
        }
        return i2 >= 5 ? 2 : 1;
    }

    public int getTimingAdvance() {
        return this.mTimingAdvance;
    }

    @Override // android.telephony.CellSignalStrength
    public int hashCode() {
        return (this.mBitErrorRate * 31) + (this.mSignalStrength * 31);
    }

    public void initialize(int i2, int i3) {
        this.mSignalStrength = i2;
        this.mBitErrorRate = i3;
        this.mTimingAdvance = Integer.MAX_VALUE;
    }

    @Override // android.telephony.CellSignalStrength
    public void setDefaultValues() {
        this.mSignalStrength = Integer.MAX_VALUE;
        this.mBitErrorRate = Integer.MAX_VALUE;
        this.mTimingAdvance = Integer.MAX_VALUE;
    }

    public String toString() {
        return "CellSignalStrengthGsm: ss=" + this.mSignalStrength + " ber=" + this.mBitErrorRate + " mTa=" + this.mTimingAdvance;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSignalStrength);
        parcel.writeInt(this.mBitErrorRate);
        parcel.writeInt(this.mTimingAdvance);
    }

    public CellSignalStrengthGsm() {
        setDefaultValues();
    }

    @Override // android.telephony.CellSignalStrength
    public CellSignalStrengthGsm copy() {
        return new CellSignalStrengthGsm(this);
    }

    public CellSignalStrengthGsm(int i2, int i3) {
        initialize(i2, i3);
    }

    public void initialize(int i2, int i3, int i4) {
        this.mSignalStrength = i2;
        this.mBitErrorRate = i3;
        this.mTimingAdvance = i4;
    }

    public CellSignalStrengthGsm(CellSignalStrengthGsm cellSignalStrengthGsm) {
        copyFrom(cellSignalStrengthGsm);
    }

    private CellSignalStrengthGsm(Parcel parcel) {
        this.mSignalStrength = parcel.readInt();
        this.mBitErrorRate = parcel.readInt();
        this.mTimingAdvance = parcel.readInt();
    }
}
