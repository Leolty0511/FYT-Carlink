package android.net.wifi;

import android.annotation.SuppressLint;
import android.app.m;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.net.DhcpInfo;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.AsyncChannel;
import com.android.server.net.NetworkPinner;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class WifiManager {
    public static final String ACTION_PASSPOINT_DEAUTH_IMMINENT = "android.net.wifi.action.PASSPOINT_DEAUTH_IMMINENT";
    public static final String ACTION_PASSPOINT_ICON = "android.net.wifi.action.PASSPOINT_ICON";
    public static final String ACTION_PASSPOINT_OSU_PROVIDERS_LIST = "android.net.wifi.action.PASSPOINT_OSU_PROVIDERS_LIST";
    public static final String ACTION_PASSPOINT_SUBSCRIPTION_REMEDIATION = "android.net.wifi.action.PASSPOINT_SUBSCRIPTION_REMEDIATION";
    public static final String ACTION_PICK_WIFI_NETWORK = "android.net.wifi.PICK_WIFI_NETWORK";
    public static final String ACTION_REQUEST_DISABLE = "android.net.wifi.action.REQUEST_DISABLE";
    public static final String ACTION_REQUEST_ENABLE = "android.net.wifi.action.REQUEST_ENABLE";
    public static final String ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE";
    private static final int BASE = 151552;

    @Deprecated
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
    public static final boolean DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED = false;
    public static final int DISABLE_NETWORK = 151569;
    public static final int DISABLE_NETWORK_FAILED = 151570;
    public static final int DISABLE_NETWORK_SUCCEEDED = 151571;
    public static final int ERROR = 0;
    public static final int ERROR_AUTHENTICATING = 1;
    public static final int ERROR_AUTH_FAILURE_EAP_FAILURE = 3;
    public static final int ERROR_AUTH_FAILURE_NONE = 0;
    public static final int ERROR_AUTH_FAILURE_TIMEOUT = 1;
    public static final int ERROR_AUTH_FAILURE_WRONG_PSWD = 2;
    public static final String EXTRA_ANQP_ELEMENT_DATA = "android.net.wifi.extra.ANQP_ELEMENT_DATA";
    public static final String EXTRA_BSSID = "bssid";
    public static final String EXTRA_BSSID_LONG = "android.net.wifi.extra.BSSID_LONG";
    public static final String EXTRA_CHANGE_REASON = "changeReason";
    public static final String EXTRA_DELAY = "android.net.wifi.extra.DELAY";
    public static final String EXTRA_ESS = "android.net.wifi.extra.ESS";
    public static final String EXTRA_FILENAME = "android.net.wifi.extra.FILENAME";
    public static final String EXTRA_ICON = "android.net.wifi.extra.ICON";
    public static final String EXTRA_LINK_PROPERTIES = "linkProperties";
    public static final String EXTRA_MULTIPLE_NETWORKS_CHANGED = "multipleChanges";
    public static final String EXTRA_NETWORK_CAPABILITIES = "networkCapabilities";
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NEW_RSSI = "newRssi";
    public static final String EXTRA_NEW_STATE = "newState";
    public static final String EXTRA_PREVIOUS_WIFI_AP_STATE = "previous_wifi_state";
    public static final String EXTRA_PREVIOUS_WIFI_STATE = "previous_wifi_state";
    public static final String EXTRA_RESULTS_UPDATED = "resultsUpdated";
    public static final String EXTRA_SCAN_AVAILABLE = "scan_enabled";
    public static final String EXTRA_SUBSCRIPTION_REMEDIATION_METHOD = "android.net.wifi.extra.SUBSCRIPTION_REMEDIATION_METHOD";
    public static final String EXTRA_SUPPLICANT_CONNECTED = "connected";
    public static final String EXTRA_SUPPLICANT_ERROR = "supplicantError";
    public static final String EXTRA_SUPPLICANT_ERROR_REASON = "supplicantErrorReason";
    public static final String EXTRA_URL = "android.net.wifi.extra.URL";
    public static final String EXTRA_WIFI_AP_CONNCTION_STA_MAC = "wifiap_station_mac";
    public static final String EXTRA_WIFI_AP_CONNECTED_STATION = "wifiap_station_is_connected";
    public static final String EXTRA_WIFI_AP_FAILURE_REASON = "wifi_ap_error_code";
    public static final String EXTRA_WIFI_AP_INTERFACE_NAME = "wifi_ap_interface_name";
    public static final String EXTRA_WIFI_AP_MODE = "wifi_ap_mode";
    public static final String EXTRA_WIFI_AP_STATE = "wifi_state";
    public static final String EXTRA_WIFI_CONFIGURATION = "wifiConfiguration";
    public static final String EXTRA_WIFI_CREDENTIAL_EVENT_TYPE = "et";
    public static final String EXTRA_WIFI_CREDENTIAL_SSID = "ssid";
    public static final String EXTRA_WIFI_INFO = "wifiInfo";
    public static final String EXTRA_WIFI_STATE = "wifi_state";
    public static final int FORGET_NETWORK = 151556;
    public static final int FORGET_NETWORK_FAILED = 151557;
    public static final int FORGET_NETWORK_SUCCEEDED = 151558;
    public static final int HOTSPOT_FAILED = 2;
    public static final int HOTSPOT_OBSERVER_REGISTERED = 3;
    public static final int HOTSPOT_STARTED = 0;
    public static final int HOTSPOT_STOPPED = 1;
    public static final int IFACE_IP_MODE_CONFIGURATION_ERROR = 0;
    public static final int IFACE_IP_MODE_LOCAL_ONLY = 2;
    public static final int IFACE_IP_MODE_TETHERED = 1;
    public static final int IFACE_IP_MODE_UNSPECIFIED = -1;
    public static final int INVALID_ARGS = 8;
    private static final int INVALID_KEY = 0;
    public static final int IN_PROGRESS = 1;
    public static final String LINK_CONFIGURATION_CHANGED_ACTION = "android.net.wifi.LINK_CONFIGURATION_CHANGED";
    private static final int MAX_ACTIVE_LOCKS = 50;
    private static final int MAX_RSSI = -55;
    private static final int MIN_RSSI = -100;
    public static final String NETWORK_IDS_CHANGED_ACTION = "android.net.wifi.NETWORK_IDS_CHANGED";
    public static final String NETWORK_STATE_CHANGED_ACTION = "android.net.wifi.STATE_CHANGE";
    public static final int NOT_AUTHORIZED = 9;
    public static final String RSSI_CHANGED_ACTION = "android.net.wifi.RSSI_CHANGED";
    public static final int RSSI_LEVELS = 5;
    public static final int RSSI_PKTCNT_FETCH = 151572;
    public static final int RSSI_PKTCNT_FETCH_FAILED = 151574;
    public static final int RSSI_PKTCNT_FETCH_SUCCEEDED = 151573;
    public static final int SAP_START_FAILURE_GENERAL = 0;
    public static final int SAP_START_FAILURE_NO_CHANNEL = 1;
    public static final int SAVE_NETWORK = 151559;
    public static final int SAVE_NETWORK_FAILED = 151560;
    public static final int SAVE_NETWORK_SUCCEEDED = 151561;
    public static final String SCAN_RESULTS_AVAILABLE_ACTION = "android.net.wifi.SCAN_RESULTS";
    public static final String SOFTAP_BLOCKLIST_AVAILABLE_ACTION = "android.net.wifi.SOFTAP_BLOCKLIST_AVAILABLE_ACTION";
    public static final int SOFTAP_CANCEL_WPS = 151576;
    public static final int SOFTAP_START_WPS = 151575;
    public static final int SOFTAP_WPS_CHECK_PIN = 151577;
    public static final int START_WPS = 151562;
    public static final int START_WPS_SUCCEEDED = 151563;
    public static final String SUPPLICANT_CONNECTION_CHANGE_ACTION = "android.net.wifi.supplicant.CONNECTION_CHANGE";
    public static final String SUPPLICANT_STATE_CHANGED_ACTION = "android.net.wifi.supplicant.STATE_CHANGE";
    public static final String SUPPLICANT_WAPI_EVENT = "android.net.wifi.supplicant.WAPI_EVENT";
    private static final String TAG = "WifiManager";
    public static final int WAPI_EVENT_AUTH_FAIL_CODE = 16;
    public static final int WAPI_EVENT_CERT_FAIL_CODE = 17;
    public static final int WAPI_EVENT_CERT_LOST_CODE = 18;
    public static final String WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION = "android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION";
    public static final String WIFI_AP_CONNECTION_CHANGED_ACTION = "android.net.wifi.WIFI_AP_CONNECTION_CHANGED_ACTION";
    public static final String WIFI_AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_DISABLING = 10;
    public static final int WIFI_AP_STATE_ENABLED = 13;
    public static final int WIFI_AP_STATE_ENABLING = 12;
    public static final int WIFI_AP_STATE_FAILED = 14;
    public static final String WIFI_AUTO_ROAM_SWITCH = "wifi_auto_roam_switch";
    public static final String WIFI_CREDENTIAL_CHANGED_ACTION = "android.net.wifi.WIFI_CREDENTIAL_CHANGED";
    public static final int WIFI_CREDENTIAL_FORGOT = 1;
    public static final int WIFI_CREDENTIAL_SAVED = 0;
    public static final int WIFI_FEATURE_ADDITIONAL_STA = 2048;
    public static final int WIFI_FEATURE_AP_STA = 32768;
    public static final int WIFI_FEATURE_AWARE = 64;
    public static final int WIFI_FEATURE_BATCH_SCAN = 512;
    public static final int WIFI_FEATURE_CONFIG_NDO = 2097152;
    public static final int WIFI_FEATURE_CONTROL_ROAMING = 8388608;
    public static final int WIFI_FEATURE_D2AP_RTT = 256;
    public static final int WIFI_FEATURE_D2D_RTT = 128;
    public static final int WIFI_FEATURE_EPR = 16384;
    public static final int WIFI_FEATURE_HAL_EPNO = 262144;
    public static final int WIFI_FEATURE_IE_WHITELIST = 16777216;
    public static final int WIFI_FEATURE_INFRA = 1;
    public static final int WIFI_FEATURE_INFRA_5G = 2;
    public static final int WIFI_FEATURE_LINK_LAYER_STATS = 65536;
    public static final int WIFI_FEATURE_LOGGER = 131072;
    public static final int WIFI_FEATURE_MKEEP_ALIVE = 1048576;
    public static final int WIFI_FEATURE_MOBILE_HOTSPOT = 16;
    public static final int WIFI_FEATURE_P2P = 8;
    public static final int WIFI_FEATURE_PASSPOINT = 4;
    public static final int WIFI_FEATURE_PNO = 1024;
    public static final int WIFI_FEATURE_RSSI_MONITOR = 524288;
    public static final int WIFI_FEATURE_SCANNER = 32;
    public static final int WIFI_FEATURE_SCAN_RAND = 33554432;
    public static final int WIFI_FEATURE_TDLS = 4096;
    public static final int WIFI_FEATURE_TDLS_OFFCHANNEL = 8192;
    public static final int WIFI_FEATURE_TRANSMIT_POWER = 4194304;
    public static final int WIFI_FEATURE_TX_POWER_LIMIT = 67108864;
    public static final int WIFI_FREQUENCY_BAND_2GHZ = 2;
    public static final int WIFI_FREQUENCY_BAND_5GHZ = 1;
    public static final int WIFI_FREQUENCY_BAND_AUTO = 0;
    public static final int WIFI_MODE_FULL = 1;
    public static final int WIFI_MODE_FULL_HIGH_PERF = 3;
    public static final int WIFI_MODE_NO_LOCKS_HELD = 0;
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
    private static final Object sServiceHandlerDispatchLock = new Object();
    private int mActiveLockCount;
    private AsyncChannel mAsyncChannel;
    private CountDownLatch mConnected;
    private Context mContext;

    @GuardedBy("mLock")
    private LocalOnlyHotspotCallbackProxy mLOHSCallbackProxy;

    @GuardedBy("mLock")
    private LocalOnlyHotspotObserverProxy mLOHSObserverProxy;
    private int mListenerKey = 1;
    private final SparseArray mListenerMap = new SparseArray();
    private final Object mListenerMapLock = new Object();
    private final Object mLock = new Object();
    private Looper mLooper;
    IWifiManager mService;
    private final int mTargetSdkVersion;

    public interface ActionListener {
        void onFailure(int i2);

        void onSuccess();
    }

    public static class LocalOnlyHotspotCallback {
        public static final int ERROR_GENERIC = 2;
        public static final int ERROR_INCOMPATIBLE_MODE = 3;
        public static final int ERROR_NO_CHANNEL = 1;
        public static final int ERROR_TETHERING_DISALLOWED = 4;
        public static final int REQUEST_REGISTERED = 0;

        public void onFailed(int i2) {
        }

        public void onStarted(LocalOnlyHotspotReservation localOnlyHotspotReservation) {
        }

        public void onStopped() {
        }
    }

    public static class LocalOnlyHotspotCallbackProxy {
        private final Handler mHandler;
        private final Looper mLooper;
        private final Messenger mMessenger;
        private final WeakReference<WifiManager> mWifiManager;

        public LocalOnlyHotspotCallbackProxy(WifiManager wifiManager, Looper looper, final LocalOnlyHotspotCallback localOnlyHotspotCallback) {
            this.mWifiManager = new WeakReference<>(wifiManager);
            this.mLooper = looper;
            Handler handler = new Handler(looper) { // from class: android.net.wifi.WifiManager.LocalOnlyHotspotCallbackProxy.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    Log.d(WifiManager.TAG, "LocalOnlyHotspotCallbackProxy: handle message what: " + message.what + " msg: " + message);
                    WifiManager wifiManager2 = (WifiManager) LocalOnlyHotspotCallbackProxy.this.mWifiManager.get();
                    if (wifiManager2 == null) {
                        Log.w(WifiManager.TAG, "LocalOnlyHotspotCallbackProxy: handle message post GC");
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 0) {
                        WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                        if (wifiConfiguration != null) {
                            localOnlyHotspotCallback.onStarted(wifiManager2.new LocalOnlyHotspotReservation(wifiConfiguration));
                            return;
                        } else {
                            Log.e(WifiManager.TAG, "LocalOnlyHotspotCallbackProxy: config cannot be null.");
                            localOnlyHotspotCallback.onFailed(2);
                            return;
                        }
                    }
                    if (i2 == 1) {
                        Log.w(WifiManager.TAG, "LocalOnlyHotspotCallbackProxy: hotspot stopped");
                        localOnlyHotspotCallback.onStopped();
                    } else {
                        if (i2 != 2) {
                            m.C(new StringBuilder("LocalOnlyHotspotCallbackProxy unhandled message.  type: "), message.what, WifiManager.TAG);
                            return;
                        }
                        int i3 = message.arg1;
                        m.A("LocalOnlyHotspotCallbackProxy: failed to start.  reason: ", i3, WifiManager.TAG);
                        localOnlyHotspotCallback.onFailed(i3);
                        Log.w(WifiManager.TAG, "done with the callback...");
                    }
                }
            };
            this.mHandler = handler;
            this.mMessenger = new Messenger(handler);
        }

        public Messenger getMessenger() {
            return this.mMessenger;
        }

        public void notifyFailed(int i2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = i2;
            this.mMessenger.send(messageObtain);
        }
    }

    public static class LocalOnlyHotspotObserver {
        public void onRegistered(LocalOnlyHotspotSubscription localOnlyHotspotSubscription) {
        }

        public void onStarted(WifiConfiguration wifiConfiguration) {
        }

        public void onStopped() {
        }
    }

    public static class LocalOnlyHotspotObserverProxy {
        private final Handler mHandler;
        private final Looper mLooper;
        private final Messenger mMessenger;
        private final WeakReference<WifiManager> mWifiManager;

        public LocalOnlyHotspotObserverProxy(WifiManager wifiManager, Looper looper, final LocalOnlyHotspotObserver localOnlyHotspotObserver) {
            this.mWifiManager = new WeakReference<>(wifiManager);
            this.mLooper = looper;
            Handler handler = new Handler(looper) { // from class: android.net.wifi.WifiManager.LocalOnlyHotspotObserverProxy.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    Log.d(WifiManager.TAG, "LocalOnlyHotspotObserverProxy: handle message what: " + message.what + " msg: " + message);
                    WifiManager wifiManager2 = (WifiManager) LocalOnlyHotspotObserverProxy.this.mWifiManager.get();
                    if (wifiManager2 == null) {
                        Log.w(WifiManager.TAG, "LocalOnlyHotspotObserverProxy: handle message post GC");
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 0) {
                        WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                        if (wifiConfiguration == null) {
                            Log.e(WifiManager.TAG, "LocalOnlyHotspotObserverProxy: config cannot be null.");
                            return;
                        } else {
                            localOnlyHotspotObserver.onStarted(wifiConfiguration);
                            return;
                        }
                    }
                    if (i2 == 1) {
                        localOnlyHotspotObserver.onStopped();
                    } else if (i2 != 3) {
                        m.C(new StringBuilder("LocalOnlyHotspotObserverProxy unhandled message.  type: "), message.what, WifiManager.TAG);
                    } else {
                        localOnlyHotspotObserver.onRegistered(wifiManager2.new LocalOnlyHotspotSubscription());
                    }
                }
            };
            this.mHandler = handler;
            this.mMessenger = new Messenger(handler);
        }

        public Messenger getMessenger() {
            return this.mMessenger;
        }

        public void registered() {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            this.mMessenger.send(messageObtain);
        }
    }

    public class LocalOnlyHotspotReservation implements AutoCloseable {
        private final CloseGuard mCloseGuard;
        private final WifiConfiguration mConfig;

        public LocalOnlyHotspotReservation(WifiConfiguration wifiConfiguration) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            this.mConfig = wifiConfiguration;
            closeGuard.open("close");
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            try {
                WifiManager.this.stopLocalOnlyHotspot();
                this.mCloseGuard.close();
            } catch (Exception unused) {
                Log.e(WifiManager.TAG, "Failed to stop Local Only Hotspot.");
            }
        }

        public void finalize() throws Throwable {
            try {
                CloseGuard closeGuard = this.mCloseGuard;
                if (closeGuard != null) {
                    closeGuard.warnIfOpen();
                }
                close();
            } finally {
                super.finalize();
            }
        }

        public WifiConfiguration getWifiConfiguration() {
            return this.mConfig;
        }
    }

    public class LocalOnlyHotspotSubscription implements AutoCloseable {
        private final CloseGuard mCloseGuard;

        public LocalOnlyHotspotSubscription() {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            closeGuard.open("close");
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            try {
                WifiManager.this.unregisterLocalOnlyHotspotObserver();
                this.mCloseGuard.close();
            } catch (Exception unused) {
                Log.e(WifiManager.TAG, "Failed to unregister LocalOnlyHotspotObserver.");
            }
        }

        public void finalize() throws Throwable {
            try {
                CloseGuard closeGuard = this.mCloseGuard;
                if (closeGuard != null) {
                    closeGuard.warnIfOpen();
                }
                close();
            } finally {
                super.finalize();
            }
        }
    }

    public class MulticastLock {
        private final IBinder mBinder;
        private boolean mHeld;
        private int mRefCount;
        private boolean mRefCounted;
        private String mTag;

        /* JADX WARN: Code duplicated, block: B:15:0x002c A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:13:0x0022, B:15:0x002c, B:16:0x0031, B:19:0x0035, B:20:0x0043), top: B:32:0x0022 }] */
        /* JADX WARN: Code duplicated, block: B:19:0x0035 A[Catch: all -> 0x0044, TRY_ENTER, TryCatch #0 {, blocks: (B:13:0x0022, B:15:0x002c, B:16:0x0031, B:19:0x0035, B:20:0x0043), top: B:32:0x0022 }] */
        /* JADX WARN: Code duplicated, block: B:32:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                                WifiManager.access$908(WifiManager.this);
                            }
                            this.mHeld = true;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                } else if (!this.mHeld) {
                    WifiManager.this.mService.acquireMulticastLock(this.mBinder, this.mTag);
                    synchronized (WifiManager.this) {
                        if (WifiManager.this.mActiveLockCount < 50) {
                            WifiManager.this.mService.releaseMulticastLock();
                            throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                        }
                        WifiManager.access$908(WifiManager.this);
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

        /* JADX WARN: Code duplicated, block: B:35:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void release() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount - 1;
                    this.mRefCount = i2;
                    if (i2 == 0) {
                        try {
                            WifiManager.this.mService.releaseMulticastLock();
                            synchronized (WifiManager.this) {
                                WifiManager.access$910(WifiManager.this);
                            }
                            this.mHeld = false;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                } else if (this.mHeld) {
                    WifiManager.this.mService.releaseMulticastLock();
                    synchronized (WifiManager.this) {
                        WifiManager.access$910(WifiManager.this);
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
                String str3 = this.mHeld ? "held; " : "";
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

    public class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        private void dispatchMessageToListeners(Message message) {
            Object objRemoveListener = WifiManager.this.removeListener(message.arg2);
            switch (message.what) {
                case 69632:
                    if (message.arg1 == 0) {
                        WifiManager.this.mAsyncChannel.sendMessage(AsyncChannel.CMD_CHANNEL_FULL_CONNECTION);
                    } else {
                        Log.e(WifiManager.TAG, "Failed to set up channel connection");
                        WifiManager.this.mAsyncChannel = null;
                    }
                    WifiManager.this.mConnected.countDown();
                    return;
                case AsyncChannel.CMD_CHANNEL_DISCONNECTED /* 69636 */:
                    Log.e(WifiManager.TAG, "Channel connection lost");
                    WifiManager.this.mAsyncChannel = null;
                    getLooper().quit();
                    return;
                case WifiManager.CONNECT_NETWORK_FAILED /* 151554 */:
                case WifiManager.FORGET_NETWORK_FAILED /* 151557 */:
                case WifiManager.SAVE_NETWORK_FAILED /* 151560 */:
                case WifiManager.DISABLE_NETWORK_FAILED /* 151570 */:
                    if (objRemoveListener != null) {
                        ((ActionListener) objRemoveListener).onFailure(message.arg1);
                        return;
                    }
                    return;
                case WifiManager.CONNECT_NETWORK_SUCCEEDED /* 151555 */:
                case WifiManager.FORGET_NETWORK_SUCCEEDED /* 151558 */:
                case WifiManager.SAVE_NETWORK_SUCCEEDED /* 151561 */:
                case WifiManager.DISABLE_NETWORK_SUCCEEDED /* 151571 */:
                    if (objRemoveListener != null) {
                        ((ActionListener) objRemoveListener).onSuccess();
                        return;
                    }
                    return;
                case WifiManager.START_WPS_SUCCEEDED /* 151563 */:
                    if (objRemoveListener != null) {
                        ((WpsCallback) objRemoveListener).onStarted(((WpsResult) message.obj).pin);
                        synchronized (WifiManager.this.mListenerMapLock) {
                            WifiManager.this.mListenerMap.put(message.arg2, objRemoveListener);
                            break;
                        }
                        return;
                    }
                    return;
                case WifiManager.WPS_FAILED /* 151564 */:
                    if (objRemoveListener != null) {
                        ((WpsCallback) objRemoveListener).onFailed(message.arg1);
                        return;
                    }
                    return;
                case WifiManager.WPS_COMPLETED /* 151565 */:
                    if (objRemoveListener != null) {
                        ((WpsCallback) objRemoveListener).onSucceeded();
                        return;
                    }
                    return;
                case WifiManager.CANCEL_WPS_FAILED /* 151567 */:
                    if (objRemoveListener != null) {
                        ((WpsCallback) objRemoveListener).onFailed(message.arg1);
                        return;
                    }
                    return;
                case WifiManager.CANCEL_WPS_SUCCEDED /* 151568 */:
                    if (objRemoveListener != null) {
                        ((WpsCallback) objRemoveListener).onSucceeded();
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

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (WifiManager.sServiceHandlerDispatchLock) {
                dispatchMessageToListeners(message);
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
        int mLockType;
        private int mRefCount;
        private boolean mRefCounted;
        private String mTag;
        private WorkSource mWorkSource;

        /* JADX WARN: Code duplicated, block: B:15:0x0030 A[Catch: all -> 0x004a, TryCatch #2 {, blocks: (B:13:0x0026, B:15:0x0030, B:16:0x0035, B:19:0x0039, B:20:0x0049), top: B:35:0x0026 }] */
        /* JADX WARN: Code duplicated, block: B:19:0x0039 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #2 {, blocks: (B:13:0x0026, B:15:0x0030, B:16:0x0035, B:19:0x0039, B:20:0x0049), top: B:35:0x0026 }] */
        /* JADX WARN: Code duplicated, block: B:35:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                                WifiManager.access$908(WifiManager.this);
                            }
                            this.mHeld = true;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                } else if (!this.mHeld) {
                    WifiManager.this.mService.acquireWifiLock(this.mBinder, this.mLockType, this.mTag, this.mWorkSource);
                    synchronized (WifiManager.this) {
                        if (WifiManager.this.mActiveLockCount < 50) {
                            WifiManager.this.mService.releaseWifiLock(this.mBinder);
                            throw new UnsupportedOperationException("Exceeded maximum number of wifi locks");
                        }
                        WifiManager.access$908(WifiManager.this);
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
                            WifiManager.access$910(WifiManager.this);
                        }
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
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

        /* JADX WARN: Code duplicated, block: B:35:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void release() {
            synchronized (this.mBinder) {
                if (this.mRefCounted) {
                    int i2 = this.mRefCount - 1;
                    this.mRefCount = i2;
                    if (i2 == 0) {
                        try {
                            WifiManager.this.mService.releaseWifiLock(this.mBinder);
                            synchronized (WifiManager.this) {
                                WifiManager.access$910(WifiManager.this);
                            }
                            this.mHeld = false;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                } else if (this.mHeld) {
                    WifiManager.this.mService.releaseWifiLock(this.mBinder);
                    synchronized (WifiManager.this) {
                        WifiManager.access$910(WifiManager.this);
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
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }

        public String toString() {
            String str;
            String str2;
            synchronized (this.mBinder) {
                String hexString = Integer.toHexString(System.identityHashCode(this));
                String str3 = this.mHeld ? "held; " : "";
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

    public static abstract class WpsCallback {
        public abstract void onFailed(int i2);

        public abstract void onStarted(String str);

        public abstract void onSucceeded();
    }

    public WifiManager(Context context, IWifiManager iWifiManager, Looper looper) {
        this.mContext = context;
        this.mService = iWifiManager;
        this.mLooper = looper;
        this.mTargetSdkVersion = context.getApplicationInfo().targetSdkVersion;
    }

    public static /* synthetic */ int access$908(WifiManager wifiManager) {
        int i2 = wifiManager.mActiveLockCount;
        wifiManager.mActiveLockCount = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$910(WifiManager wifiManager) {
        int i2 = wifiManager.mActiveLockCount;
        wifiManager.mActiveLockCount = i2 - 1;
        return i2;
    }

    private int addOrUpdateNetwork(WifiConfiguration wifiConfiguration) {
        try {
            return this.mService.addOrUpdateNetwork(wifiConfiguration);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static int calculateSignalLevel(int i2, int i3) {
        if (i2 <= -100) {
            return 0;
        }
        if (i2 >= -55) {
            return i3 - 1;
        }
        return (int) (((i2 - (-100)) * (i3 - 1)) / 45.0f);
    }

    public static int compareSignalLevel(int i2, int i3) {
        return i2 - i3;
    }

    private synchronized AsyncChannel getChannel() {
        if (this.mAsyncChannel == null) {
            Messenger wifiServiceMessenger = getWifiServiceMessenger();
            if (wifiServiceMessenger == null) {
                throw new IllegalStateException("getWifiServiceMessenger() returned null!  This is invalid.");
            }
            this.mAsyncChannel = new AsyncChannel();
            this.mConnected = new CountDownLatch(1);
            this.mAsyncChannel.connect(this.mContext, new ServiceHandler(this.mLooper), wifiServiceMessenger);
            try {
                this.mConnected.await();
            } catch (InterruptedException unused) {
                Log.e(TAG, "interrupted wait at init");
            }
        }
        return this.mAsyncChannel;
    }

    private int getSupportedFeatures() {
        try {
            return this.mService.getSupportedFeatures();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private boolean isFeatureSupported(int i2) {
        return (getSupportedFeatures() & i2) == i2;
    }

    private int putListener(Object obj) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            do {
                i2 = this.mListenerKey;
                this.mListenerKey = i2 + 1;
            } while (i2 == 0);
            this.mListenerMap.put(i2, obj);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mListenerMapLock) {
            obj = this.mListenerMap.get(i2);
            this.mListenerMap.remove(i2);
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLocalOnlyHotspot() {
        synchronized (this.mLock) {
            if (this.mLOHSCallbackProxy == null) {
                return;
            }
            this.mLOHSCallbackProxy = null;
            try {
                this.mService.stopLocalOnlyHotspot();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public int addNetwork(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return -1;
        }
        wifiConfiguration.networkId = -1;
        return addOrUpdateNetwork(wifiConfiguration);
    }

    public void addOrUpdatePasspointConfiguration(PasspointConfiguration passpointConfiguration) {
        try {
            if (this.mService.addOrUpdatePasspointConfiguration(passpointConfiguration)) {
            } else {
                throw new IllegalArgumentException();
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancelLocalOnlyHotspotRequest() {
        synchronized (this.mLock) {
            stopLocalOnlyHotspot();
        }
    }

    public void cancelWps(WpsCallback wpsCallback) {
        getChannel().sendMessage(CANCEL_WPS, 0, putListener(wpsCallback));
    }

    public void connect(WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        if (wifiConfiguration == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        getChannel().sendMessage(CONNECT_NETWORK, -1, putListener(actionListener), wifiConfiguration);
    }

    public MulticastLock createMulticastLock(String str) {
        return new MulticastLock(str);
    }

    public WifiLock createWifiLock(int i2, String str) {
        return new WifiLock(i2, str);
    }

    public void deauthenticateNetwork(long j2, boolean z2) {
        try {
            this.mService.deauthenticateNetwork(j2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void disable(int i2, ActionListener actionListener) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Network id cannot be negative");
        }
        getChannel().sendMessage(DISABLE_NETWORK, i2, putListener(actionListener));
    }

    public void disableEphemeralNetwork(String str) {
        if (str == null) {
            throw new IllegalArgumentException("SSID cannot be null");
        }
        try {
            this.mService.disableEphemeralNetwork(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean disableNetwork(int i2) {
        try {
            return this.mService.disableNetwork(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean disconnect() {
        try {
            this.mService.disconnect();
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void enableAggressiveHandover(int i2) {
        try {
            this.mService.enableAggressiveHandover(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean enableNetwork(int i2, boolean z2) {
        boolean z3 = z2 && this.mTargetSdkVersion < 21;
        if (z3) {
            NetworkPinner.pin(this.mContext, new NetworkRequest.Builder().clearCapabilities().addTransportType(1).build());
        }
        try {
            boolean zEnableNetwork = this.mService.enableNetwork(i2, z2);
            if (z3 && !zEnableNetwork) {
                NetworkPinner.unpin();
            }
            return zEnableNetwork;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void enableVerboseLogging(int i2) {
        try {
            this.mService.enableVerboseLogging(i2);
        } catch (Exception e2) {
            Log.e(TAG, "enableVerboseLogging " + e2.toString());
        }
    }

    public void enableWifiConnectivityManager(boolean z2) {
        try {
            this.mService.enableWifiConnectivityManager(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void factoryReset() {
        try {
            this.mService.factoryReset();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void finalize() throws Throwable {
        try {
            AsyncChannel asyncChannel = this.mAsyncChannel;
            if (asyncChannel != null) {
                asyncChannel.disconnect();
            }
        } finally {
            super.finalize();
        }
    }

    public void forget(int i2, ActionListener actionListener) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Network id cannot be negative");
        }
        getChannel().sendMessage(FORGET_NETWORK, i2, putListener(actionListener));
    }

    public int getAggressiveHandover() {
        try {
            return this.mService.getAggressiveHandover();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getAllowScansWithTraffic() {
        try {
            return this.mService.getAllowScansWithTraffic();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public List<BatchedScanResult> getBatchedScanResults() {
        return null;
    }

    public List<WifiConfiguration> getConfiguredNetworks() {
        try {
            ParceledListSlice configuredNetworks = this.mService.getConfiguredNetworks();
            return configuredNetworks == null ? Collections.emptyList() : configuredNetworks.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WifiInfo getConnectionInfo() {
        try {
            return this.mService.getConnectionInfo(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WifiConnectionStatistics getConnectionStatistics() {
        try {
            return this.mService.getConnectionStatistics();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WifiActivityEnergyInfo getControllerActivityEnergyInfo(int i2) {
        WifiActivityEnergyInfo wifiActivityEnergyInfoReportActivityInfo;
        if (this.mService == null) {
            return null;
        }
        try {
            synchronized (this) {
                wifiActivityEnergyInfoReportActivityInfo = this.mService.reportActivityInfo();
            }
            return wifiActivityEnergyInfoReportActivityInfo;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getCountryCode() {
        try {
            return this.mService.getCountryCode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Network getCurrentNetwork() {
        try {
            return this.mService.getCurrentNetwork();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getCurrentNetworkWpsNfcConfigurationToken() {
        try {
            return this.mService.getCurrentNetworkWpsNfcConfigurationToken();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getCurrentRssi() {
        try {
            return this.mService.getCurrentRssi();
        } catch (RemoteException unused) {
            return -127;
        }
    }

    public DhcpInfo getDhcpInfo() {
        try {
            return this.mService.getDhcpInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean getEnableAutoJoinWhenAssociated() {
        try {
            return this.mService.getEnableAutoJoinWhenAssociated();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<OsuProvider> getMatchingOsuProviders(ScanResult scanResult) {
        try {
            return this.mService.getMatchingOsuProviders(scanResult);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WifiConfiguration getMatchingWifiConfig(ScanResult scanResult) {
        try {
            return this.mService.getMatchingWifiConfig(scanResult);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<PasspointConfiguration> getPasspointConfigurations() {
        try {
            return this.mService.getPasspointConfigurations();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<WifiConfiguration> getPrivilegedConfiguredNetworks() {
        try {
            ParceledListSlice privilegedConfiguredNetworks = this.mService.getPrivilegedConfiguredNetworks();
            return privilegedConfiguredNetworks == null ? Collections.emptyList() : privilegedConfiguredNetworks.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<ScanResult> getScanResults() {
        try {
            return this.mService.getScanResults(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void getTxPacketCount(TxPacketCountListener txPacketCountListener) {
        getChannel().sendMessage(RSSI_PKTCNT_FETCH, 0, putListener(txPacketCountListener));
    }

    public int getVerboseLoggingLevel() {
        try {
            return this.mService.getVerboseLoggingLevel();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WifiConfiguration getWifiApConfiguration() {
        try {
            return this.mService.getWifiApConfiguration();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getWifiApState() {
        try {
            return this.mService.getWifiApEnabledState();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Messenger getWifiServiceMessenger() {
        try {
            return this.mService.getWifiServiceMessenger();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getWifiState() {
        try {
            return this.mService.getWifiEnabledState();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean initializeMulticastFiltering() {
        try {
            this.mService.initializeMulticastFiltering();
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean is5GHzBandSupported() {
        return isFeatureSupported(2);
    }

    public boolean isAdditionalStaSupported() {
        return isFeatureSupported(2048);
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public boolean isBatchedScanSupported() {
        return false;
    }

    public boolean isDeviceToApRttSupported() {
        return isFeatureSupported(256);
    }

    public boolean isDeviceToDeviceRttSupported() {
        return isFeatureSupported(128);
    }

    public boolean isDualBandSupported() {
        try {
            return this.mService.isDualBandSupported();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isEnhancedPowerReportingSupported() {
        return isFeatureSupported(65536);
    }

    public boolean isMulticastEnabled() {
        try {
            return this.mService.isMulticastEnabled();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNetworkValidForVoWifi() {
        try {
            return this.mService.isNetworkValidForVoWifi();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isOffChannelTdlsSupported() {
        return isFeatureSupported(8192);
    }

    public boolean isP2pSupported() {
        return isFeatureSupported(8);
    }

    public boolean isPasspointSupported() {
        return isFeatureSupported(4);
    }

    public boolean isPortableHotspotSupported() {
        return isFeatureSupported(16);
    }

    public boolean isPreferredNetworkOffloadSupported() {
        return isFeatureSupported(1024);
    }

    public boolean isScanAlwaysAvailable() {
        try {
            return this.mService.isScanAlwaysAvailable();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isTdlsSupported() {
        return isFeatureSupported(4096);
    }

    public boolean isWifiApEnabled() {
        return getWifiApState() == 13;
    }

    public boolean isWifiAwareSupported() {
        return isFeatureSupported(64);
    }

    public boolean isWifiEnabled() {
        return getWifiState() == 3;
    }

    public boolean isWifiScannerSupported() {
        return isFeatureSupported(32);
    }

    public int matchProviderWithCurrentNetwork(String str) {
        try {
            return this.mService.matchProviderWithCurrentNetwork(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notifyAndCloseWifi() {
        try {
            this.mService.notifyAndCloseWifi();
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public boolean pingSupplicant() {
        return isWifiEnabled();
    }

    public void queryPasspointIcon(long j2, String str) {
        try {
            this.mService.queryPasspointIcon(j2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean reassociate() {
        try {
            this.mService.reassociate();
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean reconnect() {
        try {
            this.mService.reconnect();
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean registerWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver) {
        try {
            return this.mService.registerWifiNetworkEventObserver(iWifiNetworkEventObserver);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean removeNetwork(int i2) {
        try {
            return this.mService.removeNetwork(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removePasspointConfiguration(String str) {
        try {
            if (this.mService.removePasspointConfiguration(str)) {
            } else {
                throw new IllegalArgumentException();
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void restoreBackupData(byte[] bArr) {
        try {
            this.mService.restoreBackupData(bArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void restoreSupplicantBackupData(byte[] bArr, byte[] bArr2) {
        try {
            this.mService.restoreSupplicantBackupData(bArr, bArr2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public byte[] retrieveBackupData() {
        try {
            return this.mService.retrieveBackupData();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void save(WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        if (wifiConfiguration == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        getChannel().sendMessage(SAVE_NETWORK, 0, putListener(actionListener), wifiConfiguration);
    }

    @Deprecated
    public boolean saveConfiguration() {
        try {
            return this.mService.saveConfiguration();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAllowScansWithTraffic(int i2) {
        try {
            this.mService.setAllowScansWithTraffic(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setCheckingInternetForVoWifi(boolean z2) {
        try {
            return this.mService.setCheckingInternetForVoWifi(z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void setCountryCode(String str, boolean z2) {
        try {
            this.mService.setCountryCode(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setEnableAutoJoinWhenAssociated(boolean z2) {
        try {
            return this.mService.setEnableAutoJoinWhenAssociated(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setTdlsEnabled(InetAddress inetAddress, boolean z2) {
        try {
            this.mService.enableTdls(inetAddress.getHostAddress(), z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setTdlsEnabledWithMacAddress(String str, boolean z2) {
        try {
            this.mService.enableTdlsWithMacAddress(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setWifiApConfiguration(WifiConfiguration wifiConfiguration) {
        try {
            this.mService.setWifiApConfiguration(wifiConfiguration);
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean setWifiApEnabled(WifiConfiguration wifiConfiguration, boolean z2) {
        Log.w(TAG, this.mContext.getOpPackageName() + " attempted call to setWifiApEnabled: enabled = " + z2);
        return false;
    }

    public boolean setWifiEnabled(boolean z2) {
        try {
            return this.mService.setWifiEnabled(this.mContext.getOpPackageName(), z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean softApAddClientToWhiteList(String str, String str2) {
        try {
            return this.mService.softApAddClientToWhiteList(str, str2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean softApBlockStation(String str) {
        try {
            return this.mService.softApBlockStation(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void softApCancelWps(WpsCallback wpsCallback) {
        getChannel().sendMessage(SOFTAP_CANCEL_WPS, 0, putListener(wpsCallback));
    }

    public boolean softApDelClientFromWhiteList(String str, String str2) {
        try {
            return this.mService.softApDelClientFromWhiteList(str, str2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public String softApGetBlockedStations() {
        try {
            return this.mService.softApGetBlockedStations();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<String> softApGetBlockedStationsDetail() {
        try {
            return this.mService.softApGetBlockedStationsDetail();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<String> softApGetClientWhiteList() {
        try {
            return this.mService.softApGetClientWhiteList();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String softApGetConnectedStations() {
        try {
            return this.mService.softApGetConnectedStations();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<String> softApGetConnectedStationsDetail() {
        try {
            return this.mService.softApGetConnectedStationsDetail();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean softApIsWhiteListEnabled() {
        try {
            return this.mService.softApIsWhiteListEnabled();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean softApSetClientWhiteListEnabled(boolean z2) {
        try {
            return this.mService.softApSetClientWhiteListEnabled(z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void softApStartWps(WpsInfo wpsInfo, WpsCallback wpsCallback) {
        if (wpsInfo == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        getChannel().sendMessage(SOFTAP_START_WPS, 0, putListener(wpsCallback), wpsInfo);
    }

    public boolean softApUnblockStation(String str) {
        try {
            return this.mService.softApUnblockStation(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean softApWpsCheckPin(String str) {
        try {
            return this.mService.softApWpsCheckPin(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void startLocalOnlyHotspot(LocalOnlyHotspotCallback localOnlyHotspotCallback, Handler handler) {
        synchronized (this.mLock) {
            LocalOnlyHotspotCallbackProxy localOnlyHotspotCallbackProxy = new LocalOnlyHotspotCallbackProxy(this, handler == null ? this.mContext.getMainLooper() : handler.getLooper(), localOnlyHotspotCallback);
            try {
                int iStartLocalOnlyHotspot = this.mService.startLocalOnlyHotspot(localOnlyHotspotCallbackProxy.getMessenger(), new Binder(), this.mContext.getOpPackageName());
                if (iStartLocalOnlyHotspot != 0) {
                    localOnlyHotspotCallbackProxy.notifyFailed(iStartLocalOnlyHotspot);
                } else {
                    this.mLOHSCallbackProxy = localOnlyHotspotCallbackProxy;
                }
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public boolean startLocationRestrictedScan(WorkSource workSource) {
        return false;
    }

    public boolean startScan() {
        return startScan(null);
    }

    public boolean startSoftAp(WifiConfiguration wifiConfiguration) {
        try {
            return this.mService.startSoftAp(wifiConfiguration);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startWps(WpsInfo wpsInfo, WpsCallback wpsCallback) {
        if (wpsInfo == null) {
            throw new IllegalArgumentException("config cannot be null");
        }
        getChannel().sendMessage(START_WPS, 0, putListener(wpsCallback), wpsInfo);
    }

    public boolean stopSoftAp() {
        try {
            return this.mService.stopSoftAp();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterLocalOnlyHotspotObserver() {
        synchronized (this.mLock) {
            if (this.mLOHSObserverProxy == null) {
                return;
            }
            this.mLOHSObserverProxy = null;
            try {
                this.mService.stopWatchLocalOnlyHotspot();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public boolean unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver) {
        try {
            return this.mService.unregisterWifiNetworkEventObserver(iWifiNetworkEventObserver);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void updateInterfaceIpState(String str, int i2) {
        try {
            this.mService.updateInterfaceIpState(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int updateNetwork(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null || wifiConfiguration.networkId < 0) {
            return -1;
        }
        return addOrUpdateNetwork(wifiConfiguration);
    }

    public void watchLocalOnlyHotspot(LocalOnlyHotspotObserver localOnlyHotspotObserver, Handler handler) {
        synchronized (this.mLock) {
            LocalOnlyHotspotObserverProxy localOnlyHotspotObserverProxy = new LocalOnlyHotspotObserverProxy(this, handler == null ? this.mContext.getMainLooper() : handler.getLooper(), localOnlyHotspotObserver);
            this.mLOHSObserverProxy = localOnlyHotspotObserverProxy;
            try {
                this.mService.startWatchLocalOnlyHotspot(localOnlyHotspotObserverProxy.getMessenger(), new Binder());
                this.mLOHSObserverProxy.registered();
            } catch (RemoteException e2) {
                this.mLOHSObserverProxy = null;
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public WifiLock createWifiLock(String str) {
        return new WifiLock(1, str);
    }

    public boolean startScan(WorkSource workSource) {
        try {
            this.mService.startScan(null, workSource, this.mContext.getOpPackageName());
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void connect(int i2, ActionListener actionListener) {
        if (i2 >= 0) {
            getChannel().sendMessage(CONNECT_NETWORK, i2, putListener(actionListener));
            return;
        }
        throw new IllegalArgumentException("Network id cannot be negative");
    }
}
