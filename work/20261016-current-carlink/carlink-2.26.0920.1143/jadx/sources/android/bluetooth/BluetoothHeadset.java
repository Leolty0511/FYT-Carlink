package android.bluetooth;

import android.accessibilityservice.c;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothHeadset implements BluetoothProfile {
    public static final String ACTION_AUDIO_STATE_CHANGED = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_HF_INDICATORS_VALUE_CHANGED = "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED";
    public static final String ACTION_VENDOR_SPECIFIC_HEADSET_EVENT = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT";
    public static final int AT_CMD_TYPE_ACTION = 4;
    public static final int AT_CMD_TYPE_BASIC = 3;
    public static final int AT_CMD_TYPE_READ = 0;
    public static final int AT_CMD_TYPE_SET = 2;
    public static final int AT_CMD_TYPE_TEST = 1;
    private static final boolean DBG = true;
    public static final String EXTRA_HF_INDICATORS_IND_ID = "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID";
    public static final String EXTRA_HF_INDICATORS_IND_VALUE = "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE";
    private static final int MESSAGE_HEADSET_SERVICE_CONNECTED = 100;
    private static final int MESSAGE_HEADSET_SERVICE_DISCONNECTED = 101;
    public static final int STATE_AUDIO_CONNECTED = 12;
    public static final int STATE_AUDIO_CONNECTING = 11;
    public static final int STATE_AUDIO_DISCONNECTED = 10;
    private static final String TAG = "BluetoothHeadset";
    private static final boolean VDBG = false;
    public static final String VENDOR_RESULT_CODE_COMMAND_ANDROID = "+ANDROID";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY = "android.bluetooth.headset.intent.category.companyid";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV = "+IPHONEACCEV";
    public static final int VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV_BATTERY_LEVEL = 1;
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XAPL = "+XAPL";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT = "+XEVENT";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT_BATTERY_LEVEL = "BATTERY";
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final IBluetoothProfileServiceConnection mConnection;
    private Context mContext;
    private final Handler mHandler;
    private volatile IBluetoothHeadset mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothHeadset(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothHeadset.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothHeadset.TAG);
                if (!z2) {
                    BluetoothHeadset.this.doUnbind();
                    return;
                }
                synchronized (BluetoothHeadset.this.mConnection) {
                    try {
                        if (BluetoothHeadset.this.mService == null) {
                            BluetoothHeadset.this.doBind();
                        }
                    } catch (Exception e2) {
                        Log.e(BluetoothHeadset.TAG, "", e2);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new IBluetoothProfileServiceConnection.Stub() { // from class: android.bluetooth.BluetoothHeadset.2
            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothHeadset.TAG, "Proxy object connected");
                BluetoothHeadset.this.mService = IBluetoothHeadset.Stub.asInterface(Binder.allowBlocking(iBinder));
                BluetoothHeadset.this.mHandler.sendMessage(BluetoothHeadset.this.mHandler.obtainMessage(100));
            }

            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothHeadset.TAG, "Proxy object disconnected");
                BluetoothHeadset.this.mService = null;
                BluetoothHeadset.this.mHandler.sendMessage(BluetoothHeadset.this.mHandler.obtainMessage(101));
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: android.bluetooth.BluetoothHeadset.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 100) {
                    if (BluetoothHeadset.this.mServiceListener != null) {
                        BluetoothHeadset.this.mServiceListener.onServiceConnected(1, BluetoothHeadset.this);
                    }
                } else if (i2 == 101 && BluetoothHeadset.this.mServiceListener != null) {
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
                Log.e(TAG, "", e2);
            }
        }
        doBind();
    }

    public static boolean isBluetoothVoiceDialingEnabled(Context context) {
        return context.getResources().getBoolean(R.bool.config_bluetooth_sco_off_call);
    }

    private boolean isDisabled() {
        return this.mAdapter.getState() == 10;
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    public static boolean isInbandRingingSupported(Context context) {
        return context.getResources().getBoolean(R.bool.config_bluetooth_hfp_inband_ringing_support);
    }

    private static boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice != null && BluetoothAdapter.checkBluetoothAddress(bluetoothDevice.getAddress());
    }

    private static void log(String str) {
        Log.d(TAG, str);
    }

    public boolean acceptIncomingConnect(BluetoothDevice bluetoothDevice) {
        log("acceptIncomingConnect");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.acceptIncomingConnect(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void bindResponse(int i2, boolean z2) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return;
        }
        try {
            iBluetoothHeadset.bindResponse(i2, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void clccResponse(int i2, int i3, int i4, int i5, boolean z2, String str, int i6) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return;
        }
        try {
            iBluetoothHeadset.clccResponse(i2, i3, i4, i5, z2, str, i6);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
        }
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
        this.mServiceListener = null;
        doUnbind();
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log(m.g("connect(", bluetoothDevice, ")"));
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.connect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return false;
            }
        }
        if (iBluetoothHeadset == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean connectAudio() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.connectAudio();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean disableWBS() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.disableWBS();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return false;
            }
        }
        if (iBluetoothHeadset == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnectAudio() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.disconnectAudio();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean doBind() {
        try {
            return this.mAdapter.getBluetoothManager().bindBluetoothProfileService(1, this.mConnection);
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to bind HeadsetService", e2);
            return false;
        }
    }

    public void doUnbind() {
        synchronized (this.mConnection) {
            try {
                this.mAdapter.getBluetoothManager().unbindBluetoothProfileService(1, this.mConnection);
            } catch (RemoteException e2) {
                Log.e(TAG, "Unable to unbind HeadsetService", e2);
            }
        }
    }

    public boolean enableWBS() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.enableWBS();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean getAudioRouteAllowed() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.getAudioRouteAllowed();
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public int getAudioState(BluetoothDevice bluetoothDevice) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || isDisabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return 10;
        }
        try {
            return iBluetoothHeadset.getAudioState(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return 10;
        }
    }

    public int getBatteryUsageHint(BluetoothDevice bluetoothDevice) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.getBatteryUsageHint(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return -1;
        }
        Log.w(TAG, "Proxy not attached to service");
        return -1;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            if (iBluetoothHeadset == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothHeadset.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothHeadset == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            if (iBluetoothHeadset == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothHeadset.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
                return 0;
            }
        }
        if (iBluetoothHeadset == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean isAudioConnected(BluetoothDevice bluetoothDevice) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.isAudioConnected(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public boolean isAudioOn() {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled()) {
            try {
                return iBluetoothHeadset.isAudioOn();
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public void phoneStateChanged(int i2, int i3, int i4, String str, int i5) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return;
        }
        try {
            iBluetoothHeadset.phoneStateChanged(i2, i3, i4, str, i5);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public boolean rejectIncomingConnect(BluetoothDevice bluetoothDevice) {
        log("rejectIncomingConnect");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null) {
            m.B(TAG, "Proxy not attached to service", TAG);
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
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.sendVendorSpecificResultCode(bluetoothDevice, str, str2);
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public void setAudioRouteAllowed(boolean z2) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return;
        }
        try {
            iBluetoothHeadset.setAudioRouteAllowed(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void setForceScoAudio(boolean z2) {
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled()) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return;
        }
        try {
            iBluetoothHeadset.setForceScoAudio(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothHeadset == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothHeadset.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.o(TAG);
            return false;
        }
    }

    public boolean startScoUsingVirtualVoiceCall(BluetoothDevice bluetoothDevice) {
        log("startScoUsingVirtualVoiceCall()");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.startScoUsingVirtualVoiceCall(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean startVoiceRecognition(BluetoothDevice bluetoothDevice) {
        log("startVoiceRecognition()");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.startVoiceRecognition(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }

    public boolean stopScoUsingVirtualVoiceCall(BluetoothDevice bluetoothDevice) {
        log("stopScoUsingVirtualVoiceCall()");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            m.B(TAG, "Proxy not attached to service", TAG);
            return false;
        }
        try {
            return iBluetoothHeadset.stopScoUsingVirtualVoiceCall(bluetoothDevice);
        } catch (RemoteException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean stopVoiceRecognition(BluetoothDevice bluetoothDevice) {
        log("stopVoiceRecognition()");
        IBluetoothHeadset iBluetoothHeadset = this.mService;
        if (iBluetoothHeadset != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothHeadset.stopVoiceRecognition(bluetoothDevice);
            } catch (RemoteException unused) {
                m.o(TAG);
            }
        }
        if (iBluetoothHeadset != null) {
            return false;
        }
        Log.w(TAG, "Proxy not attached to service");
        return false;
    }
}
