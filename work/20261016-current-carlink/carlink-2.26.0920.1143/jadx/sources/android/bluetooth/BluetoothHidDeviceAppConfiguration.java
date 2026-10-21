package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHidDeviceAppConfiguration implements Parcelable {
    public static final Parcelable.Creator<BluetoothHidDeviceAppConfiguration> CREATOR = new Parcelable.Creator<BluetoothHidDeviceAppConfiguration>() { // from class: android.bluetooth.BluetoothHidDeviceAppConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHidDeviceAppConfiguration createFromParcel(Parcel parcel) {
            return new BluetoothHidDeviceAppConfiguration(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHidDeviceAppConfiguration[] newArray(int i2) {
            return new BluetoothHidDeviceAppConfiguration[i2];
        }
    };
    private final long mHash;

    public BluetoothHidDeviceAppConfiguration() {
        this.mHash = new Random().nextLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof BluetoothHidDeviceAppConfiguration) && this.mHash == ((BluetoothHidDeviceAppConfiguration) obj).mHash;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mHash);
    }

    public BluetoothHidDeviceAppConfiguration(long j2) {
        this.mHash = j2;
    }
}
