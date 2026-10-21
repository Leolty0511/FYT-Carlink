package android.bluetooth.le;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class PeriodicAdvertisingReport implements Parcelable {
    public static final Parcelable.Creator<PeriodicAdvertisingReport> CREATOR = new Parcelable.Creator<PeriodicAdvertisingReport>() { // from class: android.bluetooth.le.PeriodicAdvertisingReport.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PeriodicAdvertisingReport createFromParcel(Parcel parcel) {
            return new PeriodicAdvertisingReport(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PeriodicAdvertisingReport[] newArray(int i2) {
            return new PeriodicAdvertisingReport[i2];
        }
    };
    public static final int DATA_COMPLETE = 0;
    public static final int DATA_INCOMPLETE_TRUNCATED = 2;
    private ScanRecord data;
    private int dataStatus;
    private int rssi;
    private int syncHandle;
    private long timestampNanos;
    private int txPower;

    private void readFromParcel(Parcel parcel) {
        this.syncHandle = parcel.readInt();
        this.txPower = parcel.readInt();
        this.rssi = parcel.readInt();
        this.dataStatus = parcel.readInt();
        if (parcel.readInt() == 1) {
            this.data = ScanRecord.parseFromBytes(parcel.createByteArray());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PeriodicAdvertisingReport.class != obj.getClass()) {
            return false;
        }
        PeriodicAdvertisingReport periodicAdvertisingReport = (PeriodicAdvertisingReport) obj;
        return this.syncHandle == periodicAdvertisingReport.syncHandle && this.txPower == periodicAdvertisingReport.txPower && this.rssi == periodicAdvertisingReport.rssi && this.dataStatus == periodicAdvertisingReport.dataStatus && Objects.equals(this.data, periodicAdvertisingReport.data) && this.timestampNanos == periodicAdvertisingReport.timestampNanos;
    }

    public ScanRecord getData() {
        return this.data;
    }

    public int getDataStatus() {
        return this.dataStatus;
    }

    public int getRssi() {
        return this.rssi;
    }

    public int getSyncHandle() {
        return this.syncHandle;
    }

    public long getTimestampNanos() {
        return this.timestampNanos;
    }

    public int getTxPower() {
        return this.txPower;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.syncHandle), Integer.valueOf(this.txPower), Integer.valueOf(this.rssi), Integer.valueOf(this.dataStatus), this.data, Long.valueOf(this.timestampNanos));
    }

    public String toString() {
        return "PeriodicAdvertisingReport{syncHandle=" + this.syncHandle + ", txPower=" + this.txPower + ", rssi=" + this.rssi + ", dataStatus=" + this.dataStatus + ", data=" + Objects.toString(this.data) + ", timestampNanos=" + this.timestampNanos + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.syncHandle);
        parcel.writeInt(this.txPower);
        parcel.writeInt(this.rssi);
        parcel.writeInt(this.dataStatus);
        if (this.data == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeByteArray(this.data.getBytes());
        }
    }

    public PeriodicAdvertisingReport(int i2, int i3, int i4, int i5, ScanRecord scanRecord) {
        this.syncHandle = i2;
        this.txPower = i3;
        this.rssi = i4;
        this.dataStatus = i5;
        this.data = scanRecord;
    }

    private PeriodicAdvertisingReport(Parcel parcel) {
        readFromParcel(parcel);
    }
}
