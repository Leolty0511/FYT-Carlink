package android.bluetooth.le;

import android.app.m;
import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ScanResult implements Parcelable {
    public static final Parcelable.Creator<ScanResult> CREATOR = new Parcelable.Creator<ScanResult>() { // from class: android.bluetooth.le.ScanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult createFromParcel(Parcel parcel) {
            return new ScanResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult[] newArray(int i2) {
            return new ScanResult[i2];
        }
    };
    public static final int DATA_COMPLETE = 0;
    public static final int DATA_TRUNCATED = 2;
    private static final int ET_CONNECTABLE_MASK = 1;
    private static final int ET_LEGACY_MASK = 16;
    public static final int PERIODIC_INTERVAL_NOT_PRESENT = 0;
    public static final int PHY_UNUSED = 0;
    public static final int SID_NOT_PRESENT = 255;
    public static final int TX_POWER_NOT_PRESENT = 127;
    private int mAdvertisingSid;
    private BluetoothDevice mDevice;
    private int mEventType;
    private int mPeriodicAdvertisingInterval;
    private int mPrimaryPhy;
    private int mRssi;
    private ScanRecord mScanRecord;
    private int mSecondaryPhy;
    private long mTimestampNanos;
    private int mTxPower;

    private void readFromParcel(Parcel parcel) {
        if (parcel.readInt() == 1) {
            this.mDevice = BluetoothDevice.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() == 1) {
            this.mScanRecord = ScanRecord.parseFromBytes(parcel.createByteArray());
        }
        this.mRssi = parcel.readInt();
        this.mTimestampNanos = parcel.readLong();
        this.mEventType = parcel.readInt();
        this.mPrimaryPhy = parcel.readInt();
        this.mSecondaryPhy = parcel.readInt();
        this.mAdvertisingSid = parcel.readInt();
        this.mTxPower = parcel.readInt();
        this.mPeriodicAdvertisingInterval = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ScanResult.class != obj.getClass()) {
            return false;
        }
        ScanResult scanResult = (ScanResult) obj;
        return Objects.equals(this.mDevice, scanResult.mDevice) && this.mRssi == scanResult.mRssi && Objects.equals(this.mScanRecord, scanResult.mScanRecord) && this.mTimestampNanos == scanResult.mTimestampNanos && this.mEventType == scanResult.mEventType && this.mPrimaryPhy == scanResult.mPrimaryPhy && this.mSecondaryPhy == scanResult.mSecondaryPhy && this.mAdvertisingSid == scanResult.mAdvertisingSid && this.mTxPower == scanResult.mTxPower && this.mPeriodicAdvertisingInterval == scanResult.mPeriodicAdvertisingInterval;
    }

    public int getAdvertisingSid() {
        return this.mAdvertisingSid;
    }

    public int getDataStatus() {
        return (this.mEventType >> 5) & 3;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public int getPeriodicAdvertisingInterval() {
        return this.mPeriodicAdvertisingInterval;
    }

    public int getPrimaryPhy() {
        return this.mPrimaryPhy;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public ScanRecord getScanRecord() {
        return this.mScanRecord;
    }

    public int getSecondaryPhy() {
        return this.mSecondaryPhy;
    }

    public long getTimestampNanos() {
        return this.mTimestampNanos;
    }

    public int getTxPower() {
        return this.mTxPower;
    }

    public int hashCode() {
        return Objects.hash(this.mDevice, Integer.valueOf(this.mRssi), this.mScanRecord, Long.valueOf(this.mTimestampNanos), Integer.valueOf(this.mEventType), Integer.valueOf(this.mPrimaryPhy), Integer.valueOf(this.mSecondaryPhy), Integer.valueOf(this.mAdvertisingSid), Integer.valueOf(this.mTxPower), Integer.valueOf(this.mPeriodicAdvertisingInterval));
    }

    public boolean isConnectable() {
        return (this.mEventType & 1) != 0;
    }

    public boolean isLegacy() {
        return (this.mEventType & 16) != 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScanResult{device=");
        sb.append(this.mDevice);
        sb.append(", scanRecord=");
        sb.append(Objects.toString(this.mScanRecord));
        sb.append(", rssi=");
        sb.append(this.mRssi);
        sb.append(", timestampNanos=");
        sb.append(this.mTimestampNanos);
        sb.append(", eventType=");
        sb.append(this.mEventType);
        sb.append(", primaryPhy=");
        sb.append(this.mPrimaryPhy);
        sb.append(", secondaryPhy=");
        sb.append(this.mSecondaryPhy);
        sb.append(", advertisingSid=");
        sb.append(this.mAdvertisingSid);
        sb.append(", txPower=");
        sb.append(this.mTxPower);
        sb.append(", periodicAdvertisingInterval=");
        return m.j(sb, this.mPeriodicAdvertisingInterval, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mDevice != null) {
            parcel.writeInt(1);
            this.mDevice.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.mScanRecord != null) {
            parcel.writeInt(1);
            parcel.writeByteArray(this.mScanRecord.getBytes());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mRssi);
        parcel.writeLong(this.mTimestampNanos);
        parcel.writeInt(this.mEventType);
        parcel.writeInt(this.mPrimaryPhy);
        parcel.writeInt(this.mSecondaryPhy);
        parcel.writeInt(this.mAdvertisingSid);
        parcel.writeInt(this.mTxPower);
        parcel.writeInt(this.mPeriodicAdvertisingInterval);
    }

    public ScanResult(BluetoothDevice bluetoothDevice, ScanRecord scanRecord, int i2, long j2) {
        this.mDevice = bluetoothDevice;
        this.mScanRecord = scanRecord;
        this.mRssi = i2;
        this.mTimestampNanos = j2;
        this.mEventType = 17;
        this.mPrimaryPhy = 1;
        this.mSecondaryPhy = 0;
        this.mAdvertisingSid = 255;
        this.mTxPower = 127;
        this.mPeriodicAdvertisingInterval = 0;
    }

    public ScanResult(BluetoothDevice bluetoothDevice, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ScanRecord scanRecord, long j2) {
        this.mDevice = bluetoothDevice;
        this.mEventType = i2;
        this.mPrimaryPhy = i3;
        this.mSecondaryPhy = i4;
        this.mAdvertisingSid = i5;
        this.mTxPower = i6;
        this.mRssi = i7;
        this.mPeriodicAdvertisingInterval = i8;
        this.mScanRecord = scanRecord;
        this.mTimestampNanos = j2;
    }

    private ScanResult(Parcel parcel) {
        readFromParcel(parcel);
    }
}
