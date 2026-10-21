package android.bluetooth.le;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class PeriodicAdvertisingParameters implements Parcelable {
    public static final Parcelable.Creator<PeriodicAdvertisingParameters> CREATOR = new Parcelable.Creator<PeriodicAdvertisingParameters>() { // from class: android.bluetooth.le.PeriodicAdvertisingParameters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PeriodicAdvertisingParameters createFromParcel(Parcel parcel) {
            return new PeriodicAdvertisingParameters(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PeriodicAdvertisingParameters[] newArray(int i2) {
            return new PeriodicAdvertisingParameters[i2];
        }
    };
    private static final int INTERVAL_MAX = 65519;
    private static final int INTERVAL_MIN = 80;
    private final boolean includeTxPower;
    private final int interval;

    public static final class Builder {
        private boolean includeTxPower = false;
        private int interval = PeriodicAdvertisingParameters.INTERVAL_MAX;

        public PeriodicAdvertisingParameters build() {
            return new PeriodicAdvertisingParameters(this.includeTxPower, this.interval);
        }

        public Builder setIncludeTxPower(boolean z2) {
            this.includeTxPower = z2;
            return this;
        }

        public Builder setInterval(int i2) {
            if (i2 < 80 || i2 > PeriodicAdvertisingParameters.INTERVAL_MAX) {
                throw new IllegalArgumentException("Invalid interval (must be 80-65519)");
            }
            this.interval = i2;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getIncludeTxPower() {
        return this.includeTxPower;
    }

    public int getInterval() {
        return this.interval;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.includeTxPower ? 1 : 0);
        parcel.writeInt(this.interval);
    }

    private PeriodicAdvertisingParameters(boolean z2, int i2) {
        this.includeTxPower = z2;
        this.interval = i2;
    }

    private PeriodicAdvertisingParameters(Parcel parcel) {
        this.includeTxPower = parcel.readInt() != 0;
        this.interval = parcel.readInt();
    }
}
