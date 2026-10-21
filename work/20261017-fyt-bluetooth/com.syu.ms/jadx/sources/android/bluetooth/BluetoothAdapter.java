package android.bluetooth;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothAdapter {
    public static final String ACTION_BLUETOOTH_ADVERTISING_STARTED = "android.bluetooth.adapter.action.ADVERTISING_STARTED";
    public static final String ACTION_BLUETOOTH_ADVERTISING_STOPPED = "android.bluetooth.adapter.action.ADVERTISING_STOPPED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_DISCOVERY_FINISHED = "android.bluetooth.adapter.action.DISCOVERY_FINISHED";
    public static final String ACTION_DISCOVERY_STARTED = "android.bluetooth.adapter.action.DISCOVERY_STARTED";
    public static final String ACTION_LOCAL_NAME_CHANGED = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED";
    public static final String ACTION_RADIO_STATE_CHANGED = "android.bluetooth.adapter.action.RADIO_STATE_CHANGED";
    public static final String ACTION_REQUEST_DISCOVERABLE = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE";
    public static final String ACTION_REQUEST_ENABLE = "android.bluetooth.adapter.action.REQUEST_ENABLE";
    public static final String ACTION_SCAN_MODE_CHANGED = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED";
    public static final String ACTION_STATE_CHANGED = "android.bluetooth.adapter.action.STATE_CHANGED";
    private static final int ADDRESS_LENGTH = 17;
    public static final int ADVERTISE_CALLBACK_SUCCESS = 0;
    public static final String BLUETOOTH_MANAGER_SERVICE = "bluetooth_manager";
    private static final boolean DBG = true;
    public static final int ERROR = Integer.MIN_VALUE;
    public static final String EXTRA_CONNECTION_STATE = "android.bluetooth.adapter.extra.CONNECTION_STATE";
    public static final String EXTRA_DISCOVERABLE_DURATION = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION";
    public static final String EXTRA_LOCAL_NAME = "android.bluetooth.adapter.extra.LOCAL_NAME";
    public static final String EXTRA_PREVIOUS_CONNECTION_STATE = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE";
    public static final String EXTRA_PREVIOUS_SCAN_MODE = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE";
    public static final String EXTRA_PREVIOUS_STATE = "android.bluetooth.adapter.extra.PREVIOUS_STATE";
    public static final String EXTRA_SCAN_MODE = "android.bluetooth.adapter.extra.SCAN_MODE";
    public static final String EXTRA_STATE = "android.bluetooth.adapter.extra.STATE";
    public static final int SCAN_MODE_CONNECTABLE = 21;
    public static final int SCAN_MODE_CONNECTABLE_DISCOVERABLE = 23;
    public static final int SCAN_MODE_NONE = 20;
    public static final int STATE_ADVERTISE_FORCE_STOPPING = 4;
    public static final int STATE_ADVERTISE_STARTED = 1;
    public static final int STATE_ADVERTISE_STARTING = 0;
    public static final int STATE_ADVERTISE_STOPPED = 3;
    public static final int STATE_ADVERTISE_STOPPING = 2;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int STATE_OFF = 10;
    public static final int STATE_ON = 12;
    public static final int STATE_RADIO_OFF = 15;
    public static final int STATE_RADIO_ON = 14;
    public static final int STATE_TURNING_OFF = 13;
    public static final int STATE_TURNING_ON = 11;
    private static final String TAG = "BluetoothAdapter";
    private static final boolean VDBG = false;
    private static BluetoothAdapter sAdapter;
    private GattCallbackWrapper mAdvertisingGattCallback;
    private final Handler mHandler;
    private final Map<LeScanCallback, GattCallbackWrapper> mLeScanClients;
    private final IBluetoothManagerCallback mManagerCallback;
    private final IBluetoothManager mManagerService;
    private ArrayList<IBluetoothManagerCallback> mProxyServiceStateCallbacks;
    private IBluetooth mService;
    private BluetoothAdvScanData mBluetoothAdvScanData = null;
    private final Object mLock = new Object();

    public interface AdvertiseCallback {
        void onAdvertiseStart(int i2);

        void onAdvertiseStop(int i2);
    }

    public interface BluetoothStateChangeCallback {
        void onBluetoothStateChange(boolean z2);
    }

    public interface LeScanCallback {
        void onLeScan(BluetoothDevice bluetoothDevice, int i2, byte[] bArr);
    }

    public class StateChangeCallbackWrapper extends IBluetoothStateChangeCallback.Stub {
        private BluetoothStateChangeCallback mCallback;

        public StateChangeCallbackWrapper(BluetoothStateChangeCallback bluetoothStateChangeCallback) {
            this.mCallback = bluetoothStateChangeCallback;
        }

        @Override // android.bluetooth.IBluetoothStateChangeCallback
        public void onBluetoothStateChange(boolean z2) {
            this.mCallback.onBluetoothStateChange(z2);
        }
    }

    public BluetoothAdapter(IBluetoothManager iBluetoothManager) {
        IBluetoothManagerCallback.Stub stub = new IBluetoothManagerCallback.Stub() { // from class: android.bluetooth.BluetoothAdapter.2
            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceDown() {
                synchronized (BluetoothAdapter.this.mManagerCallback) {
                    BluetoothAdapter.this.mService = null;
                    BluetoothAdapter.this.mBluetoothAdvScanData = null;
                    for (IBluetoothManagerCallback iBluetoothManagerCallback : BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                        if (iBluetoothManagerCallback != null) {
                            try {
                                iBluetoothManagerCallback.onBluetoothServiceDown();
                            } catch (Exception e2) {
                                Log.e(BluetoothAdapter.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                            }
                        } else {
                            Log.d(BluetoothAdapter.TAG, "onBluetoothServiceDown: cb is null!!!");
                        }
                    }
                }
            }

            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceUp(IBluetooth iBluetooth) {
                synchronized (BluetoothAdapter.this.mManagerCallback) {
                    BluetoothAdapter.this.mService = iBluetooth;
                    for (IBluetoothManagerCallback iBluetoothManagerCallback : BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                        if (iBluetoothManagerCallback != null) {
                            try {
                                iBluetoothManagerCallback.onBluetoothServiceUp(iBluetooth);
                            } catch (Exception e2) {
                                Log.e(BluetoothAdapter.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                            }
                        } else {
                            Log.d(BluetoothAdapter.TAG, "onBluetoothServiceUp: cb is null!!!");
                        }
                    }
                }
            }
        };
        this.mManagerCallback = stub;
        this.mProxyServiceStateCallbacks = new ArrayList<>();
        if (iBluetoothManager == null) {
            throw new IllegalArgumentException("bluetooth manager service is null");
        }
        try {
            this.mService = iBluetoothManager.registerAdapter(stub);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
        this.mManagerService = iBluetoothManager;
        this.mLeScanClients = new HashMap();
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public static boolean checkBluetoothAddress(String str) {
        if (str == null || str.length() != 17) {
            return false;
        }
        for (int i2 = 0; i2 < 17; i2++) {
            char cCharAt = str.charAt(i2);
            int i3 = i2 % 3;
            if (i3 == 0 || i3 == 1) {
                if ((cCharAt < '0' || cCharAt > '9') && (cCharAt < 'A' || cCharAt > 'F')) {
                    return false;
                }
            } else if (i3 == 2 && cCharAt != ':') {
                return false;
            }
        }
        return true;
    }

    private BluetoothServerSocket createNewRfcommSocketAndRecord(String str, UUID uuid, boolean z2, boolean z3) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, z2, z3, new ParcelUuid(uuid));
        bluetoothServerSocket.setServiceName(str);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException("Error: " + iBindListen);
    }

    public static synchronized BluetoothAdapter getDefaultAdapter() {
        if (sAdapter == null) {
            IBinder service = ServiceManager.getService(BLUETOOTH_MANAGER_SERVICE);
            if (service != null) {
                sAdapter = new BluetoothAdapter(IBluetoothManager.Stub.asInterface(service));
            } else {
                Log.e(TAG, "Bluetooth binder is null");
            }
        }
        return sAdapter;
    }

    public static BluetoothServerSocket listenUsingScoOn() {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(2, false, false, -1);
        bluetoothServerSocket.mSocket.bindListen();
        return bluetoothServerSocket;
    }

    private Set<BluetoothDevice> toDeviceSet(BluetoothDevice[] bluetoothDeviceArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(bluetoothDeviceArr)));
    }

    public boolean cancelDiscovery() {
        if (getState() != 12) {
            return false;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.cancelDiscovery();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean changeApplicationBluetoothState(boolean z2, BluetoothStateChangeCallback bluetoothStateChangeCallback) {
        return false;
    }

    public void closeProfileProxy(int i2, BluetoothProfile bluetoothProfile) {
        if (bluetoothProfile == null) {
        }
        switch (i2) {
            case 1:
                ((BluetoothHeadset) bluetoothProfile).close();
                break;
            case 2:
                ((BluetoothA2dp) bluetoothProfile).close();
                break;
            case 3:
                ((BluetoothHealth) bluetoothProfile).close();
                break;
            case 4:
                ((BluetoothInputDevice) bluetoothProfile).close();
                break;
            case 5:
                ((BluetoothPan) bluetoothProfile).close();
                break;
            case 7:
                ((BluetoothGatt) bluetoothProfile).close();
                break;
            case 8:
                ((BluetoothGattServer) bluetoothProfile).close();
                break;
            case 9:
                ((BluetoothMap) bluetoothProfile).close();
                break;
        }
    }

    public boolean configHciSnoopLog(boolean z2) {
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.configHciSnoopLog(z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean disable() {
        try {
            return this.mManagerService.disable(true);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean disableRadio() {
        try {
            return this.mManagerService.disableRadio();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean enable() {
        if (isEnabled()) {
            Log.d(TAG, "enable(): BT is already enabled..!");
            return true;
        }
        try {
            return this.mManagerService.enable();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean enableNoAutoConnect() {
        if (isEnabled()) {
            Log.d(TAG, "enableNoAutoConnect(): BT is already enabled..!");
            return true;
        }
        try {
            return this.mManagerService.enableNoAutoConnect();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean enableRadio() {
        try {
            return this.mManagerService.enableRadio();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public void finalize() throws Throwable {
        try {
            try {
                this.mManagerService.unregisterAdapter(this.mManagerCallback);
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        } finally {
            super.finalize();
        }
    }

    public String getAddress() {
        try {
            return this.mManagerService.getAddress();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public BluetoothAdvScanData getAdvScanData() {
        try {
            IBluetoothGatt bluetoothGatt = this.mManagerService.getBluetoothGatt();
            if (bluetoothGatt == null) {
                Log.e(TAG, "failed to start, iGatt null");
                return null;
            }
            if (this.mBluetoothAdvScanData == null) {
                this.mBluetoothAdvScanData = new BluetoothAdvScanData(bluetoothGatt, 0);
            }
            return this.mBluetoothAdvScanData;
        } catch (RemoteException e2) {
            Log.e(TAG, "failed to get advScanData, error: " + e2);
            return null;
        }
    }

    public IBluetoothManager getBluetoothManager() {
        return this.mManagerService;
    }

    public IBluetooth getBluetoothService(IBluetoothManagerCallback iBluetoothManagerCallback) {
        synchronized (this.mManagerCallback) {
            try {
                if (iBluetoothManagerCallback == null) {
                    Log.w(TAG, "getBluetoothService() called with no BluetoothManagerCallback");
                } else if (!this.mProxyServiceStateCallbacks.contains(iBluetoothManagerCallback)) {
                    this.mProxyServiceStateCallbacks.add(iBluetoothManagerCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.mService;
    }

    public Set<BluetoothDevice> getBondedDevices() {
        if (getState() != 12) {
            return toDeviceSet(new BluetoothDevice[0]);
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return toDeviceSet(new BluetoothDevice[0]);
                }
                return toDeviceSet(iBluetooth.getBondedDevices());
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public int getConnectionState() {
        if (getState() != 12) {
            return 0;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return 0;
                }
                return iBluetooth.getAdapterConnectionState();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "getConnectionState:", e2);
        }
    }

    public int getDiscoverableTimeout() {
        if (getState() != 12) {
            return -1;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return -1;
                }
                return iBluetooth.getDiscoverableTimeout();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public String getName() {
        try {
            return this.mManagerService.getName();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public int getProfileConnectionState(int i2) {
        if (getState() != 12) {
            return 0;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return 0;
                }
                return iBluetooth.getProfileConnectionState(i2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "getProfileConnectionState:", e2);
        }
    }

    public boolean getProfileProxy(Context context, BluetoothProfile.ServiceListener serviceListener, int i2) {
        if (context != null && serviceListener != null) {
            if (i2 == 1) {
                new BluetoothHeadset(context, serviceListener);
                return true;
            }
            if (i2 == 2) {
                new BluetoothA2dp(context, serviceListener);
                return true;
            }
            if (i2 == 4) {
                new BluetoothInputDevice(context, serviceListener);
                return true;
            }
            if (i2 == 5) {
                new BluetoothPan(context, serviceListener);
                return true;
            }
            if (i2 == 3) {
                new BluetoothHealth(context, serviceListener);
                return true;
            }
            if (i2 == 9) {
                new BluetoothMap(context, serviceListener);
                return true;
            }
        }
        return false;
    }

    public BluetoothDevice getRemoteDevice(String str) {
        return new BluetoothDevice(str);
    }

    public int getScanMode() {
        if (getState() != 12) {
            return 20;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return 20;
                }
                return iBluetooth.getScanMode();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public int getState() {
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getState();
                }
                Log.d(TAG, ProxyProperties.LOCAL_EXCL_LIST + hashCode() + ": getState() :  mService = null. Returning STATE_OFF");
                return 10;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public ParcelUuid[] getUuids() {
        if (getState() != 12) {
            return null;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return null;
                }
                return iBluetooth.getUuids();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean isAdvertising() {
        if (getState() != 12) {
            return false;
        }
        try {
            return this.mManagerService.getBluetoothGatt().isAdvertising();
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean isDiscovering() {
        if (getState() != 12) {
            return false;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.isDiscovering();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean isEnabled() {
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.isEnabled();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean isRadioEnabled() {
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.isRadioEnabled();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public BluetoothServerSocket listenUsingEncryptedRfcommOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, false, true, i2);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (iBindListen >= 0) {
            return bluetoothServerSocket;
        }
        throw new IOException("Error: " + iBindListen);
    }

    public BluetoothServerSocket listenUsingEncryptedRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, false, true);
    }

    public BluetoothServerSocket listenUsingInsecureRfcommOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, false, false, i2);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException("Error: " + iBindListen);
    }

    public BluetoothServerSocket listenUsingInsecureRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, false, false);
    }

    public BluetoothServerSocket listenUsingRfcommOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, true, true, i2);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException("Error: " + iBindListen);
    }

    public BluetoothServerSocket listenUsingRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, true, true);
    }

    public Pair<byte[], byte[]> readOutOfBandData() {
        getState();
        return null;
    }

    public void removeServiceStateCallback(IBluetoothManagerCallback iBluetoothManagerCallback) {
        synchronized (this.mManagerCallback) {
            this.mProxyServiceStateCallbacks.remove(iBluetoothManagerCallback);
        }
    }

    public void setDiscoverableTimeout(int i2) {
        if (getState() != 12) {
            return;
        }
        try {
            synchronized (this.mManagerCallback) {
                try {
                    IBluetooth iBluetooth = this.mService;
                    if (iBluetooth != null) {
                        iBluetooth.setDiscoverableTimeout(i2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean setName(String str) {
        if (getState() != 12) {
            return false;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.setName(str);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean setScanMode(int i2, int i3) {
        if (getState() != 12) {
            return false;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.setScanMode(i2, i3);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean startAdvertising(final AdvertiseCallback advertiseCallback) {
        if (getState() != 12) {
            return false;
        }
        try {
            IBluetoothGatt bluetoothGatt = this.mManagerService.getBluetoothGatt();
            if (bluetoothGatt == null) {
                return false;
            }
            if (isAdvertising()) {
                GattCallbackWrapper gattCallbackWrapper = this.mAdvertisingGattCallback;
                if (gattCallbackWrapper != null && gattCallbackWrapper.mLeHandle != -1) {
                    bluetoothGatt.startAdvertising(this.mAdvertisingGattCallback.mLeHandle);
                    this.mHandler.post(new Runnable() { // from class: android.bluetooth.BluetoothAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            advertiseCallback.onAdvertiseStart(0);
                        }
                    });
                    return true;
                }
                Log.e(TAG, "failed to restart advertising, invalid callback");
                return false;
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            GattCallbackWrapper gattCallbackWrapper2 = new GattCallbackWrapper(this, null, null, advertiseCallback);
            bluetoothGatt.registerClient(new ParcelUuid(uuidRandomUUID), gattCallbackWrapper2);
            if (!gattCallbackWrapper2.advertiseStarted()) {
                return false;
            }
            synchronized (this.mLock) {
                this.mAdvertisingGattCallback = gattCallbackWrapper2;
            }
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean startDiscovery() {
        if (getState() != 12) {
            return false;
        }
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth == null) {
                    return false;
                }
                return iBluetooth.startDiscovery();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
        }
    }

    public boolean startLeScan(LeScanCallback leScanCallback) {
        return startLeScan(null, leScanCallback);
    }

    public boolean stopAdvertising(AdvertiseCallback advertiseCallback) {
        GattCallbackWrapper gattCallbackWrapper;
        try {
            if (this.mManagerService.getBluetoothGatt() == null || (gattCallbackWrapper = this.mAdvertisingGattCallback) == null) {
                return false;
            }
            if (advertiseCallback != gattCallbackWrapper.mAdvertiseCallback) {
                Log.e(TAG, "must use the same callback for star/stop advertising");
                return false;
            }
            this.mAdvertisingGattCallback.stopAdvertising();
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public void stopLeScan(LeScanCallback leScanCallback) {
        Log.d(TAG, "stopLeScan()");
        synchronized (this.mLeScanClients) {
            GattCallbackWrapper gattCallbackWrapperRemove = this.mLeScanClients.remove(leScanCallback);
            if (gattCallbackWrapperRemove == null) {
                return;
            }
            gattCallbackWrapperRemove.stopLeScan();
        }
    }

    public BluetoothDevice getRemoteDevice(byte[] bArr) {
        if (bArr == null || bArr.length != 6) {
            throw new IllegalArgumentException("Bluetooth address must have 6 bytes");
        }
        return new BluetoothDevice(String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5])));
    }

    public boolean startLeScan(UUID[] uuidArr, LeScanCallback leScanCallback) {
        Log.d(TAG, "startLeScan(): " + uuidArr);
        if (leScanCallback == null) {
            Log.e(TAG, "startLeScan: null callback");
            return false;
        }
        synchronized (this.mLeScanClients) {
            if (this.mLeScanClients.containsKey(leScanCallback)) {
                Log.e(TAG, "LE Scan has already started");
                return false;
            }
            try {
                IBluetoothGatt bluetoothGatt = this.mManagerService.getBluetoothGatt();
                if (bluetoothGatt == null) {
                    return false;
                }
                UUID uuidRandomUUID = UUID.randomUUID();
                GattCallbackWrapper gattCallbackWrapper = new GattCallbackWrapper(this, leScanCallback, uuidArr);
                bluetoothGatt.registerClient(new ParcelUuid(uuidRandomUUID), gattCallbackWrapper);
                if (gattCallbackWrapper.scanStarted()) {
                    this.mLeScanClients.put(leScanCallback, gattCallbackWrapper);
                    return true;
                }
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
            return false;
        }
    }

    public boolean disable(boolean z2) {
        try {
            return this.mManagerService.disable(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public static class GattCallbackWrapper extends IBluetoothGattCallback.Stub {
        private static final int LE_CALLBACK_REG_TIMEOUT = 2000;
        private static final int LE_CALLBACK_REG_WAIT_COUNT = 5;
        private final AdvertiseCallback mAdvertiseCallback;
        private WeakReference<BluetoothAdapter> mBluetoothAdapter;
        private int mLeHandle;
        private final LeScanCallback mLeScanCb;
        private final UUID[] mScanFilter;

        public GattCallbackWrapper(BluetoothAdapter bluetoothAdapter, LeScanCallback leScanCallback, UUID[] uuidArr) {
            this.mBluetoothAdapter = new WeakReference<>(bluetoothAdapter);
            this.mLeScanCb = leScanCallback;
            this.mScanFilter = uuidArr;
            this.mLeHandle = 0;
            this.mAdvertiseCallback = null;
        }

        private boolean waitForRegisteration(int i2) {
            int i3;
            synchronized (this) {
                if (this.mLeHandle == -1) {
                    return false;
                }
                int i4 = 0;
                while (true) {
                    i3 = this.mLeHandle;
                    if (i3 != 0 || i4 >= i2) {
                        break;
                    }
                    try {
                        wait(2000L);
                    } catch (InterruptedException e2) {
                        Log.e(BluetoothAdapter.TAG, "Callback reg wait interrupted: " + e2);
                    }
                    i4++;
                }
                return i3 > 0;
            }
        }

        public boolean advertiseStarted() {
            return waitForRegisteration(1);
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onAdvertiseStateChange(int i2, int i3) {
            Log.d(BluetoothAdapter.TAG, "on advertise call back, state: " + i2 + " status: " + i3);
            if (i2 == 1) {
                this.mAdvertiseCallback.onAdvertiseStart(i3);
                return;
            }
            synchronized (this) {
                if (i3 == 0) {
                    BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter.get();
                    if (bluetoothAdapter != null) {
                        try {
                            IBluetoothGatt bluetoothGatt = bluetoothAdapter.getBluetoothManager().getBluetoothGatt();
                            Log.d(BluetoothAdapter.TAG, "unregistering client " + this.mLeHandle);
                            bluetoothGatt.unregisterClient(this.mLeHandle);
                            this.mLeHandle = -1;
                            bluetoothAdapter.mAdvertisingGattCallback = null;
                        } catch (RemoteException e2) {
                            Log.e(BluetoothAdapter.TAG, "Failed to unregister client" + e2);
                        }
                    } else {
                        Log.e(BluetoothAdapter.TAG, "cannot unregister client, BluetoothAdapter is null");
                    }
                }
            }
            this.mAdvertiseCallback.onAdvertiseStop(i3);
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicRead(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, byte[] bArr) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicWrite(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientConnectionState(int i2, int i3, boolean z2, String str) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientRegistered(int i2, int i3) {
            Log.d(BluetoothAdapter.TAG, "onClientRegistered() - status=" + i2 + " clientIf=" + i3);
            synchronized (this) {
                if (this.mLeHandle == -1) {
                    Log.d(BluetoothAdapter.TAG, "onClientRegistered LE scan canceled");
                }
                if (i2 == 0) {
                    this.mLeHandle = i3;
                    IBluetoothGatt bluetoothGatt = null;
                    try {
                        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter.get();
                        if (bluetoothAdapter != null) {
                            bluetoothGatt = bluetoothAdapter.getBluetoothManager().getBluetoothGatt();
                            if (this.mAdvertiseCallback != null) {
                                bluetoothGatt.startAdvertising(this.mLeHandle);
                            } else {
                                UUID[] uuidArr = this.mScanFilter;
                                if (uuidArr == null) {
                                    bluetoothGatt.startScan(this.mLeHandle, false);
                                } else {
                                    int length = uuidArr.length;
                                    ParcelUuid[] parcelUuidArr = new ParcelUuid[length];
                                    for (int i4 = 0; i4 != length; i4++) {
                                        parcelUuidArr[i4] = new ParcelUuid(this.mScanFilter[i4]);
                                    }
                                    bluetoothGatt.startScanWithUuids(this.mLeHandle, false, parcelUuidArr);
                                }
                            }
                        } else {
                            Log.e(BluetoothAdapter.TAG, "onClientRegistered, BluetoothAdapter null");
                            this.mLeHandle = -1;
                        }
                    } catch (RemoteException e2) {
                        Log.e(BluetoothAdapter.TAG, "fail to start le scan: " + e2);
                        this.mLeHandle = -1;
                    }
                    int i5 = this.mLeHandle;
                    if (i5 == -1 && bluetoothGatt != null) {
                        try {
                            bluetoothGatt.unregisterClient(i5);
                        } catch (RemoteException e3) {
                            Log.e(BluetoothAdapter.TAG, "fail to unregister callback: " + this.mLeHandle + " error: " + e3);
                        }
                    }
                    throw th;
                }
                this.mLeHandle = -1;
                notifyAll();
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorRead(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, int i6, ParcelUuid parcelUuid3, byte[] bArr) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorWrite(String str, int i2, int i3, int i4, ParcelUuid parcelUuid, int i5, ParcelUuid parcelUuid2, int i6, ParcelUuid parcelUuid3) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onExecuteWrite(String str, int i2) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetCharacteristic(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, int i5) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetDescriptor(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, int i5, ParcelUuid parcelUuid3) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetIncludedService(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, int i5, ParcelUuid parcelUuid2) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onGetService(String str, int i2, int i3, ParcelUuid parcelUuid) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onNotify(String str, int i2, int i3, ParcelUuid parcelUuid, int i4, ParcelUuid parcelUuid2, byte[] bArr) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onReadRemoteRssi(String str, int i2, int i3) {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onScanResult(String str, int i2, byte[] bArr) {
            synchronized (this) {
                if (this.mLeHandle <= 0) {
                    return;
                }
                try {
                    BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter.get();
                    if (bluetoothAdapter == null) {
                        Log.d(BluetoothAdapter.TAG, "onScanResult, BluetoothAdapter null");
                    } else {
                        this.mLeScanCb.onLeScan(bluetoothAdapter.getRemoteDevice(str), i2, bArr);
                    }
                } catch (Exception e2) {
                    Log.w(BluetoothAdapter.TAG, "Unhandled exception: " + e2);
                }
            }
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onSearchComplete(String str, int i2) {
        }

        public boolean scanStarted() {
            return waitForRegisteration(5);
        }

        public void stopAdvertising() {
            synchronized (this) {
                if (this.mLeHandle <= 0) {
                    Log.e(BluetoothAdapter.TAG, "Error state, mLeHandle: " + this.mLeHandle);
                    return;
                }
                BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter.get();
                if (bluetoothAdapter != null) {
                    try {
                        bluetoothAdapter.getBluetoothManager().getBluetoothGatt().stopAdvertising();
                    } catch (RemoteException e2) {
                        Log.e(BluetoothAdapter.TAG, "Failed to stop advertising" + e2);
                    }
                } else {
                    Log.e(BluetoothAdapter.TAG, "stopAdvertising, BluetoothAdapter is null");
                }
                notifyAll();
            }
        }

        public void stopLeScan() {
            synchronized (this) {
                if (this.mLeHandle <= 0) {
                    Log.e(BluetoothAdapter.TAG, "Error state, mLeHandle: " + this.mLeHandle);
                    return;
                }
                BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter.get();
                if (bluetoothAdapter != null) {
                    try {
                        IBluetoothGatt bluetoothGatt = bluetoothAdapter.getBluetoothManager().getBluetoothGatt();
                        bluetoothGatt.stopScan(this.mLeHandle, false);
                        bluetoothGatt.unregisterClient(this.mLeHandle);
                    } catch (RemoteException e2) {
                        Log.e(BluetoothAdapter.TAG, "Failed to stop scan and unregister" + e2);
                    }
                } else {
                    Log.e(BluetoothAdapter.TAG, "stopLeScan, BluetoothAdapter is null");
                }
                this.mLeHandle = -1;
                notifyAll();
            }
        }

        public GattCallbackWrapper(BluetoothAdapter bluetoothAdapter, LeScanCallback leScanCallback, UUID[] uuidArr, AdvertiseCallback advertiseCallback) {
            this.mBluetoothAdapter = new WeakReference<>(bluetoothAdapter);
            this.mLeScanCb = leScanCallback;
            this.mScanFilter = uuidArr;
            this.mLeHandle = 0;
            this.mAdvertiseCallback = advertiseCallback;
        }
    }

    public boolean setScanMode(int i2) {
        if (getState() != 12) {
            return false;
        }
        return setScanMode(i2, getDiscoverableTimeout());
    }
}
