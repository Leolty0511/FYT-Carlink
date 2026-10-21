package android.net.wifi;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class WifiActivityEnergyInfo implements Parcelable {
    public static final Parcelable.Creator<WifiActivityEnergyInfo> CREATOR = new Parcelable.Creator<WifiActivityEnergyInfo>() { // from class: android.net.wifi.WifiActivityEnergyInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiActivityEnergyInfo createFromParcel(Parcel parcel) {
            return new WifiActivityEnergyInfo(parcel.readLong(), parcel.readInt(), parcel.readLong(), parcel.createLongArray(), parcel.readLong(), parcel.readLong(), parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiActivityEnergyInfo[] newArray(int i2) {
            return new WifiActivityEnergyInfo[i2];
        }
    };
    public static final int STACK_STATE_INVALID = 0;
    public static final int STACK_STATE_STATE_ACTIVE = 1;
    public static final int STACK_STATE_STATE_IDLE = 3;
    public static final int STACK_STATE_STATE_SCANNING = 2;
    public long mControllerEnergyUsed;
    public long mControllerIdleTimeMs;
    public long mControllerRxTimeMs;
    public long mControllerTxTimeMs;
    public long[] mControllerTxTimePerLevelMs;
    public int mStackState;
    public long mTimestamp;

    public WifiActivityEnergyInfo(long j2, int i2, long j3, long[] jArr, long j4, long j5, long j6) {
        this.mTimestamp = j2;
        this.mStackState = i2;
        this.mControllerTxTimeMs = j3;
        this.mControllerTxTimePerLevelMs = jArr;
        this.mControllerRxTimeMs = j4;
        this.mControllerIdleTimeMs = j5;
        this.mControllerEnergyUsed = j6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getControllerEnergyUsed() {
        return this.mControllerEnergyUsed;
    }

    public long getControllerIdleTimeMillis() {
        return this.mControllerIdleTimeMs;
    }

    public long getControllerRxTimeMillis() {
        return this.mControllerRxTimeMs;
    }

    public long getControllerTxTimeMillis() {
        return this.mControllerTxTimeMs;
    }

    public long getControllerTxTimeMillisAtLevel(int i2) {
        long[] jArr = this.mControllerTxTimePerLevelMs;
        if (i2 < jArr.length) {
            return jArr[i2];
        }
        return 0L;
    }

    public int getStackState() {
        return this.mStackState;
    }

    public long getTimeStamp() {
        return this.mTimestamp;
    }

    public boolean isValid() {
        return this.mControllerTxTimeMs >= 0 && this.mControllerRxTimeMs >= 0 && this.mControllerIdleTimeMs >= 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WifiActivityEnergyInfo{ timestamp=");
        sb.append(this.mTimestamp);
        sb.append(" mStackState=");
        sb.append(this.mStackState);
        sb.append(" mControllerTxTimeMs=");
        sb.append(this.mControllerTxTimeMs);
        sb.append(" mControllerTxTimePerLevelMs=");
        sb.append(Arrays.toString(this.mControllerTxTimePerLevelMs));
        sb.append(" mControllerRxTimeMs=");
        sb.append(this.mControllerRxTimeMs);
        sb.append(" mControllerIdleTimeMs=");
        sb.append(this.mControllerIdleTimeMs);
        sb.append(" mControllerEnergyUsed=");
        return m.k(sb, this.mControllerEnergyUsed, " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mTimestamp);
        parcel.writeInt(this.mStackState);
        parcel.writeLong(this.mControllerTxTimeMs);
        parcel.writeLongArray(this.mControllerTxTimePerLevelMs);
        parcel.writeLong(this.mControllerRxTimeMs);
        parcel.writeLong(this.mControllerIdleTimeMs);
        parcel.writeLong(this.mControllerEnergyUsed);
    }
}
