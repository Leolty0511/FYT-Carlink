package android.bluetooth;

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
public final class BluetoothPbapClient implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = false;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_ERROR = -1;
    private static final String TAG = "BluetoothPbapClient";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private final Context mContext;
    private volatile IBluetoothPbapClient mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothPbapClient(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothPbapClient.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                if (z2) {
                    synchronized (BluetoothPbapClient.this.mConnection) {
                        try {
                            if (BluetoothPbapClient.this.mService == null) {
                                BluetoothPbapClient.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothPbapClient.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothPbapClient.this.mConnection) {
                    try {
                        BluetoothPbapClient.this.mService = null;
                        BluetoothPbapClient.this.mContext.unbindService(BluetoothPbapClient.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothPbapClient.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothPbapClient.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                BluetoothPbapClient.this.mService = IBluetoothPbapClient.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothPbapClient.this.mServiceListener != null) {
                    BluetoothPbapClient.this.mServiceListener.onServiceConnected(17, BluetoothPbapClient.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                BluetoothPbapClient.this.mService = null;
                if (BluetoothPbapClient.this.mServiceListener != null) {
                    BluetoothPbapClient.this.mServiceListener.onServiceDisconnected(17);
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
                Log.e(TAG, "", e2);
            }
        }
        doBind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doBind() {
        Intent intent = new Intent(IBluetoothPbapClient.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth PBAP Client Service with " + intent);
        return false;
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

    private static void log(String str) {
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
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothPbapClient.connect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return false;
            }
        }
        if (iBluetoothPbapClient == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothPbapClient == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            iBluetoothPbapClient.disconnect(bluetoothDevice);
            return true;
        } catch (RemoteException unused) {
            m.o(TAG);
            return false;
        }
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient == null || !isEnabled()) {
            if (iBluetoothPbapClient == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothPbapClient.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothPbapClient.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothPbapClient == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient == null || !isEnabled()) {
            if (iBluetoothPbapClient == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothPbapClient.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothPbapClient.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothPbapClient == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        IBluetoothPbapClient iBluetoothPbapClient = this.mService;
        if (iBluetoothPbapClient == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothPbapClient == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothPbapClient.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.o(TAG);
            return false;
        }
    }
}
