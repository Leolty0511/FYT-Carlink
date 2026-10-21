package android.net.wifi;

import android.content.Context;
import android.net.DhcpInfo;
import android.net.ProxyProperties;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Log;
import android.util.SparseArray;
import java.net.InetAddress;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import u.b;

/* JADX INFO: loaded from: classes.dex */
public class WifiManager {
    public static final String ACTION_PICK_WIFI_NETWORK = "android.net.wifi.PICK_WIFI_NETWORK";
    public static final String ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE";
    private static final int BASE = 151552;
    public static final String BATCHED_SCAN_RESULTS_AVAILABLE_ACTION = "android.net.wifi.BATCHED_RESULTS";
    public static final int BUSY = 2;
    public static final int CANCEL_WPS = 151566;
    public static final int CANCEL_WPS_FAILED = 151567;
    public static final int CANCEL_WPS_SUCCEDED = 151568;
    public static final int CHANGE_REASON_ADDED = 0;
    public static final int CHANGE_REASON_CONFIG_CHANGE = 2;
    public static final int CHANGE_REASON_REMOVED = 1;
    public static final String CONFIGURED_NETWORKS_CHANGED_ACTION = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE";
    public static final int CONNECT_NETWORK = 151553;
    public static final int CONNECT_NETWORK_FAILED = 151554;
    public static final int CONNECT_NETWORK_SUCCEEDED = 151555;
    public static final int DATA_ACTIVITY_IN = 1;
    public static final int DATA_ACTIVITY_INOUT = 3;
    public static final int DATA_ACTIVITY_NONE = 0;
    public static final int DATA_ACTIVITY_NOTIFICATION = 1;
    public static final int DATA_ACTIVITY_OUT = 2;
    public static final int DISABLE_NETWORK = 151569;
    public static final int DISABLE_NETWORK_FAILED = 151570;
    public static final int DISABLE_NETWORK_SUCCEEDED = 151571;
    public static final int ERROR = 0;
    public static final int ERROR_AUTHENTICATING = 1;
    public static final String EXTRA_BSSID = "bssid";
    public static final String EXTRA_CHANGE_REASON = "changeReason";
    public static final String EXTRA_LINK_CAPABILITIES = "linkCapabilities";
    public static final String EXTRA_LINK_PROPERTIES = "linkProperties";
    public static final String EXTRA_MULTIPLE_NETWORKS_CHANGED = "multipleChanges";
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NEW_RSSI = "newRssi";
    public static final String EXTRA_NEW_STATE = "newState";
    public static final String EXTRA_PREVIOUS_WIFI_AP_STATE = "previous_wifi_state";
    public static final String EXTRA_PREVIOUS_WIFI_STATE = "previous_wifi_state";
    public static final String EXTRA_SCAN_AVAILABLE = "scan_enabled";
    public static final String EXTRA_SUPPLICANT_CONNECTED = "connected";
    public static final String EXTRA_SUPPLICANT_ERROR = "supplicantError";
    public static final String EXTRA_WIFI_AP_STATE = "wifi_state";
    public static final String EXTRA_WIFI_CONFIGURATION = "wifiConfiguration";
    public static final String EXTRA_WIFI_INFO = "wifiInfo";
    public static final String EXTRA_WIFI_STATE = "wifi_state";
    public static final int FORGET_NETWORK = 151556;
    public static final int FORGET_NETWORK_FAILED = 151557;
    public static final int FORGET_NETWORK_SUCCEEDED = 151558;
    public static final int INVALID_ARGS = 8;
    private static final int INVALID_KEY = 0;
    public static final int IN_PROGRESS = 1;
    public static final String LINK_CONFIGURATION_CHANGED_ACTION = "android.net.wifi.LINK_CONFIGURATION_CHANGED";
    private static final int MAX_ACTIVE_LOCKS = 50;
    private static final int MAX_RSSI = -55;
    private static final int MIN_RSSI = -100;
    public static final String NETWORK_IDS_CHANGED_ACTION = "android.net.wifi.NETWORK_IDS_CHANGED";
    public static final String NETWORK_STATE_CHANGED_ACTION = "android.net.wifi.STATE_CHANGE";
    public static final String RSSI_CHANGED_ACTION = "android.net.wifi.RSSI_CHANGED";
    public static final int RSSI_LEVELS = 5;
    public static final int RSSI_PKTCNT_FETCH = 151572;
    public static final int RSSI_PKTCNT_FETCH_FAILED = 151574;
    public static final int RSSI_PKTCNT_FETCH_SUCCEEDED = 151573;
    public static final int SAVE_NETWORK = 151559;
    public static final int SAVE_NETWORK_FAILED = 151560;
    public static final int SAVE_NETWORK_SUCCEEDED = 151561;
    public static final String SCAN_RESULTS_AVAILABLE_ACTION = "android.net.wifi.SCAN_RESULTS";
    public static final int START_WPS = 151562;
    public static final int START_WPS_SUCCEEDED = 151563;
    public static final String SUPPLICANT_CONNECTION_CHANGE_ACTION = "android.net.wifi.supplicant.CONNECTION_CHANGE";
    public static final String SUPPLICANT_STATE_CHANGED_ACTION = "android.net.wifi.supplicant.STATE_CHANGE";
    private static final String TAG = "WifiManager";
    public static final String WIFI_AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_DISABLING = 10;
    public static final int WIFI_AP_STATE_ENABLED = 13;
    public static final int WIFI_AP_STATE_ENABLING = 12;
    public static final int WIFI_AP_STATE_FAILED = 14;
    public static final int WIFI_FREQUENCY_BAND_2GHZ = 2;
    public static final int WIFI_FREQUENCY_BAND_5GHZ = 1;
    public static final int WIFI_FREQUENCY_BAND_AUTO = 0;
    public static final int WIFI_MODE_FULL = 1;
    public static final int WIFI_MODE_FULL_HIGH_PERF = 3;
    public static final int WIFI_MODE_SCAN_ONLY = 2;
    public static final String WIFI_SCAN_AVAILABLE = "wifi_scan_available";
    public static final String WIFI_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_STATE_CHANGED";
    public static final int WIFI_STATE_DISABLED = 1;
    public static final int WIFI_STATE_DISABLING = 0;
    public static final int WIFI_STATE_ENABLED = 3;
    public static final int WIFI_STATE_ENABLING = 2;
    public static final int WIFI_STATE_UNKNOWN = 4;
    public static final int WPS_AUTH_FAILURE = 6;
    public static final int WPS_COMPLETED = 151565;
    public static final int WPS_FAILED = 151564;
    public static final int WPS_OVERLAP_ERROR = 3;
    public static final int WPS_TIMED_OUT = 7;
    public static final int WPS_TKIP_ONLY_PROHIBITED = 5;
    public static final int WPS_WEP_PROHIBITED = 4;
    private static b sAsyncChannel = null;
    private static CountDownLatch sConnected = null;
    private static HandlerThread sHandlerThread = null;
    private static int sListenerKey = 1;
    private static int sThreadRefCount;
    private int mActiveLockCount;
    private Context mContext;
    public IWifiManager mService;
    private static final SparseArray sListenerMap = new SparseArray();
    private static final Object sListenerMapLock = new Object();
    private static final Object sThreadRefLock = new Object();

