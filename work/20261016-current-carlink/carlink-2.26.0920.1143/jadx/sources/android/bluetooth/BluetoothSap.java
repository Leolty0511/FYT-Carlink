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
public final class BluetoothSap implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_ERROR = -1;
    private static final String TAG = "BluetoothSap";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private final Context mContext;
    private volatile IBluetoothSap mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothSap(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothSap.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothSap.TAG);
                if (z2) {
                    synchronized (BluetoothSap.this.mConnection) {
                        try {
                            if (BluetoothSap.this.mService == null) {
                                BluetoothSap.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothSap.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothSap.this.mConnection) {
                    try {
                        BluetoothSap.this.mService = null;
                        BluetoothSap.this.mContext.unbindService(BluetoothSap.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothSap.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothSap.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                BluetoothSap.log("Proxy object connected");
                BluetoothSap.this.mService = IBluetoothSap.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothSap.this.mServiceListener != null) {
                    BluetoothSap.this.mServiceListener.onServiceConnected(10, BluetoothSap.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                BluetoothSap.log("Proxy object disconnected");
                BluetoothSap.this.mService = null;
                if (BluetoothSap.this.mServiceListener != null) {
                    BluetoothSap.this.mServiceListener.onServiceDisconnected(10);
                }
            }
        };
        Log.d(TAG, "Create BluetoothSap proxy object");
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
        log(m.g("connect(", bluetoothDevice, ")not supported for SAPS"));
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothSap.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return false;
            }
        }
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothSap.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth SAP Service with " + intent);
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
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return null;
        }
        try {
            return iBluetoothSap.getClient();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null || !isEnabled()) {
            if (iBluetoothSap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothSap.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        log(m.g("getConnectionState(", bluetoothDevice, ")"));
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothSap.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        log("getDevicesMatchingStates()");
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null || !isEnabled()) {
            if (iBluetoothSap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothSap.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothSap.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public int getState() {
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return -1;
        }
        try {
            return iBluetoothSap.getState();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return iBluetoothSap.isConnected(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        IBluetoothSap iBluetoothSap = this.mService;
        if (iBluetoothSap == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothSap == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothSap.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.o(TAG);
            return false;
        }
    }
}
