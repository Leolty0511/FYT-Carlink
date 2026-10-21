package android.bluetooth;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ProxyProperties;
import android.os.IBinder;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothA2dp implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYING_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final int STATE_NOT_PLAYING = 11;
    public static final int STATE_PLAYING = 10;
    private static final String TAG = "BluetoothA2dp";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private IBluetoothA2dp mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothA2dp(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothA2dp.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                Log.d(BluetoothA2dp.TAG, "onBluetoothStateChange: up=" + z2);
                if (z2) {
                    synchronized (BluetoothA2dp.this.mConnection) {
                        try {
                            if (BluetoothA2dp.this.mService == null) {
                                BluetoothA2dp.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothA2dp.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothA2dp.this.mConnection) {
                    try {
                        BluetoothA2dp.this.mService = null;
                        BluetoothA2dp.this.mContext.unbindService(BluetoothA2dp.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothA2dp.TAG, ProxyProperties.LOCAL_EXCL_LIST, e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothA2dp.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothA2dp.TAG, "Proxy object connected");
                BluetoothA2dp.this.mService = IBluetoothA2dp.Stub.asInterface(iBinder);
                if (BluetoothA2dp.this.mServiceListener != null) {
                    BluetoothA2dp.this.mServiceListener.onServiceConnected(2, BluetoothA2dp.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothA2dp.TAG, "Proxy object disconnected");
                BluetoothA2dp.this.mService = null;
                if (BluetoothA2dp.this.mServiceListener != null) {
                    BluetoothA2dp.this.mServiceListener.onServiceDisconnected(2);
                }
            }
        };
        this.mContext = context;
        this.mServiceListener = serviceListener;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        IBluetoothManager bluetoothManager = defaultAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.registerStateChangeCallback(stub);
            } catch (RemoteException e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        doBind();
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice != null && BluetoothAdapter.checkBluetoothAddress(bluetoothDevice.getAddress());
    }

    private static void log(String str) {
        Log.d(TAG, str);
    }

    public static String stateToString(int i2) {
        if (i2 == 0) {
            return "disconnected";
        }
        if (i2 == 1) {
            return "connecting";
        }
        if (i2 == 2) {
            return "connected";
        }
        if (i2 == 3) {
            return "disconnecting";
        }
        if (i2 == 10) {
            return "playing";
        }
        if (i2 == 11) {
            return "not playing";
        }
        return "<unknown state " + i2 + ">";
    }

    public void adjustAvrcpAbsoluteVolume(int i2) {
        Log.d(TAG, "adjustAvrcpAbsoluteVolume");
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
        } else {
            try {
                this.mService.adjustAvrcpAbsoluteVolume(i2);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in adjustAvrcpAbsoluteVolume()", e2);
            }
        }
    }

    public void close() {
        this.mServiceListener = null;
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (Exception e2) {
                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            }
        }
        synchronized (this.mConnection) {
            if (this.mService != null) {
                try {
                    this.mService = null;
                    this.mContext.unbindService(this.mConnection);
                } catch (Exception e3) {
                    Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e3);
                }
            }
        }
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log("connect(" + bluetoothDevice + ")");
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            return this.mService.connect(bluetoothDevice);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log("disconnect(" + bluetoothDevice + ")");
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            return this.mService.disconnect(bluetoothDevice);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothA2dp.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindService(intent, this.mConnection, 0)) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth A2DP Service with " + intent);
        return false;
    }

    public void finalize() {
        close();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return this.mService.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return 0;
        }
        try {
            return this.mService.getConnectionState(bluetoothDevice);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return 0;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return this.mService.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return 0;
        }
        try {
            return this.mService.getPriority(bluetoothDevice);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return 0;
        }
    }

    public boolean isA2dpPlaying(BluetoothDevice bluetoothDevice) {
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            return this.mService.isA2dpPlaying(bluetoothDevice);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean isAvrcpAbsoluteVolumeSupported() {
        Log.d(TAG, "isAvrcpAbsoluteVolumeSupported");
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            return this.mService.isAvrcpAbsoluteVolumeSupported();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to BT service in isAvrcpAbsoluteVolumeSupported()", e2);
            return false;
        }
    }

    public void setAvrcpAbsoluteVolume(int i2) {
        Log.d(TAG, "setAvrcpAbsoluteVolume");
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
        } else {
            try {
                this.mService.setAvrcpAbsoluteVolume(i2);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in setAvrcpAbsoluteVolume()", e2);
            }
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return this.mService.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean shouldSendVolumeKeys(BluetoothDevice bluetoothDevice) {
        ParcelUuid[] uuids;
        if (!isEnabled() || !isValidDevice(bluetoothDevice) || (uuids = bluetoothDevice.getUuids()) == null) {
            return false;
        }
        for (ParcelUuid parcelUuid : uuids) {
            if (BluetoothUuid.isAvrcpTarget(parcelUuid)) {
                return true;
            }
        }
        return false;
    }
}
