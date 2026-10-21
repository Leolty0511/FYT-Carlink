package android.bluetooth;

/* JADX INFO: loaded from: classes.dex */
public abstract class BluetoothGattServerCallback {
    public void onCharacteristicReadRequest(BluetoothDevice bluetoothDevice, int i2, int i3, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
    }

    public void onCharacteristicWriteRequest(BluetoothDevice bluetoothDevice, int i2, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z2, boolean z3, int i3, byte[] bArr) {
    }

    public void onConnectionStateChange(BluetoothDevice bluetoothDevice, int i2, int i3) {
    }

    public void onDescriptorReadRequest(BluetoothDevice bluetoothDevice, int i2, int i3, BluetoothGattDescriptor bluetoothGattDescriptor) {
    }

    public void onDescriptorWriteRequest(BluetoothDevice bluetoothDevice, int i2, BluetoothGattDescriptor bluetoothGattDescriptor, boolean z2, boolean z3, int i3, byte[] bArr) {
    }

    public void onExecuteWrite(BluetoothDevice bluetoothDevice, int i2, boolean z2) {
    }

    public void onServiceAdded(int i2, BluetoothGattService bluetoothGattService) {
    }
}
