package android.telephony;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class CellIdentityLte implements Parcelable {
    public static final Parcelable.Creator<CellIdentityLte> CREATOR = new Parcelable.Creator<CellIdentityLte>() { // from class: android.telephony.CellIdentityLte.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityLte createFromParcel(Parcel parcel) {
            return new CellIdentityLte(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityLte[] newArray(int i2) {
            return new CellIdentityLte[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellIdentityLte";
    private final int mCi;
    private final int mEarfcn;
    private final int mMcc;
    private final int mMnc;
    private final int mPci;
    private final int mTac;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public CellIdentityLte copy() {
        return new CellIdentityLte(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CellIdentityLte)) {
            return false;
        }
        CellIdentityLte cellIdentityLte = (CellIdentityLte) obj;
        return this.mMcc == cellIdentityLte.mMcc && this.mMnc == cellIdentityLte.mMnc && this.mCi == cellIdentityLte.mCi && this.mPci == cellIdentityLte.mPci && this.mTac == cellIdentityLte.mTac && this.mEarfcn == cellIdentityLte.mEarfcn;
    }

    public int getCi() {
        return this.mCi;
    }

    public int getEarfcn() {
        return this.mEarfcn;
    }

    public int getMcc() {
        return this.mMcc;
    }

    public int getMnc() {
        return this.mMnc;
    }

    public int getPci() {
        return this.mPci;
    }

    public int getTac() {
        return this.mTac;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mMcc), Integer.valueOf(this.mMnc), Integer.valueOf(this.mCi), Integer.valueOf(this.mPci), Integer.valueOf(this.mTac));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CellIdentityLte:{ mMcc=");
        sb.append(this.mMcc);
        sb.append(" mMnc=");
        sb.append(this.mMnc);
        sb.append(" mCi=");
        sb.append(this.mCi);
        sb.append(" mPci=");
        sb.append(this.mPci);
        sb.append(" mTac=");
        sb.append(this.mTac);
        sb.append(" mEarfcn=");
        return c.m(sb, this.mEarfcn, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeInt(this.mCi);
        parcel.writeInt(this.mPci);
        parcel.writeInt(this.mTac);
        parcel.writeInt(this.mEarfcn);
    }

    public CellIdentityLte() {
        this.mMcc = Integer.MAX_VALUE;
        this.mMnc = Integer.MAX_VALUE;
        this.mCi = Integer.MAX_VALUE;
        this.mPci = Integer.MAX_VALUE;
        this.mTac = Integer.MAX_VALUE;
        this.mEarfcn = Integer.MAX_VALUE;
    }

    public CellIdentityLte(int i2, int i3, int i4, int i5, int i6) {
        this(i2, i3, i4, i5, i6, Integer.MAX_VALUE);
    }

    public CellIdentityLte(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mMcc = i2;
        this.mMnc = i3;
        this.mCi = i4;
        this.mPci = i5;
        this.mTac = i6;
        this.mEarfcn = i7;
    }

    private CellIdentityLte(CellIdentityLte cellIdentityLte) {
        this.mMcc = cellIdentityLte.mMcc;
        this.mMnc = cellIdentityLte.mMnc;
        this.mCi = cellIdentityLte.mCi;
        this.mPci = cellIdentityLte.mPci;
        this.mTac = cellIdentityLte.mTac;
        this.mEarfcn = cellIdentityLte.mEarfcn;
    }

    private CellIdentityLte(Parcel parcel) {
        this.mMcc = parcel.readInt();
        this.mMnc = parcel.readInt();
        this.mCi = parcel.readInt();
        this.mPci = parcel.readInt();
        this.mTac = parcel.readInt();
        this.mEarfcn = parcel.readInt();
    }
}
