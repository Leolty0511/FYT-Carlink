package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CellIdentityWcdma implements Parcelable {
    public static final Parcelable.Creator<CellIdentityWcdma> CREATOR = new Parcelable.Creator<CellIdentityWcdma>() { // from class: android.telephony.CellIdentityWcdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityWcdma createFromParcel(Parcel parcel) {
            return new CellIdentityWcdma(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityWcdma[] newArray(int i2) {
            return new CellIdentityWcdma[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellIdentityWcdma";
    private final int mCid;
    private final int mLac;
    private final int mMcc;
    private final int mMnc;
    private final int mPsc;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public CellIdentityWcdma copy() {
        return new CellIdentityWcdma(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        try {
            CellIdentityWcdma cellIdentityWcdma = (CellIdentityWcdma) obj;
            return this.mMcc == cellIdentityWcdma.mMcc && this.mMnc == cellIdentityWcdma.mMnc && this.mLac == cellIdentityWcdma.mLac && this.mCid == cellIdentityWcdma.mCid && this.mPsc == cellIdentityWcdma.mPsc;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int getCid() {
        return this.mCid;
    }

    public int getLac() {
        return this.mLac;
    }

    public int getMcc() {
        return this.mMcc;
    }

    public int getMnc() {
        return this.mMnc;
    }

    public int getPsc() {
        return this.mPsc;
    }

    public int hashCode() {
        return (this.mMcc * 31) + (this.mMnc * 31) + (this.mLac * 31) + (this.mCid * 31) + (this.mPsc * 31);
    }

    public String toString() {
        return "CellIdentityWcdma:{ mMcc=" + this.mMcc + " mMnc=" + this.mMnc + " mLac=" + this.mLac + " mCid=" + this.mCid + " mPsc=" + this.mPsc + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
        parcel.writeInt(this.mPsc);
    }

    public CellIdentityWcdma() {
        this.mMcc = Integer.MAX_VALUE;
        this.mMnc = Integer.MAX_VALUE;
        this.mLac = Integer.MAX_VALUE;
        this.mCid = Integer.MAX_VALUE;
        this.mPsc = Integer.MAX_VALUE;
    }

    public CellIdentityWcdma(int i2, int i3, int i4, int i5, int i6) {
        this.mMcc = i2;
        this.mMnc = i3;
        this.mLac = i4;
        this.mCid = i5;
        this.mPsc = i6;
    }

    private CellIdentityWcdma(CellIdentityWcdma cellIdentityWcdma) {
        this.mMcc = cellIdentityWcdma.mMcc;
        this.mMnc = cellIdentityWcdma.mMnc;
        this.mLac = cellIdentityWcdma.mLac;
        this.mCid = cellIdentityWcdma.mCid;
        this.mPsc = cellIdentityWcdma.mPsc;
    }

    private CellIdentityWcdma(Parcel parcel) {
        this.mMcc = parcel.readInt();
        this.mMnc = parcel.readInt();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
        this.mPsc = parcel.readInt();
    }
}
