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
public final class BluetoothInputDevice implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_HANDSHAKE = "android.bluetooth.input.profile.action.HANDSHAKE";
    public static final String ACTION_IDLE_TIME_CHANGED = "android.bluetooth.input.profile.action.IDLE_TIME_CHANGED";
    public static final String ACTION_PROTOCOL_MODE_CHANGED = "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED";
    public static final String ACTION_REPORT = "android.bluetooth.input.profile.action.REPORT";
    public static final String ACTION_VIRTUAL_UNPLUG_STATUS = "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS";
    private static final boolean DBG = true;
    public static final String EXTRA_IDLE_TIME = "android.bluetooth.BluetoothInputDevice.extra.IDLE_TIME";
    public static final String EXTRA_PROTOCOL_MODE = "android.bluetooth.BluetoothInputDevice.extra.PROTOCOL_MODE";
    public static final String EXTRA_REPORT = "android.bluetooth.BluetoothInputDevice.extra.REPORT";
    public static final String EXTRA_REPORT_BUFFER_SIZE = "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE";
    public static final String EXTRA_REPORT_ID = "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID";
    public static final String EXTRA_REPORT_TYPE = "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE";
    public static final String EXTRA_STATUS = "android.bluetooth.BluetoothInputDevice.extra.STATUS";
    public static final String EXTRA_VIRTUAL_UNPLUG_STATUS = "android.bluetooth.BluetoothInputDevice.extra.VIRTUAL_UNPLUG_STATUS";
    public static final int INPUT_CONNECT_FAILED_ALREADY_CONNECTED = 5001;
    public static final int INPUT_CONNECT_FAILED_ATTEMPT_FAILED = 5002;
    public static final int INPUT_DISCONNECT_FAILED_NOT_CONNECTED = 5000;
    public static final int INPUT_OPERATION_GENERIC_FAILURE = 5003;
    public static final int INPUT_OPERATION_SUCCESS = 5004;
    public static final int PROTOCOL_BOOT_MODE = 1;
    public static final int PROTOCOL_REPORT_MODE = 0;
    public static final int PROTOCOL_UNSUPPORTED_MODE = 255;
    public static final byte REPORT_TYPE_FEATURE = 3;
    public static final byte REPORT_TYPE_INPUT = 1;
    public static final byte REPORT_TYPE_OUTPUT = 2;
    private static final String TAG = "BluetoothInputDevice";
    private static final boolean VDBG = false;
    public static final int VIRTUAL_UNPLUG_STATUS_FAIL = 1;
    public static final int VIRTUAL_UNPLUG_STATUS_SUCCESS = 0;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private volatile IBluetoothInputDevice mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothInputDevice(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothInputDevice.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothInputDevice.TAG);
                if (z2) {
                    synchronized (BluetoothInputDevice.this.mConnection) {
                        try {
                            if (BluetoothInputDevice.this.mService == null) {
                                BluetoothInputDevice.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothInputDevice.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothInputDevice.this.mConnection) {
                    try {
                        BluetoothInputDevice.this.mService = null;
                        BluetoothInputDevice.this.mContext.unbindService(BluetoothInputDevice.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothInputDevice.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothInputDevice.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothInputDevice.TAG, "Proxy object connected");
                BluetoothInputDevice.this.mService = IBluetoothInputDevice.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothInputDevice.this.mServiceListener != null) {
                    BluetoothInputDevice.this.mServiceListener.onServiceConnected(4, BluetoothInputDevice.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothInputDevice.TAG, "Proxy object disconnected");
                BluetoothInputDevice.this.mService = null;
                if (BluetoothInputDevice.this.mServiceListener != null) {
                    BluetoothInputDevice.this.mServiceListener.onServiceDisconnected(4);
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

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private static boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice != null && BluetoothAdapter.checkBluetoothAddress(bluetoothDevice.getAddress());
    }

    private static void log(String str) {
        Log.d(TAG, str);
    }

    public void close() {
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (Exception e2) {
                Log.e(TAG, "", e2);
            }
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
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log(m.g("connect(", bluetoothDevice, ")"));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.connect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothInputDevice.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth HID Service with " + intent);
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice == null || !isEnabled()) {
            if (iBluetoothInputDevice == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothInputDevice.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return 0;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice == null || !isEnabled()) {
            if (iBluetoothInputDevice == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothInputDevice.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public boolean getIdleTime(BluetoothDevice bluetoothDevice) {
        log(m.g("getIdletime(", bluetoothDevice, ")"));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.getIdleTime(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return 0;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean getProtocolMode(BluetoothDevice bluetoothDevice) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.getProtocolMode(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean getReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, int i2) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.getReport(bluetoothDevice, b2, b3, i2);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean sendData(BluetoothDevice bluetoothDevice, String str) {
        log("sendData(" + bluetoothDevice + "), report=" + str);
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.sendData(bluetoothDevice, str);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean setIdleTime(BluetoothDevice bluetoothDevice, byte b2) {
        log("setIdletime(" + bluetoothDevice + "), idleTime=" + ((int) b2));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.setIdleTime(bluetoothDevice, b2);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothInputDevice == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothInputDevice.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.w(new StringBuilder("Stack:"), TAG);
            return false;
        }
    }

    public boolean setProtocolMode(BluetoothDevice bluetoothDevice, int i2) {
        log(m.g("setProtocolMode(", bluetoothDevice, ")"));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.setProtocolMode(bluetoothDevice, i2);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean setReport(BluetoothDevice bluetoothDevice, byte b2, String str) {
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.setReport(bluetoothDevice, b2, str);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean virtualUnplug(BluetoothDevice bluetoothDevice) {
        log(m.g("virtualUnplug(", bluetoothDevice, ")"));
        IBluetoothInputDevice iBluetoothInputDevice = this.mService;
        if (iBluetoothInputDevice != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothInputDevice.virtualUnplug(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothInputDevice == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }
}
