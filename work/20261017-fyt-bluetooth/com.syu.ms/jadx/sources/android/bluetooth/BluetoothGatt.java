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
public final class BluetoothGatt implements BluetoothProfile {
    public static final int AUTHENTICATION_MITM = 2;
    public static final int AUTHENTICATION_NONE = 0;
    public static final int AUTHENTICATION_NO_MITM = 1;
    private static final int CONN_STATE_CLOSED = 4;
    private static final int CONN_STATE_CONNECTED = 2;
    private static final int CONN_STATE_CONNECTING = 1;
    private static final int CONN_STATE_DISCONNECTING = 3;
    private static final int CONN_STATE_IDLE = 0;
    private static final boolean DBG = true;
    public static final int GATT_FAILURE = 257;
    public static final int GATT_INSUFFICIENT_AUTHENTICATION = 5;
    public static final int GATT_INSUFFICIENT_ENCRYPTION = 15;
    public static final int GATT_INVALID_ATTRIBUTE_LENGTH = 13;
    public static final int GATT_INVALID_OFFSET = 7;
    public static final int GATT_READ_NOT_PERMITTED = 2;
    public static final int GATT_REQUEST_NOT_SUPPORTED = 6;
    public static final int GATT_SUCCESS = 0;
    public static final int GATT_WRITE_NOT_PERMITTED = 3;
    private static final String TAG = "BluetoothGatt";
    private static final boolean VDBG = true;
    private boolean mAutoConnect;
    private BluetoothGattCallback mCallback;
    private int mClientIf;
    private final Context mContext;
    private BluetoothDevice mDevice;
    private IBluetoothGatt mService;
    private boolean mAuthRetry = false;
    private final Object mStateLock = new Object();
    private final IBluetoothGattCallback mBluetoothGattCallback = new IBluetoothGattCallback.Stub() { // from class: android.bluetooth.BluetoothGatt.1
        @Override // android.bluetooth.IBluetoothGattCallback
        public void onAdvertiseStateChange(int i2, int i3) {
            Log.d(BluetoothGatt.TAG, "onAdvertiseStateChange() - state = " + i2 + " status=" + i3);
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicRead(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, byte[] bArr) {
            BluetoothGattCharacteristic characteristic;
            Log.d(BluetoothGatt.TAG, "onCharacteristicRead() - Device=" + str + " UUID=" + parcelUuid2 + " Status=" + i2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                if ((i2 == 5 || i2 == 15) && !BluetoothGatt.this.mAuthRetry) {
                    try {
                        BluetoothGatt.this.mAuthRetry = true;
                        BluetoothGatt.this.mService.readCharacteristic(BluetoothGatt.this.mClientIf, str, i3, i4, parcelUuid, i5, parcelUuid2, 2);
                        return;
                    } catch (RemoteException e2) {
                        Log.e(BluetoothGatt.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                    }
                }
                BluetoothGatt.this.mAuthRetry = false;
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                BluetoothGattService service = bluetoothGatt.getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i4, i3);
                if (service == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid(), i5)) == null) {
                    return;
                }
                if (i2 == 0) {
                    characteristic.setValue(bArr);
                }
                try {
                    BluetoothGatt.this.mCallback.onCharacteristicRead(BluetoothGatt.this, characteristic, i2);
                } catch (Exception e3) {
                    Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e3);
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicWrite(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            Log.d(BluetoothGatt.TAG, "onCharacteristicWrite() - Device=" + str + " UUID=" + parcelUuid2 + " Status=" + i2);
            if (!str.equals(BluetoothGatt.this.mDevice.getAddress()) || (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i4, i3)) == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid(), i5)) == null) {
                return;
            }
            if ((i2 == 5 || i2 == 15) && !BluetoothGatt.this.mAuthRetry) {
                try {
                    BluetoothGatt.this.mAuthRetry = true;
                    BluetoothGatt.this.mService.writeCharacteristic(BluetoothGatt.this.mClientIf, str, i3, i4, parcelUuid, i5, parcelUuid2, characteristic.getWriteType(), 2, characteristic.getValue());
                    return;
                } catch (RemoteException e2) {
                    Log.e(BluetoothGatt.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                }
            }
            BluetoothGatt.this.mAuthRetry = false;
            try {
                BluetoothGatt.this.mCallback.onCharacteristicWrite(BluetoothGatt.this, characteristic, i2);
            } catch (Exception e3) {
                Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e3);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientConnectionState(int i2, int i3, boolean z2, String str) {
            Log.d(BluetoothGatt.TAG, "onClientConnectionState() - status=" + i2 + " clientIf=" + i3 + " device=" + str);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                try {
                    BluetoothGatt.this.mCallback.onConnectionStateChange(BluetoothGatt.this, i2, z2 ? 2 : 0);
                } catch (Exception e2) {
                    Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e2);
                }
                synchronized (BluetoothGatt.this.mStateLock) {
                    try {
                        if (z2) {
                            BluetoothGatt.this.mConnState = 2;
                        } else {
                            BluetoothGatt.this.mConnState = 0;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientRegistered(int i2, int i3) {
            boolean z2;
            Log.d(BluetoothGatt.TAG, "onClientRegistered() - status=" + i2 + " clientIf=" + i3);
            synchronized (BluetoothGatt.this.mStateLock) {
                z2 = true;
                if (BluetoothGatt.this.mConnState != 1) {
                    Log.e(BluetoothGatt.TAG, "Bad connection state: " + BluetoothGatt.this.mConnState);
                }
            }
            BluetoothGatt.this.mClientIf = i3;
            if (i2 != 0) {
                BluetoothGatt.this.mCallback.onConnectionStateChange(BluetoothGatt.this, 257, 0);
                synchronized (BluetoothGatt.this.mStateLock) {
                    BluetoothGatt.this.mConnState = 0;
                }
                return;
            }
            try {
                IBluetoothGatt iBluetoothGatt = BluetoothGatt.this.mService;
                int i4 = BluetoothGatt.this.mClientIf;
                String address = BluetoothGatt.this.mDevice.getAddress();
                if (BluetoothGatt.this.mAutoConnect) {
                    z2 = false;
                }
                iBluetoothGatt.clientConnect(i4, address, z2);
            } catch (RemoteException e2) {
                Log.e(BluetoothGatt.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorRead(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, int i6, ParcelUuid parcelUuid3, byte[] bArr) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            BluetoothGattDescriptor descriptor;
            boolean z2;
            Log.d(BluetoothGatt.TAG, "onDescriptorRead() - Device=" + str + " UUID=" + parcelUuid2);
            if (!str.equals(BluetoothGatt.this.mDevice.getAddress()) || (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i4, i3)) == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid(), i5)) == null || (descriptor = characteristic.getDescriptor(parcelUuid3.getUuid(), i6)) == null) {
                return;
            }
            if (i2 == 0) {
                descriptor.setValue(bArr);
            }
            if ((i2 == 5 || i2 == 15) && !BluetoothGatt.this.mAuthRetry) {
                try {
                    BluetoothGatt.this.mAuthRetry = true;
                    z2 = true;
                    try {
                        BluetoothGatt.this.mService.readDescriptor(BluetoothGatt.this.mClientIf, str, i3, i4, parcelUuid, i5, parcelUuid2, i6, parcelUuid3, 2);
                    } catch (RemoteException e2) {
                        e = e2;
                        Log.e(BluetoothGatt.TAG, ProxyProperties.LOCAL_EXCL_LIST, e);
                    }
                } catch (RemoteException e3) {
                    e = e3;
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            BluetoothGatt.this.mAuthRetry = z2;
            try {
                BluetoothGatt.this.mCallback.onDescriptorRead(BluetoothGatt.this, descriptor, i2);
            } catch (Exception e4) {
                Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e4);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorWrite(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, int i6, ParcelUuid parcelUuid3) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            BluetoothGattDescriptor descriptor;
            BluetoothGattDescriptor bluetoothGattDescriptor;
            String str2;
            Log.d(BluetoothGatt.TAG, "onDescriptorWrite() - Device=" + str + " UUID=" + parcelUuid2);
            if (!str.equals(BluetoothGatt.this.mDevice.getAddress()) || (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i4, i3)) == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid(), i5)) == null || (descriptor = characteristic.getDescriptor(parcelUuid3.getUuid(), i6)) == null) {
                return;
            }
            if ((i2 == 5 || i2 == 15) && !BluetoothGatt.this.mAuthRetry) {
                try {
                    BluetoothGatt.this.mAuthRetry = true;
                    IBluetoothGatt iBluetoothGatt = BluetoothGatt.this.mService;
                    int i7 = BluetoothGatt.this.mClientIf;
                    int writeType = characteristic.getWriteType();
                    byte[] value = descriptor.getValue();
                    bluetoothGattDescriptor = descriptor;
                    str2 = BluetoothGatt.TAG;
                    try {
                        iBluetoothGatt.writeDescriptor(i7, str, i3, i4, parcelUuid, i5, parcelUuid2, i6, parcelUuid3, writeType, 2, value);
                    } catch (RemoteException e2) {
                        e = e2;
                        Log.e(str2, ProxyProperties.LOCAL_EXCL_LIST, e);
                    }
                } catch (RemoteException e3) {
                    e = e3;
                    bluetoothGattDescriptor = descriptor;
                    str2 = BluetoothGatt.TAG;
                }
            } else {
                bluetoothGattDescriptor = descriptor;
                str2 = BluetoothGatt.TAG;
            }
            BluetoothGatt.this.mAuthRetry = false;
            try {
                BluetoothGatt.this.mCallback.onDescriptorWrite(BluetoothGatt.this, bluetoothGattDescriptor, i2);
            } catch (Exception e4) {
                Log.w(str2, "Unhandled exception in callback", e4);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onExecuteWrite(String str, int i2) {
            Log.d(BluetoothGatt.TAG, "onExecuteWrite() - Device=" + str + " status=" + i2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                try {
                    BluetoothGatt.this.mCallback.onReliableWriteCompleted(BluetoothGatt.this, i2);
                } catch (Exception e2) {
                    Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e2);
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetCharacteristic(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, int i5) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            Log.d(BluetoothGatt.TAG, "onGetCharacteristic() - Device=" + str + " UUID=" + parcelUuid2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress()) && (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i3, i2)) != null) {
                service.addCharacteristic(new BluetoothGattCharacteristic(service, parcelUuid2.getUuid(), i4, i5, 0));
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetDescriptor(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, int i5, ParcelUuid parcelUuid3) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            Log.d(BluetoothGatt.TAG, "onGetDescriptor() - Device=" + str + " UUID=" + parcelUuid3);
            if (!str.equals(BluetoothGatt.this.mDevice.getAddress()) || (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i3, i2)) == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid())) == null) {
                return;
            }
            characteristic.addDescriptor(new BluetoothGattDescriptor(characteristic, parcelUuid3.getUuid(), i5, 0));
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetIncludedService(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, int i5, ParcelUuid parcelUuid2) {
            Log.d(BluetoothGatt.TAG, "onGetIncludedService() - Device=" + str + " UUID=" + parcelUuid + " Included=" + parcelUuid2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                BluetoothGattService service = bluetoothGatt.getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i3, i2);
                BluetoothGatt bluetoothGatt2 = BluetoothGatt.this;
                BluetoothGattService service2 = bluetoothGatt2.getService(bluetoothGatt2.mDevice, parcelUuid2.getUuid(), i5, i4);
                if (service == null || service2 == null) {
                    return;
                }
                service.addIncludedService(service2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetService(String str, int i2, int i3, ParcelUuid parcelUuid) {
            Log.d(BluetoothGatt.TAG, "onGetService() - Device=" + str + " UUID=" + parcelUuid);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.mServices.add(new BluetoothGattService(BluetoothGatt.this.mDevice, parcelUuid.getUuid(), i3, i2));
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onNotify(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, byte[] bArr) {
            BluetoothGatt bluetoothGatt;
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            Log.d(BluetoothGatt.TAG, "onNotify() - Device=" + str + " UUID=" + parcelUuid2);
            if (!str.equals(BluetoothGatt.this.mDevice.getAddress()) || (service = (bluetoothGatt = BluetoothGatt.this).getService(bluetoothGatt.mDevice, parcelUuid.getUuid(), i3, i2)) == null || (characteristic = service.getCharacteristic(parcelUuid2.getUuid(), i4)) == null) {
                return;
            }
            characteristic.setValue(bArr);
            try {
                BluetoothGatt.this.mCallback.onCharacteristicChanged(BluetoothGatt.this, characteristic);
            } catch (Exception e2) {
                Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onReadRemoteRssi(String str, int i2, int i3) {
            Log.d(BluetoothGatt.TAG, "onReadRemoteRssi() - Device=" + str + " rssi=" + i2 + " status=" + i3);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                try {
                    BluetoothGatt.this.mCallback.onReadRemoteRssi(BluetoothGatt.this, i2, i3);
                } catch (Exception e2) {
                    Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e2);
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onScanResult(String str, int i2, byte[] bArr) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onSearchComplete(String str, int i2) {
            Log.d(BluetoothGatt.TAG, "onSearchComplete() = Device=" + str + " Status=" + i2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                try {
                    BluetoothGatt.this.mCallback.onServicesDiscovered(BluetoothGatt.this, i2);
                } catch (Exception e2) {
                    Log.w(BluetoothGatt.TAG, "Unhandled exception in callback", e2);
                }
            }
        }
    };
    private List<BluetoothGattService> mServices = new ArrayList();
    private int mConnState = 0;

    public BluetoothGatt(Context context, IBluetoothGatt iBluetoothGatt, BluetoothDevice bluetoothDevice) {
        this.mContext = context;
        this.mService = iBluetoothGatt;
        this.mDevice = bluetoothDevice;
    }

    private boolean registerApp(BluetoothGattCallback bluetoothGattCallback) {
        Log.d(TAG, "registerApp()");
        if (this.mService == null) {
            return false;
        }
        this.mCallback = bluetoothGattCallback;
        UUID uuidRandomUUID = UUID.randomUUID();
        Log.d(TAG, "registerApp() - UUID=" + uuidRandomUUID);
        try {
            this.mService.registerClient(new ParcelUuid(uuidRandomUUID), this.mBluetoothGattCallback);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    private void unregisterApp() {
        int i2;
        Log.d(TAG, "unregisterApp() - mClientIf=" + this.mClientIf);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mClientIf) == 0) {
            return;
        }
        try {
            this.mCallback = null;
            iBluetoothGatt.unregisterClient(i2);
            this.mClientIf = 0;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public void abortReliableWrite() {
        int i2;
        Log.d(TAG, "abortReliableWrite() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mClientIf) == 0) {
            return;
        }
        try {
            iBluetoothGatt.endReliableWrite(i2, this.mDevice.getAddress(), false);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean beginReliableWrite() {
        int i2;
        Log.d(TAG, "beginReliableWrite() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.beginReliableWrite(i2, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public void close() {
        Log.d(TAG, "close()");
        unregisterApp();
        this.mConnState = 4;
    }

    public boolean connect(Boolean bool, BluetoothGattCallback bluetoothGattCallback) {
        Log.d(TAG, "connect() - device: " + this.mDevice.getAddress() + ", auto: " + bool);
        synchronized (this.mStateLock) {
            if (this.mConnState != 0) {
                throw new IllegalStateException("Not idle");
            }
            this.mConnState = 1;
        }
        if (registerApp(bluetoothGattCallback)) {
            this.mAutoConnect = bool.booleanValue();
            return true;
        }
        synchronized (this.mStateLock) {
            this.mConnState = 0;
        }
        Log.e(TAG, "Failed to register callback");
        return false;
    }

    public void disconnect() {
        int i2;
        Log.d(TAG, "cancelOpen() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mClientIf) == 0) {
            return;
        }
        try {
            iBluetoothGatt.clientDisconnect(i2, this.mDevice.getAddress());
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean discoverServices() {
        Log.d(TAG, "discoverServices() - device: " + this.mDevice.getAddress());
        if (this.mService != null && this.mClientIf != 0) {
            this.mServices.clear();
            try {
                this.mService.discoverServices(this.mClientIf, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public boolean executeReliableWrite() {
        int i2;
        Log.d(TAG, "executeReliableWrite() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.endReliableWrite(i2, this.mDevice.getAddress(), true);
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

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        throw new UnsupportedOperationException("Use BluetoothManager#getDevicesMatchingConnectionStates instead.");
    }

    public BluetoothGattService getService(BluetoothDevice bluetoothDevice, UUID uuid, int i2, int i3) {
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getDevice().equals(bluetoothDevice) && bluetoothGattService.getType() == i3 && bluetoothGattService.getInstanceId() == i2 && bluetoothGattService.getUuid().equals(uuid)) {
                return bluetoothGattService;
            }
        }
        return null;
    }

    public List<BluetoothGattService> getServices() {
        ArrayList arrayList = new ArrayList();
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getDevice().equals(this.mDevice)) {
                arrayList.add(bluetoothGattService);
            }
        }
        return arrayList;
    }

    public boolean readCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        BluetoothGattService service;
        BluetoothDevice device;
        if ((bluetoothGattCharacteristic.getProperties() & 2) == 0) {
            return false;
        }
        Log.d(TAG, "readCharacteristic() - uuid: " + bluetoothGattCharacteristic.getUuid());
        if (this.mService == null || this.mClientIf == 0 || (service = bluetoothGattCharacteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        try {
            this.mService.readCharacteristic(this.mClientIf, device.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), bluetoothGattCharacteristic.getInstanceId(), new ParcelUuid(bluetoothGattCharacteristic.getUuid()), 0);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean readDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor) {
        BluetoothGattCharacteristic characteristic;
        BluetoothGattService service;
        BluetoothDevice device;
        Log.d(TAG, "readDescriptor() - uuid: " + bluetoothGattDescriptor.getUuid());
        if (this.mService == null || this.mClientIf == 0 || (characteristic = bluetoothGattDescriptor.getCharacteristic()) == null || (service = characteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        try {
            this.mService.readDescriptor(this.mClientIf, device.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), characteristic.getInstanceId(), new ParcelUuid(characteristic.getUuid()), bluetoothGattDescriptor.getInstanceId(), new ParcelUuid(bluetoothGattDescriptor.getUuid()), 0);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean readRemoteRssi() {
        int i2;
        Log.d(TAG, "readRssi() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.readRemoteRssi(i2, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public boolean refresh() {
        int i2;
        Log.d(TAG, "refresh() - device: " + this.mDevice.getAddress());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.refreshDevice(i2, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        return false;
    }

    public boolean setCharacteristicNotification(BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z2) {
        BluetoothGattService service;
        BluetoothDevice device;
        Log.d(TAG, "setCharacteristicNotification() - uuid: " + bluetoothGattCharacteristic.getUuid() + " enable: " + z2);
        if (this.mService == null || this.mClientIf == 0 || (service = bluetoothGattCharacteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        try {
            this.mService.registerForNotification(this.mClientIf, device.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), bluetoothGattCharacteristic.getInstanceId(), new ParcelUuid(bluetoothGattCharacteristic.getUuid()), z2);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        BluetoothGattService service;
        BluetoothDevice device;
        if ((bluetoothGattCharacteristic.getProperties() & 8) == 0 && (bluetoothGattCharacteristic.getProperties() & 4) == 0) {
            return false;
        }
        Log.d(TAG, "writeCharacteristic() - uuid: " + bluetoothGattCharacteristic.getUuid());
        if (this.mService == null || this.mClientIf == 0 || (service = bluetoothGattCharacteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        try {
            this.mService.writeCharacteristic(this.mClientIf, device.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), bluetoothGattCharacteristic.getInstanceId(), new ParcelUuid(bluetoothGattCharacteristic.getUuid()), bluetoothGattCharacteristic.getWriteType(), 0, bluetoothGattCharacteristic.getValue());
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean writeDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor) {
        BluetoothGattCharacteristic characteristic;
        BluetoothGattService service;
        BluetoothDevice device;
        Log.d(TAG, "writeDescriptor() - uuid: " + bluetoothGattDescriptor.getUuid());
        if (this.mService == null || this.mClientIf == 0 || (characteristic = bluetoothGattDescriptor.getCharacteristic()) == null || (service = characteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        try {
            this.mService.writeDescriptor(this.mClientIf, device.getAddress(), service.getType(), service.getInstanceId(), new ParcelUuid(service.getUuid()), characteristic.getInstanceId(), new ParcelUuid(characteristic.getUuid()), bluetoothGattDescriptor.getInstanceId(), new ParcelUuid(bluetoothGattDescriptor.getUuid()), characteristic.getWriteType(), 0, bluetoothGattDescriptor.getValue());
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public BluetoothGattService getService(UUID uuid) {
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getDevice().equals(this.mDevice) && bluetoothGattService.getUuid().equals(uuid)) {
                return bluetoothGattService;
            }
        }
        return null;
    }

    public void abortReliableWrite(BluetoothDevice bluetoothDevice) {
        abortReliableWrite();
    }

    public boolean connect() {
        try {
            this.mService.clientConnect(this.mClientIf, this.mDevice.getAddress(), false);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }
}
