package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class CellSignalStrengthLte extends CellSignalStrength implements Parcelable {
    public static final Parcelable.Creator<CellSignalStrengthLte> CREATOR = new Parcelable.Creator<CellSignalStrengthLte>() { // from class: android.telephony.CellSignalStrengthLte.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthLte createFromParcel(Parcel parcel) {
            return new CellSignalStrengthLte(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthLte[] newArray(int i2) {
            return new CellSignalStrengthLte[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellSignalStrengthLte";
    private int mCqi;
    private int mRsrp;
    private int mRsrq;
    private int mRssnr;
    private int mSignalStrength;
    private int mTimingAdvance;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public void copyFrom(CellSignalStrengthLte cellSignalStrengthLte) {
        this.mSignalStrength = cellSignalStrengthLte.mSignalStrength;
        this.mRsrp = cellSignalStrengthLte.mRsrp;
        this.mRsrq = cellSignalStrengthLte.mRsrq;
        this.mRssnr = cellSignalStrengthLte.mRssnr;
        this.mCqi = cellSignalStrengthLte.mCqi;
        this.mTimingAdvance = cellSignalStrengthLte.mTimingAdvance;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.telephony.CellSignalStrength
    public boolean equals(Object obj) {
        try {
            CellSignalStrengthLte cellSignalStrengthLte = (CellSignalStrengthLte) obj;
            return obj != null && this.mSignalStrength == cellSignalStrengthLte.mSignalStrength && this.mRsrp == cellSignalStrengthLte.mRsrp && this.mRsrq == cellSignalStrengthLte.mRsrq && this.mRssnr == cellSignalStrengthLte.mRssnr && this.mCqi == cellSignalStrengthLte.mCqi && this.mTimingAdvance == cellSignalStrengthLte.mTimingAdvance;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // android.telephony.CellSignalStrength
    public int getAsuLevel() {
        int dbm = getDbm();
        if (dbm == Integer.MAX_VALUE) {
            return 99;
        }
        if (dbm <= -140) {
            return 0;
        }
        if (dbm >= -43) {
            return 97;
        }
        return dbm + 140;
    }

    public int getCqi() {
        return this.mCqi;
    }

    @Override // android.telephony.CellSignalStrength
    public int getDbm() {
        return this.mRsrp;
    }

    @Override // android.telephony.CellSignalStrength
    public int getLevel() {
        int i2;
        int i3 = this.mRsrp;
        int i4 = 2;
        if (i3 == Integer.MAX_VALUE) {
            i2 = 0;
        } else if (i3 >= -95) {
            i2 = 4;
        } else if (i3 >= -105) {
            i2 = 3;
        } else {
            i2 = i3 >= -115 ? 2 : 1;
        }
        int i5 = this.mRssnr;
        if (i5 == Integer.MAX_VALUE) {
            i4 = 0;
        } else if (i5 >= 45) {
            i4 = 4;
        } else if (i5 >= 10) {
            i4 = 3;
        } else if (i5 < -30) {
            i4 = 1;
        }
        return (i3 != Integer.MAX_VALUE && (i5 == Integer.MAX_VALUE || i4 >= i2)) ? i2 : i4;
    }

    public int getRsrp() {
        return this.mRsrp;
    }

    public int getRsrq() {
        return this.mRsrq;
    }

    public int getRssnr() {
        return this.mRssnr;
    }

    public int getTimingAdvance() {
        return this.mTimingAdvance;
    }

    @Override // android.telephony.CellSignalStrength
    public int hashCode() {
        return (this.mTimingAdvance * 31) + (this.mCqi * 31) + (this.mRssnr * 31) + (this.mRsrq * 31) + (this.mRsrp * 31) + (this.mSignalStrength * 31);
    }

    public void initialize(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mSignalStrength = i2;
        this.mRsrp = i3;
        this.mRsrq = i4;
        this.mRssnr = i5;
        this.mCqi = i6;
        this.mTimingAdvance = i7;
    }

    @Override // android.telephony.CellSignalStrength
    public void setDefaultValues() {
        this.mSignalStrength = Integer.MAX_VALUE;
        this.mRsrp = Integer.MAX_VALUE;
        this.mRsrq = Integer.MAX_VALUE;
        this.mRssnr = Integer.MAX_VALUE;
        this.mCqi = Integer.MAX_VALUE;
        this.mTimingAdvance = Integer.MAX_VALUE;
    }

    public String toString() {
        return "CellSignalStrengthLte: ss=" + this.mSignalStrength + " rsrp=" + this.mRsrp + " rsrq=" + this.mRsrq + " rssnr=" + this.mRssnr + " cqi=" + this.mCqi + " ta=" + this.mTimingAdvance;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSignalStrength);
        int i3 = this.mRsrp;
        parcel.writeInt(i3 * (i3 != Integer.MAX_VALUE ? -1 : 1));
        int i4 = this.mRsrq;
        parcel.writeInt(i4 * (i4 == Integer.MAX_VALUE ? 1 : -1));
        parcel.writeInt(this.mRssnr);
        parcel.writeInt(this.mCqi);
        parcel.writeInt(this.mTimingAdvance);
    }

    public CellSignalStrengthLte() {
        setDefaultValues();
    }

    @Override // android.telephony.CellSignalStrength
    public CellSignalStrengthLte copy() {
        return new CellSignalStrengthLte(this);
    }

    public CellSignalStrengthLte(int i2, int i3, int i4, int i5, int i6, int i7) {
        initialize(i2, i3, i4, i5, i6, i7);
    }

    public CellSignalStrengthLte(CellSignalStrengthLte cellSignalStrengthLte) {
        copyFrom(cellSignalStrengthLte);
    }

    public void initialize(SignalStrength signalStrength, int i2) {
        this.mSignalStrength = signalStrength.getLteSignalStrength();
        this.mRsrp = signalStrength.getLteRsrp();
        this.mRsrq = signalStrength.getLteRsrq();
        this.mRssnr = signalStrength.getLteRssnr();
        this.mCqi = signalStrength.getLteCqi();
        this.mTimingAdvance = i2;
    }

    private CellSignalStrengthLte(Parcel parcel) {
        this.mSignalStrength = parcel.readInt();
        int i2 = parcel.readInt();
        this.mRsrp = i2;
        if (i2 != Integer.MAX_VALUE) {
            this.mRsrp = i2 * (-1);
        }
        int i3 = parcel.readInt();
        this.mRsrq = i3;
        if (i3 != Integer.MAX_VALUE) {
            this.mRsrq = i3 * (-1);
        }
        this.mRssnr = parcel.readInt();
        this.mCqi = parcel.readInt();
        this.mTimingAdvance = parcel.readInt();
    }
}
