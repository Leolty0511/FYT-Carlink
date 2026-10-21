package android.bluetooth;

/* JADX INFO: loaded from: classes.dex */
public abstract class BluetoothGattCallback {
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i2, int i3) {
    }

    public void onConnectionUpdated(BluetoothGatt bluetoothGatt, int i2, int i3, int i4, int i5) {
    }

    public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i2) {
    }

    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i2) {
    }

    public void onMtuChanged(BluetoothGatt bluetoothGatt, int i2, int i3) {
    }

    public void onPhyRead(BluetoothGatt bluetoothGatt, int i2, int i3, int i4) {
    }

    public void onPhyUpdate(BluetoothGatt bluetoothGatt, int i2, int i3, int i4) {
    }

    public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i2, int i3) {
    }

    public void onReliableWriteCompleted(BluetoothGatt bluetoothGatt, int i2) {
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i2) {
    }
}
