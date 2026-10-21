package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHidDeviceAppSdpSettings implements Parcelable {
    public static final Parcelable.Creator<BluetoothHidDeviceAppSdpSettings> CREATOR = new Parcelable.Creator<BluetoothHidDeviceAppSdpSettings>() { // from class: android.bluetooth.BluetoothHidDeviceAppSdpSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHidDeviceAppSdpSettings createFromParcel(Parcel parcel) {
            return new BluetoothHidDeviceAppSdpSettings(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readByte(), parcel.createByteArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHidDeviceAppSdpSettings[] newArray(int i2) {
            return new BluetoothHidDeviceAppSdpSettings[i2];
        }
    };
    public final String description;
    public final byte[] descriptors;
    public final String name;
    public final String provider;
    public final byte subclass;

    public BluetoothHidDeviceAppSdpSettings(String str, String str2, String str3, byte b2, byte[] bArr) {
        this.name = str;
        this.description = str2;
        this.provider = str3;
        this.subclass = b2;
        this.descriptors = (byte[]) bArr.clone();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BluetoothHidDeviceAppSdpSettings) {
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeString(this.description);
        parcel.writeString(this.provider);
        parcel.writeByte(this.subclass);
        parcel.writeByteArray(this.descriptors);
    }
}
