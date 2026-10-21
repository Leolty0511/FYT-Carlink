package android.bluetooth;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothGattDescriptor implements Parcelable {
    public static final int PERMISSION_READ = 1;
    public static final int PERMISSION_READ_ENCRYPTED = 2;
    public static final int PERMISSION_READ_ENCRYPTED_MITM = 4;
    public static final int PERMISSION_WRITE = 16;
    public static final int PERMISSION_WRITE_ENCRYPTED = 32;
    public static final int PERMISSION_WRITE_ENCRYPTED_MITM = 64;
    public static final int PERMISSION_WRITE_SIGNED = 128;
    public static final int PERMISSION_WRITE_SIGNED_MITM = 256;
    protected BluetoothGattCharacteristic mCharacteristic;
    protected int mInstance;
    protected int mPermissions;
    protected UUID mUuid;
    protected byte[] mValue;
    public static final byte[] ENABLE_NOTIFICATION_VALUE = {1, 0};
    public static final byte[] ENABLE_INDICATION_VALUE = {2, 0};
    public static final byte[] DISABLE_NOTIFICATION_VALUE = {0, 0};
    public static final Parcelable.Creator<BluetoothGattDescriptor> CREATOR = new Parcelable.Creator<BluetoothGattDescriptor>() { // from class: android.bluetooth.BluetoothGattDescriptor.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattDescriptor createFromParcel(Parcel parcel) {
            return new BluetoothGattDescriptor(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothGattDescriptor[] newArray(int i2) {
            return new BluetoothGattDescriptor[i2];
        }
    };

    private void initDescriptor(BluetoothGattCharacteristic bluetoothGattCharacteristic, UUID uuid, int i2, int i3) {
        this.mCharacteristic = bluetoothGattCharacteristic;
        this.mUuid = uuid;
        this.mInstance = i2;
        this.mPermissions = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BluetoothGattCharacteristic getCharacteristic() {
        return this.mCharacteristic;
    }

    public int getInstanceId() {
        return this.mInstance;
    }

    public int getPermissions() {
        return this.mPermissions;
    }

    public UUID getUuid() {
        return this.mUuid;
    }

    public byte[] getValue() {
        return this.mValue;
    }

    public void setCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.mCharacteristic = bluetoothGattCharacteristic;
    }

    public void setInstanceId(int i2) {
        this.mInstance = i2;
    }

    public boolean setValue(byte[] bArr) {
        this.mValue = bArr;
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(new ParcelUuid(this.mUuid), 0);
        parcel.writeInt(this.mInstance);
        parcel.writeInt(this.mPermissions);
    }

    public BluetoothGattDescriptor(UUID uuid, int i2) {
        initDescriptor(null, uuid, 0, i2);
    }

    public BluetoothGattDescriptor(BluetoothGattCharacteristic bluetoothGattCharacteristic, UUID uuid, int i2, int i3) {
        initDescriptor(bluetoothGattCharacteristic, uuid, i2, i3);
    }

    public BluetoothGattDescriptor(UUID uuid, int i2, int i3) {
        initDescriptor(null, uuid, i2, i3);
    }

    private BluetoothGattDescriptor(Parcel parcel) {
        this.mUuid = ((ParcelUuid) parcel.readParcelable(null)).getUuid();
        this.mInstance = parcel.readInt();
        this.mPermissions = parcel.readInt();
    }
}
