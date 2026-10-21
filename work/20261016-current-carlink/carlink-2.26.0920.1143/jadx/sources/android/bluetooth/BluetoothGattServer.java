package android.bluetooth;

import android.accessibilityservice.c;
import android.app.job.JobInfo;
import android.app.m;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothGattServer implements BluetoothProfile {
    private static final int CALLBACK_REG_TIMEOUT = 10000;
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothGattServer";
    private static final boolean VDBG = false;
    private BluetoothGattService mPendingService;
    private IBluetoothGatt mService;
    private int mTransport;
    private Object mServerIfLock = new Object();
    private final IBluetoothGattServerCallback mBluetoothGattServerCallback = new IBluetoothGattServerCallback.Stub() { // from class: android.bluetooth.BluetoothGattServer.1
        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onCharacteristicReadRequest(String str, int i2, int i3, boolean z2, int i4) {
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattCharacteristic characteristicByHandle = BluetoothGattServer.this.getCharacteristicByHandle(i4);
            if (characteristicByHandle == null) {
                m.A("onCharacteristicReadRequest() no char for handle ", i4, BluetoothGattServer.TAG);
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onCharacteristicReadRequest(remoteDevice, i2, i3, characteristicByHandle);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onCharacteristicWriteRequest(String str, int i2, int i3, int i4, boolean z2, boolean z3, int i5, byte[] bArr) {
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattCharacteristic characteristicByHandle = BluetoothGattServer.this.getCharacteristicByHandle(i5);
            if (characteristicByHandle == null) {
                m.A("onCharacteristicWriteRequest() no char for handle ", i5, BluetoothGattServer.TAG);
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onCharacteristicWriteRequest(remoteDevice, i2, characteristicByHandle, z2, z3, i3, bArr);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onConnectionUpdated(String str, int i2, int i3, int i4, int i5) {
            StringBuilder sb = new StringBuilder("onConnectionUpdated() - Device=");
            sb.append(str);
            sb.append(" interval=");
            sb.append(i2);
            sb.append(" latency=");
            m.u(sb, i3, " timeout=", i4, " status=");
            m.t(sb, i5, BluetoothGattServer.TAG);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onConnectionUpdated(remoteDevice, i2, i3, i4, i5);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception: " + e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onDescriptorReadRequest(String str, int i2, int i3, boolean z2, int i4) {
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattDescriptor descriptorByHandle = BluetoothGattServer.this.getDescriptorByHandle(i4);
            if (descriptorByHandle == null) {
                m.A("onDescriptorReadRequest() no desc for handle ", i4, BluetoothGattServer.TAG);
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onDescriptorReadRequest(remoteDevice, i2, i3, descriptorByHandle);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onDescriptorWriteRequest(String str, int i2, int i3, int i4, boolean z2, boolean z3, int i5, byte[] bArr) {
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            BluetoothGattDescriptor descriptorByHandle = BluetoothGattServer.this.getDescriptorByHandle(i5);
            if (descriptorByHandle == null) {
                m.A("onDescriptorWriteRequest() no desc for handle ", i5, BluetoothGattServer.TAG);
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onDescriptorWriteRequest(remoteDevice, i2, descriptorByHandle, z2, z3, i3, bArr);
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
        public void onMtuChanged(String str, int i2) {
            Log.d(BluetoothGattServer.TAG, "onMtuChanged() - device=" + str + ", mtu=" + i2);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onMtuChanged(remoteDevice, i2);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception: " + e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onNotificationSent(String str, int i2) {
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onNotificationSent(remoteDevice, i2);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception: " + e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onPhyRead(String str, int i2, int i3, int i4) {
            StringBuilder sb = new StringBuilder("onPhyUpdate() - device=");
            sb.append(str);
            sb.append(", txPHy=");
            sb.append(i2);
            sb.append(", rxPHy=");
            m.t(sb, i3, BluetoothGattServer.TAG);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onPhyRead(remoteDevice, i2, i3, i4);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception: " + e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onPhyUpdate(String str, int i2, int i3, int i4) {
            StringBuilder sb = new StringBuilder("onPhyUpdate() - device=");
            sb.append(str);
            sb.append(", txPHy=");
            sb.append(i2);
            sb.append(", rxPHy=");
            m.t(sb, i3, BluetoothGattServer.TAG);
            BluetoothDevice remoteDevice = BluetoothGattServer.this.mAdapter.getRemoteDevice(str);
            if (remoteDevice == null) {
                return;
            }
            try {
                BluetoothGattServer.this.mCallback.onPhyUpdate(remoteDevice, i2, i3, i4);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception: " + e2);
            }
        }

        @Override // android.bluetooth.IBluetoothGattServerCallback
        public void onServerConnectionState(int i2, int i3, boolean z2, String str) {
            m.x(c.t("onServerConnectionState() - status=", i2, " serverIf=", i3, " device="), str, BluetoothGattServer.TAG);
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
        public void onServiceAdded(int i2, BluetoothGattService bluetoothGattService) {
            Log.d(BluetoothGattServer.TAG, "onServiceAdded() - handle=" + bluetoothGattService.getInstanceId() + " uuid=" + bluetoothGattService.getUuid() + " status=" + i2);
            if (BluetoothGattServer.this.mPendingService == null) {
                return;
            }
            BluetoothGattService bluetoothGattService2 = BluetoothGattServer.this.mPendingService;
            BluetoothGattServer.this.mPendingService = null;
            bluetoothGattService2.setInstanceId(bluetoothGattService.getInstanceId());
            List<BluetoothGattCharacteristic> characteristics = bluetoothGattService2.getCharacteristics();
            List<BluetoothGattCharacteristic> characteristics2 = bluetoothGattService.getCharacteristics();
            for (int i3 = 0; i3 < characteristics2.size(); i3++) {
                BluetoothGattCharacteristic bluetoothGattCharacteristic = characteristics.get(i3);
                BluetoothGattCharacteristic bluetoothGattCharacteristic2 = characteristics2.get(i3);
                bluetoothGattCharacteristic.setInstanceId(bluetoothGattCharacteristic2.getInstanceId());
                List<BluetoothGattDescriptor> descriptors = bluetoothGattCharacteristic.getDescriptors();
                List<BluetoothGattDescriptor> descriptors2 = bluetoothGattCharacteristic2.getDescriptors();
                for (int i4 = 0; i4 < descriptors2.size(); i4++) {
                    descriptors.get(i4).setInstanceId(descriptors2.get(i4).getInstanceId());
                }
            }
            BluetoothGattServer.this.mServices.add(bluetoothGattService2);
            try {
                BluetoothGattServer.this.mCallback.onServiceAdded(i2, bluetoothGattService2);
            } catch (Exception e2) {
                Log.w(BluetoothGattServer.TAG, "Unhandled exception in callback", e2);
            }
        }
    };
    private BluetoothAdapter mAdapter = BluetoothAdapter.getDefaultAdapter();
    private BluetoothGattServerCallback mCallback = null;
    private int mServerIf = 0;
    private List<BluetoothGattService> mServices = new ArrayList();

    public BluetoothGattServer(IBluetoothGatt iBluetoothGatt, int i2) {
        this.mService = iBluetoothGatt;
        this.mTransport = i2;
    }

    private void unregisterCallback() {
        int i2;
        m.t(new StringBuilder("unregisterCallback() - mServerIf="), this.mServerIf, TAG);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mServerIf) == 0) {
            return;
        }
        try {
            this.mCallback = null;
            iBluetoothGatt.unregisterServer(i2);
            this.mServerIf = 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
    }

    public boolean addService(BluetoothGattService bluetoothGattService) {
        int i2;
        Log.d(TAG, "addService() - service: " + bluetoothGattService.getUuid());
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mServerIf) != 0) {
            this.mPendingService = bluetoothGattService;
            try {
                iBluetoothGatt.addService(i2, bluetoothGattService);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
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
            Log.e(TAG, "", e2);
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
            Log.e(TAG, "", e2);
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
                iBluetoothGatt.serverConnect(i2, bluetoothDevice.getAddress(), !z2, this.mTransport);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public BluetoothGattCharacteristic getCharacteristicByHandle(int i2) {
        Iterator<BluetoothGattService> it = this.mServices.iterator();
        while (it.hasNext()) {
            for (BluetoothGattCharacteristic bluetoothGattCharacteristic : it.next().getCharacteristics()) {
                if (bluetoothGattCharacteristic.getInstanceId() == i2) {
                    return bluetoothGattCharacteristic;
                }
            }
        }
        return null;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        throw new UnsupportedOperationException("Use BluetoothManager#getConnectedDevices instead.");
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        throw new UnsupportedOperationException("Use BluetoothManager#getConnectionState instead.");
    }

    public BluetoothGattDescriptor getDescriptorByHandle(int i2) {
        Iterator<BluetoothGattService> it = this.mServices.iterator();
        while (it.hasNext()) {
            Iterator<BluetoothGattCharacteristic> it2 = it.next().getCharacteristics().iterator();
            while (it2.hasNext()) {
                for (BluetoothGattDescriptor bluetoothGattDescriptor : it2.next().getDescriptors()) {
                    if (bluetoothGattDescriptor.getInstanceId() == i2) {
                        return bluetoothGattDescriptor;
                    }
                }
            }
        }
        return null;
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
        if (this.mService == null || this.mServerIf == 0 || bluetoothGattCharacteristic.getService() == null) {
            return false;
        }
        if (bluetoothGattCharacteristic.getValue() == null) {
            throw new IllegalArgumentException("Chracteristic value is empty. Use BluetoothGattCharacteristic#setvalue to update");
        }
        try {
            this.mService.sendNotification(this.mServerIf, bluetoothDevice.getAddress(), bluetoothGattCharacteristic.getInstanceId(), z2, bluetoothGattCharacteristic.getValue());
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public void readPhy(BluetoothDevice bluetoothDevice) {
        try {
            this.mService.serverReadPhy(this.mServerIf, bluetoothDevice.getAddress());
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
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
                    this.mServerIfLock.wait(JobInfo.MIN_BACKOFF_MILLIS);
                } catch (InterruptedException e2) {
                    Log.e(TAG, "" + e2);
                    this.mCallback = null;
                }
                if (this.mServerIf != 0) {
                    return true;
                }
                this.mCallback = null;
                return false;
            } catch (RemoteException e3) {
                Log.e(TAG, "", e3);
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
            this.mService.removeService(this.mServerIf, bluetoothGattService.getInstanceId());
            this.mServices.remove(service);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean sendResponse(BluetoothDevice bluetoothDevice, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i5 = this.mServerIf) != 0) {
            try {
                iBluetoothGatt.sendResponse(i5, bluetoothDevice.getAddress(), i2, i3, i4, bArr);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public void setPreferredPhy(BluetoothDevice bluetoothDevice, int i2, int i3, int i4) {
        try {
            this.mService.serverSetPreferredPhy(this.mServerIf, bluetoothDevice.getAddress(), i2, i3, i4);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
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
