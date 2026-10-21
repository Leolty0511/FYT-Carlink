package android.telephony;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
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
    private final int mUarfcn;

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
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CellIdentityWcdma)) {
            return false;
        }
        CellIdentityWcdma cellIdentityWcdma = (CellIdentityWcdma) obj;
        return this.mMcc == cellIdentityWcdma.mMcc && this.mMnc == cellIdentityWcdma.mMnc && this.mLac == cellIdentityWcdma.mLac && this.mCid == cellIdentityWcdma.mCid && this.mPsc == cellIdentityWcdma.mPsc && this.mUarfcn == cellIdentityWcdma.mUarfcn;
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

    public int getUarfcn() {
        return this.mUarfcn;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mMcc), Integer.valueOf(this.mMnc), Integer.valueOf(this.mLac), Integer.valueOf(this.mCid), Integer.valueOf(this.mPsc));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CellIdentityWcdma:{ mMcc=");
        sb.append(this.mMcc);
        sb.append(" mMnc=");
        sb.append(this.mMnc);
        sb.append(" mLac=");
        sb.append(this.mLac);
        sb.append(" mCid=");
        sb.append(this.mCid);
        sb.append(" mPsc=");
        sb.append(this.mPsc);
        sb.append(" mUarfcn=");
        return c.m(sb, this.mUarfcn, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
        parcel.writeInt(this.mPsc);
        parcel.writeInt(this.mUarfcn);
    }

    public CellIdentityWcdma() {
        this.mMcc = Integer.MAX_VALUE;
        this.mMnc = Integer.MAX_VALUE;
        this.mLac = Integer.MAX_VALUE;
        this.mCid = Integer.MAX_VALUE;
        this.mPsc = Integer.MAX_VALUE;
        this.mUarfcn = Integer.MAX_VALUE;
    }

    public CellIdentityWcdma(int i2, int i3, int i4, int i5, int i6) {
        this(i2, i3, i4, i5, i6, Integer.MAX_VALUE);
    }

    public CellIdentityWcdma(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mMcc = i2;
        this.mMnc = i3;
        this.mLac = i4;
        this.mCid = i5;
        this.mPsc = i6;
        this.mUarfcn = i7;
    }

    private CellIdentityWcdma(CellIdentityWcdma cellIdentityWcdma) {
        this.mMcc = cellIdentityWcdma.mMcc;
        this.mMnc = cellIdentityWcdma.mMnc;
        this.mLac = cellIdentityWcdma.mLac;
        this.mCid = cellIdentityWcdma.mCid;
        this.mPsc = cellIdentityWcdma.mPsc;
        this.mUarfcn = cellIdentityWcdma.mUarfcn;
    }

    private CellIdentityWcdma(Parcel parcel) {
        this.mMcc = parcel.readInt();
        this.mMnc = parcel.readInt();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
        this.mPsc = parcel.readInt();
        this.mUarfcn = parcel.readInt();
    }
}
