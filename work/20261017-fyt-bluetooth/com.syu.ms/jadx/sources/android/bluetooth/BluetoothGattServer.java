package android.bluetooth;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothGattServer implements BluetoothProfile {
    private static final int CALLBACK_REG_TIMEOUT = 10000;
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothGattServer";
    private final Context mContext;
    private IBluetoothGatt mService;
    private Object mServerIfLock = new Object();
    private final IBluetoothGattServerCallback mBluetoothGattServerCallback = new IBluetoothGattServerCallback.Stub() { // from class: android.bluetooth.BluetoothGattServer.1
        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onCharacteristicReadRequest(String str, int i2, int i3, boolean z2, int i4, int i5, ParcelUuid parcelUuid, int i6, ParcelUuid parcelUuid2) {
            BluetoothGattCharacteristic characteristic;
            UUID uuid = parcelUuid.getUuid();
            UUID uuid2 = parcelUuid2.getUuid();
            Log.d(BluetoothGattServer.TAG, "onCharacteristicReadRequest() - service=" + uuid + ", characteristic=" + uuid2);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattService service = BluetoothGattServer.this.getService(uuid, i5, i4);
            if (service == null || (characteristic = service.getCharacteristic(uuid2)) == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onCharacteristicReadRequest(remoteDevice, i2, i3, characteristic);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onCharacteristicWriteRequest(String str, int i2, int i3, int i4, boolean z2, boolean z3, int i5, int i6, ParcelUuid parcelUuid, int i7, ParcelUuid parcelUuid2, byte[] bArr) {
            BluetoothGattCharacteristic characteristic;
            UUID uuid = parcelUuid.getUuid();
            UUID uuid2 = parcelUuid2.getUuid();
            Log.d(BluetoothGattServer.TAG, "onCharacteristicWriteRequest() - service=" + uuid + ", characteristic=" + uuid2);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattService service = BluetoothGattServer.this.getService(uuid, i6, i5);
            if (service == null || (characteristic = service.getCharacteristic(uuid2)) == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onCharacteristicWriteRequest(remoteDevice, i2, characteristic, z2, z3, i3, bArr);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onDescriptorReadRequest(String str, int i2, int i3, boolean z2, int i4, int i5, ParcelUuid parcelUuid, int i6, ParcelUuid parcelUuid2, ParcelUuid parcelUuid3) {
            BluetoothGattCharacteristic characteristic;
            BluetoothGattDescriptor descriptor;
            UUID uuid = parcelUuid.getUuid();
            UUID uuid2 = parcelUuid2.getUuid();
            UUID uuid3 = parcelUuid3.getUuid();
            Log.d(BluetoothGattServer.TAG, "onCharacteristicReadRequest() - service=" + uuid + ", characteristic=" + uuid2 + "descriptor=" + uuid3);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattService service = BluetoothGattServer.this.getService(uuid, i5, i4);
            if (service == null || (characteristic = service.getCharacteristic(uuid2)) == null || (descriptor = characteristic.getDescriptor(uuid3)) == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onDescriptorReadRequest(remoteDevice, i2, i3, descriptor);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onDescriptorWriteRequest(String str, int i2, int i3, int i4, boolean z2, boolean z3, int i5, int i6, ParcelUuid parcelUuid, int i7, ParcelUuid parcelUuid2, ParcelUuid parcelUuid3, byte[] bArr) {
            BluetoothGattCharacteristic characteristic;
            BluetoothGattDescriptor descriptor;
            UUID uuid = parcelUuid.getUuid();
            UUID uuid2 = parcelUuid2.getUuid();
            UUID uuid3 = parcelUuid3.getUuid();
            Log.d(BluetoothGattServer.TAG, "onDescriptorWriteRequest() - service=" + uuid + ", characteristic=" + uuid2 + "descriptor=" + uuid3);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattService service = BluetoothGattServer.this.getService(uuid, i6, i5);
            if (service == null || (characteristic = service.getCharacteristic(uuid2)) == null || (descriptor = characteristic.getDescriptor(uuid3)) == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onDescriptorWriteRequest(remoteDevice, i2, descriptor, z2, z3, i3, bArr);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onExecuteWrite(String str, int i2, boolean z2) {
            Log.d(BluetoothGattServer.TAG, "onExecuteWrite() - device=" + str + ", transId=" + i2 + "execWrite=" + z2);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onExecuteWrite(remoteDevice, i2, z2);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onScanResult(String str, int i2, byte[] bArr) {
            Log.d(BluetoothGattServer.TAG, "onScanResult() - Device=" + str + " RSSI=" + i2);
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onServerConnectionState(int i2, int i3, boolean z2, String str) {
            Log.d(BluetoothGattServer.TAG, "onServerConnectionState() - status=" + i2 + " serverIf=" + i3 + " device=" + str);
            try {
                BluetoothGattServer.this.mCallback.onConnectionStateChange(BluetoothGattServer.this.mAdapter.getRemoteDevice(str), i2, z2 ? 2 : 0);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onServerRegistered(int i2, int i3) {
            Log.d(BluetoothGattServer.TAG, "onServerRegistered() - status=" + i2 + " serverIf=" + i3);
            synchronized (BluetoothGattServer.this.mServerIfLock) {
                if (BluetoothGattServer.this.mCallback != null) {
                    BluetoothGattServer.this.mServerIf = i3;
                    BluetoothGattServer.this.mServerIfLock.notify();
                } else {
                    Log.e(BluetoothGattServer.TAG, "onServerRegistered: mCallback is null");
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onServiceAdded(int i2, int i3, int i4, ParcelUuid parcelUuid) {
            UUID uuid = parcelUuid.getUuid();
            Log.d(BluetoothGattServer.TAG, "onServiceAdded() - service=" + uuid + "status=" + i2);
            BluetoothGattService service = BluetoothGattServer.this.getService(uuid, i4, i3);
            if (service == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onServiceAdded(i2, service);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }
    };
    private BluetoothAdapter mAdapter = BluetoothAdapter.getDefaultAdapter();
    private BluetoothGattServerCallback mCallback = null;
    private int mServerIf = 0;
    private List<BluetoothGattService> mServices = new ArrayList();

    public BluetoothGattServer(Context context, IBluetoothGatt iBluetoothGatt) {
        this.mContext = context;
        this.mService = iBluetoothGatt;
    }

    private void unregisterCallback() {
        int i2;
        Log.d(TAG, "unregisterCallback() - mServerIf=" + this.mServerIf);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mServerIf) == 0) {
            return;
        }
        try {
            this.mCallback = null;
            iBluetoothGatt.unregisterServer(i2);
            this.mServerIf = 0;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean addService(BluetoothGattService bluetoothGattService) {
        Log.d(TAG, "addService() - service: " + bluetoothGattService.getUuid());
        if (this.mService != null && this.mServerIf != 0) {
            this.mServices.add(bluetoothGattService);
            try {
                this.mService.beginServiceDeclaration(this.mServerIf, bluetoothGattService.getType(), bluetoothGattService.getInstanceId(), bluetoothGattService.getHandles(), new ParcelUuid(bluetoothGattService.getUuid()), bluetoothGattService.isAdvertisePreferred());
                for (BluetoothGattService bluetoothGattService2 : bluetoothGattService.getIncludedServices()) {
                    this.mService.addIncludedService(this.mServerIf, bluetoothGattService2.getType(), bluetoothGattService2.getInstanceId(), new ParcelUuid(bluetoothGattService2.getUuid()));
                }
                for (BluetoothGattCharacteristic bluetoothGattCharacteristic : bluetoothGattService.getCharacteristics()) {
                    this.mService.addCharacteristic(this.mServerIf, new ParcelUuid(bluetoothGattCharacteristic.getUuid()), bluetoothGattCharacteristic.getProperties(), ((bluetoothGattCharacteristic.getKeySize() - 7) << 12) + bluetoothGattCharacteristic.getPermissions());
                    for (BluetoothGattDescriptor bluetoothGattDescriptor : bluetoothGattCharacteristic.getDescriptors()) {
                        this.mService.addDescriptor(this.mServerIf, new ParcelUuid(bluetoothGattDescriptor.getUuid()), ((bluetoothGattCharacteristic.getKeySize() - 7) << 12) + bluetoothGattDescriptor.getPermissions());
                    }
                }
                this.mService.endServiceDeclaration(this.mServerIf);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public void cancelConnection(BluetoothDevice bluetoothDevice) {
        int i2;
        Log.d(TAG, "cancelConnection() - device: " + bluetoothDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mServerIf) == 0) {
            return;
        }
        try {
            iBluetoothGatt.serverDisconnect(i2, bluetoothDevice.getAddress());
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public void clearServices() {
        int i2;
        Log.d(TAG, "clearServices()");
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mServerIf) == 0) {
            return;
        }
        try {
            iBluetoothGatt.clearServices(i2);
            this.mServices.clear();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public void close() {
        Log.d(TAG, "close()");
        unregisterCallback();
    }

    public boolean connect(BluetoothDevice bluetoothDevice, boolean z2) {
        int i2;
        Log.d(TAG, "connect() - device: " + bluetoothDevice.getAddress() + ", auto: " + z2);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mServerIf) != 0) {
            try {
                iBluetoothGatt.serverConnect(i2, bluetoothDevice.getAddress(), !z2);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        throw new UnsupportedOperationException("Use BluetoothManager#getConnectedDevices instead.");
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        throw new UnsupportedOperationException("Use BluetoothManager#getConnectionState instead.");
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        throw new UnsupportedOperationException("Use BluetoothManager#getDevicesMatchingConnectionStates instead.");
    }

    public BluetoothGattService getService(UUID uuid, int i2, int i3) {
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getType() == i3 && bluetoothGattService.getInstanceId() == i2 && bluetoothGattService.getUuid().equals(uuid)) {
                return bluetoothGattService;
            }
        }
        return null;
    }

    public List<BluetoothGattService> getServices() {
        return this.mServices;
    }

    public boolean notifyCharacteristicChanged(BluetoothDevice bluetoothDevice, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z2) {
        BluetoothGattService service;
        Log.d(TAG, "notifyCharacteristicChanged() - device: " + bluetoothDevice.getAddress());
        if (this.mService == null || this.mServerIf == 0 || (service = bluetoothGattCharacteristic.getService()) == null) {
            return false;
        }
        try {
            this.mService.sendNotification(this.mServerIf, bluetoothDevice.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), bluetoothGattCharacteristic.getInstanceId(), new ParcelUuid(bluetoothGattCharacteristic.getUuid()), z2, bluetoothGattCharacteristic.getValue());
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean registerCallback(BluetoothGattServerCallback bluetoothGattServerCallback) {
        Log.d(TAG, "registerCallback()");
        if (this.mService == null) {
            Log.e(TAG, "GATT service not available");
            return false;
        }
        UUID uuidRandomUUID = UUID.randomUUID();
        Log.d(TAG, "registerCallback() - UUID=" + uuidRandomUUID);
        synchronized (this.mServerIfLock) {
            if (this.mCallback != null) {
                Log.e(TAG, "App can register callback only once");
                return false;
            }
            this.mCallback = bluetoothGattServerCallback;
            try {
                this.mService.registerServer(new ParcelUuid(uuidRandomUUID), this.mBluetoothGattServerCallback);
                try {
                    this.mServerIfLock.wait(10000L);
                } catch (InterruptedException e2) {
                    Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST + e2);
                    this.mCallback = null;
                }
                if (this.mServerIf != 0) {
                    return true;
                }
                this.mCallback = null;
                return false;
            } catch (RemoteException e3) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e3);
                this.mCallback = null;
                return false;
            }
        }
    }

    public boolean removeService(BluetoothGattService bluetoothGattService) {
        BluetoothGattService service;
        Log.d(TAG, "removeService() - service: " + bluetoothGattService.getUuid());
        if (this.mService == null || this.mServerIf == 0 || (service = getService(bluetoothGattService.getUuid(), bluetoothGattService.getInstanceId(), bluetoothGattService.getType())) == null) {
            return false;
        }
        try {
            this.mService.removeService(this.mServerIf, bluetoothGattService.getType(), bluetoothGattService.getInstanceId(), new ParcelUuid(bluetoothGattService.getUuid()));
            this.mServices.remove(service);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean sendResponse(BluetoothDevice bluetoothDevice, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        Log.d(TAG, "sendResponse() - device: " + bluetoothDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i5 = this.mServerIf) != 0) {
            try {
                iBluetoothGatt.sendResponse(i5, bluetoothDevice.getAddress(), i2, i3, i4, bArr);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public BluetoothGattService getService(UUID uuid) {
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getUuid().equals(uuid)) {
                return bluetoothGattService;
            }
        }
        return null;
    }
}
