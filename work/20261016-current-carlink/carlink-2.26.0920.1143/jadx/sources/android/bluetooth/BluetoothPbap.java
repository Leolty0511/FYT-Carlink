package android.bluetooth;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.a;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothPbap {
    private static final boolean DBG = true;
    public static final String PBAP_PREVIOUS_STATE = "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE";
    public static final String PBAP_STATE = "android.bluetooth.pbap.intent.PBAP_STATE";
    public static final String PBAP_STATE_CHANGED_ACTION = "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED";
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_ERROR = -1;
    private static final String TAG = "BluetoothPbap";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private final Context mContext;
    private volatile IBluetoothPbap mService;
    private ServiceListener mServiceListener;

    public interface ServiceListener {
        void onServiceConnected(BluetoothPbap bluetoothPbap);

        void onServiceDisconnected();
    }

    public BluetoothPbap(Context context, ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothPbap.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothPbap.TAG);
                if (z2) {
                    synchronized (BluetoothPbap.this.mConnection) {
                        try {
                            if (BluetoothPbap.this.mService == null) {
                                BluetoothPbap.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothPbap.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothPbap.this.mConnection) {
                    try {
                        BluetoothPbap.this.mService = null;
                        BluetoothPbap.this.mContext.unbindService(BluetoothPbap.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothPbap.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothPbap.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                BluetoothPbap.log("Proxy object connected");
                BluetoothPbap.this.mService = IBluetoothPbap.Stub.asInterface(iBinder);
                if (BluetoothPbap.this.mServiceListener != null) {
                    BluetoothPbap.this.mServiceListener.onServiceConnected(BluetoothPbap.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                BluetoothPbap.log("Proxy object disconnected");
                BluetoothPbap.this.mService = null;
                if (BluetoothPbap.this.mServiceListener != null) {
                    BluetoothPbap.this.mServiceListener.onServiceDisconnected();
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

    public static boolean doesClassMatchSink(BluetoothClass bluetoothClass) {
        int deviceClass = bluetoothClass.getDeviceClass();
        return deviceClass == 256 || deviceClass == 260 || deviceClass == 264 || deviceClass == 268;
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

    public boolean disconnect() {
        log("disconnect()");
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            iBluetoothPbap.disconnect();
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothPbap.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth Pbap Service with " + intent);
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
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return null;
        }
        try {
            return iBluetoothPbap.getClient();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public int getState() {
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return -1;
        }
        try {
            return iBluetoothPbap.getState();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return iBluetoothPbap.isConnected(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }
}
