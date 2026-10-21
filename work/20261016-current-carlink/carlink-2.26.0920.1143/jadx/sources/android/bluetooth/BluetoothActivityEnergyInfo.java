package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothActivityEnergyInfo implements Parcelable {
    public static final int BT_STACK_STATE_INVALID = 0;
    public static final int BT_STACK_STATE_STATE_ACTIVE = 1;
    public static final int BT_STACK_STATE_STATE_IDLE = 3;
    public static final int BT_STACK_STATE_STATE_SCANNING = 2;
    public static final Parcelable.Creator<BluetoothActivityEnergyInfo> CREATOR = new Parcelable.Creator<BluetoothActivityEnergyInfo>() { // from class: android.bluetooth.BluetoothActivityEnergyInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothActivityEnergyInfo createFromParcel(Parcel parcel) {
            return new BluetoothActivityEnergyInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothActivityEnergyInfo[] newArray(int i2) {
            return new BluetoothActivityEnergyInfo[i2];
        }
    };
    private int mBluetoothStackState;
    private long mControllerEnergyUsed;
    private long mControllerIdleTimeMs;
    private long mControllerRxTimeMs;
    private long mControllerTxTimeMs;
    private final long mTimestamp;
    private UidTraffic[] mUidTraffic;

    public BluetoothActivityEnergyInfo(long j2, int i2, long j3, long j4, long j5, long j6) {
        this.mTimestamp = j2;
        this.mBluetoothStackState = i2;
        this.mControllerTxTimeMs = j3;
        this.mControllerRxTimeMs = j4;
        this.mControllerIdleTimeMs = j5;
        this.mControllerEnergyUsed = j6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBluetoothStackState() {
        return this.mBluetoothStackState;
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

    public long getTimeStamp() {
        return this.mTimestamp;
    }

    public UidTraffic[] getUidTraffic() {
        return this.mUidTraffic;
    }

    public boolean isValid() {
        return this.mControllerTxTimeMs >= 0 && this.mControllerRxTimeMs >= 0 && this.mControllerIdleTimeMs >= 0;
    }

    public void setUidTraffic(UidTraffic[] uidTrafficArr) {
        this.mUidTraffic = uidTrafficArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BluetoothActivityEnergyInfo{ mTimestamp=");
        sb.append(this.mTimestamp);
        sb.append(" mBluetoothStackState=");
        sb.append(this.mBluetoothStackState);
        sb.append(" mControllerTxTimeMs=");
        sb.append(this.mControllerTxTimeMs);
        sb.append(" mControllerRxTimeMs=");
        sb.append(this.mControllerRxTimeMs);
        sb.append(" mControllerIdleTimeMs=");
        sb.append(this.mControllerIdleTimeMs);
        sb.append(" mControllerEnergyUsed=");
        sb.append(this.mControllerEnergyUsed);
        sb.append(" mUidTraffic=");
        return c.n(sb, Arrays.toString(this.mUidTraffic), " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mTimestamp);
        parcel.writeInt(this.mBluetoothStackState);
        parcel.writeLong(this.mControllerTxTimeMs);
        parcel.writeLong(this.mControllerRxTimeMs);
        parcel.writeLong(this.mControllerIdleTimeMs);
        parcel.writeLong(this.mControllerEnergyUsed);
        parcel.writeTypedArray(this.mUidTraffic, i2);
    }

    public BluetoothActivityEnergyInfo(Parcel parcel) {
        this.mTimestamp = parcel.readLong();
        this.mBluetoothStackState = parcel.readInt();
        this.mControllerTxTimeMs = parcel.readLong();
        this.mControllerRxTimeMs = parcel.readLong();
        this.mControllerIdleTimeMs = parcel.readLong();
        this.mControllerEnergyUsed = parcel.readLong();
        this.mUidTraffic = (UidTraffic[]) parcel.createTypedArray(UidTraffic.CREATOR);
    }
}
