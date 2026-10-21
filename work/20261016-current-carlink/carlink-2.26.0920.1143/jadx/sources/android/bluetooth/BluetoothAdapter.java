package android.bluetooth;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.m;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.PeriodicAdvertisingManager;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.SynchronousResultReceiver;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothAdapter {
    public static final String ACTION_BLE_ACL_CONNECTED = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED";
    public static final String ACTION_BLE_ACL_DISCONNECTED = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED";
    public static final String ACTION_BLE_STATE_CHANGED = "android.bluetooth.adapter.action.BLE_STATE_CHANGED";
    public static final String ACTION_BLUETOOTH_ADDRESS_CHANGED = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_DISCOVERY_FINISHED = "android.bluetooth.adapter.action.DISCOVERY_FINISHED";
    public static final String ACTION_DISCOVERY_STARTED = "android.bluetooth.adapter.action.DISCOVERY_STARTED";
    public static final String ACTION_LOCAL_NAME_CHANGED = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED";
    public static final String ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE";
    public static final String ACTION_REQUEST_DISABLE = "android.bluetooth.adapter.action.REQUEST_DISABLE";
    public static final String ACTION_REQUEST_DISCOVERABLE = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE";
    public static final String ACTION_REQUEST_ENABLE = "android.bluetooth.adapter.action.REQUEST_ENABLE";
    public static final String ACTION_SCAN_MODE_CHANGED = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED";
    public static final String ACTION_STATE_CHANGED = "android.bluetooth.adapter.action.STATE_CHANGED";
    private static final int ADDRESS_LENGTH = 17;
    public static final String BLUETOOTH_MANAGER_SERVICE = "bluetooth_manager";
    private static final boolean DBG = true;
    public static final String DEFAULT_MAC_ADDRESS = "02:00:00:00:00:00";
    public static final int ERROR = Integer.MIN_VALUE;
    public static final String EXTRA_BLUETOOTH_ADDRESS = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS";
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
    public static final int SOCKET_CHANNEL_AUTO_STATIC_NO_SDP = -2;
    public static final int STATE_BLE_ON = 15;
    public static final int STATE_BLE_TURNING_OFF = 16;
    public static final int STATE_BLE_TURNING_ON = 14;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int STATE_OFF = 10;
    public static final int STATE_ON = 12;
    public static final int STATE_TURNING_OFF = 13;
    public static final int STATE_TURNING_ON = 11;
    private static final String TAG = "BluetoothAdapter";
    private static final boolean VDBG = false;
    private static final boolean WCN_DISABLED = SystemProperties.get("ro.wcn").equals("disabled");
    private static BluetoothAdapter sAdapter;
    private static BluetoothLeAdvertiser sBluetoothLeAdvertiser;
    private static BluetoothLeScanner sBluetoothLeScanner;
    private static PeriodicAdvertisingManager sPeriodicAdvertisingManager;
    private final Map<LeScanCallback, ScanCallback> mLeScanClients;
    private final Object mLock;
    private final IBluetoothManagerCallback mManagerCallback;
    private final IBluetoothManager mManagerService;
    private final ArrayList<IBluetoothManagerCallback> mProxyServiceStateCallbacks;
    private IBluetooth mService;
    private final ReentrantReadWriteLock mServiceLock;
    private final IBinder mToken;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdapterState {
    }

    public interface BluetoothStateChangeCallback {
        void onBluetoothStateChange(boolean z2);
    }

    public interface LeScanCallback {
        void onLeScan(BluetoothDevice bluetoothDevice, int i2, byte[] bArr);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScanMode {
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
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mServiceLock = reentrantReadWriteLock;
        this.mLock = new Object();
        IBluetoothManagerCallback.Stub stub = new IBluetoothManagerCallback.Stub() { // from class: android.bluetooth.BluetoothAdapter.1
            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceDown() {
                Log.d(BluetoothAdapter.TAG, "onBluetoothServiceDown: " + BluetoothAdapter.this.mService);
                try {
                    BluetoothAdapter.this.mServiceLock.writeLock().lock();
                    BluetoothAdapter.this.mService = null;
                    if (BluetoothAdapter.this.mLeScanClients != null) {
                        BluetoothAdapter.this.mLeScanClients.clear();
                    }
                    if (BluetoothAdapter.sBluetoothLeAdvertiser != null) {
                        BluetoothAdapter.sBluetoothLeAdvertiser.cleanup();
                    }
                    if (BluetoothAdapter.sBluetoothLeScanner != null) {
                        BluetoothAdapter.sBluetoothLeScanner.cleanup();
                    }
                    BluetoothAdapter.this.mServiceLock.writeLock().unlock();
                    synchronized (BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                        for (IBluetoothManagerCallback iBluetoothManagerCallback : BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                            if (iBluetoothManagerCallback != null) {
                                try {
                                    iBluetoothManagerCallback.onBluetoothServiceDown();
                                } catch (Exception e2) {
                                    Log.e(BluetoothAdapter.TAG, "", e2);
                                }
                            } else {
                                Log.d(BluetoothAdapter.TAG, "onBluetoothServiceDown: cb is null!");
                            }
                        }
                    }
                } catch (Throwable th) {
                    BluetoothAdapter.this.mServiceLock.writeLock().unlock();
                    throw th;
                }
            }

            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceUp(IBluetooth iBluetooth) {
                Log.d(BluetoothAdapter.TAG, "onBluetoothServiceUp: " + iBluetooth);
                BluetoothAdapter.this.mServiceLock.writeLock().lock();
                BluetoothAdapter.this.mService = iBluetooth;
                BluetoothAdapter.this.mServiceLock.writeLock().unlock();
                synchronized (BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                    for (IBluetoothManagerCallback iBluetoothManagerCallback : BluetoothAdapter.this.mProxyServiceStateCallbacks) {
                        if (iBluetoothManagerCallback != null) {
                            try {
                                iBluetoothManagerCallback.onBluetoothServiceUp(iBluetooth);
                            } catch (Exception e2) {
                                Log.e(BluetoothAdapter.TAG, "", e2);
                            }
                        } else {
                            Log.d(BluetoothAdapter.TAG, "onBluetoothServiceUp: cb is null!");
                        }
                    }
                }
            }

            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBrEdrDown() {
            }
        };
        this.mManagerCallback = stub;
        this.mProxyServiceStateCallbacks = new ArrayList<>();
        if (iBluetoothManager == null) {
            throw new IllegalArgumentException("bluetooth manager service is null");
        }
        try {
            try {
                reentrantReadWriteLock.writeLock().lock();
                this.mService = iBluetoothManager.registerAdapter(stub);
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                reentrantReadWriteLock = this.mServiceLock;
            }
            reentrantReadWriteLock.writeLock().unlock();
            this.mManagerService = iBluetoothManager;
            this.mLeScanClients = new HashMap();
            this.mToken = new Binder();
        } catch (Throwable th) {
            this.mServiceLock.writeLock().unlock();
            throw th;
        }
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
        throw new IOException(c.d("Error: ", iBindListen));
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

    public static String nameForState(int i2) {
        switch (i2) {
            case 10:
                return "OFF";
            case 11:
                return "TURNING_ON";
            case 12:
                return "ON";
            case 13:
                return "TURNING_OFF";
            case 14:
                return "BLE_TURNING_ON";
            case 15:
                return "BLE_ON";
            case 16:
                return "BLE_TURNING_OFF";
            default:
                return c.e("?!?!? (", i2, ")");
        }
    }

    private Set<BluetoothDevice> toDeviceSet(BluetoothDevice[] bluetoothDeviceArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(bluetoothDeviceArr)));
    }

    public boolean cancelDiscovery() {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.cancelDiscovery();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
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
            case 10:
                ((BluetoothSap) bluetoothProfile).close();
                break;
            case 11:
                ((BluetoothA2dpSink) bluetoothProfile).close();
                break;
            case 12:
                ((BluetoothAvrcpController) bluetoothProfile).close();
                break;
            case 16:
                ((BluetoothHeadsetClient) bluetoothProfile).close();
                break;
            case 17:
                ((BluetoothPbapClient) bluetoothProfile).close();
                break;
            case 18:
                ((BluetoothMapClient) bluetoothProfile).close();
                break;
            case 19:
                ((BluetoothInputHost) bluetoothProfile).close();
                break;
        }
    }

    public boolean disable() {
        try {
            return this.mManagerService.disable(ActivityThread.currentPackageName(), true);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean disableBLE() {
        if (!isBleScanAlwaysAvailable()) {
            return false;
        }
        try {
            if (!this.mManagerService.isBleSupport()) {
                Log.w(TAG, "BLE is not supported, disableBLE invalid!");
                return false;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
        }
        int leState = getLeState();
        if (leState != 12 && leState != 15) {
            Log.d(TAG, "disableBLE(): Already disabled");
            return false;
        }
        String strCurrentPackageName = ActivityThread.currentPackageName();
        Log.d(TAG, "disableBLE(): de-registering " + strCurrentPackageName);
        try {
            this.mManagerService.updateBleAppCount(this.mToken, false, strCurrentPackageName);
            return true;
        } catch (RemoteException e3) {
            Log.e(TAG, "", e3);
            return true;
        }
    }

    public boolean enable() {
        if (WCN_DISABLED) {
            return false;
        }
        if (isEnabled()) {
            Log.d(TAG, "enable(): BT already enabled!");
            return true;
        }
        try {
            return this.mManagerService.enable(ActivityThread.currentPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean enableBLE() {
        if (!isBleScanAlwaysAvailable()) {
            return false;
        }
        try {
            if (!this.mManagerService.isBleSupport()) {
                Log.w(TAG, "BLE is not supported, enableBLE invalid!");
                return false;
            }
            String strCurrentPackageName = ActivityThread.currentPackageName();
            this.mManagerService.updateBleAppCount(this.mToken, true, strCurrentPackageName);
            if (isLeEnabled()) {
                Log.d(TAG, "enableBLE(): Bluetooth already enabled");
                return true;
            }
            Log.d(TAG, "enableBLE(): Calling enable");
            return this.mManagerService.enable(strCurrentPackageName);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean enableNoAutoConnect() {
        if (isEnabled()) {
            Log.d(TAG, "enableNoAutoConnect(): BT already enabled!");
            return true;
        }
        try {
            return this.mManagerService.enableNoAutoConnect(ActivityThread.currentPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean factoryReset() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.factoryReset();
                }
                SystemProperties.set("persist.bluetooth.factoryreset", "true");
                return false;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void finalize() throws Throwable {
        try {
            try {
                this.mManagerService.unregisterAdapter(this.mManagerCallback);
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        } finally {
            super.finalize();
        }
    }

    public String getAddress() {
        try {
            return this.mManagerService.getAddress();
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return null;
        }
    }

    public BluetoothLeAdvertiser getBluetoothLeAdvertiser() {
        if (!getLeAccess()) {
            return null;
        }
        synchronized (this.mLock) {
            if (sBluetoothLeAdvertiser == null) {
                sBluetoothLeAdvertiser = new BluetoothLeAdvertiser(this.mManagerService);
            }
        }
        return sBluetoothLeAdvertiser;
    }

    public BluetoothLeScanner getBluetoothLeScanner() {
        if (!getLeAccess()) {
            return null;
        }
        synchronized (this.mLock) {
            if (sBluetoothLeScanner == null) {
                sBluetoothLeScanner = new BluetoothLeScanner(this.mManagerService);
            }
        }
        return sBluetoothLeScanner;
    }

    public IBluetoothManager getBluetoothManager() {
        return this.mManagerService;
    }

    public IBluetooth getBluetoothService(IBluetoothManagerCallback iBluetoothManagerCallback) {
        synchronized (this.mProxyServiceStateCallbacks) {
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
        try {
            if (getState() != 12) {
                return toDeviceSet(new BluetoothDevice[0]);
            }
            this.mServiceLock.readLock().lock();
            IBluetooth iBluetooth = this.mService;
            return iBluetooth != null ? toDeviceSet(iBluetooth.getBondedDevices()) : toDeviceSet(new BluetoothDevice[0]);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return null;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getConnectionState() {
        try {
            if (getState() != 12) {
                return 0;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getAdapterConnectionState();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "getConnectionState:", e2);
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Deprecated
    public BluetoothActivityEnergyInfo getControllerActivityEnergyInfo(int i2) {
        SynchronousResultReceiver synchronousResultReceiver = new SynchronousResultReceiver();
        requestControllerActivityEnergyInfo(synchronousResultReceiver);
        try {
            Bundle bundle = synchronousResultReceiver.awaitResult(1000L).bundle;
            if (bundle != null) {
                return (BluetoothActivityEnergyInfo) bundle.getParcelable("controller_activity");
            }
            return null;
        } catch (TimeoutException unused) {
            Log.e(TAG, "getControllerActivityEnergyInfo timed out");
            return null;
        }
    }

    public int getDiscoverableTimeout() {
        try {
            if (getState() != 12) {
                return -1;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getDiscoverableTimeout();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return -1;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public long getDiscoveryEndMillis() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getDiscoveryEndMillis();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return -1L;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean getLeAccess() {
        return getLeState() == 12 || getLeState() == 15;
    }

    public int getLeMaximumAdvertisingDataLength() {
        try {
            if (!getLeAccess()) {
                return 0;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getLeMaximumAdvertisingDataLength();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get getLeMaximumAdvertisingDataLength, error: ", e2);
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getLeState() {
        int state = 10;
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    state = iBluetooth.getState();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return state;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public String getName() {
        try {
            return this.mManagerService.getName();
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return null;
        }
    }

    public PeriodicAdvertisingManager getPeriodicAdvertisingManager() {
        if (!getLeAccess() || !isLePeriodicAdvertisingSupported()) {
            return null;
        }
        synchronized (this.mLock) {
            if (sPeriodicAdvertisingManager == null) {
                sPeriodicAdvertisingManager = new PeriodicAdvertisingManager(this.mManagerService);
            }
        }
        return sPeriodicAdvertisingManager;
    }

    public int getProfileConnectionState(int i2) {
        try {
            if (getState() != 12) {
                return 0;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getProfileConnectionState(i2);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "getProfileConnectionState:", e2);
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
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
            if (i2 == 11) {
                new BluetoothA2dpSink(context, serviceListener);
                return true;
            }
            if (i2 == 12) {
                new BluetoothAvrcpController(context, serviceListener);
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
            if (i2 == 16) {
                new BluetoothHeadsetClient(context, serviceListener);
                return true;
            }
            if (i2 == 10) {
                new BluetoothSap(context, serviceListener);
                return true;
            }
            if (i2 == 17) {
                new BluetoothPbapClient(context, serviceListener);
                return true;
            }
            if (i2 == 18) {
                new BluetoothMapClient(context, serviceListener);
                return true;
            }
            if (i2 == 19) {
                new BluetoothInputHost(context, serviceListener);
                return true;
            }
        }
        return false;
    }

    public BluetoothDevice getRemoteDevice(String str) {
        return new BluetoothDevice(str);
    }

    public int getScanMode() {
        try {
            if (getState() != 12) {
                return 20;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getScanMode();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return 20;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getState() {
        int state;
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                state = iBluetooth != null ? iBluetooth.getState() : 10;
                this.mServiceLock.readLock().unlock();
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                this.mServiceLock.readLock().unlock();
                state = 10;
            }
            if (state == 15 || state == 14 || state == 16) {
                return 10;
            }
            return state;
        } catch (Throwable th) {
            this.mServiceLock.readLock().unlock();
            throw th;
        }
    }

    public List<Integer> getSupportedProfiles() {
        ArrayList arrayList = new ArrayList();
        try {
            synchronized (this.mManagerCallback) {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    long supportedProfiles = iBluetooth.getSupportedProfiles();
                    for (int i2 = 0; i2 <= 19; i2++) {
                        if ((((long) (1 << i2)) & supportedProfiles) != 0) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    }
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "getSupportedProfiles:", e2);
        }
        return arrayList;
    }

    public ParcelUuid[] getUuids() {
        try {
            if (getState() != 12) {
                return null;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.getUuids();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return null;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isBleScanAlwaysAvailable() {
        try {
            return this.mManagerService.isBleScanAlwaysAvailable();
        } catch (RemoteException e2) {
            Log.e(TAG, "remote expection when calling isBleScanAlwaysAvailable", e2);
            return false;
        }
    }

    public boolean isDiscovering() {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isDiscovering();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isEnabled() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isEnabled();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isHardwareTrackingFiltersAvailable() {
        if (!getLeAccess()) {
            return false;
        }
        try {
            IBluetoothGatt bluetoothGatt = this.mManagerService.getBluetoothGatt();
            return (bluetoothGatt == null || bluetoothGatt.numHwTrackFiltersAvailable() == 0) ? false : true;
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean isLe2MPhySupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isLe2MPhySupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isExtendedAdvertisingSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLeCodedPhySupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isLeCodedPhySupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isLeCodedPhySupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLeEnabled() {
        int leState = getLeState();
        Log.d(TAG, "isLeEnabled(): " + nameForState(leState));
        return leState == 12 || leState == 15;
    }

    public boolean isLeExtendedAdvertisingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isLeExtendedAdvertisingSupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isLeExtendedAdvertisingSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLePeriodicAdvertisingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isLePeriodicAdvertisingSupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isLePeriodicAdvertisingSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isMultipleAdvertisementSupported() {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isMultiAdvertisementSupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isMultipleAdvertisementSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isOffloadedFilteringSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isOffloadedFilteringSupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isOffloadedFilteringSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isOffloadedScanBatchingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isOffloadedScanBatchingSupported();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "failed to get isOffloadedScanBatchingSupported, error: ", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public BluetoothServerSocket listenUsingEncryptedRfcommOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, false, true, i2);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (i2 == -2) {
            bluetoothServerSocket.setChannel(bluetoothServerSocket.mSocket.getPort());
        }
        if (iBindListen >= 0) {
            return bluetoothServerSocket;
        }
        throw new IOException(c.d("Error: ", iBindListen));
    }

    public BluetoothServerSocket listenUsingEncryptedRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, false, true);
    }

    public BluetoothServerSocket listenUsingInsecureL2capOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(3, false, false, i2, false, false);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (i2 == -2) {
            bluetoothServerSocket.setChannel(bluetoothServerSocket.mSocket.getPort());
        }
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException(c.d("Error: ", iBindListen));
    }

    public BluetoothServerSocket listenUsingInsecureRfcommOn(int i2) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, false, false, i2);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (i2 == -2) {
            bluetoothServerSocket.setChannel(bluetoothServerSocket.mSocket.getPort());
        }
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException(c.d("Error: ", iBindListen));
    }

    public BluetoothServerSocket listenUsingInsecureRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, false, false);
    }

    public BluetoothServerSocket listenUsingL2capOn(int i2, boolean z2, boolean z3) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(3, true, true, i2, z2, z3);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (i2 == -2) {
            bluetoothServerSocket.setChannel(bluetoothServerSocket.mSocket.getPort());
        }
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException(c.d("Error: ", iBindListen));
    }

    public BluetoothServerSocket listenUsingRfcommOn(int i2) {
        return listenUsingRfcommOn(i2, false, false);
    }

    public BluetoothServerSocket listenUsingRfcommWithServiceRecord(String str, UUID uuid) {
        return createNewRfcommSocketAndRecord(str, uuid, true, true);
    }

    public Pair<byte[], byte[]> readOutOfBandData() {
        return null;
    }

    public void removeServiceStateCallback(IBluetoothManagerCallback iBluetoothManagerCallback) {
        synchronized (this.mProxyServiceStateCallbacks) {
            this.mProxyServiceStateCallbacks.remove(iBluetoothManagerCallback);
        }
    }

    public void requestControllerActivityEnergyInfo(ResultReceiver resultReceiver) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    iBluetooth.requestActivityInfo(resultReceiver);
                    resultReceiver = null;
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "getControllerActivityEnergyInfoCallback: " + e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            }
        }
    }

    public void setDiscoverableTimeout(int i2) {
        if (getState() != 12) {
            return;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    iBluetooth.setDiscoverableTimeout(i2);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setName(String str) {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.setName(str);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setScanMode(int i2, int i3) {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.setScanMode(i2, i3);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean startDiscovery() {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.startDiscovery();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Deprecated
    public boolean startLeScan(LeScanCallback leScanCallback) {
        return startLeScan(null, leScanCallback);
    }

    @Deprecated
    public void stopLeScan(LeScanCallback leScanCallback) {
        Log.d(TAG, "stopLeScan()");
        BluetoothLeScanner bluetoothLeScanner = getBluetoothLeScanner();
        if (bluetoothLeScanner == null) {
            return;
        }
        synchronized (this.mLeScanClients) {
            ScanCallback scanCallbackRemove = this.mLeScanClients.remove(leScanCallback);
            if (scanCallbackRemove == null) {
                Log.d(TAG, "scan not started yet");
            } else {
                bluetoothLeScanner.stopScan(scanCallbackRemove);
            }
        }
    }

    public BluetoothDevice getRemoteDevice(byte[] bArr) {
        if (bArr == null || bArr.length != 6) {
            throw new IllegalArgumentException("Bluetooth address must have 6 bytes");
        }
        return new BluetoothDevice(String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5])));
    }

    public BluetoothServerSocket listenUsingRfcommOn(int i2, boolean z2, boolean z3) throws IOException {
        BluetoothServerSocket bluetoothServerSocket = new BluetoothServerSocket(1, true, true, i2, z2, z3);
        int iBindListen = bluetoothServerSocket.mSocket.bindListen();
        if (i2 == -2) {
            bluetoothServerSocket.setChannel(bluetoothServerSocket.mSocket.getPort());
        }
        if (iBindListen == 0) {
            return bluetoothServerSocket;
        }
        throw new IOException(c.d("Error: ", iBindListen));
    }

    @Deprecated
    public boolean startLeScan(final UUID[] uuidArr, final LeScanCallback leScanCallback) {
        m.x(new StringBuilder("startLeScan(): "), Arrays.toString(uuidArr), TAG);
        if (leScanCallback == null) {
            Log.e(TAG, "startLeScan: null callback");
            return false;
        }
        BluetoothLeScanner bluetoothLeScanner = getBluetoothLeScanner();
        if (bluetoothLeScanner == null) {
            Log.e(TAG, "startLeScan: cannot get BluetoothLeScanner");
            return false;
        }
        synchronized (this.mLeScanClients) {
            if (this.mLeScanClients.containsKey(leScanCallback)) {
                Log.e(TAG, "LE Scan has already started");
                return false;
            }
            try {
                if (this.mManagerService.getBluetoothGatt() == null) {
                    return false;
                }
                ScanCallback scanCallback = new ScanCallback() { // from class: android.bluetooth.BluetoothAdapter.2
                    @Override // android.bluetooth.le.ScanCallback
                    public void onScanResult(int i2, ScanResult scanResult) {
                        if (i2 != 1) {
                            Log.e(BluetoothAdapter.TAG, "LE Scan has already started");
                            return;
                        }
                        ScanRecord scanRecord = scanResult.getScanRecord();
                        if (scanRecord == null) {
                            return;
                        }
                        if (uuidArr != null) {
                            ArrayList arrayList = new ArrayList();
                            for (UUID uuid : uuidArr) {
                                arrayList.add(new ParcelUuid(uuid));
                            }
                            List<ParcelUuid> serviceUuids = scanRecord.getServiceUuids();
                            if (serviceUuids == null || !serviceUuids.containsAll(arrayList)) {
                                Log.d(BluetoothAdapter.TAG, "uuids does not match");
                                return;
                            }
                        }
                        leScanCallback.onLeScan(scanResult.getDevice(), scanResult.getRssi(), scanRecord.getBytes());
                    }
                };
                ScanSettings scanSettingsBuild = new ScanSettings.Builder().setCallbackType(1).setScanMode(2).build();
                ArrayList arrayList = new ArrayList();
                if (uuidArr != null && uuidArr.length > 0) {
                    arrayList.add(new ScanFilter.Builder().setServiceUuid(new ParcelUuid(uuidArr[0])).build());
                }
                bluetoothLeScanner.startScan(arrayList, scanSettingsBuild, scanCallback);
                this.mLeScanClients.put(leScanCallback, scanCallback);
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
                return false;
            }
        }
    }

    public boolean disable(boolean z2) {
        try {
            return this.mManagerService.disable(ActivityThread.currentPackageName(), z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "", e2);
            return false;
        }
    }

    public boolean setScanMode(int i2) {
        if (getState() != 12) {
            return false;
        }
        return setScanMode(i2, getDiscoverableTimeout());
    }

    public BluetoothServerSocket listenUsingL2capOn(int i2) {
        return listenUsingL2capOn(i2, false, false);
    }
}
