package android.bluetooth.le;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class AdvertiseSettings implements Parcelable {
    public static final int ADVERTISE_MODE_BALANCED = 1;
    public static final int ADVERTISE_MODE_LOW_LATENCY = 2;
    public static final int ADVERTISE_MODE_LOW_POWER = 0;
    public static final int ADVERTISE_TX_POWER_HIGH = 3;
    public static final int ADVERTISE_TX_POWER_LOW = 1;
    public static final int ADVERTISE_TX_POWER_MEDIUM = 2;
    public static final int ADVERTISE_TX_POWER_ULTRA_LOW = 0;
    public static final Parcelable.Creator<AdvertiseSettings> CREATOR = new Parcelable.Creator<AdvertiseSettings>() { // from class: android.bluetooth.le.AdvertiseSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseSettings createFromParcel(Parcel parcel) {
            return new AdvertiseSettings(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseSettings[] newArray(int i2) {
            return new AdvertiseSettings[i2];
        }
    };
    private static final int LIMITED_ADVERTISING_MAX_MILLIS = 180000;
    private final boolean mAdvertiseConnectable;
    private final int mAdvertiseMode;
    private final int mAdvertiseTimeoutMillis;
    private final int mAdvertiseTxPowerLevel;

    public static final class Builder {
        private int mMode = 0;
        private int mTxPowerLevel = 2;
        private int mTimeoutMillis = 0;
        private boolean mConnectable = true;

        public AdvertiseSettings build() {
            return new AdvertiseSettings(this.mMode, this.mTxPowerLevel, this.mConnectable, this.mTimeoutMillis);
        }

        public Builder setAdvertiseMode(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException(c.d("unknown mode ", i2));
            }
            this.mMode = i2;
            return this;
        }

        public Builder setConnectable(boolean z2) {
            this.mConnectable = z2;
            return this;
        }

        public Builder setTimeout(int i2) {
            if (i2 < 0 || i2 > AdvertiseSettings.LIMITED_ADVERTISING_MAX_MILLIS) {
                throw new IllegalArgumentException("timeoutMillis invalid (must be 0-180000 milliseconds)");
            }
            this.mTimeoutMillis = i2;
            return this;
        }

        public Builder setTxPowerLevel(int i2) {
            if (i2 < 0 || i2 > 3) {
                throw new IllegalArgumentException(c.d("unknown tx power level ", i2));
            }
            this.mTxPowerLevel = i2;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getMode() {
        return this.mAdvertiseMode;
    }

    public int getTimeout() {
        return this.mAdvertiseTimeoutMillis;
    }

    public int getTxPowerLevel() {
        return this.mAdvertiseTxPowerLevel;
    }

    public boolean isConnectable() {
        return this.mAdvertiseConnectable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Settings [mAdvertiseMode=");
        sb.append(this.mAdvertiseMode);
        sb.append(", mAdvertiseTxPowerLevel=");
        sb.append(this.mAdvertiseTxPowerLevel);
        sb.append(", mAdvertiseConnectable=");
        sb.append(this.mAdvertiseConnectable);
        sb.append(", mAdvertiseTimeoutMillis=");
        return c.m(sb, this.mAdvertiseTimeoutMillis, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAdvertiseMode);
        parcel.writeInt(this.mAdvertiseTxPowerLevel);
        parcel.writeInt(this.mAdvertiseConnectable ? 1 : 0);
        parcel.writeInt(this.mAdvertiseTimeoutMillis);
    }

    private AdvertiseSettings(int i2, int i3, boolean z2, int i4) {
        this.mAdvertiseMode = i2;
        this.mAdvertiseTxPowerLevel = i3;
        this.mAdvertiseConnectable = z2;
        this.mAdvertiseTimeoutMillis = i4;
    }

    private AdvertiseSettings(Parcel parcel) {
        this.mAdvertiseMode = parcel.readInt();
        this.mAdvertiseTxPowerLevel = parcel.readInt();
        this.mAdvertiseConnectable = parcel.readInt() != 0;
        this.mAdvertiseTimeoutMillis = parcel.readInt();
    }
}
