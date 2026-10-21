package android.bluetooth.le;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes.dex */
public abstract class PeriodicAdvertisingCallback {
    public static final int SYNC_NO_RESOURCES = 2;
    public static final int SYNC_NO_RESPONSE = 1;
    public static final int SYNC_SUCCESS = 0;

    public void onPeriodicAdvertisingReport(PeriodicAdvertisingReport periodicAdvertisingReport) {
    }

    public void onSyncEstablished(int i2, BluetoothDevice bluetoothDevice, int i3, int i4, int i5, int i6) {
    }

    public void onSyncLost(int i2) {
    }
}
