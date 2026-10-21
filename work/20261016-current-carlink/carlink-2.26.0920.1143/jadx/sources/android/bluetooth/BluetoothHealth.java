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
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHealth implements BluetoothProfile {
    public static final int APP_CONFIG_REGISTRATION_FAILURE = 1;
    public static final int APP_CONFIG_REGISTRATION_SUCCESS = 0;
    public static final int APP_CONFIG_UNREGISTRATION_FAILURE = 3;
    public static final int APP_CONFIG_UNREGISTRATION_SUCCESS = 2;
    public static final int CHANNEL_TYPE_ANY = 12;
    public static final int CHANNEL_TYPE_RELIABLE = 10;
    public static final int CHANNEL_TYPE_STREAMING = 11;
    private static final boolean DBG = true;
    public static final int HEALTH_OPERATION_ERROR = 6001;
    public static final int HEALTH_OPERATION_GENERIC_FAILURE = 6003;
    public static final int HEALTH_OPERATION_INVALID_ARGS = 6002;
    public static final int HEALTH_OPERATION_NOT_ALLOWED = 6005;
    public static final int HEALTH_OPERATION_NOT_FOUND = 6004;
    public static final int HEALTH_OPERATION_SUCCESS = 6000;
    public static final int SINK_ROLE = 2;
    public static final int SOURCE_ROLE = 1;
    public static final int STATE_CHANNEL_CONNECTED = 2;
    public static final int STATE_CHANNEL_CONNECTING = 1;
    public static final int STATE_CHANNEL_DISCONNECTED = 0;
    public static final int STATE_CHANNEL_DISCONNECTING = 3;
    private static final String TAG = "BluetoothHealth";
    private static final boolean VDBG = false;
    BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private volatile IBluetoothHealth mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public static class BluetoothHealthCallbackWrapper extends IBluetoothHealthCallback.Stub {
        private BluetoothHealthCallback mCallback;

        public BluetoothHealthCallbackWrapper(BluetoothHealthCallback bluetoothHealthCallback) {
            this.mCallback = bluetoothHealthCallback;
        }

        @Override // android.bluetooth.IBluetoothHealthCallback
        public void onHealthAppConfigurationStatusChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, int i2) {
            this.mCallback.onHealthAppConfigurationStatusChange(bluetoothHealthAppConfiguration, i2);
        }

        @Override // android.bluetooth.IBluetoothHealthCallback
        public void onHealthChannelStateChange(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, BluetoothDevice bluetoothDevice, int i2, int i3, ParcelFileDescriptor parcelFileDescriptor, int i4) {
            this.mCallback.onHealthChannelStateChange(bluetoothHealthAppConfiguration, bluetoothDevice, i2, i3, parcelFileDescriptor, i4);
        }
    }

    public BluetoothHealth(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothHealth.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothHealth.TAG);
                if (z2) {
                    synchronized (BluetoothHealth.this.mConnection) {
                        try {
                            if (BluetoothHealth.this.mService == null) {
                                BluetoothHealth.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothHealth.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothHealth.this.mConnection) {
                    try {
                        BluetoothHealth.this.mService = null;
                        BluetoothHealth.this.mContext.unbindService(BluetoothHealth.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothHealth.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothHealth.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothHealth.TAG, "Proxy object connected");
                BluetoothHealth.this.mService = IBluetoothHealth.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothHealth.this.mServiceListener != null) {
                    BluetoothHealth.this.mServiceListener.onServiceConnected(3, BluetoothHealth.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothHealth.TAG, "Proxy object disconnected");
                BluetoothHealth.this.mService = null;
                if (BluetoothHealth.this.mServiceListener != null) {
                    BluetoothHealth.this.mServiceListener.onServiceDisconnected(3);
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

    private boolean checkAppParam(String str, int i2, int i3, BluetoothHealthCallback bluetoothHealthCallback) {
        if (str == null || (!(i2 == 1 || i2 == 2) || (!(i3 == 10 || i3 == 11 || i3 == 12) || bluetoothHealthCallback == null))) {
            return false;
        }
        return (i2 == 1 && i3 == 12) ? false : true;
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

    public boolean connectChannelToSink(BluetoothDevice bluetoothDevice, BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, int i2) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || !isValidDevice(bluetoothDevice) || bluetoothHealthAppConfiguration == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHealth.connectChannelToSink(bluetoothDevice, bluetoothHealthAppConfiguration, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean connectChannelToSource(BluetoothDevice bluetoothDevice, BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || !isValidDevice(bluetoothDevice) || bluetoothHealthAppConfiguration == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHealth.connectChannelToSource(bluetoothDevice, bluetoothHealthAppConfiguration);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean disconnectChannel(BluetoothDevice bluetoothDevice, BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration, int i2) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || !isValidDevice(bluetoothDevice) || bluetoothHealthAppConfiguration == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHealth.disconnectChannel(bluetoothDevice, bluetoothHealthAppConfiguration, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothHealth.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth Health Service with " + intent);
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled()) {
            if (iBluetoothHealth == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothHealth.getConnectedHealthDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return 0;
        }
        try {
            return iBluetoothHealth.getHealthDeviceConnectionState(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled()) {
            if (iBluetoothHealth == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothHealth.getHealthDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public ParcelFileDescriptor getMainChannelFd(BluetoothDevice bluetoothDevice, BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || !isValidDevice(bluetoothDevice) || bluetoothHealthAppConfiguration == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return null;
        }
        try {
            return iBluetoothHealth.getMainChannelFd(bluetoothDevice, bluetoothHealthAppConfiguration);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public boolean registerAppConfiguration(String str, int i2, int i3, int i4, BluetoothHealthCallback bluetoothHealthCallback) {
        if (!isEnabled() || !checkAppParam(str, i3, i4, bluetoothHealthCallback)) {
            return false;
        }
        BluetoothHealthCallbackWrapper bluetoothHealthCallbackWrapper = new BluetoothHealthCallbackWrapper(bluetoothHealthCallback);
        BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration = new BluetoothHealthAppConfiguration(str, i2, i3, i4);
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHealth.registerAppConfiguration(bluetoothHealthAppConfiguration, bluetoothHealthCallbackWrapper);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean registerSinkAppConfiguration(String str, int i2, BluetoothHealthCallback bluetoothHealthCallback) {
        if (!isEnabled() || str == null) {
            return false;
        }
        return registerAppConfiguration(str, i2, 2, 12, bluetoothHealthCallback);
    }

    public boolean unregisterAppConfiguration(BluetoothHealthAppConfiguration bluetoothHealthAppConfiguration) {
        IBluetoothHealth iBluetoothHealth = this.mService;
        if (iBluetoothHealth == null || !isEnabled() || bluetoothHealthAppConfiguration == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
        } else {
            try {
                return iBluetoothHealth.unregisterAppConfiguration(bluetoothHealthAppConfiguration);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        }
        return false;
    }
}
