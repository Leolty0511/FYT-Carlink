package android.bluetooth;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothManager {
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothManager";
    private static final boolean VDBG = true;
    private final BluetoothAdapter mAdapter;

    public BluetoothManager(Context context) {
        if (context.getApplicationContext() == null) {
            throw new IllegalArgumentException("context not associated with any application (using a mock context?)");
        }
        this.mAdapter = BluetoothAdapter.getDefaultAdapter();
    }

    public BluetoothAdapter getAdapter() {
        return this.mAdapter;
    }

    public List<BluetoothDevice> getConnectedDevices(int i2) {
        Log.d(TAG, "getConnectedDevices");
        if (i2 != 7 && i2 != 8) {
            throw new IllegalArgumentException("Profile not supported: " + i2);
        }
        ArrayList arrayList = new ArrayList();
        try {
            IBluetoothGatt bluetoothGatt = this.mAdapter.getBluetoothManager().getBluetoothGatt();
            return bluetoothGatt == null ? arrayList : bluetoothGatt.getDevicesMatchingConnectionStates(new int[]{2});
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return arrayList;
        }
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice, int i2) {
        Log.d(TAG, "getConnectionState()");
        Iterator<BluetoothDevice> it = getConnectedDevices(i2).iterator();
        while (it.hasNext()) {
            if (bluetoothDevice.equals(it.next())) {
                return 2;
            }
        }
        return 0;
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int i2, int[] iArr) {
        Log.d(TAG, "getDevicesMatchingConnectionStates");
        if (i2 != 7 && i2 != 8) {
            throw new IllegalArgumentException("Profile not supported: " + i2);
        }
        ArrayList arrayList = new ArrayList();
        try {
            IBluetoothGatt bluetoothGatt = this.mAdapter.getBluetoothManager().getBluetoothGatt();
            return bluetoothGatt == null ? arrayList : bluetoothGatt.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return arrayList;
        }
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback bluetoothGattServerCallback) {
        if (context == null || bluetoothGattServerCallback == null) {
            throw new IllegalArgumentException("null parameter: " + context + " " + bluetoothGattServerCallback);
        }
        try {
            IBluetoothGatt bluetoothGatt = this.mAdapter.getBluetoothManager().getBluetoothGatt();
            if (bluetoothGatt == null) {
                Log.e(TAG, "Fail to get GATT Server connection");
                return null;
            }
            BluetoothGattServer bluetoothGattServer = new BluetoothGattServer(context, bluetoothGatt);
            if (Boolean.valueOf(bluetoothGattServer.registerCallback(bluetoothGattServerCallback)).booleanValue()) {
                return bluetoothGattServer;
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }
}
