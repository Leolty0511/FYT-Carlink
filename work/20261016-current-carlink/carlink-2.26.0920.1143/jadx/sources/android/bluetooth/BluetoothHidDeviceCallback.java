package android.bluetooth;

import android.app.m;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class BluetoothHidDeviceCallback {
    private static final String TAG = "BluetoothHidDeviceCallback";

    public void onAppStatusChanged(BluetoothDevice bluetoothDevice, BluetoothHidDeviceAppConfiguration bluetoothHidDeviceAppConfiguration, boolean z2) {
        Log.d(TAG, "onAppStatusChanged: pluggedDevice=" + bluetoothDevice + " registered=" + z2);
    }

    public void onConnectionStateChanged(BluetoothDevice bluetoothDevice, int i2) {
        Log.d(TAG, "onConnectionStateChanged: device=" + bluetoothDevice + " state=" + i2);
    }

    public void onGetReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, int i2) {
        Log.d(TAG, "onGetReport: device=" + bluetoothDevice + " type=" + ((int) b2) + " id=" + ((int) b3) + " bufferSize=" + i2);
    }

    public void onIntrData(BluetoothDevice bluetoothDevice, byte b2, byte[] bArr) {
        Log.d(TAG, "onIntrData: device=" + bluetoothDevice + " reportId=" + ((int) b2));
    }

    public void onSetProtocol(BluetoothDevice bluetoothDevice, byte b2) {
        Log.d(TAG, "onSetProtocol: device=" + bluetoothDevice + " protocol=" + ((int) b2));
    }

    public void onSetReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, byte[] bArr) {
        String str = TAG;
        StringBuilder sb = new StringBuilder("onSetReport: device=");
        sb.append(bluetoothDevice);
        sb.append(" type=");
        sb.append((int) b2);
        sb.append(" id=");
        m.t(sb, b3, str);
    }

    public void onVirtualCableUnplug(BluetoothDevice bluetoothDevice) {
        Log.d(TAG, "onVirtualCableUnplug: device=" + bluetoothDevice);
    }
}
