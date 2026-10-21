package android.bluetooth;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothGattService {
    public static final int SERVICE_TYPE_PRIMARY = 0;
    public static final int SERVICE_TYPE_SECONDARY = 1;
    private boolean mAdvertisePreferred;
    public List<BluetoothGattCharacteristic> mCharacteristics;
    public BluetoothDevice mDevice;
    public int mHandles;
    public List<BluetoothGattService> mIncludedServices;
    public int mInstanceId;
    public int mServiceType;
    public UUID mUuid;

    public BluetoothGattService(UUID uuid, int i2) {
        this.mHandles = 0;
        this.mDevice = null;
        this.mUuid = uuid;
        this.mInstanceId = 0;
        this.mServiceType = i2;
        this.mCharacteristics = new ArrayList();
        this.mIncludedServices = new ArrayList();
    }

    public boolean addCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.mCharacteristics.add(bluetoothGattCharacteristic);
        bluetoothGattCharacteristic.setService(this);
        return true;
    }

    public void addIncludedService(BluetoothGattService bluetoothGattService) {
        this.mIncludedServices.add(bluetoothGattService);
    }

    public boolean addService(BluetoothGattService bluetoothGattService) {
        this.mIncludedServices.add(bluetoothGattService);
        return true;
    }

    public BluetoothGattCharacteristic getCharacteristic(UUID uuid, int i2) {
        for (BluetoothGattCharacteristic bluetoothGattCharacteristic : this.mCharacteristics) {
            if (uuid.equals(bluetoothGattCharacteristic.getUuid()) && bluetoothGattCharacteristic.getInstanceId() == i2) {
                return bluetoothGattCharacteristic;
            }
        }
        return null;
    }

    public List<BluetoothGattCharacteristic> getCharacteristics() {
        return this.mCharacteristics;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public int getHandles() {
        return this.mHandles;
    }

    public List<BluetoothGattService> getIncludedServices() {
        return this.mIncludedServices;
    }

    public int getInstanceId() {
        return this.mInstanceId;
    }

    public int getType() {
        return this.mServiceType;
    }

    public UUID getUuid() {
        return this.mUuid;
    }

    public boolean isAdvertisePreferred() {
        return this.mAdvertisePreferred;
    }

    public void setAdvertisePreferred(boolean z2) {
        this.mAdvertisePreferred = z2;
    }

    public void setHandles(int i2) {
        this.mHandles = i2;
    }

    public void setInstanceId(int i2) {
        this.mInstanceId = i2;
    }

    public BluetoothGattCharacteristic getCharacteristic(UUID uuid) {
        for (BluetoothGattCharacteristic bluetoothGattCharacteristic : this.mCharacteristics) {
            if (uuid.equals(bluetoothGattCharacteristic.getUuid())) {
                return bluetoothGattCharacteristic;
            }
        }
        return null;
    }

    public BluetoothGattService(BluetoothDevice bluetoothDevice, UUID uuid, int i2, int i3) {
        this.mHandles = 0;
        this.mDevice = bluetoothDevice;
        this.mUuid = uuid;
        this.mInstanceId = i2;
        this.mServiceType = i3;
        this.mCharacteristics = new ArrayList();
        this.mIncludedServices = new ArrayList();
    }
}
