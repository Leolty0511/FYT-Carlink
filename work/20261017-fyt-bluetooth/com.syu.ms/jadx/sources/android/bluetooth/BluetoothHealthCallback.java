package android.bluetooth;

import android.os.ParcelFileDescriptor;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class BluetoothHealthCallback {
    private static final String TAG = "BluetoothHealthCallback";

    public void onHealthAppConfigurationStatusChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, int i2) {
        Log.d(TAG, "onHealthAppConfigurationStatusChange: " + bluetoothHealthAppConfiguration + "Status: " + i2);
    }

    public void onHealthChannelStateChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, BluetoothDevice bluetoothDevice, int i2, int i3, ParcelFileDescriptor parcelFileDescriptor, int i4) {
        Log.d(TAG, "onHealthChannelStateChange: " + bluetoothHealthAppConfiguration + "Device: " + bluetoothDevice + "prevState:" + i2 + "newState:" + i3 + "ParcelFd:" + parcelFileDescriptor + "ChannelId:" + i4);
    }
}
