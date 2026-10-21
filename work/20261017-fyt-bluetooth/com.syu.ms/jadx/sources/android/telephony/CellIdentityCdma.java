package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CellIdentityCdma implements Parcelable {
    public static final Parcelable.Creator<CellIdentityCdma> CREATOR = new Parcelable.Creator<CellIdentityCdma>() { // from class: android.telephony.CellIdentityCdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityCdma createFromParcel(Parcel parcel) {
            return new CellIdentityCdma(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellIdentityCdma[] newArray(int i2) {
            return new CellIdentityCdma[i2];
        }
    };
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CellSignalStrengthCdma";
    private final int mBasestationId;
    private final int mLatitude;
    private final int mLongitude;
    private final int mNetworkId;
    private final int mSystemId;

    private static void log(String str) {
        Rlog.w(LOG_TAG, str);
    }

    public CellIdentityCdma copy() {
        return new CellIdentityCdma(this);
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
            CellIdentityCdma cellIdentityCdma = (CellIdentityCdma) obj;
            return this.mNetworkId == cellIdentityCdma.mNetworkId && this.mSystemId == cellIdentityCdma.mSystemId && this.mBasestationId == cellIdentityCdma.mBasestationId && this.mLatitude == cellIdentityCdma.mLatitude && this.mLongitude == cellIdentityCdma.mLongitude;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int getBasestationId() {
        return this.mBasestationId;
    }

    public int getLatitude() {
        return this.mLatitude;
    }

    public int getLongitude() {
        return this.mLongitude;
    }

    public int getNetworkId() {
        return this.mNetworkId;
    }

    public int getSystemId() {
        return this.mSystemId;
    }

    public int hashCode() {
        return (this.mNetworkId * 31) + (this.mSystemId * 31) + (this.mBasestationId * 31) + (this.mLatitude * 31) + (this.mLongitude * 31);
    }

    public String toString() {
        return "CellIdentityCdma:{ mNetworkId=" + this.mNetworkId + " mSystemId=" + this.mSystemId + " mBasestationId=" + this.mBasestationId + " mLongitude=" + this.mLongitude + " mLatitude=" + this.mLatitude + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mNetworkId);
        parcel.writeInt(this.mSystemId);
        parcel.writeInt(this.mBasestationId);
        parcel.writeInt(this.mLongitude);
        parcel.writeInt(this.mLatitude);
    }

    public CellIdentityCdma() {
        this.mNetworkId = Integer.MAX_VALUE;
        this.mSystemId = Integer.MAX_VALUE;
        this.mBasestationId = Integer.MAX_VALUE;
        this.mLongitude = Integer.MAX_VALUE;
        this.mLatitude = Integer.MAX_VALUE;
    }

    public CellIdentityCdma(int i2, int i3, int i4, int i5, int i6) {
        this.mNetworkId = i2;
        this.mSystemId = i3;
        this.mBasestationId = i4;
        this.mLongitude = i5;
        this.mLatitude = i6;
    }

    private CellIdentityCdma(CellIdentityCdma cellIdentityCdma) {
        this.mNetworkId = cellIdentityCdma.mNetworkId;
        this.mSystemId = cellIdentityCdma.mSystemId;
        this.mBasestationId = cellIdentityCdma.mBasestationId;
        this.mLongitude = cellIdentityCdma.mLongitude;
        this.mLatitude = cellIdentityCdma.mLatitude;
    }

    private CellIdentityCdma(Parcel parcel) {
        this.mNetworkId = parcel.readInt();
        this.mSystemId = parcel.readInt();
        this.mBasestationId = parcel.readInt();
        this.mLongitude = parcel.readInt();
        this.mLatitude = parcel.readInt();
    }
}
