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
import com.android.ims.ImsConferenceState;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothA2dpSink implements BluetoothProfile {
    public static final String ACTION_AUDIO_CONFIG_CHANGED = "android.bluetooth.a2dpsink.profile.action.AUDIO_CONFIG_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dpsink.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYING_STATE_CHANGED = "android.bluetooth.a2dpsink.profile.action.PLAYING_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final String EXTRA_AUDIO_CONFIG = "android.bluetooth.a2dpsink.profile.extra.AUDIO_CONFIG";
    public static final int STATE_NOT_PLAYING = 11;
    public static final int STATE_PLAYING = 10;
    private static final String TAG = "BluetoothA2dpSink";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;
    private volatile IBluetoothA2dpSink mService;
    private BluetoothProfile.ServiceListener mServiceListener;

    public BluetoothA2dpSink(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothA2dpSink.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothA2dpSink.TAG);
                if (z2) {
                    synchronized (BluetoothA2dpSink.this.mConnection) {
                        try {
                            if (BluetoothA2dpSink.this.mService == null) {
                                BluetoothA2dpSink.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothA2dpSink.TAG, "", e2);
                        }
                    }
                    return;
                }
                synchronized (BluetoothA2dpSink.this.mConnection) {
                    try {
                        BluetoothA2dpSink.this.mService = null;
                        BluetoothA2dpSink.this.mContext.unbindService(BluetoothA2dpSink.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothA2dpSink.TAG, "", e3);
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothA2dpSink.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothA2dpSink.TAG, "Proxy object connected");
                BluetoothA2dpSink.this.mService = IBluetoothA2dpSink.Stub.asInterface(Binder.allowBlocking(iBinder));
                if (BluetoothA2dpSink.this.mServiceListener != null) {
                    BluetoothA2dpSink.this.mServiceListener.onServiceConnected(11, BluetoothA2dpSink.this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothA2dpSink.TAG, "Proxy object disconnected");
                BluetoothA2dpSink.this.mService = null;
                if (BluetoothA2dpSink.this.mServiceListener != null) {
                    BluetoothA2dpSink.this.mServiceListener.onServiceDisconnected(11);
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

    public static String stateToString(int i2) {
        if (i2 == 0) {
            return ImsConferenceState.STATUS_DISCONNECTED;
        }
        if (i2 == 1) {
            return "connecting";
        }
        if (i2 == 2) {
            return "connected";
        }
        if (i2 == 3) {
            return ImsConferenceState.STATUS_DISCONNECTING;
        }
        if (i2 != 10) {
            return i2 != 11 ? c.e("<unknown state ", i2, ">") : "not playing";
        }
        return "playing";
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

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log(m.g("connect(", bluetoothDevice, ")"));
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.connect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.disconnect(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothA2dpSink.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth A2DP Service with " + intent);
        return false;
    }

    public void finalize() {
        close();
    }

    public BluetoothAudioConfig getAudioConfig(BluetoothDevice bluetoothDevice) {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.getAudioConfig(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return null;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return null;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink == null || !isEnabled()) {
            if (iBluetoothA2dpSink == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothA2dpSink.getConnectedDevices();
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.getConnectionState(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return 0;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink == null || !isEnabled()) {
            if (iBluetoothA2dpSink == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return new ArrayList();
        }
        try {
            return iBluetoothA2dpSink.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return new ArrayList();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.getPriority(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return 0;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean isA2dpPlaying(BluetoothDevice bluetoothDevice) {
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink != null && isEnabled() && isValidDevice(bluetoothDevice)) {
            try {
                return iBluetoothA2dpSink.isA2dpPlaying(bluetoothDevice);
            } catch (RemoteException unused) {
                m.w(new StringBuilder("Stack:"), TAG);
                return false;
            }
        }
        if (iBluetoothA2dpSink == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        IBluetoothA2dpSink iBluetoothA2dpSink = this.mService;
        if (iBluetoothA2dpSink == null || !isEnabled() || !isValidDevice(bluetoothDevice)) {
            if (iBluetoothA2dpSink == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        }
        if (i2 != 0 && i2 != 100) {
            return false;
        }
        try {
            return iBluetoothA2dpSink.setPriority(bluetoothDevice, i2);
        } catch (RemoteException unused) {
            m.w(new StringBuilder("Stack:"), TAG);
            return false;
        }
    }

    public int setVolume(float f2) {
        if (this.mService == null || !isEnabled()) {
            if (this.mService == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return -1;
        }
        try {
            return this.mService.setVolume(f2);
        } catch (RemoteException unused) {
            m.w(new StringBuilder("Stack:"), TAG);
            return -1;
        }
    }
}
