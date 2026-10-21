package android.bluetooth.le;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class AdvertisingSetParameters implements Parcelable {
    public static final Parcelable.Creator<AdvertisingSetParameters> CREATOR = new Parcelable.Creator<AdvertisingSetParameters>() { // from class: android.bluetooth.le.AdvertisingSetParameters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertisingSetParameters createFromParcel(Parcel parcel) {
            return new AdvertisingSetParameters(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertisingSetParameters[] newArray(int i2) {
            return new AdvertisingSetParameters[i2];
        }
    };
    public static final int INTERVAL_HIGH = 1600;
    public static final int INTERVAL_LOW = 160;
    public static final int INTERVAL_MAX = 16777215;
    public static final int INTERVAL_MEDIUM = 400;
    public static final int INTERVAL_MIN = 160;
    private static final int LIMITED_ADVERTISING_MAX_MILLIS = 180000;
    public static final int TX_POWER_HIGH = 1;
    public static final int TX_POWER_LOW = -15;
    public static final int TX_POWER_MAX = 1;
    public static final int TX_POWER_MEDIUM = -7;
    public static final int TX_POWER_MIN = -127;
    public static final int TX_POWER_ULTRA_LOW = -21;
    private final boolean connectable;
    private final boolean includeTxPower;
    private final int interval;
    private final boolean isAnonymous;
    private final boolean isLegacy;
    private final int primaryPhy;
    private final boolean scannable;
    private final int secondaryPhy;
    private final int txPowerLevel;

    public static final class Builder {
        private boolean connectable = false;
        private boolean scannable = false;
        private boolean isLegacy = false;
        private boolean isAnonymous = false;
        private boolean includeTxPower = false;
        private int primaryPhy = 1;
        private int secondaryPhy = 1;
        private int interval = 160;
        private int txPowerLevel = -7;

        public AdvertisingSetParameters build() {
            if (!this.isLegacy) {
                boolean z2 = this.connectable;
                if (z2 && this.scannable) {
                    throw new IllegalStateException("Advertising can't be both connectable and scannable");
                }
                if (this.isAnonymous && z2) {
                    throw new IllegalStateException("Advertising can't be both connectable and anonymous");
                }
            } else {
                if (this.isAnonymous) {
                    throw new IllegalArgumentException("Legacy advertising can't be anonymous");
                }
                if (this.connectable && !this.scannable) {
                    throw new IllegalStateException("Legacy advertisement can't be connectable and non-scannable");
                }
                if (this.includeTxPower) {
                    throw new IllegalStateException("Legacy advertising can't include TX power level in header");
                }
            }
            return new AdvertisingSetParameters(this.connectable, this.scannable, this.isLegacy, this.isAnonymous, this.includeTxPower, this.primaryPhy, this.secondaryPhy, this.interval, this.txPowerLevel);
        }

        public Builder setAnonymous(boolean z2) {
            this.isAnonymous = z2;
            return this;
        }

        public Builder setConnectable(boolean z2) {
            this.connectable = z2;
            return this;
        }

        public Builder setIncludeTxPower(boolean z2) {
            this.includeTxPower = z2;
            return this;
        }

        public Builder setInterval(int i2) {
            if (i2 < 160 || i2 > 16777215) {
                throw new IllegalArgumentException(c.d("unknown interval ", i2));
            }
            this.interval = i2;
            return this;
        }

        public Builder setLegacyMode(boolean z2) {
            this.isLegacy = z2;
            return this;
        }

        public Builder setPrimaryPhy(int i2) {
            if (i2 != 1 && i2 != 3) {
                throw new IllegalArgumentException(c.d("bad primaryPhy ", i2));
            }
            this.primaryPhy = i2;
            return this;
        }

        public Builder setScannable(boolean z2) {
            this.scannable = z2;
            return this;
        }

        public Builder setSecondaryPhy(int i2) {
            if (i2 != 1 && i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException(c.d("bad secondaryPhy ", i2));
            }
            this.secondaryPhy = i2;
            return this;
        }

        public Builder setTxPowerLevel(int i2) {
            if (i2 < -127 || i2 > 1) {
                throw new IllegalArgumentException(c.d("unknown txPowerLevel ", i2));
            }
            this.txPowerLevel = i2;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInterval() {
        return this.interval;
    }

    public int getPrimaryPhy() {
        return this.primaryPhy;
    }

    public int getSecondaryPhy() {
        return this.secondaryPhy;
    }

    public int getTxPowerLevel() {
        return this.txPowerLevel;
    }

    public boolean includeTxPower() {
        return this.includeTxPower;
    }

    public boolean isAnonymous() {
        return this.isAnonymous;
    }

    public boolean isConnectable() {
        return this.connectable;
    }

    public boolean isLegacy() {
        return this.isLegacy;
    }

    public boolean isScannable() {
        return this.scannable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdvertisingSetParameters [connectable=");
        sb.append(this.connectable);
        sb.append(", isLegacy=");
        sb.append(this.isLegacy);
        sb.append(", isAnonymous=");
        sb.append(this.isAnonymous);
        sb.append(", includeTxPower=");
        sb.append(this.includeTxPower);
        sb.append(", primaryPhy=");
        sb.append(this.primaryPhy);
        sb.append(", secondaryPhy=");
        sb.append(this.secondaryPhy);
        sb.append(", interval=");
        sb.append(this.interval);
        sb.append(", txPowerLevel=");
        return c.m(sb, this.txPowerLevel, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.connectable ? 1 : 0);
        parcel.writeInt(this.scannable ? 1 : 0);
        parcel.writeInt(this.isLegacy ? 1 : 0);
        parcel.writeInt(this.isAnonymous ? 1 : 0);
        parcel.writeInt(this.includeTxPower ? 1 : 0);
        parcel.writeInt(this.primaryPhy);
        parcel.writeInt(this.secondaryPhy);
        parcel.writeInt(this.interval);
        parcel.writeInt(this.txPowerLevel);
    }

    private AdvertisingSetParameters(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i2, int i3, int i4, int i5) {
        this.connectable = z2;
        this.scannable = z3;
        this.isLegacy = z4;
        this.isAnonymous = z5;
        this.includeTxPower = z6;
        this.primaryPhy = i2;
        this.secondaryPhy = i3;
        this.interval = i4;
        this.txPowerLevel = i5;
    }

    private AdvertisingSetParameters(Parcel parcel) {
        this.connectable = parcel.readInt() != 0;
        this.scannable = parcel.readInt() != 0;
        this.isLegacy = parcel.readInt() != 0;
        this.isAnonymous = parcel.readInt() != 0;
        this.includeTxPower = parcel.readInt() != 0;
        this.primaryPhy = parcel.readInt();
        this.secondaryPhy = parcel.readInt();
        this.interval = parcel.readInt();
        this.txPowerLevel = parcel.readInt();
    }
}
