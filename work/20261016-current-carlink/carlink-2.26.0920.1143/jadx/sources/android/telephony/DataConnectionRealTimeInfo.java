package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class DataConnectionRealTimeInfo implements Parcelable {
    public static final Parcelable.Creator<DataConnectionRealTimeInfo> CREATOR = new Parcelable.Creator<DataConnectionRealTimeInfo>() { // from class: android.telephony.DataConnectionRealTimeInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataConnectionRealTimeInfo createFromParcel(Parcel parcel) {
            return new DataConnectionRealTimeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataConnectionRealTimeInfo[] newArray(int i2) {
            return new DataConnectionRealTimeInfo[i2];
        }
    };
    public static final int DC_POWER_STATE_HIGH = 3;
    public static final int DC_POWER_STATE_LOW = 1;
    public static final int DC_POWER_STATE_MEDIUM = 2;
    public static final int DC_POWER_STATE_UNKNOWN = Integer.MAX_VALUE;
    private int mDcPowerState;
    private long mTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DataConnectionRealTimeInfo dataConnectionRealTimeInfo = (DataConnectionRealTimeInfo) obj;
        return this.mTime == dataConnectionRealTimeInfo.mTime && this.mDcPowerState == dataConnectionRealTimeInfo.mDcPowerState;
    }

    public int getDcPowerState() {
        return this.mDcPowerState;
    }

    public long getTime() {
        return this.mTime;
    }

    public int hashCode() {
        long j2 = this.mTime + 17;
        return (int) ((17 * j2) + ((long) this.mDcPowerState) + j2);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("mTime=");
        stringBuffer.append(this.mTime);
        stringBuffer.append(" mDcPowerState=");
        stringBuffer.append(this.mDcPowerState);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mTime);
        parcel.writeInt(this.mDcPowerState);
    }

    public DataConnectionRealTimeInfo(long j2, int i2) {
        this.mTime = j2;
        this.mDcPowerState = i2;
    }

    public DataConnectionRealTimeInfo() {
        this.mTime = Long.MAX_VALUE;
        this.mDcPowerState = Integer.MAX_VALUE;
    }

    private DataConnectionRealTimeInfo(Parcel parcel) {
        this.mTime = parcel.readLong();
        this.mDcPowerState = parcel.readInt();
    }
}
