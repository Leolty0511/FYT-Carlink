package android.net.wifi.aware;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.logging.nano.MetricsProto;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigRequest implements Parcelable {
    public static final int CLUSTER_ID_MAX = 65535;
    public static final int CLUSTER_ID_MIN = 0;
    public static final Parcelable.Creator<ConfigRequest> CREATOR = new Parcelable.Creator<ConfigRequest>() { // from class: android.net.wifi.aware.ConfigRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigRequest createFromParcel(Parcel parcel) {
            return new ConfigRequest(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.createIntArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigRequest[] newArray(int i2) {
            return new ConfigRequest[i2];
        }
    };
    public static final int DW_DISABLE = 0;
    public static final int DW_INTERVAL_NOT_INIT = -1;
    public static final int NAN_BAND_24GHZ = 0;
    public static final int NAN_BAND_5GHZ = 1;
    public final int mClusterHigh;
    public final int mClusterLow;
    public final int[] mDiscoveryWindowInterval;
    public final int mMasterPreference;
    public final boolean mSupport5gBand;

    public static final class Builder {
        private boolean mSupport5gBand = false;
        private int mMasterPreference = 0;
        private int mClusterLow = 0;
        private int mClusterHigh = 65535;
        private int[] mDiscoveryWindowInterval = {-1, -1};

        public ConfigRequest build() {
            if (this.mClusterLow <= this.mClusterHigh) {
                return new ConfigRequest(this.mSupport5gBand, this.mMasterPreference, this.mClusterLow, this.mClusterHigh, this.mDiscoveryWindowInterval);
            }
            throw new IllegalArgumentException("Invalid argument combination - must have Cluster Low <= Cluster High");
        }

        public Builder setClusterHigh(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Cluster specification must be non-negative");
            }
            if (i2 > 65535) {
                throw new IllegalArgumentException("Cluster specification must not exceed 0xFFFF");
            }
            this.mClusterHigh = i2;
            return this;
        }

        public Builder setClusterLow(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Cluster specification must be non-negative");
            }
            if (i2 > 65535) {
                throw new IllegalArgumentException("Cluster specification must not exceed 0xFFFF");
            }
            this.mClusterLow = i2;
            return this;
        }

        public Builder setDiscoveryWindowInterval(int i2, int i3) {
            if (i2 != 0 && i2 != 1) {
                throw new IllegalArgumentException("Invalid band value");
            }
            if ((i2 == 0 && (i3 < 1 || i3 > 5)) || (i2 == 1 && (i3 < 0 || i3 > 5))) {
                throw new IllegalArgumentException("Invalid interval value: 2.4 GHz [1,5] or 5GHz [0,5]");
            }
            this.mDiscoveryWindowInterval[i2] = i3;
            return this;
        }

        public Builder setMasterPreference(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Master Preference specification must be non-negative");
            }
            if (i2 == 1 || i2 == 255 || i2 > 255) {
                throw new IllegalArgumentException("Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)");
            }
            this.mMasterPreference = i2;
            return this;
        }

        public Builder setSupport5gBand(boolean z2) {
            this.mSupport5gBand = z2;
            return this;
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
        if (!(obj instanceof ConfigRequest)) {
            return false;
        }
        ConfigRequest configRequest = (ConfigRequest) obj;
        return this.mSupport5gBand == configRequest.mSupport5gBand && this.mMasterPreference == configRequest.mMasterPreference && this.mClusterLow == configRequest.mClusterLow && this.mClusterHigh == configRequest.mClusterHigh && Arrays.equals(this.mDiscoveryWindowInterval, configRequest.mDiscoveryWindowInterval);
    }

    public int hashCode() {
        return Arrays.hashCode(this.mDiscoveryWindowInterval) + ((((((((MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + (this.mSupport5gBand ? 1 : 0)) * 31) + this.mMasterPreference) * 31) + this.mClusterLow) * 31) + this.mClusterHigh) * 31);
    }

    public String toString() {
        return "ConfigRequest [mSupport5gBand=" + this.mSupport5gBand + ", mMasterPreference=" + this.mMasterPreference + ", mClusterLow=" + this.mClusterLow + ", mClusterHigh=" + this.mClusterHigh + ", mDiscoveryWindowInterval=" + Arrays.toString(this.mDiscoveryWindowInterval) + "]";
    }

    public void validate() {
        int i2 = this.mMasterPreference;
        if (i2 < 0) {
            throw new IllegalArgumentException("Master Preference specification must be non-negative");
        }
        if (i2 == 1 || i2 == 255 || i2 > 255) {
            throw new IllegalArgumentException("Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)");
        }
        int i3 = this.mClusterLow;
        if (i3 < 0) {
            throw new IllegalArgumentException("Cluster specification must be non-negative");
        }
        if (i3 > 65535) {
            throw new IllegalArgumentException("Cluster specification must not exceed 0xFFFF");
        }
        int i4 = this.mClusterHigh;
        if (i4 < 0) {
            throw new IllegalArgumentException("Cluster specification must be non-negative");
        }
        if (i4 > 65535) {
            throw new IllegalArgumentException("Cluster specification must not exceed 0xFFFF");
        }
        if (i3 > i4) {
            throw new IllegalArgumentException("Invalid argument combination - must have Cluster Low <= Cluster High");
        }
        int[] iArr = this.mDiscoveryWindowInterval;
        if (iArr.length != 2) {
            throw new IllegalArgumentException("Invalid discovery window interval: must have 2 elements (2.4 & 5");
        }
        int i5 = iArr[0];
        if (i5 != -1 && (i5 < 1 || i5 > 5)) {
            throw new IllegalArgumentException("Invalid discovery window interval for 2.4GHz: valid is UNSET or [1,5]");
        }
        int i6 = iArr[1];
        if (i6 != -1) {
            if (i6 < 0 || i6 > 5) {
                throw new IllegalArgumentException("Invalid discovery window interval for 5GHz: valid is UNSET or [0,5]");
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSupport5gBand ? 1 : 0);
        parcel.writeInt(this.mMasterPreference);
        parcel.writeInt(this.mClusterLow);
        parcel.writeInt(this.mClusterHigh);
        parcel.writeIntArray(this.mDiscoveryWindowInterval);
    }

    private ConfigRequest(boolean z2, int i2, int i3, int i4, int[] iArr) {
        this.mSupport5gBand = z2;
        this.mMasterPreference = i2;
        this.mClusterLow = i3;
        this.mClusterHigh = i4;
        this.mDiscoveryWindowInterval = iArr;
    }
}
