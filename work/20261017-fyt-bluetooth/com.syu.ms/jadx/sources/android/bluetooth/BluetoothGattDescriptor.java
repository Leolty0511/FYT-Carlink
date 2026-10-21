package android.bluetooth;

import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothGattDescriptor {
    public static final int PERMISSION_READ = 1;
    public static final int PERMISSION_READ_ENCRYPTED = 2;
    public static final int PERMISSION_READ_ENCRYPTED_MITM = 4;
    public static final int PERMISSION_WRITE = 16;
    public static final int PERMISSION_WRITE_ENCRYPTED = 32;
    public static final int PERMISSION_WRITE_ENCRYPTED_MITM = 64;
    public static final int PERMISSION_WRITE_SIGNED = 128;
    public static final int PERMISSION_WRITE_SIGNED_MITM = 256;
    public BluetoothGattCharacteristic mCharacteristic;
    public int mInstance;
    public int mPermissions;
    public UUID mUuid;
    public byte[] mValue;
    public static final byte[] ENABLE_NOTIFICATION_VALUE = {1, 0};
    public static final byte[] ENABLE_INDICATION_VALUE = {2, 0};
    public static final byte[] DISABLE_NOTIFICATION_VALUE = {0, 0};

    public BluetoothGattDescriptor(UUID uuid, int i2) {
        initDescriptor(null, uuid, 0, i2);
    }

    private void initDescriptor(BluetoothGattCharacteristic bluetoothGattCharacteristic, UUID uuid, int i2, int i3) {
        this.mCharacteristic = bluetoothGattCharacteristic;
        this.mUuid = uuid;
        this.mInstance = i2;
        this.mPermissions = i3;
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

    public boolean setValue(byte[] bArr) {
        this.mValue = bArr;
        return true;
    }

    public BluetoothGattDescriptor(BluetoothGattCharacteristic bluetoothGattCharacteristic, UUID uuid, int i2, int i3) {
        initDescriptor(bluetoothGattCharacteristic, uuid, i2, i3);
    }
}
