package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHealthAppConfiguration implements Parcelable {
    public static final Parcelable.Creator<BluetoothHealthAppConfiguration> CREATOR = new Parcelable.Creator<BluetoothHealthAppConfiguration>() { // from class: android.bluetooth.BluetoothHealthAppConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHealthAppConfiguration createFromParcel(Parcel parcel) {
            return new BluetoothHealthAppConfiguration(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHealthAppConfiguration[] newArray(int i2) {
            return new BluetoothHealthAppConfiguration[i2];
        }
    };
    private final int mChannelType;
    private final int mDataType;
    private final String mName;
    private final int mRole;

    public BluetoothHealthAppConfiguration(String str, int i2) {
        this.mName = str;
        this.mDataType = i2;
        this.mRole = 2;
        this.mChannelType = 12;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BluetoothHealthAppConfiguration)) {
            return false;
        }
        BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration = (BluetoothHealthAppConfiguration) obj;
        String str = this.mName;
        return str != null && str.equals(bluetoothHealthAppConfiguration.getName()) && this.mDataType == bluetoothHealthAppConfiguration.getDataType() && this.mRole == bluetoothHealthAppConfiguration.getRole() && this.mChannelType == bluetoothHealthAppConfiguration.getChannelType();
    }

    public int getChannelType() {
        return this.mChannelType;
    }

    public int getDataType() {
        return this.mDataType;
    }

    public String getName() {
        return this.mName;
    }

    public int getRole() {
        return this.mRole;
    }

    public int hashCode() {
        String str = this.mName;
        return ((((((MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + (str != null ? str.hashCode() : 0)) * 31) + this.mDataType) * 31) + this.mRole) * 31) + this.mChannelType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BluetoothHealthAppConfiguration [mName = ");
        sb.append(this.mName);
        sb.append(",mDataType = ");
        sb.append(this.mDataType);
        sb.append(", mRole = ");
        sb.append(this.mRole);
        sb.append(",mChannelType = ");
        return c.m(sb, this.mChannelType, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName);
        parcel.writeInt(this.mDataType);
        parcel.writeInt(this.mRole);
        parcel.writeInt(this.mChannelType);
    }

    public BluetoothHealthAppConfiguration(String str, int i2, int i3, int i4) {
        this.mName = str;
        this.mDataType = i2;
        this.mRole = i3;
        this.mChannelType = i4;
    }
}
