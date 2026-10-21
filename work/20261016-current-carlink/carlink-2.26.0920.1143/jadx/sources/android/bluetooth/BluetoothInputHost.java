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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothInputHost implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.inputhost.profile.action.CONNECTION_STATE_CHANGED";
    public static final byte ERROR_RSP_INVALID_PARAM = 4;
    public static final byte ERROR_RSP_INVALID_RPT_ID = 2;
    public static final byte ERROR_RSP_NOT_READY = 1;
    public static final byte ERROR_RSP_SUCCESS = 0;
    public static final byte ERROR_RSP_UNKNOWN = 14;
    public static final byte ERROR_RSP_UNSUPPORTED_REQ = 3;
    public static final byte PROTOCOL_BOOT_MODE = 0;
    public static final byte PROTOCOL_REPORT_MODE = 1;
    public static final byte REPORT_TYPE_FEATURE = 3;
    public static final byte REPORT_TYPE_INPUT = 1;
    public static final byte REPORT_TYPE_OUTPUT = 2;
    public static final byte SUBCLASS1_COMBO = -64;
    public static final byte SUBCLASS1_KEYBOARD = 64;
    public static final byte SUBCLASS1_MOUSE = -128;
    public static final byte SUBCLASS1_NONE = 0;
    public static final byte SUBCLASS2_CARD_READER = 6;
    public static final byte SUBCLASS2_DIGITIZER_TABLED = 5;
    public static final byte SUBCLASS2_GAMEPAD = 2;
    public static final byte SUBCLASS2_JOYSTICK = 1;
    public static final byte SUBCLASS2_REMOTE_CONTROL = 3;
    public static final byte SUBCLASS2_SENSING_DEVICE = 4;
    public static final byte SUBCLASS2_UNCATEGORIZED = 0;
    private static final String TAG = "BluetoothInputHost";
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private volatile IBluetoothInputHost mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public static class BluetoothHidDeviceCallbackWrapper extends IBluetoothHidDeviceCallback.Stub {
        private BluetoothHidDeviceCallback mCallback;

        public BluetoothHidDeviceCallbackWrapper(BluetoothHidDeviceCallback bluetoothHidDeviceCallback) {
            this.mCallback = bluetoothHidDeviceCallback;
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onAppStatusChanged(BluetoothDevice bluetoothDevice, BluetoothHidDeviceAppConfiguration bluetoothHidDeviceAppConfiguration, boolean z2) {
            this.mCallback.onAppStatusChanged(bluetoothDevice, bluetoothHidDeviceAppConfiguration, z2);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onConnectionStateChanged(BluetoothDevice bluetoothDevice, int i2) {
            this.mCallback.onConnectionStateChanged(bluetoothDevice, i2);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onGetReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, int i2) {
            this.mCallback.onGetReport(bluetoothDevice, b2, b3, i2);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onIntrData(BluetoothDevice bluetoothDevice, byte b2, byte[] bArr) {
            this.mCallback.onIntrData(bluetoothDevice, b2, bArr);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetProtocol(BluetoothDevice bluetoothDevice, byte b2) {
            this.mCallback.onSetProtocol(bluetoothDevice, b2);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, byte[] bArr) {
            this.mCallback.onSetReport(bluetoothDevice, b2, b3, bArr);
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onVirtualCableUnplug(BluetoothDevice bluetoothDevice) {
            this.mCallback.onVirtualCableUnplug(bluetoothDevice);
        }
    }

    public BluetoothInputHost(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothInputHost.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothInputHost.TAG);
                synchronized (BluetoothInputHost.this.mConnection) {
                    if (z2) {
                        try {
                            if (BluetoothInputHost.this.mService == null) {
                                Log.d(BluetoothInputHost.TAG, "Binding HID Device service...");
                                BluetoothInputHost.this.doBind();
                            }
                        } catch (IllegalStateException e2) {
                            Log.e(BluetoothInputHost.TAG, "onBluetoothStateChange: could not bind to HID Dev service: ", e2);
                        } catch (SecurityException e3) {
                            Log.e(BluetoothInputHost.TAG, "onBluetoothStateChange: could not bind to HID Dev service: ", e3);
                        }
                    } else {
                        Log.d(BluetoothInputHost.TAG, "Unbinding service...");
                        if (BluetoothInputHost.this.mService != null) {
                            BluetoothInputHost.this.mService = null;
                            try {
                                BluetoothInputHost.this.mContext.unbindService(BluetoothInputHost.this.mConnection);
                            } catch (IllegalArgumentException e4) {
                                Log.e(BluetoothInputHost.TAG, "onBluetoothStateChange: could not unbind service:", e4);
                            }
                        }
                    }
                    throw th;
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothInputHost.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothInputHost.TAG, "onServiceConnected()");
                BluetoothInputHost.this.mService = IBluetoothInputHost.Stub.asInterface(iBinder);
                if (BluetoothInputHost.this.mServiceListener != null) {
                    BluetoothInputHost.this.mServiceListener.onServiceConnected(19, BluetoothInputHost.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothInputHost.TAG, "onServiceDisconnected()");
                BluetoothInputHost.this.mService = null;
                if (BluetoothInputHost.this.mServiceListener != null) {
                    BluetoothInputHost.this.mServiceListener.onServiceDisconnected(19);
                }
            }
        };
        Log.v(TAG, "BluetoothInputHost");
        this.mContext = context;
        this.mServiceListener = serviceListener;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        IBluetoothManager bluetoothManager = defaultAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.registerStateChangeCallback(stub);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
        doBind();
    }

    public void close() {
        Log.v(TAG, "close()");
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
        synchronized (this.mConnection) {
            if (this.mService != null) {
                this.mService = null;
                try {
                    this.mContext.unbindService(this.mConnection);
                } catch (IllegalArgumentException e3) {
                    Log.e(TAG, "close: could not unbind HID Dev service: ", e3);
                }
            }
        }
        this.mServiceListener = null;
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        String str = TAG;
        Log.v(str, "connect(): device=" + bluetoothDevice);
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.connect(bluetoothDevice);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        String str = TAG;
        Log.v(str, "disconnect(): device=" + bluetoothDevice);
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.disconnect(bluetoothDevice);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothInputHost.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            Log.d(TAG, "Bound to HID Device Service");
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth HID Device Service with " + intent);
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        String str = TAG;
        Log.v(str, "getConnectedDevices()");
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.getConnectedDevices();
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        String str = TAG;
        Log.v(str, "getConnectionState(): device=" + bluetoothDevice);
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost == null) {
            Log.w(str, "Proxy not attached to service");
            return 0;
        }
        try {
            return iBluetoothInputHost.getConnectionState(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        String str = TAG;
        Log.v(str, "getDevicesMatchingConnectionStates(): states=" + Arrays.toString(iArr));
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.getDevicesMatchingConnectionStates(iArr);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    public boolean registerApp(BluetoothHidDeviceAppSdpSettings bluetoothHidDeviceAppSdpSettings, BluetoothHidDeviceAppQosSettings bluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings bluetoothHidDeviceAppQosSettings2, BluetoothHidDeviceCallback bluetoothHidDeviceCallback) {
        String str = TAG;
        Log.v(str, "registerApp(): sdp=" + bluetoothHidDeviceAppSdpSettings + " inQos=" + bluetoothHidDeviceAppQosSettings + " outQos=" + bluetoothHidDeviceAppQosSettings2 + " callback=" + bluetoothHidDeviceCallback);
        if (bluetoothHidDeviceAppSdpSettings == null || bluetoothHidDeviceCallback == null) {
            return false;
        }
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost == null) {
            Log.w(str, "Proxy not attached to service");
            return false;
        }
        try {
            return iBluetoothInputHost.registerApp(new BluetoothHidDeviceAppConfiguration(), bluetoothHidDeviceAppSdpSettings, bluetoothHidDeviceAppQosSettings, bluetoothHidDeviceAppQosSettings2, new BluetoothHidDeviceCallbackWrapper(bluetoothHidDeviceCallback));
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean replyReport(BluetoothDevice bluetoothDevice, byte b2, byte b3, byte[] bArr) {
        String str = TAG;
        Log.v(str, "replyReport(): device=" + bluetoothDevice + " type=" + ((int) b2) + " id=" + ((int) b3));
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.replyReport(bluetoothDevice, b2, b3, bArr);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }

    public boolean reportError(BluetoothDevice bluetoothDevice, byte b2) {
        String str = TAG;
        Log.v(str, "reportError(): device=" + bluetoothDevice + " error=" + ((int) b2));
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.reportError(bluetoothDevice, b2);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }

    public boolean sendReport(BluetoothDevice bluetoothDevice, int i2, byte[] bArr) {
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.sendReport(bluetoothDevice, i2, bArr);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean unplug(BluetoothDevice bluetoothDevice) {
        String str = TAG;
        Log.v(str, "unplug(): device=" + bluetoothDevice);
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.unplug(bluetoothDevice);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }

    public boolean unregisterApp(BluetoothHidDeviceAppConfiguration bluetoothHidDeviceAppConfiguration) {
        String str = TAG;
        Log.v(str, "unregisterApp()");
        IBluetoothInputHost iBluetoothInputHost = this.mService;
        if (iBluetoothInputHost != null) {
            try {
                return iBluetoothInputHost.unregisterApp(bluetoothHidDeviceAppConfiguration);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        } else {
            Log.w(str, "Proxy not attached to service");
        }
        return false;
    }
}
