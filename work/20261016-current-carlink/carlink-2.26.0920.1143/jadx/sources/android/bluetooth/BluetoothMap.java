package android.bluetooth;

import android.accessibilityservice.c;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.a;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothMap implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_ERROR = -1;
    private static final String TAG = "BluetoothMap";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private final Context mContext;
    private volatile IBluetoothMap mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothMap(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothMap.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothMap.TAG);
                if (z2) {
                    synchronized (BluetoothMap.this.mConnection) {
                        try {
                            if (BluetoothMap.this.mService == null) {
                                BluetoothMap.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothMap.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothMap.this.mConnection) {
                    try {
                        BluetoothMap.this.mService = null;
                        BluetoothMap.this.mContext.unbindService(BluetoothMap.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothMap.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothMap.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                BluetoothMap.log("Proxy object connected");
                BluetoothMap.this.mService = IBluetoothMap.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothMap.this.mServiceListener != null) {
                    BluetoothMap.this.mServiceListener.onServiceConnected(9, BluetoothMap.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                BluetoothMap.log("Proxy object disconnected");
                BluetoothMap.this.mService = null;
                if (BluetoothMap.this.mServiceListener != null) {
                    BluetoothMap.this.mServiceListener.onServiceDisconnected(9);
                }
            }
        };
        Log.d(TAG, "Create BluetoothMap proxy object");
        this.mContext = context;
        this.mServiceListener = serviceListener;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        IBluetoothManager bluetoothManager = defaultAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.registerStateChangeCallback(stub);
            } catch (RemoteException e2) {
                Log.e(TAG, "", e2);
            }
        }
        doBind();
    }

    public static boolean doesClassMatchSink(BluetoothClass bluetoothClass) {
        int deviceClass = bluetoothClass.getDeviceClass();
        return deviceClass == 256 || deviceClass == 260 || deviceClass == 264 || deviceClass == 268;
    }

    private boolean isEnabled() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && defaultAdapter.getState() == 12) {
            return true;
        }
        log("Bluetooth is Not enabled");
        return false;
    }

    private static boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice != null && BluetoothAdapter.checkBluetoothAddress(bluetoothDevice.getAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String str) {
        Log.d(TAG, str);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x001a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public synchronized void close() {
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (Exception e2) {
                Log.e(TAG, "", e2);
            }
            synchronized (this.mConnection) {
                if (this.mService != null) {
                    try {
                        this.mService = null;
                        this.mContext.unbindService(this.mConnection);
                    } catch (Exception e3) {
                        Log.e(TAG, "", e3);
                    }
                }
            }
            this.mServiceListener = null;
        } else {
            synchronized (this.mConnection) {
                if (this.mService != null) {
                    this.mService = null;
                    this.mContext.unbindService(this.mConnection);
                }
                this.mServiceListener = null;
            }
        }
        throw th;
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log(m.g("connect(", bluetoothDevice, ")not supported for MAPS"));
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothMap.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return false;
            }
        }
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothMap.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth MAP Service with " + intent);
        return false;
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public BluetoothDevice getClient() {
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return null;
        }
        try {
            return iBluetoothMap.getClient();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null || !isEnabled()) {
            if (iBluetoothMap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothMap.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        log(m.g("getConnectionState(", bluetoothDevice, ")"));
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothMap.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        log("getDevicesMatchingStates()");
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null || !isEnabled()) {
            if (iBluetoothMap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothMap.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothMap.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public int getState() {
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return -1;
        }
        try {
            return iBluetoothMap.getState();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return iBluetoothMap.isConnected(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        IBluetoothMap iBluetoothMap = this.mService;
        if (iBluetoothMap == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothMap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothMap.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.o(TAG);
            return false;
        }
    }
}
