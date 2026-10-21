package android.telephony;

import android.hardware.Camera;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SignalStrength implements Parcelable {
    private static final boolean DBG = false;
    public static final int INVALID = Integer.MAX_VALUE;
    private static final String LOG_TAG = "SignalStrength";
    public static final int NUM_SIGNAL_STRENGTH_BINS = 5;
    public static final int SIGNAL_STRENGTH_GOOD = 3;
    public static final int SIGNAL_STRENGTH_GREAT = 4;
    public static final int SIGNAL_STRENGTH_MODERATE = 2;
    public static final int SIGNAL_STRENGTH_NONE_OR_UNKNOWN = 0;
    public static final int SIGNAL_STRENGTH_POOR = 1;
    private boolean isGsm;
    private int mCdmaDbm;
    private int mCdmaEcio;
    private int mEvdoDbm;
    private int mEvdoEcio;
    private int mEvdoSnr;
    private int mGsmBitErrorRate;
    private int mGsmSignalStrength;
    private int mLteCqi;
    private int mLteRsrp;
    private int mLteRsrq;
    private int mLteRssnr;
    private int mLteSignalStrength;
    public static final String[] SIGNAL_STRENGTH_NAMES = {Camera.Parameters.EFFECT_NONE, "poor", "moderate", "good", "great"};
    public static final Parcelable.Creator<SignalStrength> CREATOR = new Parcelable.Creator() { // from class: android.telephony.SignalStrength.1
        @Override // android.os.Parcelable.Creator
        public SignalStrength createFromParcel(Parcel parcel) {
            return new SignalStrength(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SignalStrength[] newArray(int i2) {
            return new SignalStrength[i2];
        }
    };

    public SignalStrength() {
        this.mGsmSignalStrength = 99;
        this.mGsmBitErrorRate = -1;
        this.mCdmaDbm = -1;
        this.mCdmaEcio = -1;
        this.mEvdoDbm = -1;
        this.mEvdoEcio = -1;
        this.mEvdoSnr = -1;
        this.mLteSignalStrength = 99;
        this.mLteRsrp = Integer.MAX_VALUE;
        this.mLteRsrq = Integer.MAX_VALUE;
        this.mLteRssnr = Integer.MAX_VALUE;
        this.mLteCqi = Integer.MAX_VALUE;
        this.isGsm = true;
    }

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public static SignalStrength makeSignalStrengthFromRilParcel(Parcel parcel) {
        SignalStrength signalStrength = new SignalStrength();
        signalStrength.mGsmSignalStrength = parcel.readInt();
        signalStrength.mGsmBitErrorRate = parcel.readInt();
        signalStrength.mCdmaDbm = parcel.readInt();
        signalStrength.mCdmaEcio = parcel.readInt();
        signalStrength.mEvdoDbm = parcel.readInt();
        signalStrength.mEvdoEcio = parcel.readInt();
        signalStrength.mEvdoSnr = parcel.readInt();
        signalStrength.mLteSignalStrength = parcel.readInt();
        signalStrength.mLteRsrp = parcel.readInt();
        signalStrength.mLteRsrq = parcel.readInt();
        signalStrength.mLteRssnr = parcel.readInt();
        signalStrength.mLteCqi = parcel.readInt();
        return signalStrength;
    }

    public static SignalStrength newFromBundle(Bundle bundle) {
        SignalStrength signalStrength = new SignalStrength();
        signalStrength.setFromNotifierBundle(bundle);
        return signalStrength;
    }

    private void setFromNotifierBundle(Bundle bundle) {
        this.mGsmSignalStrength = bundle.getInt("GsmSignalStrength");
        this.mGsmBitErrorRate = bundle.getInt("GsmBitErrorRate");
        this.mCdmaDbm = bundle.getInt("CdmaDbm");
        this.mCdmaEcio = bundle.getInt("CdmaEcio");
        this.mEvdoDbm = bundle.getInt("EvdoDbm");
        this.mEvdoEcio = bundle.getInt("EvdoEcio");
        this.mEvdoSnr = bundle.getInt("EvdoSnr");
        this.mLteSignalStrength = bundle.getInt("LteSignalStrength");
        this.mLteRsrp = bundle.getInt("LteRsrp");
        this.mLteRsrq = bundle.getInt("LteRsrq");
        this.mLteRssnr = bundle.getInt("LteRssnr");
        this.mLteCqi = bundle.getInt("LteCqi");
        this.isGsm = bundle.getBoolean("isGsm");
    }

    public void copyFrom(SignalStrength signalStrength) {
        this.mGsmSignalStrength = signalStrength.mGsmSignalStrength;
        this.mGsmBitErrorRate = signalStrength.mGsmBitErrorRate;
        this.mCdmaDbm = signalStrength.mCdmaDbm;
        this.mCdmaEcio = signalStrength.mCdmaEcio;
        this.mEvdoDbm = signalStrength.mEvdoDbm;
        this.mEvdoEcio = signalStrength.mEvdoEcio;
        this.mEvdoSnr = signalStrength.mEvdoSnr;
        this.mLteSignalStrength = signalStrength.mLteSignalStrength;
        this.mLteRsrp = signalStrength.mLteRsrp;
        this.mLteRsrq = signalStrength.mLteRsrq;
        this.mLteRssnr = signalStrength.mLteRssnr;
        this.mLteCqi = signalStrength.mLteCqi;
        this.isGsm = signalStrength.isGsm;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        try {
            SignalStrength signalStrength = (SignalStrength) obj;
            return obj != null && this.mGsmSignalStrength == signalStrength.mGsmSignalStrength && this.mGsmBitErrorRate == signalStrength.mGsmBitErrorRate && this.mCdmaDbm == signalStrength.mCdmaDbm && this.mCdmaEcio == signalStrength.mCdmaEcio && this.mEvdoDbm == signalStrength.mEvdoDbm && this.mEvdoEcio == signalStrength.mEvdoEcio && this.mEvdoSnr == signalStrength.mEvdoSnr && this.mLteSignalStrength == signalStrength.mLteSignalStrength && this.mLteRsrp == signalStrength.mLteRsrp && this.mLteRsrq == signalStrength.mLteRsrq && this.mLteRssnr == signalStrength.mLteRssnr && this.mLteCqi == signalStrength.mLteCqi && this.isGsm == signalStrength.isGsm;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public void fillInNotifierBundle(Bundle bundle) {
        bundle.putInt("GsmSignalStrength", this.mGsmSignalStrength);
        bundle.putInt("GsmBitErrorRate", this.mGsmBitErrorRate);
        bundle.putInt("CdmaDbm", this.mCdmaDbm);
        bundle.putInt("CdmaEcio", this.mCdmaEcio);
        bundle.putInt("EvdoDbm", this.mEvdoDbm);
        bundle.putInt("EvdoEcio", this.mEvdoEcio);
        bundle.putInt("EvdoSnr", this.mEvdoSnr);
        bundle.putInt("LteSignalStrength", this.mLteSignalStrength);
        bundle.putInt("LteRsrp", this.mLteRsrp);
        bundle.putInt("LteRsrq", this.mLteRsrq);
        bundle.putInt("LteRssnr", this.mLteRssnr);
        bundle.putInt("LteCqi", this.mLteCqi);
        bundle.putBoolean("isGsm", Boolean.valueOf(this.isGsm).booleanValue());
    }

    public int getAsuLevel() {
        if (this.isGsm) {
            return getLteLevel() == 0 ? getGsmAsuLevel() : getLteAsuLevel();
        }
        int cdmaAsuLevel = getCdmaAsuLevel();
        int evdoAsuLevel = getEvdoAsuLevel();
        if (evdoAsuLevel == 0) {
            return cdmaAsuLevel;
        }
        return (cdmaAsuLevel != 0 && cdmaAsuLevel < evdoAsuLevel) ? cdmaAsuLevel : evdoAsuLevel;
    }

    public int getCdmaAsuLevel() {
        int i2;
        int cdmaDbm = getCdmaDbm();
        int cdmaEcio = getCdmaEcio();
        int i3 = 1;
        if (cdmaDbm >= -75) {
            i2 = 16;
        } else if (cdmaDbm >= -82) {
            i2 = 8;
        } else if (cdmaDbm >= -90) {
            i2 = 4;
        } else if (cdmaDbm >= -95) {
            i2 = 2;
        } else {
            i2 = cdmaDbm >= -100 ? 1 : 99;
        }
        if (cdmaEcio >= -90) {
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

    public int getCdmaLevel() {
        int i2;
        int cdmaDbm = getCdmaDbm();
        int cdmaEcio = getCdmaEcio();
        int i3 = 1;
        if (cdmaDbm >= -75) {
            i2 = 4;
        } else if (cdmaDbm >= -85) {
            i2 = 3;
        } else if (cdmaDbm >= -95) {
            i2 = 2;
        } else {
            i2 = cdmaDbm >= -100 ? 1 : 0;
        }
        if (cdmaEcio >= -90) {
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

    public int getDbm() {
        if (isGsm()) {
            return getLteLevel() == 0 ? getGsmDbm() : getLteDbm();
        }
        int cdmaDbm = getCdmaDbm();
        int evdoDbm = getEvdoDbm();
        if (evdoDbm == -120) {
            return cdmaDbm;
        }
        return (cdmaDbm != -120 && cdmaDbm < evdoDbm) ? cdmaDbm : evdoDbm;
    }

    public int getEvdoAsuLevel() {
        int i2;
        int evdoDbm = getEvdoDbm();
        int evdoSnr = getEvdoSnr();
        int i3 = 99;
        if (evdoDbm >= -65) {
            i2 = 16;
        } else if (evdoDbm >= -75) {
            i2 = 8;
        } else if (evdoDbm >= -85) {
            i2 = 4;
        } else if (evdoDbm >= -95) {
            i2 = 2;
        } else {
            i2 = evdoDbm >= -105 ? 1 : 99;
        }
        if (evdoSnr >= 7) {
            i3 = 16;
        } else if (evdoSnr >= 6) {
            i3 = 8;
        } else if (evdoSnr >= 5) {
            i3 = 4;
        } else if (evdoSnr >= 3) {
            i3 = 2;
        } else if (evdoSnr >= 1) {
            i3 = 1;
        }
        return i2 < i3 ? i2 : i3;
    }

    public int getEvdoDbm() {
        return this.mEvdoDbm;
    }

    public int getEvdoEcio() {
        return this.mEvdoEcio;
    }

    public int getEvdoLevel() {
        int i2;
        int evdoDbm = getEvdoDbm();
        int evdoSnr = getEvdoSnr();
        int i3 = 0;
        if (evdoDbm >= -65) {
            i2 = 4;
        } else if (evdoDbm >= -75) {
            i2 = 3;
        } else if (evdoDbm >= -90) {
            i2 = 2;
        } else {
            i2 = evdoDbm >= -105 ? 1 : 0;
        }
        if (evdoSnr >= 7) {
            i3 = 4;
        } else if (evdoSnr >= 5) {
            i3 = 3;
        } else if (evdoSnr >= 3) {
            i3 = 2;
        } else if (evdoSnr >= 1) {
            i3 = 1;
        }
        return i2 < i3 ? i2 : i3;
    }

    public int getEvdoSnr() {
        return this.mEvdoSnr;
    }

    public int getGsmAsuLevel() {
        return getGsmSignalStrength();
    }

    public int getGsmBitErrorRate() {
        return this.mGsmBitErrorRate;
    }

    public int getGsmDbm() {
        int gsmSignalStrength = getGsmSignalStrength();
        if (gsmSignalStrength == 99) {
            gsmSignalStrength = -1;
        }
        if (gsmSignalStrength != -1) {
            return (gsmSignalStrength * 2) - 113;
        }
        return -1;
    }

    public int getGsmLevel() {
        int gsmSignalStrength = getGsmSignalStrength();
        if (gsmSignalStrength <= 2 || gsmSignalStrength == 99) {
            return 0;
        }
        if (gsmSignalStrength >= 12) {
            return 4;
        }
        if (gsmSignalStrength >= 8) {
            return 3;
        }
        return gsmSignalStrength >= 5 ? 2 : 1;
    }

    public int getGsmSignalStrength() {
        return this.mGsmSignalStrength;
    }

    public int getLevel() {
        if (this.isGsm) {
            int lteLevel = getLteLevel();
            return lteLevel == 0 ? getGsmLevel() : lteLevel;
        }
        int cdmaLevel = getCdmaLevel();
        int evdoLevel = getEvdoLevel();
        if (evdoLevel == 0) {
            return cdmaLevel;
        }
        return (cdmaLevel != 0 && cdmaLevel < evdoLevel) ? cdmaLevel : evdoLevel;
    }

    public int getLteAsuLevel() {
        int lteDbm = getLteDbm();
        if (lteDbm == Integer.MAX_VALUE) {
            return 255;
        }
        return lteDbm + 140;
    }

    public int getLteCqi() {
        return this.mLteCqi;
    }

    public int getLteDbm() {
        return this.mLteRsrp;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0031  */
    /* JADX WARN: Code duplicated, block: B:4:0x000c  */
    public int getLteLevel() {
        int i2;
        int i3;
        int i4 = this.mLteRsrp;
        if (i4 > -44) {
            i2 = -1;
        } else if (i4 >= -85) {
            i2 = 4;
        } else if (i4 >= -95) {
            i2 = 3;
        } else if (i4 >= -105) {
            i2 = 2;
        } else if (i4 >= -115) {
            i2 = 1;
        } else if (i4 >= -140) {
            i2 = 0;
        } else {
            i2 = -1;
        }
        int i5 = this.mLteRssnr;
        if (i5 > 300) {
            i3 = -1;
        } else if (i5 >= 130) {
            i3 = 4;
        } else if (i5 >= 45) {
            i3 = 3;
        } else if (i5 >= 10) {
            i3 = 2;
        } else if (i5 >= -30) {
            i3 = 1;
        } else if (i5 >= -200) {
            i3 = 0;
        } else {
            i3 = -1;
        }
        if (i3 != -1 && i2 != -1) {
            return i2 < i3 ? i2 : i3;
        }
        if (i3 != -1) {
            return i3;
        }
        if (i2 != -1) {
            return i2;
        }
        int i6 = this.mLteSignalStrength;
        if (i6 <= 63) {
            if (i6 >= 12) {
                return 4;
            }
            if (i6 >= 8) {
                return 3;
            }
            if (i6 >= 5) {
                return 2;
            }
            if (i6 >= 0) {
                return 1;
            }
        }
        return 0;
    }

    public int getLteRsrp() {
        return this.mLteRsrp;
    }

    public int getLteRsrq() {
        return this.mLteRsrq;
    }

    public int getLteRssnr() {
        return this.mLteRssnr;
    }

    public int getLteSignalStrength() {
        return this.mLteSignalStrength;
    }

    public int hashCode() {
        return (this.mGsmSignalStrength * 31) + (this.mGsmBitErrorRate * 31) + (this.mCdmaDbm * 31) + (this.mCdmaEcio * 31) + (this.mEvdoDbm * 31) + (this.mEvdoEcio * 31) + (this.mEvdoSnr * 31) + (this.mLteSignalStrength * 31) + (this.mLteRsrp * 31) + (this.mLteRsrq * 31) + (this.mLteRssnr * 31) + (this.mLteCqi * 31) + (this.isGsm ? 1 : 0);
    }

    public void initialize(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        initialize(i2, i3, i4, i5, i6, i7, i8, 99, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, z2);
    }

    public boolean isGsm() {
        return this.isGsm;
    }

    public void setGsm(boolean z2) {
        this.isGsm = z2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SignalStrength: ");
        sb.append(this.mGsmSignalStrength);
        sb.append(" ");
        sb.append(this.mGsmBitErrorRate);
        sb.append(" ");
        sb.append(this.mCdmaDbm);
        sb.append(" ");
        sb.append(this.mCdmaEcio);
        sb.append(" ");
        sb.append(this.mEvdoDbm);
        sb.append(" ");
        sb.append(this.mEvdoEcio);
        sb.append(" ");
        sb.append(this.mEvdoSnr);
        sb.append(" ");
        sb.append(this.mLteSignalStrength);
        sb.append(" ");
        sb.append(this.mLteRsrp);
        sb.append(" ");
        sb.append(this.mLteRsrq);
        sb.append(" ");
        sb.append(this.mLteRssnr);
        sb.append(" ");
        sb.append(this.mLteCqi);
        sb.append(" ");
        sb.append(this.isGsm ? "gsm|lte" : "cdma");
        return sb.toString();
    }

    public void validateInput() {
        int i2 = this.mGsmSignalStrength;
        if (i2 < 0) {
            i2 = 99;
        }
        this.mGsmSignalStrength = i2;
        int i3 = this.mCdmaDbm;
        this.mCdmaDbm = i3 > 0 ? -i3 : -120;
        int i4 = this.mCdmaEcio;
        this.mCdmaEcio = i4 > 0 ? -i4 : -160;
        int i5 = this.mEvdoDbm;
        this.mEvdoDbm = i5 > 0 ? -i5 : -120;
        int i6 = this.mEvdoEcio;
        int i7 = -1;
        this.mEvdoEcio = i6 >= 0 ? -i6 : -1;
        int i8 = this.mEvdoSnr;
        if (i8 > 0 && i8 <= 8) {
            i7 = i8;
        }
        this.mEvdoSnr = i7;
        int i9 = this.mLteSignalStrength;
        this.mLteSignalStrength = i9 >= 0 ? i9 : 99;
        int i10 = this.mLteRsrp;
        int i11 = Integer.MAX_VALUE;
        this.mLteRsrp = (i10 < 44 || i10 > 140) ? Integer.MAX_VALUE : -i10;
        int i12 = this.mLteRsrq;
        this.mLteRsrq = (i12 < 3 || i12 > 20) ? Integer.MAX_VALUE : -i12;
        int i13 = this.mLteRssnr;
        if (i13 >= -200 && i13 <= 300) {
            i11 = i13;
        }
        this.mLteRssnr = i11;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mGsmSignalStrength);
        parcel.writeInt(this.mGsmBitErrorRate);
        parcel.writeInt(this.mCdmaDbm);
        parcel.writeInt(this.mCdmaEcio);
        parcel.writeInt(this.mEvdoDbm);
        parcel.writeInt(this.mEvdoEcio);
        parcel.writeInt(this.mEvdoSnr);
        parcel.writeInt(this.mLteSignalStrength);
        parcel.writeInt(this.mLteRsrp);
        parcel.writeInt(this.mLteRsrq);
        parcel.writeInt(this.mLteRssnr);
        parcel.writeInt(this.mLteCqi);
        parcel.writeInt(this.isGsm ? 1 : 0);
    }

    public void initialize(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, boolean z2) {
        this.mGsmSignalStrength = i2;
        this.mGsmBitErrorRate = i3;
        this.mCdmaDbm = i4;
        this.mCdmaEcio = i5;
        this.mEvdoDbm = i6;
        this.mEvdoEcio = i7;
        this.mEvdoSnr = i8;
        this.mLteSignalStrength = i9;
        this.mLteRsrp = i10;
        this.mLteRsrq = i11;
        this.mLteRssnr = i12;
        this.mLteCqi = i13;
        this.isGsm = z2;
    }

    public SignalStrength(boolean z2) {
        this.mGsmSignalStrength = 99;
        this.mGsmBitErrorRate = -1;
        this.mCdmaDbm = -1;
        this.mCdmaEcio = -1;
        this.mEvdoDbm = -1;
        this.mEvdoEcio = -1;
        this.mEvdoSnr = -1;
        this.mLteSignalStrength = 99;
        this.mLteRsrp = Integer.MAX_VALUE;
        this.mLteRsrq = Integer.MAX_VALUE;
        this.mLteRssnr = Integer.MAX_VALUE;
        this.mLteCqi = Integer.MAX_VALUE;
        this.isGsm = z2;
    }

    public SignalStrength(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, boolean z2) {
        initialize(i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, z2);
    }

    public SignalStrength(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        initialize(i2, i3, i4, i5, i6, i7, i8, 99, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, z2);
    }

    public SignalStrength(SignalStrength signalStrength) {
        copyFrom(signalStrength);
    }

    public SignalStrength(Parcel parcel) {
        this.mGsmSignalStrength = parcel.readInt();
        this.mGsmBitErrorRate = parcel.readInt();
        this.mCdmaDbm = parcel.readInt();
        this.mCdmaEcio = parcel.readInt();
        this.mEvdoDbm = parcel.readInt();
        this.mEvdoEcio = parcel.readInt();
        this.mEvdoSnr = parcel.readInt();
        this.mLteSignalStrength = parcel.readInt();
        this.mLteRsrp = parcel.readInt();
        this.mLteRsrq = parcel.readInt();
        this.mLteRssnr = parcel.readInt();
        this.mLteCqi = parcel.readInt();
        this.isGsm = parcel.readInt() != 0;
    }
}
