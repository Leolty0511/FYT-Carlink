package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
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
    private final int mArfcn;
    private final int mBsic;
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
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CellIdentityGsm)) {
            return false;
        }
        CellIdentityGsm cellIdentityGsm = (CellIdentityGsm) obj;
        return this.mMcc == cellIdentityGsm.mMcc && this.mMnc == cellIdentityGsm.mMnc && this.mLac == cellIdentityGsm.mLac && this.mCid == cellIdentityGsm.mCid && this.mArfcn == cellIdentityGsm.mArfcn && this.mBsic == cellIdentityGsm.mBsic;
    }

    public int getArfcn() {
        return this.mArfcn;
    }

    public int getBsic() {
        return this.mBsic;
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
        return Objects.hash(Integer.valueOf(this.mMcc), Integer.valueOf(this.mMnc), Integer.valueOf(this.mLac), Integer.valueOf(this.mCid));
    }

    public String toString() {
        return "CellIdentityGsm:{ mMcc=" + this.mMcc + " mMnc=" + this.mMnc + " mLac=" + this.mLac + " mCid=" + this.mCid + " mArfcn=" + this.mArfcn + " mBsic=0x" + Integer.toHexString(this.mBsic) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
        parcel.writeInt(this.mArfcn);
        parcel.writeInt(this.mBsic);
    }

    public CellIdentityGsm() {
        this.mMcc = Integer.MAX_VALUE;
        this.mMnc = Integer.MAX_VALUE;
        this.mLac = Integer.MAX_VALUE;
        this.mCid = Integer.MAX_VALUE;
        this.mArfcn = Integer.MAX_VALUE;
        this.mBsic = Integer.MAX_VALUE;
    }

    public CellIdentityGsm(int i2, int i3, int i4, int i5) {
        this(i2, i3, i4, i5, Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    public CellIdentityGsm(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mMcc = i2;
        this.mMnc = i3;
        this.mLac = i4;
        this.mCid = i5;
        this.mArfcn = i6;
        this.mBsic = i7;
    }

    private CellIdentityGsm(CellIdentityGsm cellIdentityGsm) {
        this.mMcc = cellIdentityGsm.mMcc;
        this.mMnc = cellIdentityGsm.mMnc;
        this.mLac = cellIdentityGsm.mLac;
        this.mCid = cellIdentityGsm.mCid;
        this.mArfcn = cellIdentityGsm.mArfcn;
        this.mBsic = cellIdentityGsm.mBsic;
    }

    private CellIdentityGsm(Parcel parcel) {
        this.mMcc = parcel.readInt();
        this.mMnc = parcel.readInt();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
        this.mArfcn = parcel.readInt();
        int i2 = parcel.readInt();
        this.mBsic = i2 == 255 ? Integer.MAX_VALUE : i2;
    }
}
