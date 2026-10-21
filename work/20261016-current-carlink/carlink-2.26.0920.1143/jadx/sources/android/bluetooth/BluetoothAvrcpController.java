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
public final class BluetoothAvrcpController implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYER_SETTING = "android.bluetooth.avrcp-controller.profile.action.PLAYER_SETTING";
    public static final String ACTION_TRACK_EVENT = "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT";
    private static final boolean DBG = false;
    public static final String EXTRA_METADATA = "android.bluetooth.avrcp-controller.profile.extra.METADATA";
    public static final String EXTRA_PLAYBACK = "android.bluetooth.avrcp-controller.profile.extra.PLAYBACK";
    public static final String EXTRA_PLAYER_SETTING = "android.bluetooth.avrcp-controller.profile.extra.PLAYER_SETTING";
    private static final String TAG = "BluetoothAvrcpController";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private volatile IBluetoothAvrcpController mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothAvrcpController(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothAvrcpController.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                if (z2) {
                    synchronized (BluetoothAvrcpController.this.mConnection) {
                        try {
                            if (BluetoothAvrcpController.this.mService == null) {
                                BluetoothAvrcpController.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothAvrcpController.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothAvrcpController.this.mConnection) {
                    try {
                        BluetoothAvrcpController.this.mService = null;
                        BluetoothAvrcpController.this.mContext.unbindService(BluetoothAvrcpController.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothAvrcpController.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothAvrcpController.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                BluetoothAvrcpController.this.mService = IBluetoothAvrcpController.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothAvrcpController.this.mServiceListener != null) {
                    BluetoothAvrcpController.this.mServiceListener.onServiceConnected(12, BluetoothAvrcpController.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                BluetoothAvrcpController.this.mService = null;
                if (BluetoothAvrcpController.this.mServiceListener != null) {
                    BluetoothAvrcpController.this.mServiceListener.onServiceDisconnected(12);
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
        this.mServiceListener = null;
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
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothAvrcpController.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth AVRCP Controller Service with " + intent);
        return false;
    }

    public void finalize() {
        close();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController == null || !isEnabled()) {
            if (iBluetoothAvrcpController == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothAvrcpController.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothAvrcpController.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return 0;
            }
        }
        if (iBluetoothAvrcpController == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController == null || !isEnabled()) {
            if (iBluetoothAvrcpController == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothAvrcpController.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public void getElementAttrCmd() {
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
        } else {
            try {
                this.mService.getElementAttrCmd();
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in sendPassThroughCmd()", e2);
            }
        }
    }

    public BluetoothAvrcpPlayerSettings getPlayerSettings(BluetoothDevice bluetoothDevice) {
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController == null || !isEnabled()) {
            return null;
        }
        try {
            return iBluetoothAvrcpController.getPlayerSettings(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to BT service in getMetadata() " + e2);
            return null;
        }
    }

    public void sendGroupNavigationCmd(BluetoothDevice bluetoothDevice, int i2, int i3) {
        StringBuilder sb = new StringBuilder("sendGroupNavigationCmd dev = ");
        sb.append(bluetoothDevice);
        sb.append(" key ");
        sb.append(i2);
        sb.append(" State = ");
        m.t(sb, i3, TAG);
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController == null || !isEnabled()) {
            if (iBluetoothAvrcpController == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
        } else {
            try {
                iBluetoothAvrcpController.sendGroupNavigationCmd(bluetoothDevice, i2, i3);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in sendGroupNavigationCmd()", e2);
            }
        }
    }

    public void sendPassThroughCmd(BluetoothDevice bluetoothDevice, int i2, int i3) {
        StringBuilder sb = new StringBuilder("sendPassThroughCmd dev = ");
        sb.append(bluetoothDevice);
        sb.append(" key ");
        sb.append(i2);
        sb.append(" State = ");
        m.t(sb, i3, TAG);
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
        } else {
            try {
                this.mService.sendPassThroughCmd(bluetoothDevice, i2, i3);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in sendPassThroughCmd()", e2);
            }
        }
    }

    public boolean setPlayerApplicationSetting(BluetoothAvrcpPlayerSettings bluetoothAvrcpPlayerSettings) {
        IBluetoothAvrcpController iBluetoothAvrcpController = this.mService;
        if (iBluetoothAvrcpController == null || !isEnabled()) {
            if (iBluetoothAvrcpController == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        try {
            return iBluetoothAvrcpController.setPlayerApplicationSetting(bluetoothAvrcpPlayerSettings);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to BT service in setPlayerApplicationSetting() " + e2);
            return false;
        }
    }
}
