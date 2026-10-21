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
import android.os.ParcelUuid;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.android.ims.ImsConferenceState;
import com.android.internal.annotations.GuardedBy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothA2dp implements BluetoothProfile {
    public static final String ACTION_AVRCP_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.AVRCP_CONNECTION_STATE_CHANGED";
    public static final String ACTION_CODEC_CONFIG_CHANGED = "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYING_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final int OPTIONAL_CODECS_NOT_SUPPORTED = 0;
    public static final int OPTIONAL_CODECS_PREF_DISABLED = 0;
    public static final int OPTIONAL_CODECS_PREF_ENABLED = 1;
    public static final int OPTIONAL_CODECS_PREF_UNKNOWN = -1;
    public static final int OPTIONAL_CODECS_SUPPORTED = 1;
    public static final int OPTIONAL_CODECS_SUPPORT_UNKNOWN = -1;
    public static final int STATE_NOT_PLAYING = 11;
    public static final int STATE_PLAYING = 10;
    private static final String TAG = "BluetoothA2dp";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final ServiceConnection mConnection;
    private Context mContext;

    @GuardedBy("mServiceLock")
    private IBluetoothA2dp mService;
    private BluetoothProfile.ServiceListener mServiceListener;
    private final ReentrantReadWriteLock mServiceLock = new ReentrantReadWriteLock();

    public BluetoothA2dp(Context context, BluetoothProfile.ServiceListener serviceListener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothA2dp.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean z2) {
                c.z("onBluetoothStateChange: up=", z2, BluetoothA2dp.TAG);
                if (z2) {
                    try {
                        try {
                            BluetoothA2dp.this.mServiceLock.readLock().lock();
                            if (BluetoothA2dp.this.mService == null) {
                                BluetoothA2dp.this.doBind();
                            }
                        } catch (Exception e2) {
                            Log.e(BluetoothA2dp.TAG, "", e2);
                        }
                        return;
                    } finally {
                        BluetoothA2dp.this.mServiceLock.readLock().unlock();
                    }
                }
                try {
                    try {
                        BluetoothA2dp.this.mServiceLock.writeLock().lock();
                        BluetoothA2dp.this.mService = null;
                        BluetoothA2dp.this.mContext.unbindService(BluetoothA2dp.this.mConnection);
                    } catch (Exception e3) {
                        Log.e(BluetoothA2dp.TAG, "", e3);
                    }
                } finally {
                    BluetoothA2dp.this.mServiceLock.writeLock().unlock();
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothA2dp.2
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d(BluetoothA2dp.TAG, "Proxy object connected");
                try {
                    BluetoothA2dp.this.mServiceLock.writeLock().lock();
                    BluetoothA2dp.this.mService = IBluetoothA2dp.Stub.asInterface(Binder.allowBlocking(iBinder));
                    BluetoothA2dp.this.mServiceLock.writeLock().unlock();
                    if (BluetoothA2dp.this.mServiceListener != null) {
                        BluetoothA2dp.this.mServiceListener.onServiceConnected(2, BluetoothA2dp.this);
                    }
                } catch (Throwable th) {
                    BluetoothA2dp.this.mServiceLock.writeLock().unlock();
                    throw th;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(BluetoothA2dp.TAG, "Proxy object disconnected");
                try {
                    BluetoothA2dp.this.mServiceLock.writeLock().lock();
                    BluetoothA2dp.this.mService = null;
                    BluetoothA2dp.this.mServiceLock.writeLock().unlock();
                    if (BluetoothA2dp.this.mServiceListener != null) {
                        BluetoothA2dp.this.mServiceListener.onServiceDisconnected(2);
                    }
                } catch (Throwable th) {
                    BluetoothA2dp.this.mServiceLock.writeLock().unlock();
                    throw th;
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

    private void enableDisableOptionalCodecs(boolean z2) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    if (z2) {
                        this.mService.enableOptionalCodecs();
                    } else {
                        this.mService.disableOptionalCodecs();
                    }
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in enableDisableOptionalCodecs()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
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

    public void adjustAvrcpAbsoluteVolume(int i2) {
        Log.d(TAG, "adjustAvrcpAbsoluteVolume");
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    this.mService.adjustAvrcpAbsoluteVolume(i2);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in adjustAvrcpAbsoluteVolume()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
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
        try {
            try {
                this.mServiceLock.writeLock().lock();
                if (this.mService != null) {
                    this.mService = null;
                    this.mContext.unbindService(this.mConnection);
                }
            } finally {
                this.mServiceLock.writeLock().unlock();
            }
        } catch (Exception e3) {
            Log.e(TAG, "", e3);
        }
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        log(m.g("connect(", bluetoothDevice, ")"));
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.connect(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return false;
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void disableOptionalCodecs() {
        Log.d(TAG, "disableOptionalCodecs");
        enableDisableOptionalCodecs(false);
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log(m.g("disconnect(", bluetoothDevice, ")"));
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.disconnect(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return false;
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean doBind() {
        Intent intent = new Intent(IBluetoothA2dp.class.getName());
        ComponentName componentNameResolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(componentNameResolveSystemService);
        if (componentNameResolveSystemService != null && this.mContext.bindServiceAsUser(intent, this.mConnection, 0, Process.myUserHandle())) {
            return true;
        }
        Log.e(TAG, "Could not bind to Bluetooth A2DP Service with " + intent);
        return false;
    }

    public void enableOptionalCodecs() {
        Log.d(TAG, "enableOptionalCodecs");
        enableDisableOptionalCodecs(true);
    }

    public void finalize() {
    }

    public BluetoothCodecStatus getCodecStatus() {
        Log.d(TAG, "getCodecStatus");
        BluetoothCodecStatus codecStatus = null;
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    codecStatus = this.mService.getCodecStatus();
                } else if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in getCodecStatus()", e2);
            }
            return codecStatus;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        List<BluetoothDevice> arrayList;
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    arrayList = this.mService.getConnectedDevices();
                    return arrayList;
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return new ArrayList();
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                arrayList = new ArrayList<>();
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.getConnectionState(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return 0;
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        List<BluetoothDevice> arrayList;
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService == null || !isEnabled()) {
                    if (this.mService == null) {
                        Log.w(TAG, "Proxy not attached to service");
                    }
                    arrayList = new ArrayList<>();
                } else {
                    arrayList = this.mService.getDevicesMatchingConnectionStates(iArr);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                arrayList = new ArrayList<>();
            }
            return arrayList;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getOptionalCodecsEnabled(BluetoothDevice bluetoothDevice) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.getOptionalCodecsEnabled(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return -1;
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in getSupportsOptionalCodecs()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.getPriority(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return 0;
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isA2dpPlaying(BluetoothDevice bluetoothDevice) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.isA2dpPlaying(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return false;
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isAvrcpAbsoluteVolumeSupported() {
        Log.d(TAG, "isAvrcpAbsoluteVolumeSupported");
        boolean zIsAvrcpAbsoluteVolumeSupported = false;
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    zIsAvrcpAbsoluteVolumeSupported = this.mService.isAvrcpAbsoluteVolumeSupported();
                } else if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in isAvrcpAbsoluteVolumeSupported()", e2);
            }
            return zIsAvrcpAbsoluteVolumeSupported;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void setAvrcpAbsoluteVolume(int i2) {
        Log.d(TAG, "setAvrcpAbsoluteVolume");
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    this.mService.setAvrcpAbsoluteVolume(i2);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in setAvrcpAbsoluteVolume()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void setCodecConfigPreference(BluetoothCodecConfig bluetoothCodecConfig) {
        Log.d(TAG, "setCodecConfigPreference");
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled()) {
                    this.mService.setCodecConfigPreference(bluetoothCodecConfig);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in setCodecConfigPreference()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void setOptionalCodecsEnabled(BluetoothDevice bluetoothDevice, int i2) {
        try {
            if (i2 == -1 || i2 == 0 || i2 == 1) {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    this.mService.setOptionalCodecsEnabled(bluetoothDevice, i2);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } else {
                Log.e(TAG, "Invalid value passed to setOptionalCodecsEnabled: " + i2);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i2) {
        log("setPriority(" + bluetoothDevice + ", " + i2 + ")");
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    if (i2 == 0 || i2 == 100) {
                        return this.mService.setPriority(bluetoothDevice, i2);
                    }
                } else if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean shouldSendVolumeKeys(BluetoothDevice bluetoothDevice) {
        ParcelUuid[] uuids;
        if (!isEnabled() || !isValidDevice(bluetoothDevice) || (uuids = bluetoothDevice.getUuids()) == null) {
            return false;
        }
        for (ParcelUuid parcelUuid : uuids) {
            if (BluetoothUuid.isAvrcpTarget(parcelUuid)) {
                return true;
            }
        }
        return false;
    }

    public int supportsOptionalCodecs(BluetoothDevice bluetoothDevice) {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null && isEnabled() && isValidDevice(bluetoothDevice)) {
                    return this.mService.supportsOptionalCodecs(bluetoothDevice);
                }
                if (this.mService == null) {
                    Log.w(TAG, "Proxy not attached to service");
                }
                return -1;
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to BT service in getSupportsOptionalCodecs()", e2);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }
}
