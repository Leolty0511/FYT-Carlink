package android.bluetooth;

import android.app.m;
import android.os.ParcelFileDescriptor;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class BluetoothHealthCallback {
    private static final String TAG = "BluetoothHealthCallback";

    public void onHealthAppConfigurationStatusChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, int i2) {
        Log.d(TAG, "onHealthAppConfigurationStatusChange: " + bluetoothHealthAppConfiguration + "Status: " + i2);
    }

    public void onHealthChannelStateChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, BluetoothDevice bluetoothDevice, int i2, int i3, ParcelFileDescriptor parcelFileDescriptor, int i4) {
        StringBuilder sb = new StringBuilder("onHealthChannelStateChange: ");
        sb.append(bluetoothHealthAppConfiguration);
        sb.append("Device: ");
        sb.append(bluetoothDevice);
        sb.append("prevState:");
        m.u(sb, i2, "newState:", i3, "ParcelFd:");
        sb.append(parcelFileDescriptor);
        sb.append("ChannelId:");
        sb.append(i4);
        Log.d(TAG, sb.toString());
    }
}
