package android.bluetooth.le;

import android.bluetooth.IBluetoothGatt;
import android.bluetooth.IBluetoothManager;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class AdvertisingSet {
    private static final String TAG = "AdvertisingSet";
    private int advertiserId;
    private final IBluetoothGatt gatt;

    public AdvertisingSet(int i2, IBluetoothManager iBluetoothManager) {
        this.advertiserId = i2;
        try {
            this.gatt = iBluetoothManager.getBluetoothGatt();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get Bluetooth gatt - ", e2);
            throw new IllegalStateException("Failed to get Bluetooth");
        }
    }

    public void enableAdvertising(boolean z2, int i2, int i3) {
        try {
            this.gatt.enableAdvertisingSet(this.advertiserId, z2, i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public int getAdvertiserId() {
        return this.advertiserId;
    }

    public void getOwnAddress() {
        try {
            this.gatt.getOwnAddress(this.advertiserId);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setAdvertiserId(int i2) {
        this.advertiserId = i2;
    }

    public void setAdvertisingData(AdvertiseData advertiseData) {
        try {
            this.gatt.setAdvertisingData(this.advertiserId, advertiseData);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setAdvertisingParameters(AdvertisingSetParameters advertisingSetParameters) {
        try {
            this.gatt.setAdvertisingParameters(this.advertiserId, advertisingSetParameters);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setPeriodicAdvertisingData(AdvertiseData advertiseData) {
        try {
            this.gatt.setPeriodicAdvertisingData(this.advertiserId, advertiseData);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setPeriodicAdvertisingEnabled(boolean z2) {
        try {
            this.gatt.setPeriodicAdvertisingEnable(this.advertiserId, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setPeriodicAdvertisingParameters(PeriodicAdvertisingParameters periodicAdvertisingParameters) {
        try {
            this.gatt.setPeriodicAdvertisingParameters(this.advertiserId, periodicAdvertisingParameters);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }

    public void setScanResponseData(AdvertiseData advertiseData) {
        try {
            this.gatt.setScanResponseData(this.advertiserId, advertiseData);
        } catch (RemoteException e2) {
            Log.e(TAG, "remote exception - ", e2);
        }
    }
}
