package android.bluetooth;

import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothAdvScanData {
    public static final int AD = 0;
    public static final int EIR = 2;
    public static final int SCAN_RESPONSE = 1;
    private static final String TAG = "BluetoothAdvScanData";
    private IBluetoothGatt mBluetoothGatt;
    private final int mDataType;

    public BluetoothAdvScanData(IBluetoothGatt iBluetoothGatt, int i2) {
        this.mBluetoothGatt = iBluetoothGatt;
        this.mDataType = i2;
    }

    public int getDataType() {
        return this.mDataType;
    }

    public byte[] getManufacturerData() {
        IBluetoothGatt iBluetoothGatt = this.mBluetoothGatt;
        if (iBluetoothGatt == null) {
            return null;
        }
        try {
            return iBluetoothGatt.getAdvManufacturerData();
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to get manufacturer data.", e2);
            return null;
        }
    }

    public byte[] getServiceData() {
        IBluetoothGatt iBluetoothGatt = this.mBluetoothGatt;
        if (iBluetoothGatt == null) {
            return null;
        }
        try {
            return iBluetoothGatt.getAdvServiceData();
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to get service data.", e2);
            return null;
        }
    }

    public List<ParcelUuid> getServiceUuids() {
        try {
            return Collections.unmodifiableList(this.mBluetoothGatt.getAdvServiceUuids());
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to get service uuids.", e2);
            return null;
        }
    }

    public void removeManufacturerCodeAndData(int i2) {
        IBluetoothGatt iBluetoothGatt = this.mBluetoothGatt;
        if (iBluetoothGatt != null) {
            try {
                iBluetoothGatt.removeAdvManufacturerCodeAndData(i2);
            } catch (RemoteException e2) {
                Log.e(TAG, "Unable to remove manufacturer : " + i2, e2);
            }
        }
    }

    public boolean setManufacturerData(int i2, byte[] bArr) {
        if (this.mDataType != 0) {
            return false;
        }
        try {
            return this.mBluetoothGatt.setAdvManufacturerCodeAndData(i2, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to set manufacturer id and data.", e2);
            return false;
        }
    }

    public boolean setServiceData(byte[] bArr) {
        if (this.mDataType != 0 || bArr == null) {
            return false;
        }
        try {
            return this.mBluetoothGatt.setAdvServiceData(bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to set service data.", e2);
            return false;
        }
    }
}
