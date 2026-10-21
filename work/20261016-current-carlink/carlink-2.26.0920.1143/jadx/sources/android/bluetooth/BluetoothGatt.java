package android.bluetooth;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Handler;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothGatt implements BluetoothProfile {
    static final int AUTHENTICATION_MITM = 2;
    static final int AUTHENTICATION_NONE = 0;
    static final int AUTHENTICATION_NO_MITM = 1;
    private static final int AUTH_RETRY_STATE_IDLE = 0;
    private static final int AUTH_RETRY_STATE_MITM = 2;
    private static final int AUTH_RETRY_STATE_NO_MITM = 1;
    public static final int CONNECTION_PRIORITY_BALANCED = 0;
    public static final int CONNECTION_PRIORITY_HIGH = 1;
    public static final int CONNECTION_PRIORITY_LOW_POWER = 2;
    private static final int CONN_STATE_CLOSED = 4;
    private static final int CONN_STATE_CONNECTED = 2;
    private static final int CONN_STATE_CONNECTING = 1;
    private static final int CONN_STATE_DISCONNECTING = 3;
    private static final int CONN_STATE_IDLE = 0;
    private static final boolean DBG = true;
    public static final int GATT_CONNECTION_CONGESTED = 143;
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
    private static final boolean VDBG = false;
    private boolean mAutoConnect;
    private volatile BluetoothGattCallback mCallback;
    private int mClientIf;
    private BluetoothDevice mDevice;
    private Handler mHandler;
    private boolean mOpportunistic;
    private int mPhy;
    private IBluetoothGatt mService;
    private int mTransport;
    private final Object mStateLock = new Object();
    private Boolean mDeviceBusy = Boolean.FALSE;
    private final IBluetoothGattCallback mBluetoothGattCallback = new IBluetoothGattCallback.Stub() { // from class: android.bluetooth.BluetoothGatt.1
        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicRead(String str, final int i2, int i3, final byte[] bArr) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
                if (i2 == 5 || i2 == 15) {
                    if (BluetoothGatt.this.mAuthRetryState != 2) {
                        try {
                            BluetoothGatt.this.mService.readCharacteristic(BluetoothGatt.this.mClientIf, str, i3, BluetoothGatt.this.mAuthRetryState == 0 ? 1 : 2);
                            BluetoothGatt.access$1308(BluetoothGatt.this);
                            return;
                        } catch (RemoteException e2) {
                            Log.e(BluetoothGatt.TAG, "", e2);
                        }
                    }
                }
                BluetoothGatt.this.mAuthRetryState = 0;
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                final BluetoothGattCharacteristic characteristicById = bluetoothGatt.getCharacteristicById(bluetoothGatt.mDevice, i3);
                if (characteristicById == null) {
                    Log.w(BluetoothGatt.TAG, "onCharacteristicRead() failed to find characteristic!");
                } else {
                    BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.6
                        @Override // java.lang.Runnable
                        public void run() {
                            BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                            if (bluetoothGattCallback != null) {
                                if (i2 == 0) {
                                    characteristicById.setValue(bArr);
                                }
                                bluetoothGattCallback.onCharacteristicRead(BluetoothGatt.this, characteristicById, i2);
                            }
                        }
                    });
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicWrite(String str, final int i2, int i3) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                final BluetoothGattCharacteristic characteristicById = bluetoothGatt.getCharacteristicById(bluetoothGatt.mDevice, i3);
                if (characteristicById == null) {
                    return;
                }
                if (i2 == 5 || i2 == 15) {
                    if (BluetoothGatt.this.mAuthRetryState != 2) {
                        try {
                            BluetoothGatt.this.mService.writeCharacteristic(BluetoothGatt.this.mClientIf, str, i3, characteristicById.getWriteType(), BluetoothGatt.this.mAuthRetryState == 0 ? 1 : 2, characteristicById.getValue());
                            BluetoothGatt.access$1308(BluetoothGatt.this);
                            return;
                        } catch (RemoteException e2) {
                            Log.e(BluetoothGatt.TAG, "", e2);
                        }
                    }
                }
                BluetoothGatt.this.mAuthRetryState = 0;
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onCharacteristicWrite(BluetoothGatt.this, characteristicById, i2);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientConnectionState(final int i2, int i3, boolean z2, String str) {
            m.x(c.t("onClientConnectionState() - status=", i2, " clientIf=", i3, " device="), str, BluetoothGatt.TAG);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                final int i4 = z2 ? 2 : 0;
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onConnectionStateChange(BluetoothGatt.this, i2, i4);
                        }
                    }
                });
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
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientRegistered(int i2, int i3) {
            Log.d(BluetoothGatt.TAG, "onClientRegistered() - status=" + i2 + " clientIf=" + i3);
            BluetoothGatt.this.mClientIf = i3;
            if (i2 != 0) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onConnectionStateChange(BluetoothGatt.this, 257, 0);
                        }
                    }
                });
                synchronized (BluetoothGatt.this.mStateLock) {
                    BluetoothGatt.this.mConnState = 0;
                }
            } else {
                try {
                    BluetoothGatt.this.mService.clientConnect(BluetoothGatt.this.mClientIf, BluetoothGatt.this.mDevice.getAddress(), BluetoothGatt.this.mAutoConnect ? false : true, BluetoothGatt.this.mTransport, BluetoothGatt.this.mOpportunistic, BluetoothGatt.this.mPhy);
                } catch (RemoteException e2) {
                    Log.e(BluetoothGatt.TAG, "", e2);
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onConfigureMTU(String str, final int i2, final int i3) {
            StringBuilder sb = new StringBuilder("onConfigureMTU() - Device=");
            sb.append(str);
            sb.append(" mtu=");
            sb.append(i2);
            sb.append(" status=");
            m.t(sb, i3, BluetoothGatt.TAG);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onMtuChanged(BluetoothGatt.this, i2, i3);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onConnectionUpdated(String str, final int i2, final int i3, final int i4, final int i5) {
            StringBuilder sb = new StringBuilder("onConnectionUpdated() - Device=");
            sb.append(str);
            sb.append(" interval=");
            sb.append(i2);
            sb.append(" latency=");
            m.u(sb, i3, " timeout=", i4, " status=");
            m.t(sb, i5, BluetoothGatt.TAG);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.14
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onConnectionUpdated(BluetoothGatt.this, i2, i3, i4, i5);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorRead(String str, final int i2, int i3, final byte[] bArr) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                final BluetoothGattDescriptor descriptorById = bluetoothGatt.getDescriptorById(bluetoothGatt.mDevice, i3);
                if (descriptorById == null) {
                    return;
                }
                if (i2 == 5 || i2 == 15) {
                    if (BluetoothGatt.this.mAuthRetryState != 2) {
                        try {
                            BluetoothGatt.this.mService.readDescriptor(BluetoothGatt.this.mClientIf, str, i3, BluetoothGatt.this.mAuthRetryState == 0 ? 1 : 2);
                            BluetoothGatt.access$1308(BluetoothGatt.this);
                            return;
                        } catch (RemoteException e2) {
                            Log.e(BluetoothGatt.TAG, "", e2);
                        }
                    }
                }
                BluetoothGatt.this.mAuthRetryState = 0;
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            if (i2 == 0) {
                                descriptorById.setValue(bArr);
                            }
                            bluetoothGattCallback.onDescriptorRead(BluetoothGatt.this, descriptorById, i2);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorWrite(String str, final int i2, int i3) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
                BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                final BluetoothGattDescriptor descriptorById = bluetoothGatt.getDescriptorById(bluetoothGatt.mDevice, i3);
                if (descriptorById == null) {
                    return;
                }
                if (i2 == 5 || i2 == 15) {
                    if (BluetoothGatt.this.mAuthRetryState != 2) {
                        try {
                            BluetoothGatt.this.mService.writeDescriptor(BluetoothGatt.this.mClientIf, str, i3, BluetoothGatt.this.mAuthRetryState == 0 ? 1 : 2, descriptorById.getValue());
                            BluetoothGatt.access$1308(BluetoothGatt.this);
                            return;
                        } catch (RemoteException e2) {
                            Log.e(BluetoothGatt.TAG, "", e2);
                        }
                    }
                }
                BluetoothGatt.this.mAuthRetryState = 0;
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.10
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onDescriptorWrite(BluetoothGatt.this, descriptorById, i2);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onExecuteWrite(String str, final int i2) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                synchronized (BluetoothGatt.this.mDeviceBusy) {
                    BluetoothGatt.this.mDeviceBusy = Boolean.FALSE;
                }
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.11
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onReliableWriteCompleted(BluetoothGatt.this, i2);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onNotify(String str, int i2, final byte[] bArr) {
            BluetoothGatt bluetoothGatt;
            final BluetoothGattCharacteristic characteristicById;
            if (str.equals(BluetoothGatt.this.mDevice.getAddress()) && (characteristicById = (bluetoothGatt = BluetoothGatt.this).getCharacteristicById(bluetoothGatt.mDevice, i2)) != null) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            characteristicById.setValue(bArr);
                            bluetoothGattCallback.onCharacteristicChanged(BluetoothGatt.this, characteristicById);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onPhyRead(String str, final int i2, final int i3, final int i4) {
            Log.d(BluetoothGatt.TAG, "onPhyRead() - status=" + i4 + " address=" + str + " txPhy=" + i2 + " rxPhy=" + i3);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onPhyRead(BluetoothGatt.this, i2, i3, i4);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onPhyUpdate(String str, final int i2, final int i3, final int i4) {
            Log.d(BluetoothGatt.TAG, "onPhyUpdate() - status=" + i4 + " address=" + str + " txPhy=" + i2 + " rxPhy=" + i3);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onPhyUpdate(BluetoothGatt.this, i2, i3, i4);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onReadRemoteRssi(String str, final int i2, final int i3) {
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.12
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onReadRemoteRssi(BluetoothGatt.this, i2, i3);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onSearchComplete(String str, List<BluetoothGattService> list, final int i2) {
            Log.d(BluetoothGatt.TAG, "onSearchComplete() = Device=" + str + " Status=" + i2);
            if (str.equals(BluetoothGatt.this.mDevice.getAddress())) {
                Iterator<BluetoothGattService> it = list.iterator();
                while (it.hasNext()) {
                    it.next().setDevice(BluetoothGatt.this.mDevice);
                }
                BluetoothGatt.this.mServices.addAll(list);
                for (BluetoothGattService bluetoothGattService : BluetoothGatt.this.mServices) {
                    ArrayList<BluetoothGattService> arrayList = new ArrayList(bluetoothGattService.getIncludedServices());
                    bluetoothGattService.getIncludedServices().clear();
                    for (BluetoothGattService bluetoothGattService2 : arrayList) {
                        BluetoothGatt bluetoothGatt = BluetoothGatt.this;
                        BluetoothGattService service = bluetoothGatt.getService(bluetoothGatt.mDevice, bluetoothGattService2.getUuid(), bluetoothGattService2.getInstanceId(), bluetoothGattService2.getType());
                        if (service != null) {
                            bluetoothGattService.addIncludedService(service);
                        } else {
                            Log.e(BluetoothGatt.TAG, "Broken GATT database: can't find included service.");
                        }
                    }
                }
                BluetoothGatt.this.runOrQueueCallback(new Runnable() { // from class: android.bluetooth.BluetoothGatt.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothGattCallback bluetoothGattCallback = BluetoothGatt.this.mCallback;
                        if (bluetoothGattCallback != null) {
                            bluetoothGattCallback.onServicesDiscovered(BluetoothGatt.this, i2);
                        }
                    }
                });
            }
        }
    };
    private List<BluetoothGattService> mServices = new ArrayList();
    private int mConnState = 0;
    private int mAuthRetryState = 0;

    public BluetoothGatt(IBluetoothGatt iBluetoothGatt, BluetoothDevice bluetoothDevice, int i2, boolean z2, int i3) {
        this.mService = iBluetoothGatt;
        this.mDevice = bluetoothDevice;
        this.mTransport = i2;
        this.mPhy = i3;
        this.mOpportunistic = z2;
    }

    public static /* synthetic */ int access$1308(BluetoothGatt bluetoothGatt) {
        int i2 = bluetoothGatt.mAuthRetryState;
        bluetoothGatt.mAuthRetryState = i2 + 1;
        return i2;
    }

    private boolean registerApp(BluetoothGattCallback bluetoothGattCallback, Handler handler) {
        Log.d(TAG, "registerApp()");
        if (this.mService == null) {
            return false;
        }
        this.mCallback = bluetoothGattCallback;
        this.mHandler = handler;
        UUID uuidRandomUUID = UUID.randomUUID();
        Log.d(TAG, "registerApp() - UUID=" + uuidRandomUUID);
        try {
            this.mService.registerClient(new ParcelUuid(uuidRandomUUID), this.mBluetoothGattCallback);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOrQueueCallback(Runnable runnable) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Exception e2) {
            Log.w(TAG, "Unhandled exception in callback", e2);
        }
    }

    private void unregisterApp() {
        m.t(new StringBuilder("unregisterApp() - mClientIf="), this.mClientIf, TAG);
        if (this.mService == null || this.mClientIf == 0) {
            return;
        }
        try {
            this.mCallback = null;
            this.mService.unregisterClient(this.mClientIf);
            this.mClientIf = 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
    }

    public void abortReliableWrite() {
        int i2;
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt == null || (i2 = this.mClientIf) == 0) {
            return;
        }
        try {
            iBluetoothGatt.endReliableWrite(i2, this.mDevice.getAddress(), false);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
    }

    public boolean beginReliableWrite() {
        int i2;
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i2 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.beginReliableWrite(i2, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public void close() {
        Log.d(TAG, "close()");
        unregisterApp();
        this.mConnState = 4;
        this.mAuthRetryState = 0;
    }

    public boolean connect(Boolean bool, BluetoothGattCallback bluetoothGattCallback, Handler handler) {
        Log.d(TAG, "connect() - device: " + this.mDevice.getAddress() + ", auto: " + bool);
        synchronized (this.mStateLock) {
            if (this.mConnState != 0) {
                throw new IllegalStateException("Not idle");
            }
            this.mConnState = 1;
        }
        this.mAutoConnect = bool.booleanValue();
        if (registerApp(bluetoothGattCallback, handler)) {
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
            Log.e(TAG, "", e2);
        }
    }

    public boolean discoverServiceByUuid(UUID uuid) {
        Log.d(TAG, "discoverServiceByUuid() - device: " + this.mDevice.getAddress());
        if (this.mService != null && this.mClientIf != 0) {
            this.mServices.clear();
            try {
                this.mService.discoverServiceByUuid(this.mClientIf, this.mDevice.getAddress(), new ParcelUuid(uuid));
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public boolean discoverServices() {
        Log.d(TAG, "discoverServices() - device: " + this.mDevice.getAddress());
        if (this.mService != null && this.mClientIf != 0) {
            this.mServices.clear();
            try {
                this.mService.discoverServices(this.mClientIf, this.mDevice.getAddress());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public boolean executeReliableWrite() {
        if (this.mService == null || this.mClientIf == 0) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.endReliableWrite(this.mClientIf, this.mDevice.getAddress(), true);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
    }

    public BluetoothGattCharacteristic getCharacteristicById(BluetoothDevice bluetoothDevice, int i2) {
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

    public BluetoothGattDescriptor getDescriptorById(BluetoothDevice bluetoothDevice, int i2) {
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
        if ((bluetoothGattCharacteristic.getProperties() & 2) == 0 || this.mService == null || this.mClientIf == 0 || (service = bluetoothGattCharacteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.readCharacteristic(this.mClientIf, device.getAddress(), bluetoothGattCharacteristic.getInstanceId(), 0);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
    }

    public boolean readDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor) {
        BluetoothGattCharacteristic characteristic;
        BluetoothGattService service;
        BluetoothDevice device;
        if (this.mService == null || this.mClientIf == 0 || (characteristic = bluetoothGattDescriptor.getCharacteristic()) == null || (service = characteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.readDescriptor(this.mClientIf, device.getAddress(), bluetoothGattDescriptor.getInstanceId(), 0);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
    }

    public void readPhy() {
        try {
            this.mService.clientReadPhy(this.mClientIf, this.mDevice.getAddress());
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
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
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public boolean readUsingCharacteristicUuid(UUID uuid, int i2, int i3) {
        if (this.mService == null || this.mClientIf == 0) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.readUsingCharacteristicUuid(this.mClientIf, this.mDevice.getAddress(), new ParcelUuid(uuid), i2, i3, 0);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
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
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public boolean requestConnectionPriority(int i2) {
        int i3;
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException("connectionPriority not within valid range");
        }
        Log.d(TAG, "requestConnectionPriority() - params: " + i2);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i3 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.connectionParameterUpdate(i3, this.mDevice.getAddress(), i2);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        return false;
    }

    public boolean requestMtu(int i2) {
        int i3;
        Log.d(TAG, "configureMTU() - device: " + this.mDevice.getAddress() + " mtu: " + i2);
        IBluetoothGatt iBluetoothGatt = this.mService;
        if (iBluetoothGatt != null && (i3 = this.mClientIf) != 0) {
            try {
                iBluetoothGatt.configureMTU(i3, this.mDevice.getAddress(), i2);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
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
            this.mService.registerForNotification(this.mClientIf, device.getAddress(), bluetoothGattCharacteristic.getInstanceId(), z2);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public void setPreferredPhy(int i2, int i3, int i4) {
        try {
            this.mService.clientSetPreferredPhy(this.mClientIf, this.mDevice.getAddress(), i2, i3, i4);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        BluetoothGattService service;
        BluetoothDevice device;
        if (((bluetoothGattCharacteristic.getProperties() & 8) == 0 && (bluetoothGattCharacteristic.getProperties() & 4) == 0) || this.mService == null || this.mClientIf == 0 || bluetoothGattCharacteristic.getValue() == null || (service = bluetoothGattCharacteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.writeCharacteristic(this.mClientIf, device.getAddress(), bluetoothGattCharacteristic.getInstanceId(), bluetoothGattCharacteristic.getWriteType(), 0, bluetoothGattCharacteristic.getValue());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
    }

    public boolean writeDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor) {
        BluetoothGattCharacteristic characteristic;
        BluetoothGattService service;
        BluetoothDevice device;
        if (this.mService == null || this.mClientIf == 0 || bluetoothGattDescriptor.getValue() == null || (characteristic = bluetoothGattDescriptor.getCharacteristic()) == null || (service = characteristic.getService()) == null || (device = service.getDevice()) == null) {
            return false;
        }
        synchronized (this.mDeviceBusy) {
            if (this.mDeviceBusy.booleanValue()) {
                return false;
            }
            this.mDeviceBusy = Boolean.TRUE;
            try {
                this.mService.writeDescriptor(this.mClientIf, device.getAddress(), bluetoothGattDescriptor.getInstanceId(), 0, bluetoothGattDescriptor.getValue());
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mDeviceBusy = Boolean.FALSE;
                return false;
            }
        }
    }

    @Deprecated
    public void abortReliableWrite(BluetoothDevice bluetoothDevice) {
        abortReliableWrite();
    }

    public BluetoothGattService getService(UUID uuid) {
        for (BluetoothGattService bluetoothGattService : this.mServices) {
            if (bluetoothGattService.getDevice().equals(this.mDevice) && bluetoothGattService.getUuid().equals(uuid)) {
                return bluetoothGattService;
            }
        }
        return null;
    }

    public boolean connect() {
        try {
            this.mService.clientConnect(this.mClientIf, this.mDevice.getAddress(), false, this.mTransport, this.mOpportunistic, this.mPhy);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }
}
