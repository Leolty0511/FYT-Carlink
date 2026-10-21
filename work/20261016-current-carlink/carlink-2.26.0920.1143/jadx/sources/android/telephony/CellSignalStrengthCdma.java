package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class CellSignalStrengthCdma extends CellSignalStrength implements Parcelable {
    public static final Parcelable.Creator<CellSignalStrengthCdma> CREATOR = new Parcelable.Creator<CellSignalStrengthCdma>() { // from class: android.telephony.CellSignalStrengthCdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthCdma createFromParcel(Parcel parcel) {
            return new CellSignalStrengthCdma(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthCdma[] newArray(int i2) {
            return new CellSignalStrengthCdma[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellSignalStrengthCdma";
    private int mCdmaDbm;
    private int mCdmaEcio;
    private int mEvdoDbm;
    private int mEvdoEcio;
    private int mEvdoSnr;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public void copyFrom(CellSignalStrengthCdma cellSignalStrengthCdma) {
        this.mCdmaDbm = cellSignalStrengthCdma.mCdmaDbm;
        this.mCdmaEcio = cellSignalStrengthCdma.mCdmaEcio;
        this.mEvdoDbm = cellSignalStrengthCdma.mEvdoDbm;
        this.mEvdoEcio = cellSignalStrengthCdma.mEvdoEcio;
        this.mEvdoSnr = cellSignalStrengthCdma.mEvdoSnr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.telephony.CellSignalStrength
    public boolean equals(Object obj) {
        try {
            CellSignalStrengthCdma cellSignalStrengthCdma = (CellSignalStrengthCdma) obj;
            return obj != null && this.mCdmaDbm == cellSignalStrengthCdma.mCdmaDbm && this.mCdmaEcio == cellSignalStrengthCdma.mCdmaEcio && this.mEvdoDbm == cellSignalStrengthCdma.mEvdoDbm && this.mEvdoEcio == cellSignalStrengthCdma.mEvdoEcio && this.mEvdoSnr == cellSignalStrengthCdma.mEvdoSnr;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    /* JADX WARN: Code duplicated, block: B:4:0x001a  */
    @Override // android.telephony.CellSignalStrength
    public int getAsuLevel() {
        int i2;
        int cdmaDbm = getCdmaDbm();
        int cdmaEcio = getCdmaEcio();
        int i3 = 1;
        if (cdmaDbm == Integer.MAX_VALUE) {
            i2 = 99;
        } else if (cdmaDbm >= -75) {
            i2 = 16;
        } else if (cdmaDbm >= -82) {
            i2 = 8;
        } else if (cdmaDbm >= -90) {
            i2 = 4;
        } else if (cdmaDbm >= -95) {
            i2 = 2;
        } else if (cdmaDbm >= -100) {
            i2 = 1;
        } else {
            i2 = 99;
        }
        if (cdmaEcio == Integer.MAX_VALUE) {
            i3 = 99;
        } else if (cdmaEcio >= -90) {
            i3 = 16;
        } else if (cdmaEcio >= -100) {
            i3 = 8;
        } else if (cdmaEcio >= -115) {
            i3 = 4;
        } else if (cdmaEcio >= -130) {
            i3 = 2;
        } else if (cdmaEcio < -150) {
            i3 = 99;
        }
        return i2 < i3 ? i2 : i3;
    }

    public int getCdmaDbm() {
        return this.mCdmaDbm;
    }

    public int getCdmaEcio() {
        return this.mCdmaEcio;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    /* JADX WARN: Code duplicated, block: B:4:0x0012  */
    public int getCdmaLevel() {
        int i2;
        int cdmaDbm = getCdmaDbm();
        int cdmaEcio = getCdmaEcio();
        int i3 = 1;
        if (cdmaDbm == Integer.MAX_VALUE) {
            i2 = 0;
        } else if (cdmaDbm >= -75) {
            i2 = 4;
        } else if (cdmaDbm >= -85) {
            i2 = 3;
        } else if (cdmaDbm >= -95) {
            i2 = 2;
        } else if (cdmaDbm >= -100) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (cdmaEcio == Integer.MAX_VALUE) {
            i3 = 0;
        } else if (cdmaEcio >= -90) {
            i3 = 4;
        } else if (cdmaEcio >= -110) {
            i3 = 3;
        } else if (cdmaEcio >= -130) {
            i3 = 2;
        } else if (cdmaEcio < -150) {
            i3 = 0;
        }
        return i2 < i3 ? i2 : i3;
    }

    @Override // android.telephony.CellSignalStrength
    public int getDbm() {
        int cdmaDbm = getCdmaDbm();
        int evdoDbm = getEvdoDbm();
        return cdmaDbm < evdoDbm ? cdmaDbm : evdoDbm;
    }

    public int getEvdoDbm() {
        return this.mEvdoDbm;
    }

    public int getEvdoEcio() {
        return this.mEvdoEcio;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    /* JADX WARN: Code duplicated, block: B:4:0x0012  */
    public int getEvdoLevel() {
        int i2;
        int evdoDbm = getEvdoDbm();
        int evdoSnr = getEvdoSnr();
        int i3 = 2;
        if (evdoDbm == Integer.MAX_VALUE) {
            i2 = 0;
        } else if (evdoDbm >= -65) {
            i2 = 4;
        } else if (evdoDbm >= -75) {
            i2 = 3;
        } else if (evdoDbm >= -90) {
            i2 = 2;
        } else if (evdoDbm >= -105) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (evdoSnr == Integer.MAX_VALUE) {
            i3 = 0;
        } else if (evdoSnr >= 7) {
            i3 = 4;
        } else if (evdoSnr >= 5) {
            i3 = 3;
        } else if (evdoSnr < 3) {
            if (evdoSnr >= 1) {
                i3 = 1;
            } else {
                i3 = 0;
            }
        }
        return i2 < i3 ? i2 : i3;
    }

    public int getEvdoSnr() {
        return this.mEvdoSnr;
    }

    @Override // android.telephony.CellSignalStrength
    public int getLevel() {
        int cdmaLevel = getCdmaLevel();
        int evdoLevel = getEvdoLevel();
        if (evdoLevel == 0) {
            return getCdmaLevel();
        }
        if (cdmaLevel == 0) {
            return getEvdoLevel();
        }
        return cdmaLevel < evdoLevel ? cdmaLevel : evdoLevel;
    }

    @Override // android.telephony.CellSignalStrength
    public int hashCode() {
        return (this.mEvdoSnr * 31) + (this.mEvdoEcio * 31) + (this.mEvdoDbm * 31) + (this.mCdmaEcio * 31) + (this.mCdmaDbm * 31);
    }

    public void initialize(int i2, int i3, int i4, int i5, int i6) {
        this.mCdmaDbm = i2;
        this.mCdmaEcio = i3;
        this.mEvdoDbm = i4;
        this.mEvdoEcio = i5;
        this.mEvdoSnr = i6;
    }

    public void setCdmaDbm(int i2) {
        this.mCdmaDbm = i2;
    }

    public void setCdmaEcio(int i2) {
        this.mCdmaEcio = i2;
    }

    @Override // android.telephony.CellSignalStrength
    public void setDefaultValues() {
        this.mCdmaDbm = Integer.MAX_VALUE;
        this.mCdmaEcio = Integer.MAX_VALUE;
        this.mEvdoDbm = Integer.MAX_VALUE;
        this.mEvdoEcio = Integer.MAX_VALUE;
        this.mEvdoSnr = Integer.MAX_VALUE;
    }

    public void setEvdoDbm(int i2) {
        this.mEvdoDbm = i2;
    }

    public void setEvdoEcio(int i2) {
        this.mEvdoEcio = i2;
    }

    public void setEvdoSnr(int i2) {
        this.mEvdoSnr = i2;
    }

    public String toString() {
        return "CellSignalStrengthCdma: cdmaDbm=" + this.mCdmaDbm + " cdmaEcio=" + this.mCdmaEcio + " evdoDbm=" + this.mEvdoDbm + " evdoEcio=" + this.mEvdoEcio + " evdoSnr=" + this.mEvdoSnr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int i3 = this.mCdmaDbm;
        parcel.writeInt(i3 * (i3 != Integer.MAX_VALUE ? -1 : 1));
        int i4 = this.mCdmaEcio;
        parcel.writeInt(i4 * (i4 != Integer.MAX_VALUE ? -1 : 1));
        int i5 = this.mEvdoDbm;
        parcel.writeInt(i5 * (i5 != Integer.MAX_VALUE ? -1 : 1));
        int i6 = this.mEvdoEcio;
        parcel.writeInt(i6 * (i6 == Integer.MAX_VALUE ? 1 : -1));
        parcel.writeInt(this.mEvdoSnr);
    }

    public CellSignalStrengthCdma() {
        setDefaultValues();
    }

    @Override // android.telephony.CellSignalStrength
    public CellSignalStrengthCdma copy() {
        return new CellSignalStrengthCdma(this);
    }

    public CellSignalStrengthCdma(int i2, int i3, int i4, int i5, int i6) {
        initialize(i2, i3, i4, i5, i6);
    }

    public CellSignalStrengthCdma(CellSignalStrengthCdma cellSignalStrengthCdma) {
        copyFrom(cellSignalStrengthCdma);
    }

    private CellSignalStrengthCdma(Parcel parcel) {
        int i2 = parcel.readInt();
        this.mCdmaDbm = i2;
        if (i2 != Integer.MAX_VALUE) {
            this.mCdmaDbm = i2 * (-1);
        }
        int i3 = parcel.readInt();
        this.mCdmaEcio = i3;
        if (i3 != Integer.MAX_VALUE) {
            this.mCdmaEcio = i3 * (-1);
        }
        int i4 = parcel.readInt();
        this.mEvdoDbm = i4;
        if (i4 != Integer.MAX_VALUE) {
            this.mEvdoDbm = i4 * (-1);
        }
        int i5 = parcel.readInt();
        this.mEvdoEcio = i5;
        if (i5 != Integer.MAX_VALUE) {
            this.mEvdoEcio = i5 * (-1);
        }
        this.mEvdoSnr = parcel.readInt();
    }
}
