package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class OobData implements Parcelable {
    public static final Parcelable.Creator<OobData> CREATOR = new Parcelable.Creator<OobData>() { // from class: android.bluetooth.OobData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OobData createFromParcel(Parcel parcel) {
            return new OobData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OobData[] newArray(int i2) {
            return new OobData[i2];
        }
    };
    private byte[] leBluetoothDeviceAddress;
    private byte[] leSecureConnectionsConfirmation;
    private byte[] leSecureConnectionsRandom;
    private byte[] securityManagerTk;

    public OobData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getLeBluetoothDeviceAddress() {
        return this.leBluetoothDeviceAddress;
    }

    public byte[] getLeSecureConnectionsConfirmation() {
        return this.leSecureConnectionsConfirmation;
    }

    public byte[] getLeSecureConnectionsRandom() {
        return this.leSecureConnectionsRandom;
    }

    public byte[] getSecurityManagerTk() {
        return this.securityManagerTk;
    }

    public void setLeBluetoothDeviceAddress(byte[] bArr) {
        this.leBluetoothDeviceAddress = bArr;
    }

    public void setLeSecureConnectionsConfirmation(byte[] bArr) {
        this.leSecureConnectionsConfirmation = bArr;
    }

    public void setLeSecureConnectionsRandom(byte[] bArr) {
        this.leSecureConnectionsRandom = bArr;
    }

    public void setSecurityManagerTk(byte[] bArr) {
        this.securityManagerTk = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.leBluetoothDeviceAddress);
        parcel.writeByteArray(this.securityManagerTk);
        parcel.writeByteArray(this.leSecureConnectionsConfirmation);
        parcel.writeByteArray(this.leSecureConnectionsRandom);
    }

    private OobData(Parcel parcel) {
        this.leBluetoothDeviceAddress = parcel.createByteArray();
        this.securityManagerTk = parcel.createByteArray();
        this.leSecureConnectionsConfirmation = parcel.createByteArray();
        this.leSecureConnectionsRandom = parcel.createByteArray();
    }
}
