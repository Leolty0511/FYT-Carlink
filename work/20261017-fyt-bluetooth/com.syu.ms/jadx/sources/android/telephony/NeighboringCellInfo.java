package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class NeighboringCellInfo implements Parcelable {
    public static final Parcelable.Creator<NeighboringCellInfo> CREATOR = new Parcelable.Creator<NeighboringCellInfo>() { // from class: android.telephony.NeighboringCellInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NeighboringCellInfo createFromParcel(Parcel parcel) {
            return new NeighboringCellInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NeighboringCellInfo[] newArray(int i2) {
            return new NeighboringCellInfo[i2];
        }
    };
    public static final int UNKNOWN_CID = -1;
    public static final int UNKNOWN_RSSI = 99;
    private int mCid;
    private int mLac;
    private int mNetworkType;
    private int mPsc;
    private int mRssi;

    @Deprecated
    public NeighboringCellInfo() {
        this.mRssi = 99;
        this.mLac = -1;
        this.mCid = -1;
        this.mPsc = -1;
        this.mNetworkType = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCid() {
        return this.mCid;
    }

    public int getLac() {
        return this.mLac;
    }

    public int getNetworkType() {
        return this.mNetworkType;
    }

    public int getPsc() {
        return this.mPsc;
    }

    public int getRssi() {
        return this.mRssi;
    }

    @Deprecated
    public void setCid(int i2) {
        this.mCid = i2;
    }

    @Deprecated
    public void setRssi(int i2) {
        this.mRssi = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i2 = this.mPsc;
        if (i2 != -1) {
            sb.append(Integer.toHexString(i2));
            sb.append("@");
            int i3 = this.mRssi;
            sb.append(i3 != 99 ? Integer.valueOf(i3) : "-");
        } else {
            int i4 = this.mLac;
            if (i4 != -1 && this.mCid != -1) {
                sb.append(Integer.toHexString(i4));
                sb.append(Integer.toHexString(this.mCid));
                sb.append("@");
                int i5 = this.mRssi;
                sb.append(i5 != 99 ? Integer.valueOf(i5) : "-");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRssi);
        parcel.writeInt(this.mLac);
        parcel.writeInt(this.mCid);
        parcel.writeInt(this.mPsc);
        parcel.writeInt(this.mNetworkType);
    }

    @Deprecated
    public NeighboringCellInfo(int i2, int i3) {
        this.mRssi = i2;
        this.mCid = i3;
    }

    public NeighboringCellInfo(int i2, String str, int i3) {
        this.mRssi = i2;
        this.mNetworkType = 0;
        this.mPsc = -1;
        this.mLac = -1;
        this.mCid = -1;
        int length = str.length();
        if (length > 8) {
            return;
        }
        if (length < 8) {
            for (int i4 = 0; i4 < 8 - length; i4++) {
                str = "0" + str;
            }
        }
        try {
            if (i3 != 1 && i3 != 2) {
                if (i3 != 3) {
                    switch (i3) {
                        case 8:
                        case 9:
                        case 10:
                            break;
                        default:
                            return;
                    }
                }
                this.mNetworkType = i3;
                this.mPsc = Integer.valueOf(str, 16).intValue();
            } else {
                this.mNetworkType = i3;
                if (!str.equalsIgnoreCase("FFFFFFFF")) {
                    this.mCid = Integer.valueOf(str.substring(4), 16).intValue();
                    this.mLac = Integer.valueOf(str.substring(0, 4), 16).intValue();
                }
            }
        } catch (NumberFormatException unused) {
            this.mPsc = -1;
            this.mLac = -1;
            this.mCid = -1;
            this.mNetworkType = 0;
        }
    }

    public NeighboringCellInfo(Parcel parcel) {
        this.mRssi = parcel.readInt();
        this.mLac = parcel.readInt();
        this.mCid = parcel.readInt();
        this.mPsc = parcel.readInt();
        this.mNetworkType = parcel.readInt();
    }
}
