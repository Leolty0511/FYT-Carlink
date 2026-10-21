package android.telephony;

import android.net.LinkQualityInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class CellInfo implements Parcelable {
    public static final Parcelable.Creator<CellInfo> CREATOR = new Parcelable.Creator<CellInfo>() { // from class: android.telephony.CellInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfo createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 1) {
                return CellInfoGsm.createFromParcelBody(parcel);
            }
            if (i2 == 2) {
                return CellInfoCdma.createFromParcelBody(parcel);
            }
            if (i2 == 3) {
                return CellInfoLte.createFromParcelBody(parcel);
            }
            if (i2 == 4) {
                return CellInfoWcdma.createFromParcelBody(parcel);
            }
            throw new RuntimeException("Bad CellInfo Parcel");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfo[] newArray(int i2) {
            return new CellInfo[i2];
        }
    };
    public static final int TIMESTAMP_TYPE_ANTENNA = 1;
    public static final int TIMESTAMP_TYPE_JAVA_RIL = 4;
    public static final int TIMESTAMP_TYPE_MODEM = 2;
    public static final int TIMESTAMP_TYPE_OEM_RIL = 3;
    public static final int TIMESTAMP_TYPE_UNKNOWN = 0;
    public static final int TYPE_CDMA = 2;
    public static final int TYPE_GSM = 1;
    public static final int TYPE_LTE = 3;
    public static final int TYPE_WCDMA = 4;
    private boolean mRegistered;
    private long mTimeStamp;
    private int mTimeStampType;

    public CellInfo() {
        this.mRegistered = false;
        this.mTimeStampType = 0;
        this.mTimeStamp = LinkQualityInfo.UNKNOWN_LONG;
    }

    private static String timeStampTypeToString(int i2) {
        if (i2 == 1) {
            return "antenna";
        }
        if (i2 == 2) {
            return "modem";
        }
        if (i2 != 3) {
            return i2 != 4 ? "unknown" : "java_ril";
        }
        return "oem_ril";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        try {
            CellInfo cellInfo = (CellInfo) obj;
            return this.mRegistered == cellInfo.mRegistered && this.mTimeStamp == cellInfo.mTimeStamp && this.mTimeStampType == cellInfo.mTimeStampType;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public int getTimeStampType() {
        return this.mTimeStampType;
    }

    public int hashCode() {
        return ((!this.mRegistered ? 1 : 0) * 31) + (((int) (this.mTimeStamp / 1000)) * 31) + (this.mTimeStampType * 31);
    }

    public boolean isRegistered() {
        return this.mRegistered;
    }

    public void setRegisterd(boolean z2) {
        this.mRegistered = z2;
    }

    public void setTimeStamp(long j2) {
        this.mTimeStamp = j2;
    }

    public void setTimeStampType(int i2) {
        if (i2 < 0 || i2 > 4) {
            this.mTimeStampType = 0;
        } else {
            this.mTimeStampType = i2;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("mRegistered=");
        stringBuffer.append(this.mRegistered ? "YES" : "NO");
        String strTimeStampTypeToString = timeStampTypeToString(this.mTimeStampType);
        stringBuffer.append(" mTimeStampType=");
        stringBuffer.append(strTimeStampTypeToString);
        stringBuffer.append(" mTimeStamp=");
        stringBuffer.append(this.mTimeStamp);
        stringBuffer.append("ns");
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public abstract void writeToParcel(Parcel parcel, int i2);

    public void writeToParcel(Parcel parcel, int i2, int i3) {
        parcel.writeInt(i3);
        parcel.writeInt(this.mRegistered ? 1 : 0);
        parcel.writeInt(this.mTimeStampType);
        parcel.writeLong(this.mTimeStamp);
    }

    public CellInfo(CellInfo cellInfo) {
        this.mRegistered = cellInfo.mRegistered;
        this.mTimeStampType = cellInfo.mTimeStampType;
        this.mTimeStamp = cellInfo.mTimeStamp;
    }

    public CellInfo(Parcel parcel) {
        this.mRegistered = parcel.readInt() == 1;
        this.mTimeStampType = parcel.readInt();
        this.mTimeStamp = parcel.readLong();
    }
}
