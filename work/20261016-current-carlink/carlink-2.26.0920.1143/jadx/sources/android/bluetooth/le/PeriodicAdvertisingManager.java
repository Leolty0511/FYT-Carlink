package android.bluetooth.le;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.IBluetoothGatt;
import android.bluetooth.IBluetoothManager;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PeriodicAdvertisingManager {
    private static final int SKIP_MAX = 499;
    private static final int SKIP_MIN = 0;
    private static final int SYNC_STARTING = -1;
    private static final String TAG = "PeriodicAdvertisingManager";
    private static final int TIMEOUT_MAX = 16384;
    private static final int TIMEOUT_MIN = 10;
    private final IBluetoothManager mBluetoothManager;
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    Map<PeriodicAdvertisingCallback, IPeriodicAdvertisingCallback> callbackWrappers = new IdentityHashMap();

    public PeriodicAdvertisingManager(IBluetoothManager iBluetoothManager) {
        this.mBluetoothManager = iBluetoothManager;
    }

    private IPeriodicAdvertisingCallback wrap(final PeriodicAdvertisingCallback periodicAdvertisingCallback, final Handler handler) {
        return new IPeriodicAdvertisingCallback.Stub() { // from class: android.bluetooth.le.PeriodicAdvertisingManager.1
            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onPeriodicAdvertisingReport(final PeriodicAdvertisingReport periodicAdvertisingReport) {
                handler.post(new Runnable() { // from class: android.bluetooth.le.PeriodicAdvertisingManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        periodicAdvertisingCallback.onPeriodicAdvertisingReport(periodicAdvertisingReport);
                    }
                });
            }

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onSyncEstablished(final int i2, final BluetoothDevice bluetoothDevice, final int i3, final int i4, final int i5, final int i6) {
                handler.post(new Runnable() { // from class: android.bluetooth.le.PeriodicAdvertisingManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        periodicAdvertisingCallback.onSyncEstablished(i2, bluetoothDevice, i3, i4, i5, i6);
                        if (i6 != 0) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            PeriodicAdvertisingManager.this.callbackWrappers.remove(periodicAdvertisingCallback);
                        }
                    }
                });
            }

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onSyncLost(final int i2) {
                handler.post(new Runnable() { // from class: android.bluetooth.le.PeriodicAdvertisingManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        periodicAdvertisingCallback.onSyncLost(i2);
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        PeriodicAdvertisingManager.this.callbackWrappers.remove(periodicAdvertisingCallback);
                    }
                });
            }
        };
    }

    public void registerSync(ScanResult scanResult, int i2, int i3, PeriodicAdvertisingCallback periodicAdvertisingCallback) {
        registerSync(scanResult, i2, i3, periodicAdvertisingCallback, null);
    }

    public void unregisterSync(PeriodicAdvertisingCallback periodicAdvertisingCallback) {
        if (periodicAdvertisingCallback == null) {
            throw new IllegalArgumentException("callback can't be null");
        }
        try {
            IBluetoothGatt bluetoothGatt = this.mBluetoothManager.getBluetoothGatt();
            IPeriodicAdvertisingCallback iPeriodicAdvertisingCallbackRemove = this.callbackWrappers.remove(periodicAdvertisingCallback);
            if (iPeriodicAdvertisingCallbackRemove == null) {
                throw new IllegalArgumentException("callback was not properly registered");
            }
            try {
                bluetoothGatt.unregisterSync(iPeriodicAdvertisingCallbackRemove);
            } catch (RemoteException e2) {
                Log.e(TAG, "Failed to cancel sync creation - ", e2);
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "Failed to get Bluetooth gatt - ", e3);
        }
    }

    public void registerSync(ScanResult scanResult, int i2, int i3, PeriodicAdvertisingCallback periodicAdvertisingCallback, Handler handler) {
        if (periodicAdvertisingCallback == null) {
            throw new IllegalArgumentException("callback can't be null");
        }
        if (scanResult == null) {
            throw new IllegalArgumentException("scanResult can't be null");
        }
        if (scanResult.getAdvertisingSid() == 255) {
            throw new IllegalArgumentException("scanResult must contain a valid sid");
        }
        if (i2 < 0 || i2 > SKIP_MAX) {
            throw new IllegalArgumentException("timeout must be between 10 and 16384");
        }
        if (i3 < 10 || i3 > 16384) {
            throw new IllegalArgumentException("timeout must be between 10 and 16384");
        }
        try {
            IBluetoothGatt bluetoothGatt = this.mBluetoothManager.getBluetoothGatt();
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            IPeriodicAdvertisingCallback iPeriodicAdvertisingCallbackWrap = wrap(periodicAdvertisingCallback, handler);
            this.callbackWrappers.put(periodicAdvertisingCallback, iPeriodicAdvertisingCallbackWrap);
            try {
                bluetoothGatt.registerSync(scanResult, i2, i3, iPeriodicAdvertisingCallbackWrap);
            } catch (RemoteException e2) {
                Log.e(TAG, "Failed to register sync - ", e2);
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "Failed to get Bluetooth gatt - ", e3);
            periodicAdvertisingCallback.onSyncEstablished(0, scanResult.getDevice(), scanResult.getAdvertisingSid(), i2, i3, 2);
        }
    }
}
