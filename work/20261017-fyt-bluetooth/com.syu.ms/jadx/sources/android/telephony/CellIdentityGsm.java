package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CellIdentityGsm implements Parcelable {
    public static final Parcelable.Creator<CellIdentityGsm> CREATOR = new Parcelable.Creator<CellIdentityGsm>() { // from class: android.telephony.CellIdentityGsm.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityGsm createFromParcel(Parcel parcel) {
            return new CellIdentityGsm(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityGsm[] newArray(int i2) {
            return new CellIdentityGsm[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellIdentityGsm";
    private final int mCid;
    private final int mLac;
    private final int mMcc;
    private final int mMnc;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public CellIdentityGsm copy() {
        return new CellIdentityGsm(this);
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
            CellIdentityGsm cellIdentityGsm = (CellIdentityGsm) obj;
            return this.mMcc == cellIdentityGsm.mMcc && this.mMnc == cellIdentityGsm.mMnc && this.mLac == cellIdentityGsm.mLac && this.mCid == cellIdentityGsm.mCid;
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

    @Deprecated
    public int getPsc() {
        return Integer.MAX_VALUE;
    }

    public int hashCode() {
        return (this.mMcc * 31) + (this.mMnc * 31) + (this.mLac * 31) + (this.mCid * 31);
    }

    public String toString() {
        return "CellIdentityGsm:{ mMcc=" + this.mMcc + " mMnc=" + this.mMnc + " mLac=" + this.mLac + " mCid=" + this.mCid + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
    }

    public CellIdentityGsm() {
        this.mMcc = Integer.MAX_VALUE;
        this.mMnc = Integer.MAX_VALUE;
        this.mLac = Integer.MAX_VALUE;
        this.mCid = Integer.MAX_VALUE;
    }

    public CellIdentityGsm(int i2, int i3, int i4, int i5) {
        this.mMcc = i2;
        this.mMnc = i3;
        this.mLac = i4;
        this.mCid = i5;
    }

    private CellIdentityGsm(CellIdentityGsm cellIdentityGsm) {
        this.mMcc = cellIdentityGsm.mMcc;
        this.mMnc = cellIdentityGsm.mMnc;
        this.mLac = cellIdentityGsm.mLac;
        this.mCid = cellIdentityGsm.mCid;
    }

    private CellIdentityGsm(Parcel parcel) {
        this.mMcc = parcel.readInt();
        this.mMnc = parcel.readInt();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
    }
}