    public interface ActionListener {
        void onFailure(int i2);

        void onSuccess();
    }

    public class MulticastLock {
        private final IBinder mBinder;
        private boolean mHeld;
        private int mRefCount;
        private boolean mRefCounted;
        private String mTag;

        /* JADX WARN: Code duplicated, block: B:15:0x002c A[Catch: all -> 0x0042, TryCatch #0 {, blocks: (B:13:0x0022, B:15:0x002c, B:16:0x0031, B:18:0x0033, B:19:0x0041), top: B:30:0x0022 }] */
        /* JADX WARN: Code duplicated, block: B:18:0x0033 A[Catch: all -> 0x0042, TryCatch #0 {, blocks: (B:13:0x0022, B:15:0x002c, B:16:0x0031, B:18:0x0033, B:19:0x0041), top: B:30:0x0022 }] */
        /* JADX WARN: Code duplicated, block: B:30:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void acquire() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount + 1;
                    this.mRefCount = i2;
                    if (i2 == 1) {
                        try {
                            WifiManager.this.mService.acquireMulticastLock(this.mBinder, this.mTag);
                            synchronized (WifiManager.this) {
                                if (WifiManager.this.mActiveLockCount < 50) {
                                    WifiManager.this.mService.releaseMulticastLock();
                                    throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                                }
                                WifiManager.access$508(WifiManager.this);
                            }
                        } catch (RemoteException unused) {
                        }
                        this.mHeld = true;
                    }
                } else if (!this.mHeld) {
                    WifiManager.this.mService.acquireMulticastLock(this.mBinder, this.mTag);
                    synchronized (WifiManager.this) {
                        if (WifiManager.this.mActiveLockCount < 50) {
                            WifiManager.this.mService.releaseMulticastLock();
                            throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                        }
                        WifiManager.access$508(WifiManager.this);
                        this.mHeld = true;
                    }
                }
            }
        }

        public void finalize() throws Throwable {
            super.finalize();
            setReferenceCounted(false);
            release();
        }

        public boolean isHeld() {
            boolean z2;
            synchronized (this.mBinder) {
                z2 = this.mHeld;
            }
            return z2;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x001e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void release() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount - 1;
                    this.mRefCount = i2;
                    if (i2 == 0) {
                        try {
                            WifiManager.this.mService.releaseMulticastLock();
                            synchronized (WifiManager.this) {
                                WifiManager.access$510(WifiManager.this);
                            }
                        } catch (RemoteException unused) {
                        }
                        this.mHeld = false;
                    }
                } else if (this.mHeld) {
                    WifiManager.this.mService.releaseMulticastLock();
                    synchronized (WifiManager.this) {
                        WifiManager.access$510(WifiManager.this);
                        this.mHeld = false;
                    }
                }
                if (this.mRefCount < 0) {
                    throw new RuntimeException("MulticastLock under-locked " + this.mTag);
                }
            }
        }

        public void setReferenceCounted(boolean z2) {
            this.mRefCounted = z2;
        }

        public String toString() {
            String str;
            String str2;
            synchronized (this.mBinder) {
                String hexString = Integer.toHexString(System.identityHashCode(this));
                String str3 = this.mHeld ? "held; " : ProxyProperties.LOCAL_EXCL_LIST;
                if (this.mRefCounted) {
                    str = "refcounted: refcount = " + this.mRefCount;
                } else {
                    str = "not refcounted";
                }
                str2 = "MulticastLock{ " + hexString + "; " + str3 + str + " }";
            }
            return str2;
        }

        private MulticastLock(String str) {
            this.mTag = str;
            this.mBinder = new Binder();
            this.mRefCount = 0;
            this.mRefCounted = true;
            this.mHeld = false;
        }
    }

    public static class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objRemoveListener = WifiManager.removeListener(message.arg2);
            switch (message.what) {
                case 69632:
                    if (message.arg1 == 0) {
                        WifiManager.sAsyncChannel.k(69633);
                    } else {
                        Log.e(WifiManager.TAG, "Failed to set up channel connection");
                        b unused = WifiManager.sAsyncChannel = null;
                    }
                    WifiManager.sConnected.countDown();
                    return;
                case 69636:
                    Log.e(WifiManager.TAG, "Channel connection lost");
                    b unused2 = WifiManager.sAsyncChannel = null;
                    getLooper().quit();
                    return;
                case WifiManager.CONNECT_NETWORK_FAILED /* 151554 */:
                case WifiManager.FORGET_NETWORK_FAILED /* 151557 */:
                case WifiManager.SAVE_NETWORK_FAILED /* 151560 */:
                case WifiManager.CANCEL_WPS_FAILED /* 151567 */:
                case WifiManager.DISABLE_NETWORK_FAILED /* 151570 */:
                    if (objRemoveListener != null) {
                        ((ActionListener) objRemoveListener).onFailure(message.arg1);
                        return;
                    }
                    return;
                case WifiManager.CONNECT_NETWORK_SUCCEEDED /* 151555 */:
                case WifiManager.FORGET_NETWORK_SUCCEEDED /* 151558 */:
                case WifiManager.SAVE_NETWORK_SUCCEEDED /* 151561 */:
                case WifiManager.CANCEL_WPS_SUCCEDED /* 151568 */:
                case WifiManager.DISABLE_NETWORK_SUCCEEDED /* 151571 */:
                    if (objRemoveListener != null) {
                        ((ActionListener) objRemoveListener).onSuccess();
                        return;
                    }
                    return;
                case WifiManager.START_WPS_SUCCEEDED /* 151563 */:
                    if (objRemoveListener != null) {
                        ((WpsListener) objRemoveListener).onStartSuccess(((WpsResult) message.obj).pin);
                        synchronized (WifiManager.sListenerMapLock) {
                            WifiManager.sListenerMap.put(message.arg2, objRemoveListener);
                            break;
                        }
                        return;
                    }
                    return;
                case WifiManager.WPS_FAILED /* 151564 */:
                    if (objRemoveListener != null) {
                        ((WpsListener) objRemoveListener).onFailure(message.arg1);
                        return;
                    }
                    return;
                case WifiManager.WPS_COMPLETED /* 151565 */:
                    if (objRemoveListener != null) {
                        ((WpsListener) objRemoveListener).onCompletion();
                        return;
                    }
                    return;
                case WifiManager.RSSI_PKTCNT_FETCH_SUCCEEDED /* 151573 */:
                    if (objRemoveListener != null) {
                        RssiPacketCountInfo rssiPacketCountInfo = (RssiPacketCountInfo) message.obj;
                        if (rssiPacketCountInfo != null) {
                            ((TxPacketCountListener) objRemoveListener).onSuccess(rssiPacketCountInfo.txgood + rssiPacketCountInfo.txbad);
                            return;
                        } else {
                            ((TxPacketCountListener) objRemoveListener).onFailure(0);
                            return;
                        }
                    }
                    return;
                case WifiManager.RSSI_PKTCNT_FETCH_FAILED /* 151574 */:
                    if (objRemoveListener != null) {
                        ((TxPacketCountListener) objRemoveListener).onFailure(message.arg1);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public interface TxPacketCountListener {
        void onFailure(int i2);

        void onSuccess(int i2);
    }

    public class WifiLock {
        private final IBinder mBinder;
        private boolean mHeld;
        public int mLockType;
        private int mRefCount;
        private boolean mRefCounted;
        private String mTag;
        private WorkSource mWorkSource;

        /* JADX WARN: Code duplicated, block: B:15:0x0030 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:13:0x0026, B:15:0x0030, B:16:0x0035, B:18:0x0037, B:19:0x0047), top: B:30:0x0026 }] */
        /* JADX WARN: Code duplicated, block: B:18:0x0037 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:13:0x0026, B:15:0x0030, B:16:0x0035, B:18:0x0037, B:19:0x0047), top: B:30:0x0026 }] */
        /* JADX WARN: Code duplicated, block: B:30:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void acquire() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount + 1;
                    this.mRefCount = i2;
                    if (i2 == 1) {
                        try {
                            WifiManager.this.mService.acquireWifiLock(this.mBinder, this.mLockType, this.mTag, this.mWorkSource);
                            synchronized (WifiManager.this) {
                                if (WifiManager.this.mActiveLockCount < 50) {
                                    WifiManager.this.mService.releaseWifiLock(this.mBinder);
                                    throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                                }
                                WifiManager.access$508(WifiManager.this);
                            }
                        } catch (RemoteException unused) {
                        }
                        this.mHeld = true;
                    }
                } else if (!this.mHeld) {
                    WifiManager.this.mService.acquireWifiLock(this.mBinder, this.mLockType, this.mTag, this.mWorkSource);
                    synchronized (WifiManager.this) {
                        if (WifiManager.this.mActiveLockCount < 50) {
                            WifiManager.this.mService.releaseWifiLock(this.mBinder);
                            throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                        }
                        WifiManager.access$508(WifiManager.this);
                        this.mHeld = true;
                    }
                }
            }
        }

        public void finalize() throws Throwable {
            super.finalize();
            synchronized (this.mBinder) {
                if (this.mHeld) {
                    try {
                        WifiManager.this.mService.releaseWifiLock(this.mBinder);
                        synchronized (WifiManager.this) {
                            WifiManager.access$510(WifiManager.this);
                        }
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        public boolean isHeld() {
            boolean z2;
            synchronized (this.mBinder) {
                z2 = this.mHeld;
            }
            return z2;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void release() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount - 1;
                    this.mRefCount = i2;
                    if (i2 == 0) {
                        try {
                            WifiManager.this.mService.releaseWifiLock(this.mBinder);
                            synchronized (WifiManager.this) {
                                WifiManager.access$510(WifiManager.this);
                            }
                        } catch (RemoteException unused) {
                        }
                        this.mHeld = false;
                    }
                } else if (this.mHeld) {
                    WifiManager.this.mService.releaseWifiLock(this.mBinder);
                    synchronized (WifiManager.this) {
                        WifiManager.access$510(WifiManager.this);
                        this.mHeld = false;
                    }
                }
                if (this.mRefCount < 0) {
                    throw new RuntimeException("WifiLock under-locked " + this.mTag);
                }
            }
        }

        public void setReferenceCounted(boolean z2) {
            this.mRefCounted = z2;
        }

        public void setWorkSource(WorkSource workSource) {
            synchronized (this.mBinder) {
                if (workSource != null) {
                    try {
                        if (workSource.size() == 0) {
                            workSource = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                boolean zDiff = true;
                if (workSource == null) {
                    this.mWorkSource = null;
                } else {
                    workSource.clearNames();
                    WorkSource workSource2 = this.mWorkSource;
                    if (workSource2 == null) {
                        if (workSource2 == null) {
                            zDiff = false;
                        }
                        this.mWorkSource = new WorkSource(workSource);
                    } else {
                        zDiff = workSource2.diff(workSource);
                        if (zDiff) {
                            this.mWorkSource.set(workSource);
                        }
                    }
                }
                if (zDiff && this.mHeld) {
                    try {
                        WifiManager.this.mService.updateWifiLockWorkSource(this.mBinder, this.mWorkSource);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        public String toString() {
            String str;
            String str2;
            synchronized (this.mBinder) {
                String hexString = Integer.toHexString(System.identityHashCode(this));
                String str3 = this.mHeld ? "held; " : ProxyProperties.LOCAL_EXCL_LIST;
                if (this.mRefCounted) {
                    str = "refcounted: refcount = " + this.mRefCount;
                } else {
                    str = "not refcounted";
                }
                str2 = "WifiLock{ " + hexString + "; " + str3 + str + " }";
            }
            return str2;
        }

        private WifiLock(int i2, String str) {
            this.mTag = str;
            this.mLockType = i2;
            this.mBinder = new Binder();
            this.mRefCount = 0;
            this.mRefCounted = true;
            this.mHeld = false;
        }
    }

    public interface WpsListener {
        void onCompletion();

        void onFailure(int i2);

        void onStartSuccess(String str);
    }

    public WifiManager(Context context, IWifiManager iWifiManager) {
        this.mContext = context;
        this.mService = iWifiManager;
        init();
    }

    public static /* synthetic */ int access$508(WifiManager wifiManager) {
        int i2 = wifiManager.mActiveLockCount;
        wifiManager.mActiveLockCount = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$510(WifiManager wifiManager) {
        int i2 = wifiManager.mActiveLockCount;
        wifiManager.mActiveLockCount = i2 - 1;
        return i2;
    }

    private int addOrUpdateNetwork(WifiConfiguration wifiConfiguration) {
        try {
            return this.mService.addOrUpdateNetwork(wifiConfiguration);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int calculateSignalLevel(int i2, int i3) {
        if (i2 <= -100) {
            return 0;
        }
        if (i2 >= MAX_RSSI) {
            return i3 - 1;
        }
        return (int) (((i2 - (-100)) * (i3 - 1)) / 45.0f);
    }

    public static int compareSignalLevel(int i2, int i3) {
        return i2 - i3;
    }

    private void init() {
        synchronized (sThreadRefLock) {
            int i2 = sThreadRefCount + 1;
            sThreadRefCount = i2;
            if (i2 == 1) {
                Messenger wifiServiceMessenger = getWifiServiceMessenger();
                if (wifiServiceMessenger == null) {
                    sAsyncChannel = null;
                    return;
                }
                sHandlerThread = new HandlerThread(TAG);
                sAsyncChannel = new b();
                sConnected = new CountDownLatch(1);
                sHandlerThread.start();
                sAsyncChannel.b(this.mContext, new ServiceHandler(sHandlerThread.getLooper()), wifiServiceMessenger);
                try {
                    sConnected.await();
                } catch (InterruptedException unused) {
                    Log.e(TAG, "interrupted wait at init");
                }
            }
        }
    }

    private static int putListener(Object obj) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (sListenerMapLock) {
            do {
                i2 = sListenerKey;
                sListenerKey = i2 + 1;
            } while (i2 == 0);
            sListenerMap.put(i2, obj);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object removeListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (sListenerMapLock) {
            SparseArray sparseArray = sListenerMap;
            obj = sparseArray.get(i2);
            sparseArray.remove(i2);
        }
        return obj;
    }

    private void validateChannel() {
        if (sAsyncChannel == null) {
            throw new IllegalStateException("No permission to access and change wifi or a bad initialization");
        }
    }

    public int addNetwork(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return -1;
        }
        wifiConfiguration.networkId = -1;
        return addOrUpdateNetwork(wifiConfiguration);
    }

    public boolean addToBlacklist(String str) {
        try {
            this.mService.addToBlacklist(str);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void cancelWps(ActionListener actionListener) {
        validateChannel();
        sAsyncChannel.m(CANCEL_WPS, 0, putListener(actionListener));
    }

    public void captivePortalCheckComplete() {
        try {
            this.mService.captivePortalCheckComplete();
        } catch (RemoteException unused) {
        }
    }

    public boolean clearBlacklist() {
        try {
            this.mService.clearBlacklist();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void connect(WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        if (wifiConfiguration == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        validateChannel();
        sAsyncChannel.n(CONNECT_NETWORK, -1, putListener(actionListener), wifiConfiguration);
    }

    public MulticastLock createMulticastLock(String str) {
        return new MulticastLock(str);
    }

    public WifiLock createWifiLock(int i2, String str) {
        return new WifiLock(i2, str);
    }

    public void disable(int i2, ActionListener actionListener) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Network id cannot be negative");
        }
        validateChannel();
        sAsyncChannel.m(DISABLE_NETWORK, i2, putListener(actionListener));
    }

    public boolean disableNetwork(int i2) {
        try {
            return this.mService.disableNetwork(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean disconnect() {
        try {
            this.mService.disconnect();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean enableNetwork(int i2, boolean z2) {
        try {
            return this.mService.enableNetwork(i2, z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void finalize() throws Throwable {
        b bVar;
        try {
            synchronized (sThreadRefLock) {
                int i2 = sThreadRefCount - 1;
                sThreadRefCount = i2;
                if (i2 == 0 && (bVar = sAsyncChannel) != null) {
                    bVar.e();
                }
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    public void forget(int i2, ActionListener actionListener) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Network id cannot be negative");
        }
        validateChannel();
        sAsyncChannel.m(FORGET_NETWORK, i2, putListener(actionListener));
    }

    public List<BatchedScanResult> getBatchedScanResults() {
        try {
            return this.mService.getBatchedScanResults(this.mContext.getOpPackageName());
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getConfigFile() {
        try {
            return this.mService.getConfigFile();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<WifiConfiguration> getConfiguredNetworks() {
        try {
            return this.mService.getConfiguredNetworks();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public WifiInfo getConnectionInfo() {
        try {
            return this.mService.getConnectionInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public DhcpInfo getDhcpInfo() {
        try {
            return this.mService.getDhcpInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getFrequencyBand() {
        try {
            return this.mService.getFrequencyBand();
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public List<ScanResult> getScanResults() {
        try {
            return this.mService.getScanResults(this.mContext.getOpPackageName());
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void getTxPacketCount(TxPacketCountListener txPacketCountListener) {
        validateChannel();
        sAsyncChannel.m(RSSI_PKTCNT_FETCH, 0, putListener(txPacketCountListener));
    }

    public WifiConfiguration getWifiApConfiguration() {
        try {
            return this.mService.getWifiApConfiguration();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getWifiApState() {
        try {
            return this.mService.getWifiApEnabledState();
        } catch (RemoteException unused) {
            return 14;
        }
    }

    public Messenger getWifiServiceMessenger() {
        try {
            return this.mService.getWifiServiceMessenger();
        } catch (RemoteException | SecurityException unused) {
            return null;
        }
    }

    public int getWifiState() {
        try {
            return this.mService.getWifiEnabledState();
        } catch (RemoteException unused) {
            return 4;
        }
    }

    public Messenger getWifiStateMachineMessenger() {
        try {
            return this.mService.getWifiStateMachineMessenger();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean initializeMulticastFiltering() {
        try {
            this.mService.initializeMulticastFiltering();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isBatchedScanSupported() {
        try {
            return this.mService.isBatchedScanSupported();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isDualBandSupported() {
        try {
            return this.mService.isDualBandSupported();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isMulticastEnabled() {
        try {
            return this.mService.isMulticastEnabled();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isScanAlwaysAvailable() {
        try {
            return this.mService.isScanAlwaysAvailable();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isWifiApEnabled() {
        return getWifiApState() == 13;
    }

    public boolean isWifiEnabled() {
        return getWifiState() == 3;
    }

    public boolean pingSupplicant() {
        IWifiManager iWifiManager = this.mService;
        if (iWifiManager == null) {
            return false;
        }
        try {
            return iWifiManager.pingSupplicant();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void pollBatchedScan() {
        try {
            this.mService.pollBatchedScan();
        } catch (RemoteException unused) {
        }
    }

    public boolean reassociate() {
        try {
            this.mService.reassociate();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean reconnect() {
        try {
            this.mService.reconnect();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean removeNetwork(int i2) {
        try {
            return this.mService.removeNetwork(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean requestBatchedScan(BatchedScanSettings batchedScanSettings) {
        try {
            return this.mService.requestBatchedScan(batchedScanSettings, new Binder(), null);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void save(WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        if (wifiConfiguration == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        validateChannel();
        sAsyncChannel.n(SAVE_NETWORK, 0, putListener(actionListener), wifiConfiguration);
    }

    public boolean saveConfiguration() {
        try {
            return this.mService.saveConfiguration();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void setCountryCode(String str, boolean z2) {
        try {
            this.mService.setCountryCode(str, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setFrequencyBand(int i2, boolean z2) {
        try {
            this.mService.setFrequencyBand(i2, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setTdlsEnabled(InetAddress inetAddress, boolean z2) {
        try {
            this.mService.enableTdls(inetAddress.getHostAddress(), z2);
        } catch (RemoteException unused) {
        }
    }

    public void setTdlsEnabledWithMacAddress(String str, boolean z2) {
        try {
            this.mService.enableTdlsWithMacAddress(str, z2);
        } catch (RemoteException unused) {
        }
    }

    public boolean setWifiApConfiguration(WifiConfiguration wifiConfiguration) {
        try {
            this.mService.setWifiApConfiguration(wifiConfiguration);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setWifiApEnabled(WifiConfiguration wifiConfiguration, boolean z2) {
        try {
            this.mService.setWifiApEnabled(wifiConfiguration, z2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setWifiEnabled(boolean z2) {
        try {
            return this.mService.setWifiEnabled(z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean startScan() {
        try {
            this.mService.startScan(null);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean startWifi() {
        try {
            this.mService.startWifi();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void startWps(WpsInfo wpsInfo, WpsListener wpsListener) {
        if (wpsInfo == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        validateChannel();
        sAsyncChannel.n(START_WPS, 0, putListener(wpsListener), wpsInfo);
    }

    public void stopBatchedScan(BatchedScanSettings batchedScanSettings) {
        try {
            this.mService.stopBatchedScan(batchedScanSettings);
        } catch (RemoteException unused) {
        }
    }

    public boolean stopWifi() {
        try {
            this.mService.stopWifi();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int updateNetwork(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null || wifiConfiguration.networkId < 0) {
            return -1;
        }
        return addOrUpdateNetwork(wifiConfiguration);
    }

    public WifiLock createWifiLock(String str) {
        return new WifiLock(1, str);
    }

    public boolean requestBatchedScan(BatchedScanSettings batchedScanSettings, WorkSource workSource) {
        try {
            return this.mService.requestBatchedScan(batchedScanSettings, new Binder(), workSource);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean startScan(WorkSource workSource) {
        try {
            this.mService.startScan(workSource);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void connect(int i2, ActionListener actionListener) {
        if (i2 >= 0) {
            validateChannel();
            sAsyncChannel.m(CONNECT_NETWORK, i2, putListener(actionListener));
            return;
        }
        throw new IllegalArgumentException("Network id cannot be negative");
    }
}
