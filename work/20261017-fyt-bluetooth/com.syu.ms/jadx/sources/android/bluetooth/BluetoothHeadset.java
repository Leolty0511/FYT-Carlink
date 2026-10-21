package android.bluetooth;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ProxyProperties;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHeadset implements BluetoothProfile {
    public static final String ACTION_AUDIO_STATE_CHANGED = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_VENDOR_SPECIFIC_HEADSET_EVENT = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT";
    public static final int AT_CMD_TYPE_ACTION = 4;
    public static final int AT_CMD_TYPE_BASIC = 3;
    public static final int AT_CMD_TYPE_READ = 0;
    public static final int AT_CMD_TYPE_SET = 2;
    public static final int AT_CMD_TYPE_TEST = 1;
    private static final boolean DBG = true;
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE";
    public static final int STATE_AUDIO_CONNECTED = 12;
    public static final int STATE_AUDIO_CONNECTING = 11;
    public static final int STATE_AUDIO_DISCONNECTED = 10;
    private static final String TAG = "BluetoothHeadset";
    private static final boolean VDBG = false;
    public static final String VENDOR_RESULT_CODE_COMMAND_ANDROID = "+ANDROID";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY = "android.bluetooth.headset.intent.category.companyid";
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private IBluetoothHeadset mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothHeadset(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothHeadset.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                Log.d(BluetoothHeadset.TAG, "onBluetoothStateChange: up=" + z2);
                if (z2) {
                    synchronized (BluetoothHeadset.this.mConnection) {
                        try {
                            if (BluetoothHeadset.this.mService == null) {
                                BluetoothHeadset.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothHeadset.TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothHeadset.this.mConnection) {
                    try {
                        BluetoothHeadset.this.mService = null;
                        BluetoothHeadset.this.mContext.unbindService(BluetoothHeadset.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothHeadset.TAG, ProxyProperties.LOCAL_EXCL_LIST, e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothHeadset.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothHeadset.TAG, "Proxy object connected");
                BluetoothHeadset.this.mService = IBluetoothHeadset.Stub.asInterface(iBinder);
                if (BluetoothHeadset.this.mServiceListener != null) {
                    BluetoothHeadset.this.mServiceListener.onServiceConnected(1, BluetoothHeadset.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothHeadset.TAG, "Proxy object disconnected");
                BluetoothHeadset.this.mService = null;
                if (BluetoothHeadset.this.mServiceListener != null) {
                    BluetoothHeadset.this.mServiceListener.onServiceDisconnected(1);
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

    public static boolean isBluetoothVoiceDialingEnabled(Context context) {
        return context.getResources().getBoolean(17891380);
    }

    private boolean isDisabled() {
        return this.mAdapter.getState() == 10;
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

    public boolean acceptIncomingConnect(BluetoothDevice bluetoothDevice) {
        log("acceptIncomingConnect");
        if (this.mService == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return this.mService.acceptIncomingConnect(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void clccResponse(int i2, int i3, int i4, int i5, boolean z2, String str, int i6) {
        if (this.mService == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
        } else {
            try {
                this.mService.clccResponse(i2, i3, i4, i5, z2, str, i6);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        }
    }

    public void close() {
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
        this.mServiceListener = null;
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log("connect(" + bluetoothDevice + ")");
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.connect(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (this.mService == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean connectAudio() {
        if (this.mService == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return this.mService.connectAudio();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log("disconnect(" + bluetoothDevice + ")");
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (this.mService == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnectAudio() {
        if (this.mService == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return this.mService.disconnectAudio();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothHeadset.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindService(intent, this.mConnection, 0)) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth Headset Service with " + intent);
        return false;
    }

    public int getAudioState(BluetoothDevice bluetoothDevice) {
        if (this.mService == null || isDisabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return 10;
        }
        try {
            return this.mService.getAudioState(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return 10;
        }
    }

    public int getBatteryUsageHint(BluetoothDevice bluetoothDevice) {
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.getBatteryUsageHint(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return -1;
        }
        Log.w(TAG, "Proxy not attached to service");
        return -1;
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
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (this.mService == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
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
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (this.mService == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean isAudioConnected(BluetoothDevice bluetoothDevice) {
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.isAudioConnected(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public boolean isAudioOn() {
        if (this.mService != null && isEnabled()) {
            try {
                return this.mService.isAudioOn();
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public void phoneStateChanged(int i2, int i3, int i4, String str, int i5) {
        if (this.mService == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
        } else {
            try {
                this.mService.phoneStateChanged(i2, i3, i4, str, i5);
            } catch (RemoteException e2) {
                Log.e(TAG, e2.toString());
            }
        }
    }

    public boolean rejectIncomingConnect(BluetoothDevice bluetoothDevice) {
        log("rejectIncomingConnect");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return iBluetoothHeadset.rejectIncomingConnect(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean sendVendorSpecificResultCode(BluetoothDevice bluetoothDevice, String str, String str2) {
        log("sendVendorSpecificResultCode()");
        if (str == null) {
            throw new IllegalArgumentException("command is null");
        }
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.sendVendorSpecificResultCode(bluetoothDevice, str, str2);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
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
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean startScoUsingVirtualVoiceCall(BluetoothDevice bluetoothDevice) {
        log("startScoUsingVirtualVoiceCall()");
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return this.mService.startScoUsingVirtualVoiceCall(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean startVoiceRecognition(BluetoothDevice bluetoothDevice) {
        log("startVoiceRecognition()");
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.startVoiceRecognition(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public boolean stopScoUsingVirtualVoiceCall(BluetoothDevice bluetoothDevice) {
        log("stopScoUsingVirtualVoiceCall()");
        if (this.mService == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
            return false;
        }
        try {
            return this.mService.stopScoUsingVirtualVoiceCall(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean stopVoiceRecognition(BluetoothDevice bluetoothDevice) {
        log("stopVoiceRecognition()");
        if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return this.mService.stopVoiceRecognition(bluetoothDevice);
            } catch (RemoteException unused) {
                Log.e(TAG, Log.getStackTraceString(new Throwable()));
            }
        }
        if (this.mService != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }
}
