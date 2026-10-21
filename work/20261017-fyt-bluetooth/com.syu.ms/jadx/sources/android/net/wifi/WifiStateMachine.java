package android.net.wifi;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.backup.IBackupManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.DhcpResults;
import android.net.DhcpStateMachine;
import android.net.InterfaceConfiguration;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.net.NetworkUtils;
import android.net.ProxyProperties;
import android.net.RouteInfo;
import android.net.Uri;
import android.net.wifi.p2p.WifiP2pManager;
import android.net.wifi.p2p.WifiP2pService;
import android.os.BatteryStats;
import android.os.Bundle;
import android.os.INetworkManagementService;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.WorkSource;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.TimedRemoteCaller;
import j.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import u.b;
import u.l;
import u.m;
import x.a;

/* JADX INFO: loaded from: classes.dex */
public class WifiStateMachine extends m {
    private static final String ACTION_DELAYED_DRIVER_STOP = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP";
    private static final String ACTION_REFRESH_BATCHED_SCAN = "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN";
    private static final String ACTION_START_SCAN = "com.android.server.WifiManager.action.START_SCAN";
    public static final int BASE = 131072;
    private static final String BATCHED_SETTING = "batched_settings";
    private static final String BATCHED_WORKSOURCE = "batched_worksource";
    private static final String BSSID_STR = "bssid=";
    public static final int CMD_ADD_OR_UPDATE_NETWORK = 131124;
    public static final int CMD_BLACKLIST_NETWORK = 131128;
    public static final int CMD_BLUETOOTH_ADAPTER_STATE_CHANGE = 131103;
    public static final int CMD_BOOT_COMPLETED = 131206;
    public static final int CMD_CAPTIVE_CHECK_COMPLETE = 131092;
    public static final int CMD_CLEAR_BLACKLIST = 131129;
    public static final int CMD_DELAYED_STOP_DRIVER = 131090;
    public static final int CMD_DISABLE_P2P_REQ = 131204;
    public static final int CMD_DISABLE_P2P_RSP = 131205;
    public static final int CMD_DISCONNECT = 131145;
    public static final int CMD_DRIVER_START_TIMED_OUT = 131091;
    public static final int CMD_ENABLE_ALL_NETWORKS = 131127;
    public static final int CMD_ENABLE_BACKGROUND_SCAN = 131163;
    public static final int CMD_ENABLE_NETWORK = 131126;
    public static final int CMD_ENABLE_P2P = 131203;
    public static final int CMD_ENABLE_RSSI_POLL = 131154;
    public static final int CMD_ENABLE_TDLS = 131164;
    public static final int CMD_GET_CONFIGURED_NETWORKS = 131131;
    public static final int CMD_IP_ADDRESS_REMOVED = 131213;
    public static final int CMD_IP_ADDRESS_UPDATED = 131212;
    public static final int CMD_NO_NETWORKS_PERIODIC_SCAN = 131160;
    public static final int CMD_PING_SUPPLICANT = 131123;
    public static final int CMD_POLL_BATCHED_SCAN = 131209;
    public static final int CMD_REASSOCIATE = 131147;
    public static final int CMD_RECONNECT = 131146;
    public static final int CMD_RELOAD_TLS_AND_RECONNECT = 131214;
    public static final int CMD_REMOVE_NETWORK = 131125;
    public static final int CMD_REQUEST_AP_CONFIG = 131099;
    public static final int CMD_RESET_SUPPLICANT_STATE = 131183;
    public static final int CMD_RESPONSE_AP_CONFIG = 131100;
    public static final int CMD_RSSI_POLL = 131155;
    public static final int CMD_SAVE_CONFIG = 131130;
    public static final int CMD_SET_AP_CONFIG = 131097;
    public static final int CMD_SET_AP_CONFIG_COMPLETED = 131098;
    public static final int CMD_SET_BATCHED_SCAN = 131207;
    public static final int CMD_SET_COUNTRY_CODE = 131152;
    public static final int CMD_SET_FREQUENCY_BAND = 131162;
    public static final int CMD_SET_HIGH_PERF_MODE = 131149;
    public static final int CMD_SET_OPERATIONAL_MODE = 131144;
    public static final int CMD_SET_SUSPEND_OPT_ENABLED = 131158;
    public static final int CMD_START_AP = 131093;
    public static final int CMD_START_AP_FAILURE = 131095;
    public static final int CMD_START_AP_SUCCESS = 131094;
    public static final int CMD_START_DRIVER = 131085;
    public static final int CMD_START_NEXT_BATCHED_SCAN = 131208;
    public static final int CMD_START_PACKET_FILTERING = 131156;
    public static final int CMD_START_SCAN = 131143;
    public static final int CMD_START_SUPPLICANT = 131083;
    public static final int CMD_STATIC_IP_FAILURE = 131088;
    public static final int CMD_STATIC_IP_SUCCESS = 131087;
    public static final int CMD_STOP_AP = 131096;
    public static final int CMD_STOP_DRIVER = 131086;
    public static final int CMD_STOP_PACKET_FILTERING = 131157;
    public static final int CMD_STOP_SUPPLICANT = 131084;
    public static final int CMD_STOP_SUPPLICANT_FAILED = 131089;
    public static final int CMD_TETHER_NOTIFICATION_TIMED_OUT = 131102;
    public static final int CMD_TETHER_STATE_CHANGE = 131101;
    public static final int CONNECT_MODE = 1;
    private static final boolean DBG = false;
    private static final boolean DEBUG_PARSE = false;
    private static final int DEFAULT_MAX_DHCP_RETRIES = 9;
    private static final String DELAYED_STOP_COUNTER = "DelayedStopCounter";
    private static final String DELIMITER_STR = "====";
    private static final int DRIVER_START_TIME_OUT_MSECS = 10000;
    private static final int DRIVER_STOP_REQUEST = 0;
    private static final String END_STR = "####";
    private static final int FAILURE = -1;
    private static final String FLAGS_STR = "flags=";
    private static final String FREQ_STR = "freq=";
    private static final String ID_STR = "id=";
    private static final String LEVEL_STR = "level=";
    private static final int MAX_RSSI = 256;
    private static final int MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS = 600000;
    private static final int MIN_RSSI = -200;
    public static final int MULTICAST_V4 = 0;
    public static final int MULTICAST_V6 = 1;
    private static final String NETWORKTYPE = "WIFI";
    private static final int POLL_RSSI_INTERVAL_MSECS = 3000;
    public static final int SCAN_ONLY_MODE = 2;
    public static final int SCAN_ONLY_WITH_WIFI_OFF_MODE = 3;
    private static final int SCAN_REQUEST = 0;
    private static final int SCAN_RESULT_CACHE_SIZE = 80;
    private static final String SSID_STR = "ssid=";
    private static final int SUCCESS = 1;
    private static final int SUPPLICANT_RESTART_INTERVAL_MSECS = 5000;
    private static final int SUPPLICANT_RESTART_TRIES = 5;
    private static final int SUSPEND_DUE_TO_DHCP = 1;
    private static final int SUSPEND_DUE_TO_HIGH_PERF = 2;
    private static final int SUSPEND_DUE_TO_SCREEN = 4;
    private static final int TETHER_NOTIFICATION_TIME_OUT_MSECS = 5000;
    private static final String TSF_STR = "tsf=";
    private static final int UNKNOWN_SCAN_SOURCE = -1;
    private static final Pattern scanResultPattern = Pattern.compile("\t+");
    private AlarmManager mAlarmManager;
    private final boolean mBackgroundScanSupported;
    private int mBatchedScanCsph;
    private PendingIntent mBatchedScanIntervalIntent;
    private long mBatchedScanMinPollTime;
    private int mBatchedScanOwnerUid;
    private final List<BatchedScanResult> mBatchedScanResults;
    private BatchedScanSettings mBatchedScanSettings;
    private WorkSource mBatchedScanWorkSource;
    private final d mBatteryStats;
    private boolean mBluetoothConnectionActive;
    private l mCaptivePortalCheckState;
    private ConnectivityManager mCm;
    private l mConnectModeState;
    private l mConnectedState;
    private Context mContext;
    private final AtomicInteger mCountryCodeSequence;
    private final int mDefaultFrameworkScanIntervalMs;
    private l mDefaultState;
    private int mDelayedStopCounter;
    private boolean mDhcpActive;
    private DhcpResults mDhcpResults;
    private final Object mDhcpResultsLock;
    private DhcpStateMachine mDhcpStateMachine;
    private l mDisconnectedState;
    private l mDisconnectingState;
    private int mDriverStartToken;
    private l mDriverStartedState;
    private l mDriverStartingState;
    private final int mDriverStopDelayMs;
    private PendingIntent mDriverStopIntent;
    private l mDriverStoppedState;
    private l mDriverStoppingState;
    private boolean mEnableBackgroundScan;
    private boolean mEnableRssiPolling;
    private int mExpectedBatchedScans;
    private AtomicBoolean mFilteringMulticastV4Packets;
    private AtomicInteger mFrequencyBand;
    private boolean mInDelayedStop;
    private l mInitialState;
    private String mInterfaceName;
    private InterfaceObserver mInterfaceObserver;
    private boolean mIsRunning;
    private l mL2ConnectedState;
    private String mLastBssid;
    private long mLastEnableAllNetworksTime;
    private int mLastNetworkId;
    private final WorkSource mLastRunningWifiUids;
    private String mLastSetCountryCode;
    private int mLastSignalLevel;
    private LinkProperties mLinkProperties;
    private final LinkProperties mNetlinkLinkProperties;
    private NetworkInfo mNetworkInfo;
    private int mNotedBatchedScanCsph;
    private WorkSource mNotedBatchedScanWorkSource;
    private INetworkManagementService mNwService;
    private l mObtainingIpState;
    private int mOperationalMode;
    private final AtomicBoolean mP2pConnected;
    private final boolean mP2pSupported;
    private int mPeriodicScanToken;
    private volatile String mPersistedCountryCode;
    private final String mPrimaryDeviceType;
    private int mReconnectCount;
    private b mReplyChannel;
    private boolean mReportedRunning;
    private int mRssiPollToken;
    private final WorkSource mRunningWifiUids;
    private PendingIntent mScanIntent;
    private l mScanModeState;
    private final LruCache<String, ScanResult> mScanResultCache;
    private boolean mScanResultIsPending;
    private List<ScanResult> mScanResults;
    private WorkSource mScanWorkSource;
    private AtomicBoolean mScreenBroadcastReceived;
    private l mSoftApStartedState;
    private l mSoftApStartingState;
    private int mSupplicantRestartCount;
    private long mSupplicantScanIntervalMs;
    private l mSupplicantStartedState;
    private l mSupplicantStartingState;
    private SupplicantStateTracker mSupplicantStateTracker;
    private int mSupplicantStopFailureToken;
    private l mSupplicantStoppingState;
    private int mSuspendOptNeedsDisabled;
    private PowerManager.WakeLock mSuspendWakeLock;
    private boolean mTemporarilyDisconnectWifi;
    private String mTetherInterfaceName;
    private int mTetherToken;
    private l mTetheredState;
    private l mTetheringState;
    private l mUntetheringState;
    private AtomicBoolean mUserWantsSuspendOpt;
    private l mVerifyingLinkState;
    private l mWaitForP2pDisableState;
    private PowerManager.WakeLock mWakeLock;
    private b mWifiApConfigChannel;
    private final AtomicInteger mWifiApState;
    private WifiConfigStore mWifiConfigStore;
    private WifiInfo mWifiInfo;
    private WifiManager mWifiManager;
    private WifiMonitor mWifiMonitor;
    private WifiNative mWifiNative;
    private b mWifiP2pChannel;
    private WifiP2pManager mWifiP2pManager;
    private final AtomicInteger mWifiState;
    private l mWpsRunningState;

    public class CaptivePortalCheckState extends l {
        public CaptivePortalCheckState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.this.log(getName() + " enter");
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK;
            wifiStateMachine.setNetworkDetailedState(detailedState);
            WifiStateMachine.this.mWifiConfigStore.updateStatus(WifiStateMachine.this.mLastNetworkId, detailedState);
            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
            wifiStateMachine2.sendNetworkStateChangeBroadcast(wifiStateMachine2.mLastBssid);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != 131092) {
                return false;
            }
            WifiStateMachine.this.log(getName() + " CMD_CAPTIVE_CHECK_COMPLETE");
            try {
                WifiStateMachine.this.mNwService.enableIpv6(WifiStateMachine.this.mInterfaceName);
            } catch (RemoteException e2) {
                WifiStateMachine.this.loge("Failed to enable IPv6: " + e2);
            } catch (IllegalStateException e3) {
                WifiStateMachine.this.loge("Failed to enable IPv6: " + e3);
            }
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.CONNECTED;
            wifiStateMachine.setNetworkDetailedState(detailedState);
            WifiStateMachine.this.mWifiConfigStore.updateStatus(WifiStateMachine.this.mLastNetworkId, detailedState);
            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
            wifiStateMachine2.sendNetworkStateChangeBroadcast(wifiStateMachine2.mLastBssid);
            WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
            wifiStateMachine3.transitionTo(wifiStateMachine3.mConnectedState);
            return true;
        }
    }

    public class ConnectModeState extends l {
        public ConnectModeState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            WpsResult wpsResultStartWpsPbc;
            int i2 = message.what;
            switch (i2) {
                case WifiStateMachine.CMD_ADD_OR_UPDATE_NETWORK /* 131124 */:
                    WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.replyToMessage(message, WifiStateMachine.CMD_ADD_OR_UPDATE_NETWORK, wifiStateMachine.mWifiConfigStore.addOrUpdateNetwork(wifiConfiguration));
                    return true;
                case WifiStateMachine.CMD_REMOVE_NETWORK /* 131125 */:
                    WifiStateMachine.this.replyToMessage(message, message.what, WifiStateMachine.this.mWifiConfigStore.removeNetwork(message.arg1) ? 1 : -1);
                    return true;
                case WifiStateMachine.CMD_ENABLE_NETWORK /* 131126 */:
                    WifiStateMachine.this.replyToMessage(message, message.what, WifiStateMachine.this.mWifiConfigStore.enableNetwork(message.arg1, message.arg2 == 1) ? 1 : -1);
                    return true;
                case WifiStateMachine.CMD_ENABLE_ALL_NETWORKS /* 131127 */:
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - WifiStateMachine.this.mLastEnableAllNetworksTime > 600000) {
                        WifiStateMachine.this.mWifiConfigStore.enableAllNetworks();
                        WifiStateMachine.this.mLastEnableAllNetworksTime = jElapsedRealtime;
                    }
                    return true;
                case WifiStateMachine.CMD_BLACKLIST_NETWORK /* 131128 */:
                    WifiStateMachine.this.mWifiNative.addToBlacklist((String) message.obj);
                    return true;
                case WifiStateMachine.CMD_CLEAR_BLACKLIST /* 131129 */:
                    WifiStateMachine.this.mWifiNative.clearBlacklist();
                    return true;
                case WifiStateMachine.CMD_SAVE_CONFIG /* 131130 */:
                    WifiStateMachine.this.replyToMessage(message, WifiStateMachine.CMD_SAVE_CONFIG, WifiStateMachine.this.mWifiConfigStore.saveConfig() ? 1 : -1);
                    IBackupManager iBackupManagerAsInterface = IBackupManager.Stub.asInterface(ServiceManager.getService(Context.BACKUP_SERVICE));
                    if (iBackupManagerAsInterface != null) {
                        try {
                            iBackupManagerAsInterface.dataChanged("com.android.providers.settings");
                            break;
                        } catch (Exception unused) {
                        }
                    }
                    return true;
                case WifiStateMachine.CMD_GET_CONFIGURED_NETWORKS /* 131131 */:
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.replyToMessage(message, i2, wifiStateMachine2.mWifiConfigStore.getConfiguredNetworks());
                    return true;
                default:
                    switch (i2) {
                        case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                            WifiStateMachine.this.mWifiNative.disconnect();
                            return true;
                        case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                            WifiStateMachine.this.mWifiNative.reconnect();
                            return true;
                        case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                            WifiStateMachine.this.mWifiNative.reassociate();
                            return true;
                        default:
                            switch (i2) {
                                case WifiStateMachine.CMD_RELOAD_TLS_AND_RECONNECT /* 131214 */:
                                    if (WifiStateMachine.this.mWifiConfigStore.needsUnlockedKeyStore()) {
                                        WifiStateMachine.this.logd("Reconnecting to give a chance to un-connected TLS networks");
                                        WifiStateMachine.this.mWifiNative.disconnect();
                                        WifiStateMachine.this.mWifiNative.reconnect();
                                    }
                                    return true;
                                case WifiP2pService.DISCONNECT_WIFI_REQUEST /* 143372 */:
                                    if (message.arg1 == 1) {
                                        WifiStateMachine.this.mWifiNative.disconnect();
                                        WifiStateMachine.this.mTemporarilyDisconnectWifi = true;
                                    } else {
                                        WifiStateMachine.this.mWifiNative.reconnect();
                                        WifiStateMachine.this.mTemporarilyDisconnectWifi = false;
                                    }
                                    return true;
                                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                                    WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiMonitor.ASSOCIATION_REJECTION_EVENT);
                                    return true;
                                case WifiManager.CONNECT_NETWORK /* 151553 */:
                                    int networkId = message.arg1;
                                    WifiConfiguration wifiConfiguration2 = (WifiConfiguration) message.obj;
                                    if (wifiConfiguration2 != null) {
                                        networkId = WifiStateMachine.this.mWifiConfigStore.saveNetwork(wifiConfiguration2).getNetworkId();
                                    }
                                    if (WifiStateMachine.this.mWifiConfigStore.selectNetwork(networkId) && WifiStateMachine.this.mWifiNative.reconnect()) {
                                        WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiManager.CONNECT_NETWORK);
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.CONNECT_NETWORK_SUCCEEDED);
                                        WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                                        wifiStateMachine3.transitionTo(wifiStateMachine3.mDisconnectingState);
                                    } else {
                                        WifiStateMachine.this.loge("Failed to connect config: " + wifiConfiguration2 + " netId: " + networkId);
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.CONNECT_NETWORK_FAILED, 0);
                                    }
                                    return true;
                                case WifiManager.FORGET_NETWORK /* 151556 */:
                                    if (WifiStateMachine.this.mWifiConfigStore.forgetNetwork(message.arg1)) {
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.FORGET_NETWORK_SUCCEEDED);
                                    } else {
                                        WifiStateMachine.this.loge("Failed to forget network");
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.FORGET_NETWORK_FAILED, 0);
                                    }
                                    return true;
                                case WifiManager.SAVE_NETWORK /* 151559 */:
                                    if (WifiStateMachine.this.mWifiConfigStore.saveNetwork((WifiConfiguration) message.obj).getNetworkId() != -1) {
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.SAVE_NETWORK_SUCCEEDED);
                                    } else {
                                        WifiStateMachine.this.loge("Failed to save network");
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.SAVE_NETWORK_FAILED, 0);
                                    }
                                    return true;
                                case WifiManager.START_WPS /* 151562 */:
                                    WpsInfo wpsInfo = (WpsInfo) message.obj;
                                    int i3 = wpsInfo.setup;
                                    if (i3 == 0) {
                                        wpsResultStartWpsPbc = WifiStateMachine.this.mWifiConfigStore.startWpsPbc(wpsInfo);
                                    } else if (i3 == 1) {
                                        wpsResultStartWpsPbc = WifiStateMachine.this.mWifiConfigStore.startWpsWithPinFromDevice(wpsInfo);
                                    } else if (i3 != 2) {
                                        wpsResultStartWpsPbc = new WpsResult(WpsResult.Status.FAILURE);
                                        WifiStateMachine.this.loge("Invalid setup for WPS");
                                    } else {
                                        wpsResultStartWpsPbc = WifiStateMachine.this.mWifiConfigStore.startWpsWithPinFromAccessPoint(wpsInfo);
                                    }
                                    if (wpsResultStartWpsPbc.status == WpsResult.Status.SUCCESS) {
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.START_WPS_SUCCEEDED, wpsResultStartWpsPbc);
                                        WifiStateMachine wifiStateMachine4 = WifiStateMachine.this;
                                        wifiStateMachine4.transitionTo(wifiStateMachine4.mWpsRunningState);
                                    } else {
                                        WifiStateMachine.this.loge("Failed to start WPS with config " + wpsInfo.toString());
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.WPS_FAILED, 0);
                                    }
                                    return true;
                                case WifiManager.DISABLE_NETWORK /* 151569 */:
                                    if (WifiStateMachine.this.mWifiConfigStore.disableNetwork(message.arg1, 0)) {
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.DISABLE_NETWORK_SUCCEEDED);
                                    } else {
                                        WifiStateMachine.this.replyToMessage(message, WifiManager.DISABLE_NETWORK_FAILED, 0);
                                    }
                                    return true;
                                default:
                                    switch (i2) {
                                        case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                                            WifiStateMachine.this.mLastNetworkId = message.arg1;
                                            WifiStateMachine.this.mLastBssid = (String) message.obj;
                                            WifiStateMachine.this.mWifiInfo.setBSSID(WifiStateMachine.this.mLastBssid);
                                            WifiStateMachine.this.mWifiInfo.setNetworkId(WifiStateMachine.this.mLastNetworkId);
                                            WifiStateMachine.this.setNetworkDetailedState(NetworkInfo.DetailedState.OBTAINING_IPADDR);
                                            WifiStateMachine wifiStateMachine5 = WifiStateMachine.this;
                                            wifiStateMachine5.sendNetworkStateChangeBroadcast(wifiStateMachine5.mLastBssid);
                                            WifiStateMachine wifiStateMachine6 = WifiStateMachine.this;
                                            wifiStateMachine6.transitionTo(wifiStateMachine6.mObtainingIpState);
                                            return true;
                                        case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                                            WifiStateMachine.this.handleNetworkDisconnect();
                                            WifiStateMachine wifiStateMachine7 = WifiStateMachine.this;
                                            wifiStateMachine7.transitionTo(wifiStateMachine7.mDisconnectedState);
                                            return true;
                                        default:
                                            switch (i2) {
                                                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                                                    SupplicantState supplicantStateHandleSupplicantStateChange = WifiStateMachine.this.handleSupplicantStateChange(message);
                                                    if (!SupplicantState.isDriverActive(supplicantStateHandleSupplicantStateChange)) {
                                                        if (WifiStateMachine.this.mNetworkInfo.getState() != NetworkInfo.State.DISCONNECTED) {
                                                            WifiStateMachine.this.handleNetworkDisconnect();
                                                        }
                                                        WifiStateMachine.this.log("Detected an interface down, restart driver");
                                                        WifiStateMachine wifiStateMachine8 = WifiStateMachine.this;
                                                        wifiStateMachine8.transitionTo(wifiStateMachine8.mDriverStoppedState);
                                                        WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_START_DRIVER);
                                                    } else if (supplicantStateHandleSupplicantStateChange == SupplicantState.DISCONNECTED && WifiStateMachine.this.mNetworkInfo.getState() != NetworkInfo.State.DISCONNECTED) {
                                                        WifiStateMachine.this.handleNetworkDisconnect();
                                                        WifiStateMachine wifiStateMachine9 = WifiStateMachine.this;
                                                        wifiStateMachine9.transitionTo(wifiStateMachine9.mDisconnectedState);
                                                    }
                                                    return true;
                                                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                                                    WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiMonitor.AUTHENTICATION_FAILURE_EVENT);
                                                    return true;
                                                default:
                                                    return false;
                                            }
                                    }
                            }
                    }
            }
        }
    }

    public class ConnectedState extends l {
        public ConnectedState() {
        }

        @Override // u.l
        public void exit() {
            WifiStateMachine.this.checkAndSetConnectivityInstance();
            WifiStateMachine.this.mCm.requestNetworkTransitionWakelock(getName());
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != 135189) {
                return false;
            }
            try {
                WifiStateMachine.this.mNwService.disableIpv6(WifiStateMachine.this.mInterfaceName);
            } catch (RemoteException e2) {
                WifiStateMachine.this.loge("Failed to disable IPv6: " + e2);
            } catch (IllegalStateException e3) {
                WifiStateMachine.this.loge("Failed to disable IPv6: " + e3);
            }
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.DISCONNECTED;
            wifiStateMachine.setNetworkDetailedState(detailedState);
            WifiStateMachine.this.mWifiConfigStore.updateStatus(WifiStateMachine.this.mLastNetworkId, detailedState);
            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
            wifiStateMachine2.sendNetworkStateChangeBroadcast(wifiStateMachine2.mLastBssid);
            WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
            wifiStateMachine3.transitionTo(wifiStateMachine3.mVerifyingLinkState);
            return true;
        }
    }

    public class DefaultState extends l {
        public DefaultState() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:67:0x01d5 A[FALL_THROUGH, RETURN] */
        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            switch (i2) {
                case 69632:
                    if (message.arg1 == 0) {
                        WifiStateMachine.this.mWifiP2pChannel.k(69633);
                    } else {
                        WifiStateMachine.this.loge("WifiP2pService connection failure, error=" + message.arg1);
                    }
                    return true;
                case 69636:
                    WifiStateMachine.this.loge("WifiP2pService channel lost, message.arg1 =" + message.arg1);
                    return true;
                case WifiStateMachine.CMD_STOP_SUPPLICANT_FAILED /* 131089 */:
                case WifiStateMachine.CMD_DELAYED_STOP_DRIVER /* 131090 */:
                case WifiStateMachine.CMD_DRIVER_START_TIMED_OUT /* 131091 */:
                case WifiStateMachine.CMD_CAPTIVE_CHECK_COMPLETE /* 131092 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_START_AP_SUCCESS /* 131094 */:
                case WifiStateMachine.CMD_START_AP_FAILURE /* 131095 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_SET_AP_CONFIG /* 131097 */:
                case WifiStateMachine.CMD_SET_AP_CONFIG_COMPLETED /* 131098 */:
                case WifiStateMachine.CMD_REQUEST_AP_CONFIG /* 131099 */:
                case WifiStateMachine.CMD_RESPONSE_AP_CONFIG /* 131100 */:
                case WifiStateMachine.CMD_TETHER_STATE_CHANGE /* 131101 */:
                case WifiStateMachine.CMD_TETHER_NOTIFICATION_TIMED_OUT /* 131102 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN /* 131160 */:
                case WifiMonitor.SUP_CONNECTION_EVENT /* 147457 */:
                case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                case WifiMonitor.SCAN_RESULTS_EVENT /* 147461 */:
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                case WifiMonitor.WPS_OVERLAP_EVENT /* 147466 */:
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                case DhcpStateMachine.CMD_PRE_DHCP_ACTION /* 196612 */:
                case DhcpStateMachine.CMD_POST_DHCP_ACTION /* 196613 */:
                    return true;
                case WifiStateMachine.CMD_BLUETOOTH_ADAPTER_STATE_CHANGE /* 131103 */:
                    WifiStateMachine.this.mBluetoothConnectionActive = message.arg1 != 0;
                    return true;
                case WifiStateMachine.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    if (message.arg1 == 1) {
                        WifiStateMachine.this.setSuspendOptimizations(2, false);
                    } else {
                        WifiStateMachine.this.setSuspendOptimizations(2, true);
                    }
                    return true;
                case WifiStateMachine.CMD_SET_SUSPEND_OPT_ENABLED /* 131158 */:
                    if (message.arg1 == 1) {
                        WifiStateMachine.this.mSuspendWakeLock.release();
                        WifiStateMachine.this.setSuspendOptimizations(4, true);
                    } else {
                        WifiStateMachine.this.setSuspendOptimizations(4, false);
                    }
                    return true;
                case WifiMonitor.DRIVER_HUNG_EVENT /* 147468 */:
                    WifiStateMachine.this.setSupplicantRunning(false);
                    WifiStateMachine.this.setSupplicantRunning(true);
                    return true;
                case WifiManager.CONNECT_NETWORK /* 151553 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.CONNECT_NETWORK_FAILED, 2);
                    return true;
                case WifiManager.FORGET_NETWORK /* 151556 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.FORGET_NETWORK_FAILED, 2);
                    return true;
                case WifiManager.SAVE_NETWORK /* 151559 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.SAVE_NETWORK_FAILED, 2);
                    return true;
                case WifiManager.START_WPS /* 151562 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.WPS_FAILED, 2);
                    return true;
                case WifiManager.CANCEL_WPS /* 151566 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.CANCEL_WPS_FAILED, 2);
                    return true;
                case WifiManager.DISABLE_NETWORK /* 151569 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.DISABLE_NETWORK_FAILED, 2);
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH /* 151572 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.RSSI_PKTCNT_FETCH_FAILED, 2);
                    return true;
                case DhcpStateMachine.CMD_ON_QUIT /* 196614 */:
                    WifiStateMachine.this.mDhcpStateMachine = null;
                    return true;
                default:
                    switch (i2) {
                        default:
                            switch (i2) {
                                case WifiStateMachine.CMD_PING_SUPPLICANT /* 131123 */:
                                case WifiStateMachine.CMD_ADD_OR_UPDATE_NETWORK /* 131124 */:
                                case WifiStateMachine.CMD_REMOVE_NETWORK /* 131125 */:
                                case WifiStateMachine.CMD_ENABLE_NETWORK /* 131126 */:
                                case WifiStateMachine.CMD_SAVE_CONFIG /* 131130 */:
                                    WifiStateMachine.this.replyToMessage(message, i2, -1);
                                    break;
                                case WifiStateMachine.CMD_ENABLE_ALL_NETWORKS /* 131127 */:
                                case WifiStateMachine.CMD_BLACKLIST_NETWORK /* 131128 */:
                                case WifiStateMachine.CMD_CLEAR_BLACKLIST /* 131129 */:
                                    break;
                                case WifiStateMachine.CMD_GET_CONFIGURED_NETWORKS /* 131131 */:
                                    WifiStateMachine.this.replyToMessage(message, i2, (Object) null);
                                    break;
                                default:
                                    switch (i2) {
                                        default:
                                            switch (i2) {
                                                case WifiStateMachine.CMD_ENABLE_RSSI_POLL /* 131154 */:
                                                    WifiStateMachine.this.mEnableRssiPolling = message.arg1 == 1;
                                                    break;
                                                case WifiStateMachine.CMD_RSSI_POLL /* 131155 */:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                                                            break;
                                                        case WifiStateMachine.CMD_ENABLE_BACKGROUND_SCAN /* 131163 */:
                                                            WifiStateMachine.this.mEnableBackgroundScan = message.arg1 == 1;
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case WifiStateMachine.CMD_DISABLE_P2P_RSP /* 131205 */:
                                                                    break;
                                                                case WifiStateMachine.CMD_BOOT_COMPLETED /* 131206 */:
                                                                    String str = WifiStateMachine.this.mPersistedCountryCode;
                                                                    if (!TextUtils.isEmpty(str)) {
                                                                        Settings.Global.putString(WifiStateMachine.this.mContext.getContentResolver(), Settings.Global.WIFI_COUNTRY_CODE, str);
                                                                        WifiStateMachine.this.sendMessageAtFrontOfQueue(WifiStateMachine.CMD_SET_COUNTRY_CODE, WifiStateMachine.this.mCountryCodeSequence.incrementAndGet(), 0, str);
                                                                    }
                                                                    break;
                                                                case WifiStateMachine.CMD_SET_BATCHED_SCAN /* 131207 */:
                                                                    WifiStateMachine.this.recordBatchedScanSettings(message.arg1, message.arg2, (Bundle) message.obj);
                                                                    break;
                                                                case WifiStateMachine.CMD_START_NEXT_BATCHED_SCAN /* 131208 */:
                                                                    WifiStateMachine.this.startNextBatchedScan();
                                                                    break;
                                                                case WifiStateMachine.CMD_POLL_BATCHED_SCAN /* 131209 */:
                                                                    WifiStateMachine.this.handleBatchedScanPollRequest();
                                                                    break;
                                                                default:
                                                                    switch (i2) {
                                                                        case WifiStateMachine.CMD_IP_ADDRESS_UPDATED /* 131212 */:
                                                                            if (WifiStateMachine.this.mNetlinkLinkProperties.addLinkAddress((LinkAddress) message.obj)) {
                                                                                WifiStateMachine.this.updateLinkProperties();
                                                                            }
                                                                            break;
                                                                        case WifiStateMachine.CMD_IP_ADDRESS_REMOVED /* 131213 */:
                                                                            if (WifiStateMachine.this.mNetlinkLinkProperties.removeLinkAddress((LinkAddress) message.obj)) {
                                                                                WifiStateMachine.this.updateLinkProperties();
                                                                            }
                                                                            break;
                                                                        case WifiStateMachine.CMD_RELOAD_TLS_AND_RECONNECT /* 131214 */:
                                                                            break;
                                                                        default:
                                                                            switch (i2) {
                                                                                default:
                                                                                    switch (i2) {
                                                                                        case WifiP2pService.P2P_CONNECTION_CHANGED /* 143371 */:
                                                                                            WifiStateMachine.this.mP2pConnected.set(((NetworkInfo) message.obj).isConnected());
                                                                                            break;
                                                                                        case WifiP2pService.DISCONNECT_WIFI_REQUEST /* 143372 */:
                                                                                            WifiStateMachine.this.mTemporarilyDisconnectWifi = message.arg1 == 1;
                                                                                            WifiStateMachine.this.replyToMessage(message, WifiP2pService.DISCONNECT_WIFI_RESPONSE);
                                                                                            break;
                                                                                        default:
                                                                                            WifiStateMachine.this.loge("Error! unhandled message" + message);
                                                                                            break;
                                                                                    }
                                                                                case WifiWatchdogStateMachine.POOR_LINK_DETECTED /* 135189 */:
                                                                                case WifiWatchdogStateMachine.GOOD_LINK_DETECTED /* 135190 */:
                                                                                    return true;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                        case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                                        case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                                        case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                                        case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                                        case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                                            return true;
                                    }
                                    break;
                            }
                        case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                        case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                        case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                        case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                            return true;
                    }
                    break;
            }
        }
    }

    public class DisconnectedState extends l {
        private boolean mAlarmEnabled = false;
        private long mFrameworkScanIntervalMs;

        public DisconnectedState() {
        }

        private void setScanAlarm(boolean z2) {
            if (z2 == this.mAlarmEnabled) {
                return;
            }
            if (!z2) {
                WifiStateMachine.this.mAlarmManager.cancel(WifiStateMachine.this.mScanIntent);
                this.mAlarmEnabled = false;
            } else if (this.mFrameworkScanIntervalMs > 0) {
                AlarmManager alarmManager = WifiStateMachine.this.mAlarmManager;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = this.mFrameworkScanIntervalMs;
                alarmManager.setRepeating(0, jCurrentTimeMillis + j2, j2, WifiStateMachine.this.mScanIntent);
                this.mAlarmEnabled = true;
            }
        }

        @Override // u.l
        public void enter() {
            if (WifiStateMachine.this.mTemporarilyDisconnectWifi) {
                WifiStateMachine.this.mWifiP2pChannel.k(WifiP2pService.DISCONNECT_WIFI_RESPONSE);
                return;
            }
            this.mFrameworkScanIntervalMs = Settings.Global.getLong(WifiStateMachine.this.mContext.getContentResolver(), Settings.Global.WIFI_FRAMEWORK_SCAN_INTERVAL_MS, WifiStateMachine.this.mDefaultFrameworkScanIntervalMs);
            if (!WifiStateMachine.this.mEnableBackgroundScan) {
                setScanAlarm(true);
            } else if (!WifiStateMachine.this.mScanResultIsPending) {
                WifiStateMachine.this.mWifiNative.enableBackgroundScan(true);
            }
            if (WifiStateMachine.this.mP2pConnected.get() || WifiStateMachine.this.mWifiConfigStore.getConfiguredNetworks().size() != 0) {
                return;
            }
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN, WifiStateMachine.access$21204(wifiStateMachine), 0), WifiStateMachine.this.mSupplicantScanIntervalMs);
        }

        @Override // u.l
        public void exit() {
            if (WifiStateMachine.this.mEnableBackgroundScan) {
                WifiStateMachine.this.mWifiNative.enableBackgroundScan(false);
            }
            setScanAlarm(false);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_REMOVE_NETWORK /* 131125 */:
                case WifiManager.FORGET_NETWORK /* 151556 */:
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN, WifiStateMachine.access$21204(wifiStateMachine), 0), WifiStateMachine.this.mSupplicantScanIntervalMs);
                    return false;
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                    if (WifiStateMachine.this.mEnableBackgroundScan) {
                        WifiStateMachine.this.mWifiNative.enableBackgroundScan(false);
                    }
                    return false;
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                    int i2 = message.arg1;
                    if (i2 == 1) {
                        return true;
                    }
                    WifiStateMachine.this.mOperationalMode = i2;
                    WifiStateMachine.this.mWifiConfigStore.disableAllNetworks();
                    if (WifiStateMachine.this.mOperationalMode == 3) {
                        WifiStateMachine.this.mWifiP2pChannel.k(WifiStateMachine.CMD_DISABLE_P2P_REQ);
                        WifiStateMachine.this.setWifiState(1);
                    }
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mScanModeState);
                    return true;
                case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                    break;
                case WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN /* 131160 */:
                    if (WifiStateMachine.this.mP2pConnected.get() || message.arg1 != WifiStateMachine.this.mPeriodicScanToken || WifiStateMachine.this.mWifiConfigStore.getConfiguredNetworks().size() != 0) {
                        return true;
                    }
                    WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_START_SCAN, -1, 0, null);
                    WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                    wifiStateMachine3.sendMessageDelayed(wifiStateMachine3.obtainMessage(WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN, WifiStateMachine.access$21204(wifiStateMachine3), 0), WifiStateMachine.this.mSupplicantScanIntervalMs);
                    return true;
                case WifiStateMachine.CMD_ENABLE_BACKGROUND_SCAN /* 131163 */:
                    WifiStateMachine.this.mEnableBackgroundScan = message.arg1 == 1;
                    if (WifiStateMachine.this.mEnableBackgroundScan) {
                        WifiStateMachine.this.mWifiNative.enableBackgroundScan(true);
                        setScanAlarm(false);
                        return true;
                    }
                    WifiStateMachine.this.mWifiNative.enableBackgroundScan(false);
                    setScanAlarm(true);
                    return true;
                case WifiP2pService.P2P_CONNECTION_CHANGED /* 143371 */:
                    WifiStateMachine.this.mP2pConnected.set(((NetworkInfo) message.obj).isConnected());
                    if (WifiStateMachine.this.mP2pConnected.get()) {
                        WifiStateMachine.this.mWifiNative.setScanInterval(((int) Settings.Global.getLong(WifiStateMachine.this.mContext.getContentResolver(), Settings.Global.WIFI_SCAN_INTERVAL_WHEN_P2P_CONNECTED_MS, WifiStateMachine.this.mContext.getResources().getInteger(17694736))) / 1000);
                    } else if (WifiStateMachine.this.mWifiConfigStore.getConfiguredNetworks().size() == 0) {
                        WifiStateMachine wifiStateMachine4 = WifiStateMachine.this;
                        wifiStateMachine4.sendMessageDelayed(wifiStateMachine4.obtainMessage(WifiStateMachine.CMD_NO_NETWORKS_PERIODIC_SCAN, WifiStateMachine.access$21204(wifiStateMachine4), 0), WifiStateMachine.this.mSupplicantScanIntervalMs);
                    }
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    return true;
                case WifiMonitor.SCAN_RESULTS_EVENT /* 147461 */:
                    if (WifiStateMachine.this.mEnableBackgroundScan && WifiStateMachine.this.mScanResultIsPending) {
                        WifiStateMachine.this.mWifiNative.enableBackgroundScan(true);
                    }
                    return false;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    WifiStateMachine.this.setNetworkDetailedState(WifiInfo.getDetailedStateOf(((StateChangeResult) message.obj).state));
                    return false;
                default:
                    return false;
            }
            if (WifiStateMachine.this.mTemporarilyDisconnectWifi) {
                return true;
            }
            return false;
        }
    }

    public class DisconnectingState extends l {
        public DisconnectingState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 != 131144) {
                if (i2 != 147462) {
                    return false;
                }
                WifiStateMachine.this.deferMessage(message);
                WifiStateMachine.this.handleNetworkDisconnect();
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.transitionTo(wifiStateMachine.mDisconnectedState);
            } else if (message.arg1 != 1) {
                WifiStateMachine.this.deferMessage(message);
            }
            return true;
        }
    }

    public class DriverStartedState extends l {
        public DriverStartedState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.this.mIsRunning = true;
            boolean z2 = false;
            WifiStateMachine.this.mInDelayedStop = false;
            WifiStateMachine.access$10708(WifiStateMachine.this);
            WifiStateMachine.this.updateBatteryWorkSource(null);
            WifiStateMachine.this.mWifiNative.setBluetoothCoexistenceScanMode(WifiStateMachine.this.mBluetoothConnectionActive);
            WifiStateMachine.this.setCountryCode();
            WifiStateMachine.this.setFrequencyBand();
            WifiStateMachine.this.setNetworkDetailedState(NetworkInfo.DetailedState.DISCONNECTED);
            WifiStateMachine.this.mWifiNative.stopFilteringMulticastV6Packets();
            if (WifiStateMachine.this.mFilteringMulticastV4Packets.get()) {
                WifiStateMachine.this.mWifiNative.startFilteringMulticastV4Packets();
            } else {
                WifiStateMachine.this.mWifiNative.stopFilteringMulticastV4Packets();
            }
            WifiStateMachine.this.mDhcpActive = false;
            WifiStateMachine.this.startBatchedScan();
            if (WifiStateMachine.this.mOperationalMode != 1) {
                WifiStateMachine.this.mWifiNative.disconnect();
                WifiStateMachine.this.mWifiConfigStore.disableAllNetworks();
                if (WifiStateMachine.this.mOperationalMode == 3) {
                    WifiStateMachine.this.setWifiState(1);
                }
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.transitionTo(wifiStateMachine.mScanModeState);
            } else {
                WifiStateMachine.this.mWifiConfigStore.enableAllNetworks();
                WifiStateMachine.this.mWifiNative.reconnect();
                WifiStateMachine.this.mWifiNative.status();
                WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                wifiStateMachine2.transitionTo(wifiStateMachine2.mDisconnectedState);
            }
            if (WifiStateMachine.this.mScreenBroadcastReceived.get()) {
                WifiNative wifiNative = WifiStateMachine.this.mWifiNative;
                if (WifiStateMachine.this.mSuspendOptNeedsDisabled == 0 && WifiStateMachine.this.mUserWantsSuspendOpt.get()) {
                    z2 = true;
                }
                wifiNative.setSuspendOptimizations(z2);
            } else {
                WifiStateMachine.this.handleScreenStateChanged(((PowerManager) WifiStateMachine.this.mContext.getSystemService(Context.POWER_SERVICE)).isScreenOn());
            }
            WifiStateMachine.this.mWifiNative.setPowerSave(true);
            if (WifiStateMachine.this.mP2pSupported && WifiStateMachine.this.mOperationalMode == 1) {
                WifiStateMachine.this.mWifiP2pChannel.k(WifiStateMachine.CMD_ENABLE_P2P);
            }
            Intent intent = new Intent(WifiManager.WIFI_SCAN_AVAILABLE);
            intent.addFlags(67108864);
            intent.putExtra(WifiManager.EXTRA_SCAN_AVAILABLE, 3);
            WifiStateMachine.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        @Override // u.l
        public void exit() {
            WifiStateMachine.this.mIsRunning = false;
            WifiStateMachine.this.updateBatteryWorkSource(null);
            WifiStateMachine.this.mScanResults = new ArrayList();
            WifiStateMachine.this.stopBatchedScan();
            Intent intent = new Intent(WifiManager.WIFI_SCAN_AVAILABLE);
            intent.addFlags(67108864);
            intent.putExtra(WifiManager.EXTRA_SCAN_AVAILABLE, 1);
            WifiStateMachine.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
            WifiStateMachine.this.noteScanEnd();
            WifiStateMachine.this.mLastSetCountryCode = null;
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                    if (WifiStateMachine.this.mInDelayedStop) {
                        WifiStateMachine.this.mInDelayedStop = false;
                        WifiStateMachine.access$10708(WifiStateMachine.this);
                        WifiStateMachine.this.mAlarmManager.cancel(WifiStateMachine.this.mDriverStopIntent);
                        if (WifiStateMachine.this.mOperationalMode == 1) {
                            WifiStateMachine.this.mWifiConfigStore.enableAllNetworks();
                        }
                    }
                    return true;
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                    if (!WifiStateMachine.this.mInDelayedStop) {
                        WifiStateMachine.this.mWifiConfigStore.disableAllNetworks();
                        WifiStateMachine.this.mInDelayedStop = true;
                        WifiStateMachine.access$10708(WifiStateMachine.this);
                        Intent intent = new Intent(WifiStateMachine.ACTION_DELAYED_DRIVER_STOP, (Uri) null);
                        intent.putExtra(WifiStateMachine.DELAYED_STOP_COUNTER, WifiStateMachine.this.mDelayedStopCounter);
                        WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                        wifiStateMachine.mDriverStopIntent = PendingIntent.getBroadcast(wifiStateMachine.mContext, 0, intent, 134217728);
                        WifiStateMachine.this.mAlarmManager.set(0, System.currentTimeMillis() + ((long) WifiStateMachine.this.mDriverStopDelayMs), WifiStateMachine.this.mDriverStopIntent);
                    }
                    return true;
                case WifiStateMachine.CMD_DELAYED_STOP_DRIVER /* 131090 */:
                    if (message.arg1 == WifiStateMachine.this.mDelayedStopCounter) {
                        if (WifiStateMachine.this.getCurrentState() != WifiStateMachine.this.mDisconnectedState) {
                            WifiStateMachine.this.mWifiNative.disconnect();
                            WifiStateMachine.this.handleNetworkDisconnect();
                        }
                        WifiStateMachine.this.mWakeLock.acquire();
                        WifiStateMachine.this.mWifiNative.stopDriver();
                        WifiStateMachine.this.mWakeLock.release();
                        if (WifiStateMachine.this.mP2pSupported) {
                            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                            wifiStateMachine2.transitionTo(wifiStateMachine2.mWaitForP2pDisableState);
                        } else {
                            WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                            wifiStateMachine3.transitionTo(wifiStateMachine3.mDriverStoppingState);
                        }
                    }
                    return true;
                case WifiStateMachine.CMD_BLUETOOTH_ADAPTER_STATE_CHANGE /* 131103 */:
                    WifiStateMachine.this.mBluetoothConnectionActive = message.arg1 != 0;
                    WifiStateMachine.this.mWifiNative.setBluetoothCoexistenceScanMode(WifiStateMachine.this.mBluetoothConnectionActive);
                    return true;
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                    WifiStateMachine.this.noteScanStart(message.arg1, (WorkSource) message.obj);
                    WifiStateMachine.this.startScanNative(2);
                    return true;
                case WifiStateMachine.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    if (message.arg1 == 1) {
                        WifiStateMachine.this.setSuspendOptimizationsNative(2, false);
                    } else {
                        WifiStateMachine.this.setSuspendOptimizationsNative(2, true);
                    }
                    return true;
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                    String str = (String) message.obj;
                    boolean z2 = message.arg2 == 1;
                    if (message.arg1 == WifiStateMachine.this.mCountryCodeSequence.get()) {
                        if (z2) {
                            WifiStateMachine.this.mPersistedCountryCode = str;
                            Settings.Global.putString(WifiStateMachine.this.mContext.getContentResolver(), Settings.Global.WIFI_COUNTRY_CODE, str);
                        }
                        String upperCase = str.toUpperCase(Locale.ROOT);
                        if (WifiStateMachine.this.mLastSetCountryCode == null || !upperCase.equals(WifiStateMachine.this.mLastSetCountryCode)) {
                            if (WifiStateMachine.this.mWifiNative.setCountryCode(upperCase)) {
                                WifiStateMachine.this.mLastSetCountryCode = upperCase;
                            } else {
                                WifiStateMachine.this.loge("Failed to set country code " + upperCase);
                            }
                        }
                        WifiStateMachine.this.mWifiP2pChannel.o(WifiP2pService.SET_COUNTRY_CODE, upperCase);
                    }
                    return true;
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                    int i2 = message.arg1;
                    if (i2 == 1) {
                        WifiStateMachine.this.mWifiNative.startFilteringMulticastV6Packets();
                    } else if (i2 == 0) {
                        WifiStateMachine.this.mWifiNative.startFilteringMulticastV4Packets();
                    } else {
                        WifiStateMachine.this.loge("Illegal arugments to CMD_START_PACKET_FILTERING");
                    }
                    return true;
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                    int i3 = message.arg1;
                    if (i3 == 1) {
                        WifiStateMachine.this.mWifiNative.stopFilteringMulticastV6Packets();
                    } else if (i3 == 0) {
                        WifiStateMachine.this.mWifiNative.stopFilteringMulticastV4Packets();
                    } else {
                        WifiStateMachine.this.loge("Illegal arugments to CMD_STOP_PACKET_FILTERING");
                    }
                    return true;
                case WifiStateMachine.CMD_SET_SUSPEND_OPT_ENABLED /* 131158 */:
                    if (message.arg1 == 1) {
                        WifiStateMachine.this.setSuspendOptimizationsNative(4, true);
                        WifiStateMachine.this.mSuspendWakeLock.release();
                    } else {
                        WifiStateMachine.this.setSuspendOptimizationsNative(4, false);
                    }
                    return true;
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    int i4 = message.arg1;
                    if (WifiStateMachine.this.mWifiNative.setBand(i4)) {
                        WifiStateMachine.this.mFrequencyBand.set(i4);
                        WifiStateMachine.this.mWifiNative.bssFlush();
                        WifiStateMachine.this.startScanNative(2);
                    } else {
                        WifiStateMachine.this.loge("Failed to set frequency band " + i4);
                    }
                    return true;
                case WifiStateMachine.CMD_ENABLE_TDLS /* 131164 */:
                    Object obj = message.obj;
                    if (obj != null) {
                        WifiStateMachine.this.mWifiNative.startTdls((String) obj, message.arg1 == 1);
                    }
                    return true;
                case WifiStateMachine.CMD_SET_BATCHED_SCAN /* 131207 */:
                    if (WifiStateMachine.this.recordBatchedScanSettings(message.arg1, message.arg2, (Bundle) message.obj)) {
                        if (WifiStateMachine.this.mBatchedScanSettings != null) {
                            WifiStateMachine.this.startBatchedScan();
                        } else {
                            WifiStateMachine.this.stopBatchedScan();
                        }
                    }
                    return true;
                default:
                    return false;
            }
        }
    }

    public class DriverStartingState extends l {
        private int mTries;

        public DriverStartingState() {
        }

        @Override // u.l
        public void enter() {
            this.mTries = 1;
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_DRIVER_START_TIMED_OUT, WifiStateMachine.access$9604(wifiStateMachine), 0), 10000L);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                case WifiMonitor.WPS_OVERLAP_EVENT /* 147466 */:
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_DRIVER_START_TIMED_OUT /* 131091 */:
                    if (message.arg1 == WifiStateMachine.this.mDriverStartToken) {
                        if (this.mTries >= 2) {
                            WifiStateMachine.this.loge("Failed to start driver after " + this.mTries);
                            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                            wifiStateMachine.transitionTo(wifiStateMachine.mDriverStoppedState);
                        } else {
                            WifiStateMachine.this.loge("Driver start failed, retrying");
                            WifiStateMachine.this.mWakeLock.acquire();
                            WifiStateMachine.this.mWifiNative.startDriver();
                            WifiStateMachine.this.mWakeLock.release();
                            this.mTries++;
                            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                            wifiStateMachine2.sendMessageDelayed(wifiStateMachine2.obtainMessage(WifiStateMachine.CMD_DRIVER_START_TIMED_OUT, WifiStateMachine.access$9604(wifiStateMachine2), 0), 10000L);
                        }
                    }
                    return true;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    if (SupplicantState.isDriverActive(WifiStateMachine.this.handleSupplicantStateChange(message))) {
                        WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                        wifiStateMachine3.transitionTo(wifiStateMachine3.mDriverStartedState);
                    }
                    return true;
                default:
                    return false;
            }
        }
    }

    public class DriverStoppedState extends l {
        public DriverStoppedState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 == 131085) {
                WifiStateMachine.this.mWakeLock.acquire();
                WifiStateMachine.this.mWifiNative.startDriver();
                WifiStateMachine.this.mWakeLock.release();
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.transitionTo(wifiStateMachine.mDriverStartingState);
                return true;
            }
            if (i2 != 147462) {
                return false;
            }
            if (!SupplicantState.isDriverActive(((StateChangeResult) message.obj).state)) {
                return true;
            }
            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
            wifiStateMachine2.transitionTo(wifiStateMachine2.mDriverStartedState);
            return true;
        }
    }

    public class DriverStoppingState extends l {
        public DriverStoppingState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    if (WifiStateMachine.this.handleSupplicantStateChange(message) != SupplicantState.INTERFACE_DISABLED) {
                        return true;
                    }
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mDriverStoppedState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class InitialState extends l {
        public InitialState() {
        }

        @Override // u.l
        public void enter() throws Throwable {
            WifiNative unused = WifiStateMachine.this.mWifiNative;
            WifiNative.unloadDriver();
            if (WifiStateMachine.this.mWifiP2pChannel == null) {
                WifiStateMachine.this.mWifiP2pChannel = new b();
                WifiStateMachine.this.mWifiP2pChannel.b(WifiStateMachine.this.mContext, WifiStateMachine.this.getHandler(), WifiStateMachine.this.mWifiP2pManager.getMessenger());
            }
            if (WifiStateMachine.this.mWifiApConfigChannel == null) {
                WifiStateMachine.this.mWifiApConfigChannel = new b();
                WifiApConfigStore wifiApConfigStoreMakeWifiApConfigStore = WifiApConfigStore.makeWifiApConfigStore(WifiStateMachine.this.mContext, WifiStateMachine.this.getHandler());
                wifiApConfigStoreMakeWifiApConfigStore.loadApConfiguration();
                WifiStateMachine.this.mWifiApConfigChannel.c(WifiStateMachine.this.mContext, WifiStateMachine.this.getHandler(), wifiApConfigStoreMakeWifiApConfigStore.getMessenger());
            }
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 != 131083) {
                if (i2 != 131093) {
                    return false;
                }
                WifiStateMachine.this.setWifiApState(12);
                WifiNative unused = WifiStateMachine.this.mWifiNative;
                if (WifiNative.loadDriver()) {
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mSoftApStartingState);
                    return false;
                }
                WifiStateMachine.this.loge("Failed to load driver for softap");
                WifiStateMachine.this.diableWifiAp();
                return false;
            }
            WifiStateMachine.this.mWifiMonitor.killSupplicant(WifiStateMachine.this.mP2pSupported);
            WifiStateMachine.this.setWifiState(2);
            WifiNative unused2 = WifiStateMachine.this.mWifiNative;
            if (WifiNative.loadDriver()) {
                try {
                    WifiStateMachine.this.mNwService.wifiFirmwareReload(WifiStateMachine.this.mInterfaceName, "STA");
                } catch (Exception e2) {
                    WifiStateMachine.this.loge("Failed to reload STA firmware " + e2);
                }
                try {
                    WifiStateMachine.this.mNwService.setInterfaceDown(WifiStateMachine.this.mInterfaceName);
                    WifiStateMachine.this.mNwService.setInterfaceIpv6PrivacyExtensions(WifiStateMachine.this.mInterfaceName, true);
                    WifiStateMachine.this.mNwService.disableIpv6(WifiStateMachine.this.mInterfaceName);
                } catch (RemoteException e3) {
                    WifiStateMachine.this.loge("Unable to change interface settings: " + e3);
                } catch (IllegalStateException e4) {
                    WifiStateMachine.this.loge("Unable to change interface settings: " + e4);
                }
                WifiNative unused3 = WifiStateMachine.this.mWifiNative;
                if (WifiNative.startSupplicant(WifiStateMachine.this.mP2pSupported)) {
                    WifiStateMachine.this.mWifiMonitor.startMonitoring();
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mSupplicantStartingState);
                } else {
                    WifiStateMachine.this.loge("Failed to start supplicant!");
                    WifiStateMachine.this.diableWifiSta();
                }
            } else {
                WifiStateMachine.this.loge("Failed to load driver");
                WifiStateMachine.this.diableWifiSta();
            }
            return true;
        }
    }

    public class InterfaceObserver extends a {
        private WifiStateMachine mWifiStateMachine;

        public InterfaceObserver(WifiStateMachine wifiStateMachine) {
            this.mWifiStateMachine = wifiStateMachine;
        }

        @Override // x.a, android.net.INetworkManagementEventObserver
        public void addressRemoved(String str, String str2, int i2, int i3) {
            if (this.mWifiStateMachine.mInterfaceName.equals(str2)) {
                this.mWifiStateMachine.sendMessage(WifiStateMachine.CMD_IP_ADDRESS_REMOVED, new LinkAddress(str));
            }
        }

        @Override // x.a, android.net.INetworkManagementEventObserver
        public void addressUpdated(String str, String str2, int i2, int i3) {
            if (this.mWifiStateMachine.mInterfaceName.equals(str2)) {
                this.mWifiStateMachine.sendMessage(WifiStateMachine.CMD_IP_ADDRESS_UPDATED, new LinkAddress(str));
            }
        }
    }

    public class L2ConnectedState extends l {
        public L2ConnectedState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.access$16708(WifiStateMachine.this);
            if (WifiStateMachine.this.mEnableRssiPolling) {
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.sendMessage(WifiStateMachine.CMD_RSSI_POLL, wifiStateMachine.mRssiPollToken, 0);
            }
        }

        @Override // u.l
        public void exit() {
            WifiStateMachine.this.handleNetworkDisconnect();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:48:0x0183 A[RETURN] */
        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                    WifiStateMachine.this.noteScanStart(message.arg1, (WorkSource) message.obj);
                    WifiStateMachine.this.startScanNative(1);
                    return true;
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                    if (message.arg1 != 1) {
                        WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_DISCONNECT);
                        WifiStateMachine.this.deferMessage(message);
                    }
                    return true;
                case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                    WifiStateMachine.this.mWifiNative.disconnect();
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mDisconnectingState);
                    return true;
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_ENABLE_RSSI_POLL /* 131154 */:
                    WifiStateMachine.this.mEnableRssiPolling = message.arg1 == 1;
                    WifiStateMachine.access$16708(WifiStateMachine.this);
                    if (WifiStateMachine.this.mEnableRssiPolling) {
                        WifiStateMachine.this.fetchRssiAndLinkSpeedNative();
                        WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                        wifiStateMachine2.sendMessageDelayed(wifiStateMachine2.obtainMessage(WifiStateMachine.CMD_RSSI_POLL, wifiStateMachine2.mRssiPollToken, 0), 3000L);
                    }
                    return true;
                case WifiStateMachine.CMD_RSSI_POLL /* 131155 */:
                    if (message.arg1 == WifiStateMachine.this.mRssiPollToken) {
                        WifiStateMachine.this.fetchRssiAndLinkSpeedNative();
                        WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                        wifiStateMachine3.sendMessageDelayed(wifiStateMachine3.obtainMessage(WifiStateMachine.CMD_RSSI_POLL, wifiStateMachine3.mRssiPollToken, 0), 3000L);
                    }
                    return true;
                case WifiP2pService.DISCONNECT_WIFI_REQUEST /* 143372 */:
                    if (message.arg1 == 1) {
                        WifiStateMachine.this.mWifiNative.disconnect();
                        WifiStateMachine.this.mTemporarilyDisconnectWifi = true;
                        WifiStateMachine wifiStateMachine4 = WifiStateMachine.this;
                        wifiStateMachine4.transitionTo(wifiStateMachine4.mDisconnectingState);
                    }
                    return true;
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                    return true;
                case WifiManager.CONNECT_NETWORK /* 151553 */:
                    if (WifiStateMachine.this.mWifiInfo.getNetworkId() == message.arg1) {
                        return true;
                    }
                    return false;
                case WifiManager.SAVE_NETWORK /* 151559 */:
                    NetworkUpdateResult networkUpdateResultSaveNetwork = WifiStateMachine.this.mWifiConfigStore.saveNetwork((WifiConfiguration) message.obj);
                    if (WifiStateMachine.this.mWifiInfo.getNetworkId() == networkUpdateResultSaveNetwork.getNetworkId()) {
                        if (networkUpdateResultSaveNetwork.hasIpChanged()) {
                            WifiStateMachine.this.log("Reconfiguring IP on connection");
                            WifiStateMachine wifiStateMachine5 = WifiStateMachine.this;
                            wifiStateMachine5.transitionTo(wifiStateMachine5.mObtainingIpState);
                        }
                        if (networkUpdateResultSaveNetwork.hasProxyChanged()) {
                            WifiStateMachine.this.log("Reconfiguring proxy on connection");
                            WifiStateMachine.this.updateLinkProperties();
                        }
                    }
                    if (networkUpdateResultSaveNetwork.getNetworkId() != -1) {
                        WifiStateMachine.this.replyToMessage(message, WifiManager.SAVE_NETWORK_SUCCEEDED);
                    } else {
                        WifiStateMachine.this.loge("Failed to save network");
                        WifiStateMachine.this.replyToMessage(message, WifiManager.SAVE_NETWORK_FAILED, 0);
                    }
                    return true;
                case WifiManager.RSSI_PKTCNT_FETCH /* 151572 */:
                    RssiPacketCountInfo rssiPacketCountInfo = new RssiPacketCountInfo();
                    WifiStateMachine.this.fetchRssiAndLinkSpeedNative();
                    rssiPacketCountInfo.rssi = WifiStateMachine.this.mWifiInfo.getRssi();
                    WifiStateMachine.this.fetchPktcntNative(rssiPacketCountInfo);
                    WifiStateMachine.this.replyToMessage(message, WifiManager.RSSI_PKTCNT_FETCH_SUCCEEDED, rssiPacketCountInfo);
                    return true;
                case DhcpStateMachine.CMD_PRE_DHCP_ACTION /* 196612 */:
                    WifiStateMachine.this.handlePreDhcpSetup();
                    return true;
                case DhcpStateMachine.CMD_POST_DHCP_ACTION /* 196613 */:
                    WifiStateMachine.this.handlePostDhcpSetup();
                    int i2 = message.arg1;
                    if (i2 == 1) {
                        WifiStateMachine.this.handleSuccessfulIpConfiguration((DhcpResults) message.obj);
                        WifiStateMachine wifiStateMachine6 = WifiStateMachine.this;
                        wifiStateMachine6.transitionTo(wifiStateMachine6.mVerifyingLinkState);
                    } else if (i2 == 2) {
                        WifiStateMachine.this.handleFailedIpConfiguration();
                        WifiStateMachine wifiStateMachine7 = WifiStateMachine.this;
                        wifiStateMachine7.transitionTo(wifiStateMachine7.mDisconnectingState);
                    }
                    return true;
                default:
                    return false;
            }
        }
    }

    public class ObtainingIpState extends l {
        public ObtainingIpState() {
        }

        @Override // u.l
        public void enter() {
            if (!WifiStateMachine.this.mWifiConfigStore.isUsingStaticIp(WifiStateMachine.this.mLastNetworkId)) {
                WifiStateMachine.this.startDhcp();
                return;
            }
            WifiStateMachine.this.stopDhcp();
            DhcpResults dhcpResults = new DhcpResults(WifiStateMachine.this.mWifiConfigStore.getLinkProperties(WifiStateMachine.this.mLastNetworkId));
            InterfaceConfiguration interfaceConfiguration = new InterfaceConfiguration();
            Iterator<LinkAddress> it = dhcpResults.linkProperties.getLinkAddresses().iterator();
            if (!it.hasNext()) {
                WifiStateMachine.this.loge("Static IP lacks address");
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_STATIC_IP_FAILURE);
                return;
            }
            interfaceConfiguration.setLinkAddress(it.next());
            interfaceConfiguration.setInterfaceUp();
            try {
                WifiStateMachine.this.mNwService.setInterfaceConfig(WifiStateMachine.this.mInterfaceName, interfaceConfiguration);
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_STATIC_IP_SUCCESS, dhcpResults);
            } catch (RemoteException e2) {
                WifiStateMachine.this.loge("Static IP configuration failed: " + e2);
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_STATIC_IP_FAILURE);
            } catch (IllegalStateException e3) {
                WifiStateMachine.this.loge("Static IP configuration failed: " + e3);
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_STATIC_IP_FAILURE);
            }
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_STATIC_IP_SUCCESS /* 131087 */:
                    WifiStateMachine.this.handleSuccessfulIpConfiguration((DhcpResults) message.obj);
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mVerifyingLinkState);
                    return true;
                case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                    WifiStateMachine.this.handleFailedIpConfiguration();
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mDisconnectingState);
                    return true;
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiManager.SAVE_NETWORK /* 151559 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class ScanModeState extends l {
        private int mLastOperationMode;

        public ScanModeState() {
        }

        @Override // u.l
        public void enter() {
            this.mLastOperationMode = WifiStateMachine.this.mOperationalMode;
        }

        @Override // u.l
        public boolean processMessage(Message message) throws Throwable {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                    WifiStateMachine.this.noteScanStart(message.arg1, (WorkSource) message.obj);
                    WifiStateMachine.this.startScanNative(1);
                    return true;
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                    if (message.arg1 != 1) {
                        return true;
                    }
                    if (this.mLastOperationMode == 3) {
                        WifiStateMachine.this.setWifiState(3);
                        WifiStateMachine.this.mWifiConfigStore.loadAndEnableAllNetworks();
                        WifiStateMachine.this.mWifiP2pChannel.k(WifiStateMachine.CMD_ENABLE_P2P);
                    } else {
                        WifiStateMachine.this.mWifiConfigStore.enableAllNetworks();
                    }
                    WifiStateMachine.this.mWifiNative.reconnect();
                    WifiStateMachine.this.mOperationalMode = 1;
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mDisconnectedState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class SoftApStartedState extends l {
        public SoftApStartedState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                    WifiStateMachine.this.loge("Cannot start supplicant with a running soft AP");
                    WifiStateMachine.this.setWifiState(4);
                    return true;
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                    return true;
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                    try {
                        WifiStateMachine.this.mNwService.stopAccessPoint(WifiStateMachine.this.mInterfaceName);
                        break;
                    } catch (Exception unused) {
                        WifiStateMachine.this.loge("Exception in stopAccessPoint()");
                    }
                    WifiStateMachine.this.setWifiApState(11);
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mInitialState);
                    return true;
                case WifiStateMachine.CMD_TETHER_STATE_CHANGE /* 131101 */:
                    if (!WifiStateMachine.this.startTethering(((TetherStateChange) message.obj).available)) {
                        return true;
                    }
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mTetheringState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class SoftApStartingState extends l {
        public SoftApStartingState() {
        }

        @Override // u.l
        public void enter() {
            Message currentMessage = WifiStateMachine.this.getCurrentMessage();
            if (currentMessage.what != 131093) {
                throw new RuntimeException("Illegal transition to SoftApStartingState: " + currentMessage);
            }
            WifiConfiguration wifiConfiguration = (WifiConfiguration) currentMessage.obj;
            if (wifiConfiguration == null) {
                WifiStateMachine.this.mWifiApConfigChannel.k(WifiStateMachine.CMD_REQUEST_AP_CONFIG);
            } else {
                WifiStateMachine.this.mWifiApConfigChannel.o(WifiStateMachine.CMD_SET_AP_CONFIG, wifiConfiguration);
                WifiStateMachine.this.startSoftApWithConfig(wifiConfiguration);
            }
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_TETHER_STATE_CHANGE /* 131101 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_START_AP_SUCCESS /* 131094 */:
                    WifiStateMachine.this.setWifiApState(13);
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mSoftApStartedState);
                    return true;
                case WifiStateMachine.CMD_START_AP_FAILURE /* 131095 */:
                    WifiStateMachine.this.setWifiApState(14);
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mInitialState);
                    return true;
                case WifiStateMachine.CMD_RESPONSE_AP_CONFIG /* 131100 */:
                    WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                    if (wifiConfiguration != null) {
                        WifiStateMachine.this.startSoftApWithConfig(wifiConfiguration);
                        return true;
                    }
                    WifiStateMachine.this.loge("Softap config is null!");
                    WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_START_AP_FAILURE);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class SupplicantStartedState extends l {
        public SupplicantStartedState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.this.mNetworkInfo.setIsAvailable(true);
            int integer = WifiStateMachine.this.mContext.getResources().getInteger(17694735);
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.mSupplicantScanIntervalMs = Settings.Global.getLong(wifiStateMachine.mContext.getContentResolver(), Settings.Global.WIFI_SUPPLICANT_SCAN_INTERVAL_MS, integer);
            WifiStateMachine.this.mWifiNative.setScanInterval(((int) WifiStateMachine.this.mSupplicantScanIntervalMs) / 1000);
        }

        @Override // u.l
        public void exit() {
            WifiStateMachine.this.mNetworkInfo.setIsAvailable(false);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                    if (WifiStateMachine.this.mP2pSupported) {
                        WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                        wifiStateMachine.transitionTo(wifiStateMachine.mWaitForP2pDisableState);
                    } else {
                        WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                        wifiStateMachine2.transitionTo(wifiStateMachine2.mSupplicantStoppingState);
                    }
                    return true;
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                    WifiStateMachine.this.loge("Failed to start soft AP with a running supplicant");
                    WifiStateMachine.this.setWifiApState(14);
                    return true;
                case WifiStateMachine.CMD_PING_SUPPLICANT /* 131123 */:
                    WifiStateMachine.this.replyToMessage(message, message.what, WifiStateMachine.this.mWifiNative.ping() ? 1 : -1);
                    return true;
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                    WifiStateMachine.this.mOperationalMode = message.arg1;
                    return true;
                case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                    WifiStateMachine.this.loge("Connection lost, restart supplicant");
                    WifiStateMachine.this.handleSupplicantConnectionLoss();
                    WifiStateMachine.this.handleNetworkDisconnect();
                    WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiStateMachine.CMD_RESET_SUPPLICANT_STATE);
                    if (WifiStateMachine.this.mP2pSupported) {
                        WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                        wifiStateMachine3.transitionTo(wifiStateMachine3.mWaitForP2pDisableState);
                    } else {
                        WifiStateMachine wifiStateMachine4 = WifiStateMachine.this;
                        wifiStateMachine4.transitionTo(wifiStateMachine4.mInitialState);
                    }
                    WifiStateMachine.this.sendMessageDelayed(WifiStateMachine.CMD_START_SUPPLICANT, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                    return true;
                case WifiMonitor.SCAN_RESULTS_EVENT /* 147461 */:
                    WifiStateMachine.this.setScanResults();
                    WifiStateMachine.this.sendScanResultsAvailableBroadcast();
                    WifiStateMachine.this.mScanResultIsPending = false;
                    return true;
                default:
                    return false;
            }
        }
    }

    public class SupplicantStartingState extends l {
        public SupplicantStartingState() {
        }

        private void initializeWpsDetails() {
            String str = SystemProperties.get("ro.product.name", ProxyProperties.LOCAL_EXCL_LIST);
            if (!WifiStateMachine.this.mWifiNative.setDeviceName(str)) {
                WifiStateMachine.this.loge("Failed to set device name " + str);
            }
            String str2 = SystemProperties.get("ro.product.manufacturer", ProxyProperties.LOCAL_EXCL_LIST);
            if (!WifiStateMachine.this.mWifiNative.setManufacturer(str2)) {
                WifiStateMachine.this.loge("Failed to set manufacturer " + str2);
            }
            String str3 = SystemProperties.get("ro.product.model", ProxyProperties.LOCAL_EXCL_LIST);
            if (!WifiStateMachine.this.mWifiNative.setModelName(str3)) {
                WifiStateMachine.this.loge("Failed to set model name " + str3);
            }
            String str4 = SystemProperties.get("ro.product.model", ProxyProperties.LOCAL_EXCL_LIST);
            if (!WifiStateMachine.this.mWifiNative.setModelNumber(str4)) {
                WifiStateMachine.this.loge("Failed to set model number " + str4);
            }
            String str5 = SystemProperties.get("ro.serialno", ProxyProperties.LOCAL_EXCL_LIST);
            if (!WifiStateMachine.this.mWifiNative.setSerialNumber(str5)) {
                WifiStateMachine.this.loge("Failed to set serial number " + str5);
            }
            if (!WifiStateMachine.this.mWifiNative.setConfigMethods("physical_display virtual_push_button")) {
                WifiStateMachine.this.loge("Failed to set WPS config methods");
            }
            if (WifiStateMachine.this.mWifiNative.setDeviceType(WifiStateMachine.this.mPrimaryDeviceType)) {
                return;
            }
            WifiStateMachine.this.loge("Failed to set primary device type " + WifiStateMachine.this.mPrimaryDeviceType);
        }

        @Override // u.l
        public boolean processMessage(Message message) throws Throwable {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiMonitor.SUP_CONNECTION_EVENT /* 147457 */:
                    WifiStateMachine.this.setWifiState(3);
                    WifiStateMachine.this.mSupplicantRestartCount = 0;
                    WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiStateMachine.CMD_RESET_SUPPLICANT_STATE);
                    WifiStateMachine.this.mLastBssid = null;
                    WifiStateMachine.this.mLastNetworkId = -1;
                    WifiStateMachine.this.mLastSignalLevel = -1;
                    WifiStateMachine.this.mWifiInfo.setMacAddress(WifiStateMachine.this.mWifiNative.getMacAddress());
                    WifiStateMachine.this.mWifiConfigStore.loadAndEnableAllNetworks();
                    initializeWpsDetails();
                    WifiStateMachine.this.sendSupplicantConnectionChangedBroadcast(true);
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mDriverStartedState);
                    return true;
                case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                    if (WifiStateMachine.access$5804(WifiStateMachine.this) <= 5) {
                        WifiStateMachine.this.loge("Failed to setup control channel, restart supplicant");
                        WifiStateMachine.this.mWifiMonitor.killSupplicant(WifiStateMachine.this.mP2pSupported);
                        WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                        wifiStateMachine2.transitionTo(wifiStateMachine2.mInitialState);
                        WifiStateMachine.this.sendMessageDelayed(WifiStateMachine.CMD_START_SUPPLICANT, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                    } else {
                        WifiStateMachine.this.loge("Failed " + WifiStateMachine.this.mSupplicantRestartCount + " times to start supplicant, unload driver");
                        WifiStateMachine.this.mSupplicantRestartCount = 0;
                        WifiStateMachine.this.setWifiState(4);
                        WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                        wifiStateMachine3.transitionTo(wifiStateMachine3.mInitialState);
                    }
                    return true;
                default:
                    return false;
            }
        }
    }

    public class SupplicantStoppingState extends l {
        public SupplicantStoppingState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.this.handleNetworkDisconnect();
            if (WifiStateMachine.this.mDhcpStateMachine != null) {
                WifiStateMachine.this.mDhcpStateMachine.doQuit();
            }
            WifiStateMachine.this.mWifiMonitor.stopSupplicant();
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_STOP_SUPPLICANT_FAILED, WifiStateMachine.access$9004(wifiStateMachine), 0), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
            WifiStateMachine.this.setWifiState(0);
            WifiStateMachine.this.mSupplicantStateTracker.sendMessage(WifiStateMachine.CMD_RESET_SUPPLICANT_STATE);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_STOP_SUPPLICANT_FAILED /* 131089 */:
                    if (message.arg1 != WifiStateMachine.this.mSupplicantStopFailureToken) {
                        return true;
                    }
                    WifiStateMachine.this.loge("Timed out on a supplicant stop, kill and proceed");
                    WifiStateMachine.this.handleSupplicantConnectionLoss();
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mInitialState);
                    return true;
                case WifiMonitor.SUP_CONNECTION_EVENT /* 147457 */:
                    WifiStateMachine.this.loge("Supplicant connection received while stopping");
                    return true;
                case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                    WifiStateMachine.this.handleSupplicantConnectionLoss();
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mInitialState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class TetherStateChange {
        public ArrayList<String> active;
        public ArrayList<String> available;

        public TetherStateChange(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
            this.available = arrayList;
            this.active = arrayList2;
        }
    }

    public class TetheredState extends l {
        public TetheredState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 == 131096) {
                WifiStateMachine.this.setWifiApState(10);
                WifiStateMachine.this.stopTethering();
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.transitionTo(wifiStateMachine.mUntetheringState);
                WifiStateMachine.this.deferMessage(message);
                return true;
            }
            if (i2 != 131101) {
                return false;
            }
            if (!WifiStateMachine.this.isWifiTethered(((TetherStateChange) message.obj).active)) {
                WifiStateMachine.this.loge("Tethering reports wifi as untethered!, shut down soft Ap");
                WifiStateMachine.this.setHostApRunning(null, false);
                WifiStateMachine.this.setHostApRunning(null, true);
            }
            return true;
        }
    }

    public class TetheringState extends l {
        public TetheringState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_TETHER_NOTIFICATION_TIMED_OUT, WifiStateMachine.access$23504(wifiStateMachine), 0), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_TETHER_STATE_CHANGE /* 131101 */:
                    if (WifiStateMachine.this.isWifiTethered(((TetherStateChange) message.obj).active)) {
                        WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                        wifiStateMachine.transitionTo(wifiStateMachine.mTetheredState);
                    }
                    return true;
                case WifiStateMachine.CMD_TETHER_NOTIFICATION_TIMED_OUT /* 131102 */:
                    if (message.arg1 == WifiStateMachine.this.mTetherToken) {
                        WifiStateMachine.this.loge("Failed to get tether update, shutdown soft access point");
                        WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                        wifiStateMachine2.transitionTo(wifiStateMachine2.mSoftApStartedState);
                        WifiStateMachine.this.sendMessageAtFrontOfQueue(WifiStateMachine.CMD_STOP_AP);
                    }
                    return true;
                default:
                    return false;
            }
        }
    }

    public class UntetheringState extends l {
        public UntetheringState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            wifiStateMachine.sendMessageDelayed(wifiStateMachine.obtainMessage(WifiStateMachine.CMD_TETHER_NOTIFICATION_TIMED_OUT, WifiStateMachine.access$23504(wifiStateMachine), 0), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_TETHER_STATE_CHANGE /* 131101 */:
                    if (WifiStateMachine.this.isWifiTethered(((TetherStateChange) message.obj).active)) {
                        return true;
                    }
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mSoftApStartedState);
                    return true;
                case WifiStateMachine.CMD_TETHER_NOTIFICATION_TIMED_OUT /* 131102 */:
                    if (message.arg1 != WifiStateMachine.this.mTetherToken) {
                        return true;
                    }
                    WifiStateMachine.this.loge("Failed to get tether update, force stop access point");
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mSoftApStartedState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class VerifyingLinkState extends l {
        public VerifyingLinkState() {
        }

        @Override // u.l
        public void enter() {
            WifiStateMachine.this.log(getName() + " enter");
            WifiStateMachine wifiStateMachine = WifiStateMachine.this;
            NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.VERIFYING_POOR_LINK;
            wifiStateMachine.setNetworkDetailedState(detailedState);
            WifiStateMachine.this.mWifiConfigStore.updateStatus(WifiStateMachine.this.mLastNetworkId, detailedState);
            WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
            wifiStateMachine2.sendNetworkStateChangeBroadcast(wifiStateMachine2.mLastBssid);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiWatchdogStateMachine.POOR_LINK_DETECTED /* 135189 */:
                    WifiStateMachine.this.log(getName() + " POOR_LINK_DETECTED: no transition");
                    return true;
                case WifiWatchdogStateMachine.GOOD_LINK_DETECTED /* 135190 */:
                    WifiStateMachine.this.log(getName() + " GOOD_LINK_DETECTED: transition to captive portal check");
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mCaptivePortalCheckState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class WaitForP2pDisableState extends l {
        private l mTransitionToState;

        public WaitForP2pDisableState() {
        }

        @Override // u.l
        public void enter() {
            int i2 = WifiStateMachine.this.getCurrentMessage().what;
            if (i2 == 131084) {
                this.mTransitionToState = WifiStateMachine.this.mSupplicantStoppingState;
            } else if (i2 == 131090 || i2 != 147458) {
                this.mTransitionToState = WifiStateMachine.this.mDriverStoppingState;
            } else {
                this.mTransitionToState = WifiStateMachine.this.mInitialState;
            }
            WifiStateMachine.this.mWifiP2pChannel.k(WifiStateMachine.CMD_DISABLE_P2P_REQ);
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_START_SUPPLICANT /* 131083 */:
                case WifiStateMachine.CMD_STOP_SUPPLICANT /* 131084 */:
                case WifiStateMachine.CMD_START_DRIVER /* 131085 */:
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_START_AP /* 131093 */:
                case WifiStateMachine.CMD_STOP_AP /* 131096 */:
                case WifiStateMachine.CMD_START_SCAN /* 131143 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_DISCONNECT /* 131145 */:
                case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                case WifiStateMachine.CMD_START_PACKET_FILTERING /* 131156 */:
                case WifiStateMachine.CMD_STOP_PACKET_FILTERING /* 131157 */:
                case WifiStateMachine.CMD_SET_FREQUENCY_BAND /* 131162 */:
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_DISABLE_P2P_RSP /* 131205 */:
                    WifiStateMachine.this.transitionTo(this.mTransitionToState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class WpsRunningState extends l {
        private Message mSourceMessage;

        public WpsRunningState() {
        }

        @Override // u.l
        public void enter() {
            this.mSourceMessage = Message.obtain(WifiStateMachine.this.getCurrentMessage());
        }

        @Override // u.l
        public void exit() throws Throwable {
            WifiStateMachine.this.mWifiConfigStore.enableAllNetworks();
            WifiStateMachine.this.mWifiConfigStore.loadConfiguredNetworks();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_STOP_DRIVER /* 131086 */:
                case WifiStateMachine.CMD_ENABLE_NETWORK /* 131126 */:
                case WifiStateMachine.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                case WifiStateMachine.CMD_RECONNECT /* 131146 */:
                case WifiStateMachine.CMD_REASSOCIATE /* 131147 */:
                case WifiManager.CONNECT_NETWORK /* 151553 */:
                    WifiStateMachine.this.deferMessage(message);
                    return true;
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                    WifiStateMachine.this.replyToMessage(this.mSourceMessage, WifiManager.WPS_COMPLETED);
                    this.mSourceMessage.recycle();
                    this.mSourceMessage = null;
                    WifiStateMachine.this.deferMessage(message);
                    WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                    wifiStateMachine.transitionTo(wifiStateMachine.mDisconnectedState);
                    return true;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    WifiStateMachine.this.handleNetworkDisconnect();
                    return true;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                case WifiMonitor.WPS_SUCCESS_EVENT /* 147464 */:
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                    return true;
                case WifiMonitor.WPS_FAIL_EVENT /* 147465 */:
                    WifiStateMachine.this.replyToMessage(this.mSourceMessage, WifiManager.WPS_FAILED, message.arg1);
                    this.mSourceMessage.recycle();
                    this.mSourceMessage = null;
                    WifiStateMachine wifiStateMachine2 = WifiStateMachine.this;
                    wifiStateMachine2.transitionTo(wifiStateMachine2.mDisconnectedState);
                    return true;
                case WifiMonitor.WPS_OVERLAP_EVENT /* 147466 */:
                    WifiStateMachine.this.replyToMessage(this.mSourceMessage, WifiManager.WPS_FAILED, 3);
                    this.mSourceMessage.recycle();
                    this.mSourceMessage = null;
                    WifiStateMachine wifiStateMachine3 = WifiStateMachine.this;
                    wifiStateMachine3.transitionTo(wifiStateMachine3.mDisconnectedState);
                    return true;
                case WifiMonitor.WPS_TIMEOUT_EVENT /* 147467 */:
                    WifiStateMachine.this.replyToMessage(this.mSourceMessage, WifiManager.WPS_FAILED, 7);
                    this.mSourceMessage.recycle();
                    this.mSourceMessage = null;
                    WifiStateMachine wifiStateMachine4 = WifiStateMachine.this;
                    wifiStateMachine4.transitionTo(wifiStateMachine4.mDisconnectedState);
                    return true;
                case WifiManager.START_WPS /* 151562 */:
                    WifiStateMachine.this.replyToMessage(message, WifiManager.WPS_FAILED, 1);
                    return true;
                case WifiManager.CANCEL_WPS /* 151566 */:
                    if (WifiStateMachine.this.mWifiNative.cancelWps()) {
                        WifiStateMachine.this.replyToMessage(message, WifiManager.CANCEL_WPS_SUCCEDED);
                    } else {
                        WifiStateMachine.this.replyToMessage(message, WifiManager.CANCEL_WPS_FAILED, 0);
                    }
                    WifiStateMachine wifiStateMachine5 = WifiStateMachine.this;
                    wifiStateMachine5.transitionTo(wifiStateMachine5.mDisconnectedState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public WifiStateMachine(Context context, String str) {
        super("WifiStateMachine");
        this.mP2pConnected = new AtomicBoolean(false);
        this.mTemporarilyDisconnectWifi = false;
        this.mScanResults = new ArrayList();
        this.mBatchedScanResults = new ArrayList();
        this.mBatchedScanOwnerUid = -1;
        this.mExpectedBatchedScans = 0;
        this.mBatchedScanMinPollTime = 0L;
        this.mLastSignalLevel = -1;
        this.mEnableRssiPolling = false;
        this.mEnableBackgroundScan = false;
        this.mRssiPollToken = 0;
        this.mReconnectCount = 0;
        this.mOperationalMode = 1;
        this.mScanResultIsPending = false;
        this.mScanWorkSource = null;
        this.mScreenBroadcastReceived = new AtomicBoolean(false);
        this.mBluetoothConnectionActive = false;
        this.mSupplicantRestartCount = 0;
        this.mSupplicantStopFailureToken = 0;
        this.mTetherToken = 0;
        this.mDriverStartToken = 0;
        this.mPeriodicScanToken = 0;
        this.mDhcpResultsLock = new Object();
        this.mDhcpActive = false;
        this.mCountryCodeSequence = new AtomicInteger();
        this.mFrequencyBand = new AtomicInteger(0);
        this.mFilteringMulticastV4Packets = new AtomicBoolean(true);
        this.mReplyChannel = new b();
        this.mSuspendOptNeedsDisabled = 0;
        this.mUserWantsSuspendOpt = new AtomicBoolean(true);
        this.mInDelayedStop = false;
        this.mDefaultState = new DefaultState();
        this.mInitialState = new InitialState();
        this.mSupplicantStartingState = new SupplicantStartingState();
        this.mSupplicantStartedState = new SupplicantStartedState();
        this.mSupplicantStoppingState = new SupplicantStoppingState();
        this.mDriverStartingState = new DriverStartingState();
        this.mDriverStartedState = new DriverStartedState();
        this.mWaitForP2pDisableState = new WaitForP2pDisableState();
        this.mDriverStoppingState = new DriverStoppingState();
        this.mDriverStoppedState = new DriverStoppedState();
        this.mScanModeState = new ScanModeState();
        this.mConnectModeState = new ConnectModeState();
        this.mL2ConnectedState = new L2ConnectedState();
        this.mObtainingIpState = new ObtainingIpState();
        this.mVerifyingLinkState = new VerifyingLinkState();
        this.mCaptivePortalCheckState = new CaptivePortalCheckState();
        this.mConnectedState = new ConnectedState();
        this.mDisconnectingState = new DisconnectingState();
        this.mDisconnectedState = new DisconnectedState();
        this.mWpsRunningState = new WpsRunningState();
        this.mSoftApStartingState = new SoftApStartingState();
        this.mSoftApStartedState = new SoftApStartedState();
        this.mTetheringState = new TetheringState();
        this.mTetheredState = new TetheredState();
        this.mUntetheringState = new UntetheringState();
        this.mWifiState = new AtomicInteger(1);
        this.mWifiApState = new AtomicInteger(11);
        this.mIsRunning = false;
        this.mReportedRunning = false;
        this.mRunningWifiUids = new WorkSource();
        this.mLastRunningWifiUids = new WorkSource();
        this.mBatchedScanSettings = null;
        this.mBatchedScanWorkSource = null;
        this.mBatchedScanCsph = 0;
        this.mNotedBatchedScanWorkSource = null;
        this.mNotedBatchedScanCsph = 0;
        this.mContext = context;
        this.mInterfaceName = str;
        this.mNetworkInfo = new NetworkInfo(1, 0, NETWORKTYPE, ProxyProperties.LOCAL_EXCL_LIST);
        this.mBatteryStats = d.a.J2(ServiceManager.getService(BatteryStats.SERVICE_NAME));
        this.mNwService = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
        this.mP2pSupported = this.mContext.getPackageManager().hasSystemFeature(PackageManager.FEATURE_WIFI_DIRECT);
        this.mWifiNative = new WifiNative(this.mInterfaceName);
        this.mWifiConfigStore = new WifiConfigStore(context, this.mWifiNative);
        this.mWifiMonitor = new WifiMonitor(this, this.mWifiNative);
        this.mWifiInfo = new WifiInfo();
        this.mSupplicantStateTracker = new SupplicantStateTracker(context, this, this.mWifiConfigStore, getHandler());
        this.mLinkProperties = new LinkProperties();
        this.mNetlinkLinkProperties = new LinkProperties();
        this.mWifiP2pManager = (WifiP2pManager) this.mContext.getSystemService(Context.WIFI_P2P_SERVICE);
        this.mNetworkInfo.setIsAvailable(false);
        this.mLastBssid = null;
        this.mLastNetworkId = -1;
        this.mLastSignalLevel = -1;
        InterfaceObserver interfaceObserver = new InterfaceObserver(this);
        this.mInterfaceObserver = interfaceObserver;
        try {
            this.mNwService.registerObserver(interfaceObserver);
        } catch (RemoteException e2) {
            loge("Couldn't register interface observer: " + e2.toString());
        }
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService(Context.ALARM_SERVICE);
        this.mScanIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ACTION_START_SCAN, (Uri) null), 0);
        this.mBatchedScanIntervalIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ACTION_REFRESH_BATCHED_SCAN, (Uri) null), 0);
        this.mDefaultFrameworkScanIntervalMs = this.mContext.getResources().getInteger(17694737);
        this.mDriverStopDelayMs = this.mContext.getResources().getInteger(17694738);
        this.mBackgroundScanSupported = this.mContext.getResources().getBoolean(17891351);
        this.mPrimaryDeviceType = this.mContext.getResources().getString(17039386);
        this.mUserWantsSuspendOpt.set(Settings.Global.getInt(this.mContext.getContentResolver(), Settings.Global.WIFI_SUSPEND_OPTIMIZATIONS_ENABLED, 1) == 1);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.net.wifi.WifiStateMachine.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(ConnectivityManager.EXTRA_AVAILABLE_TETHER);
                ArrayList<String> stringArrayListExtra2 = intent.getStringArrayListExtra(ConnectivityManager.EXTRA_ACTIVE_TETHER);
                WifiStateMachine wifiStateMachine = WifiStateMachine.this;
                wifiStateMachine.sendMessage(WifiStateMachine.CMD_TETHER_STATE_CHANGE, wifiStateMachine.new TetherStateChange(stringArrayListExtra, stringArrayListExtra2));
            }
        }, new IntentFilter(ConnectivityManager.ACTION_TETHER_STATE_CHANGED));
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.net.wifi.WifiStateMachine.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                WifiStateMachine.this.startScan(-1, null);
            }
        }, new IntentFilter(ACTION_START_SCAN));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_SCREEN_ON);
        intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        intentFilter.addAction(ACTION_REFRESH_BATCHED_SCAN);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.net.wifi.WifiStateMachine.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals(Intent.ACTION_SCREEN_ON)) {
                    WifiStateMachine.this.handleScreenStateChanged(true);
                } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                    WifiStateMachine.this.handleScreenStateChanged(false);
                } else if (action.equals(WifiStateMachine.ACTION_REFRESH_BATCHED_SCAN)) {
                    WifiStateMachine.this.startNextBatchedScanAsync();
                }
            }
        }, intentFilter);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.net.wifi.WifiStateMachine.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_DELAYED_STOP_DRIVER, intent.getIntExtra(WifiStateMachine.DELAYED_STOP_COUNTER, 0), 0);
            }
        }, new IntentFilter(ACTION_DELAYED_DRIVER_STOP));
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor(Settings.Global.WIFI_SUSPEND_OPTIMIZATIONS_ENABLED), false, new ContentObserver(getHandler()) { // from class: android.net.wifi.WifiStateMachine.5
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                WifiStateMachine.this.mUserWantsSuspendOpt.set(Settings.Global.getInt(WifiStateMachine.this.mContext.getContentResolver(), Settings.Global.WIFI_SUSPEND_OPTIMIZATIONS_ENABLED, 1) == 1);
            }
        });
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: android.net.wifi.WifiStateMachine.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_BOOT_COMPLETED);
            }
        }, new IntentFilter(Intent.ACTION_BOOT_COMPLETED));
        this.mScanResultCache = new LruCache<>(80);
        PowerManager powerManager = (PowerManager) this.mContext.getSystemService(Context.POWER_SERVICE);
        this.mWakeLock = powerManager.newWakeLock(1, getName());
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "WifiSuspend");
        this.mSuspendWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        addState(this.mDefaultState);
        addState(this.mInitialState, this.mDefaultState);
        addState(this.mSupplicantStartingState, this.mDefaultState);
        addState(this.mSupplicantStartedState, this.mDefaultState);
        addState(this.mDriverStartingState, this.mSupplicantStartedState);
        addState(this.mDriverStartedState, this.mSupplicantStartedState);
        addState(this.mScanModeState, this.mDriverStartedState);
        addState(this.mConnectModeState, this.mDriverStartedState);
        addState(this.mL2ConnectedState, this.mConnectModeState);
        addState(this.mObtainingIpState, this.mL2ConnectedState);
        addState(this.mVerifyingLinkState, this.mL2ConnectedState);
        addState(this.mCaptivePortalCheckState, this.mL2ConnectedState);
        addState(this.mConnectedState, this.mL2ConnectedState);
        addState(this.mDisconnectingState, this.mConnectModeState);
        addState(this.mDisconnectedState, this.mConnectModeState);
        addState(this.mWpsRunningState, this.mConnectModeState);
        addState(this.mWaitForP2pDisableState, this.mSupplicantStartedState);
        addState(this.mDriverStoppingState, this.mSupplicantStartedState);
        addState(this.mDriverStoppedState, this.mSupplicantStartedState);
        addState(this.mSupplicantStoppingState, this.mDefaultState);
        addState(this.mSoftApStartingState, this.mDefaultState);
        addState(this.mSoftApStartedState, this.mDefaultState);
        addState(this.mTetheringState, this.mSoftApStartedState);
        addState(this.mTetheredState, this.mSoftApStartedState);
        addState(this.mUntetheringState, this.mSoftApStartedState);
        setInitialState(this.mInitialState);
        setLogRecSize(2000);
        setLogOnlyTransitions(false);
        start();
        Intent intent = new Intent(WifiManager.WIFI_SCAN_AVAILABLE);
        intent.addFlags(67108864);
        intent.putExtra(WifiManager.EXTRA_SCAN_AVAILABLE, 1);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    public static /* synthetic */ int access$10708(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mDelayedStopCounter;
        wifiStateMachine.mDelayedStopCounter = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$16708(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mRssiPollToken;
        wifiStateMachine.mRssiPollToken = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$21204(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mPeriodicScanToken + 1;
        wifiStateMachine.mPeriodicScanToken = i2;
        return i2;
    }

    public static /* synthetic */ int access$23504(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mTetherToken + 1;
        wifiStateMachine.mTetherToken = i2;
        return i2;
    }

    public static /* synthetic */ int access$5804(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mSupplicantRestartCount + 1;
        wifiStateMachine.mSupplicantRestartCount = i2;
        return i2;
    }

    public static /* synthetic */ int access$9004(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mSupplicantStopFailureToken + 1;
        wifiStateMachine.mSupplicantStopFailureToken = i2;
        return i2;
    }

    public static /* synthetic */ int access$9604(WifiStateMachine wifiStateMachine) {
        int i2 = wifiStateMachine.mDriverStartToken + 1;
        wifiStateMachine.mDriverStartToken = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndSetConnectivityInstance() {
        if (this.mCm == null) {
            this.mCm = (ConnectivityManager) this.mContext.getSystemService(Context.CONNECTIVITY_SERVICE);
        }
    }

    private void clearLinkProperties() {
        LinkProperties linkProperties;
        if (!this.mWifiConfigStore.isUsingStaticIp(this.mLastNetworkId)) {
            this.mWifiConfigStore.clearLinkProperties(this.mLastNetworkId);
        }
        synchronized (this.mDhcpResultsLock) {
            DhcpResults dhcpResults = this.mDhcpResults;
            if (dhcpResults != null && (linkProperties = dhcpResults.linkProperties) != null) {
                linkProperties.clear();
            }
        }
        this.mNetlinkLinkProperties.clear();
        this.mLinkProperties.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void diableWifiAp() {
        loge("wifi ap open fail, disable");
        setWifiApState(11);
        if (this.mWifiManager == null) {
            this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        }
        this.mWifiManager.setWifiApEnabled(null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void diableWifiSta() {
        loge("wifi sta open fail, disable");
        setWifiState(1);
        if (this.mWifiManager == null) {
            this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        }
        this.mWifiManager.setWifiEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchPktcntNative(RssiPacketCountInfo rssiPacketCountInfo) {
        String strPktcntPoll = this.mWifiNative.pktcntPoll();
        if (strPktcntPoll != null) {
            for (String str : strPktcntPoll.split("\n")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length >= 2) {
                    try {
                        if (strArrSplit[0].equals("TXGOOD")) {
                            rssiPacketCountInfo.txgood = Integer.parseInt(strArrSplit[1]);
                        } else if (strArrSplit[0].equals("TXBAD")) {
                            rssiPacketCountInfo.txbad = Integer.parseInt(strArrSplit[1]);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchRssiAndLinkSpeedNative() {
        int i2;
        int i3;
        String strSignalPoll = this.mWifiNative.signalPoll();
        if (strSignalPoll != null) {
            i2 = -1;
            i3 = -1;
            for (String str : strSignalPoll.split("\n")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length >= 2) {
                    try {
                        if (strArrSplit[0].equals("RSSI")) {
                            i2 = Integer.parseInt(strArrSplit[1]);
                        } else if (strArrSplit[0].equals("LINKSPEED")) {
                            i3 = Integer.parseInt(strArrSplit[1]);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        } else {
            i2 = -1;
            i3 = -1;
        }
        if (i2 == -1 || -200 >= i2 || i2 >= 256) {
            this.mWifiInfo.setRssi(-200);
        } else {
            if (i2 > 0) {
                i2 -= 256;
            }
            this.mWifiInfo.setRssi(i2);
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(i2, 5);
            if (iCalculateSignalLevel != this.mLastSignalLevel) {
                sendRssiChangeBroadcast(i2);
            }
            this.mLastSignalLevel = iCalculateSignalLevel;
        }
        if (i3 != -1) {
            this.mWifiInfo.setLinkSpeed(i3);
        }
    }

    private int getMaxDhcpRetries() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "wifi_max_dhcp_retry_count", 9);
    }

    private NetworkInfo.DetailedState getNetworkDetailedState() {
        return this.mNetworkInfo.getDetailedState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBatchedScanPollRequest() {
        if (this.mBatchedScanMinPollTime == 0 || this.mBatchedScanSettings == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.mBatchedScanMinPollTime;
        if (jCurrentTimeMillis > j2) {
            startNextBatchedScan();
        } else {
            this.mAlarmManager.setExact(0, j2, this.mBatchedScanIntervalIntent);
            this.mBatchedScanMinPollTime = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFailedIpConfiguration() {
        loge("IP configuration failed");
        this.mWifiInfo.setInetAddress(null);
        this.mWifiInfo.setMeteredHint(false);
        int maxDhcpRetries = getMaxDhcpRetries();
        if (maxDhcpRetries > 0) {
            int i2 = this.mReconnectCount + 1;
            this.mReconnectCount = i2;
            if (i2 > maxDhcpRetries) {
                loge("Failed " + this.mReconnectCount + " times, Disabling " + this.mLastNetworkId);
                this.mWifiConfigStore.disableNetwork(this.mLastNetworkId, 2);
                this.mReconnectCount = 0;
            }
        }
        this.mWifiNative.disconnect();
        this.mWifiNative.reconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkDisconnect() {
        stopDhcp();
        try {
            this.mNwService.clearInterfaceAddresses(this.mInterfaceName);
            this.mNwService.disableIpv6(this.mInterfaceName);
        } catch (Exception e2) {
            loge("Failed to clear addresses or disable ipv6" + e2);
        }
        this.mWifiInfo.setInetAddress(null);
        this.mWifiInfo.setBSSID(null);
        this.mWifiInfo.setSSID(null);
        this.mWifiInfo.setNetworkId(-1);
        this.mWifiInfo.setRssi(-200);
        this.mWifiInfo.setLinkSpeed(-1);
        this.mWifiInfo.setMeteredHint(false);
        NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.DISCONNECTED;
        setNetworkDetailedState(detailedState);
        this.mWifiConfigStore.updateStatus(this.mLastNetworkId, detailedState);
        clearLinkProperties();
        sendNetworkStateChangeBroadcast(this.mLastBssid);
        this.mLastBssid = null;
        this.mLastNetworkId = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScreenStateChanged(boolean z2) {
        enableRssiPolling(z2);
        if (this.mBackgroundScanSupported) {
            enableBackgroundScanCommand(!z2);
        }
        if (z2) {
            enableAllNetworks();
        }
        if (this.mUserWantsSuspendOpt.get()) {
            if (z2) {
                sendMessage(CMD_SET_SUSPEND_OPT_ENABLED, 0, 0);
            } else {
                this.mSuspendWakeLock.acquire(2000L);
                sendMessage(CMD_SET_SUSPEND_OPT_ENABLED, 1, 0);
            }
        }
        this.mScreenBroadcastReceived.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccessfulIpConfiguration(DhcpResults dhcpResults) {
        this.mLastSignalLevel = -1;
        this.mReconnectCount = 0;
        synchronized (this.mDhcpResultsLock) {
            this.mDhcpResults = dhcpResults;
        }
        LinkProperties linkProperties = dhcpResults.linkProperties;
        this.mWifiConfigStore.setLinkProperties(this.mLastNetworkId, new LinkProperties(linkProperties));
        Iterator<InetAddress> it = linkProperties.getAddresses().iterator();
        this.mWifiInfo.setInetAddress(it.hasNext() ? it.next() : null);
        this.mWifiInfo.setMeteredHint(dhcpResults.hasMeteredHint());
        updateLinkProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSupplicantConnectionLoss() {
        this.mWifiMonitor.killSupplicant(this.mP2pSupported);
        sendSupplicantConnectionChangedBroadcast(false);
        setWifiState(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SupplicantState handleSupplicantStateChange(Message message) {
        StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
        SupplicantState supplicantState = stateChangeResult.state;
        this.mWifiInfo.setSupplicantState(supplicantState);
        if (SupplicantState.isConnecting(supplicantState)) {
            this.mWifiInfo.setNetworkId(stateChangeResult.networkId);
        } else {
            this.mWifiInfo.setNetworkId(-1);
        }
        this.mWifiInfo.setBSSID(stateChangeResult.BSSID);
        this.mWifiInfo.setSSID(stateChangeResult.wifiSsid);
        this.mSupplicantStateTracker.sendMessage(Message.obtain(message));
        return supplicantState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWifiTethered(ArrayList<String> arrayList) {
        checkAndSetConnectivityInstance();
        String[] tetherableWifiRegexs = this.mCm.getTetherableWifiRegexs();
        Iterator<String> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            String next = it.next();
            for (String str : tetherableWifiRegexs) {
                if (next.matches(str)) {
                    return true;
                }
            }
        }
    }

    private void noteBatchedScanStart() {
        WorkSource workSource = this.mNotedBatchedScanWorkSource;
        if (workSource != null && (!workSource.equals(this.mBatchedScanWorkSource) || this.mNotedBatchedScanCsph != this.mBatchedScanCsph)) {
            try {
                try {
                    this.mBatteryStats.k2(this.mNotedBatchedScanWorkSource);
                } catch (Throwable th) {
                    this.mNotedBatchedScanWorkSource = null;
                    this.mNotedBatchedScanCsph = 0;
                    throw th;
                }
            } catch (RemoteException e2) {
                log(e2.toString());
            }
            this.mNotedBatchedScanWorkSource = null;
            this.mNotedBatchedScanCsph = 0;
        }
        try {
            this.mBatteryStats.m(this.mBatchedScanWorkSource, this.mBatchedScanCsph);
            this.mNotedBatchedScanWorkSource = this.mBatchedScanWorkSource;
            this.mNotedBatchedScanCsph = this.mBatchedScanCsph;
        } catch (RemoteException e3) {
            log(e3.toString());
        }
    }

    private void noteBatchedScanStop() {
        WorkSource workSource = this.mNotedBatchedScanWorkSource;
        if (workSource != null) {
            try {
                try {
                    this.mBatteryStats.k2(workSource);
                } catch (RemoteException e2) {
                    log(e2.toString());
                }
            } finally {
                this.mNotedBatchedScanWorkSource = null;
                this.mNotedBatchedScanCsph = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void noteScanEnd() {
        WorkSource workSource = this.mScanWorkSource;
        if (workSource != null) {
            try {
                try {
                    this.mBatteryStats.p0(workSource);
                } catch (RemoteException e2) {
                    log(e2.toString());
                }
            } finally {
                this.mScanWorkSource = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void noteScanStart(int i2, WorkSource workSource) {
        if (this.mScanWorkSource == null) {
            if (i2 == -1 && workSource == null) {
                return;
            }
            if (workSource == null) {
                workSource = new WorkSource(i2);
            }
            this.mScanWorkSource = workSource;
            try {
                this.mBatteryStats.D(workSource);
            } catch (RemoteException e2) {
                log(e2.toString());
            }
        }
    }

    private Message obtainMessageWithArg2(Message message) {
        Message messageObtain = Message.obtain();
        messageObtain.arg2 = message.arg2;
        return messageObtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean recordBatchedScanSettings(int i2, int i3, Bundle bundle) {
        BatchedScanSettings batchedScanSettings = (BatchedScanSettings) bundle.getParcelable(BATCHED_SETTING);
        WorkSource workSource = (WorkSource) bundle.getParcelable(BATCHED_WORKSOURCE);
        if (batchedScanSettings != null) {
            if (batchedScanSettings.equals(this.mBatchedScanSettings)) {
                return false;
            }
        } else if (this.mBatchedScanSettings == null) {
            return false;
        }
        this.mBatchedScanSettings = batchedScanSettings;
        if (workSource == null) {
            workSource = new WorkSource(i2);
        }
        this.mBatchedScanWorkSource = workSource;
        this.mBatchedScanCsph = i3;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message message, int i2) {
        if (message.replyTo == null) {
            return;
        }
        Message messageObtainMessageWithArg2 = obtainMessageWithArg2(message);
        messageObtainMessageWithArg2.what = i2;
        this.mReplyChannel.j(message, messageObtainMessageWithArg2);
    }

    private void retrieveBatchedScanData() {
        int i2;
        int i3;
        String batchedScanResults = this.mWifiNative.getBatchedScanResults();
        this.mBatchedScanMinPollTime = 0L;
        if (batchedScanResults == null || batchedScanResults.equalsIgnoreCase("OK")) {
            loge("Unexpected BatchedScanResults :" + batchedScanResults);
            return;
        }
        String[] strArrSplit = batchedScanResults.split("\n");
        boolean z2 = true;
        if (strArrSplit[0].startsWith("scancount=")) {
            try {
                i2 = Integer.parseInt(strArrSplit[0].substring(10));
            } catch (NumberFormatException unused) {
                loge("scancount parseInt Exception from " + strArrSplit[1]);
                i2 = 0;
            }
            i3 = 1;
        } else {
            log("scancount not found");
            i2 = 0;
            i3 = 0;
        }
        if (i2 == 0) {
            loge("scanCount==0 - aborting");
            return;
        }
        Intent intent = new Intent(WifiManager.BATCHED_SCAN_RESULTS_AVAILABLE_ACTION);
        intent.addFlags(67108864);
        synchronized (this.mBatchedScanResults) {
            try {
                this.mBatchedScanResults.clear();
                BatchedScanResult batchedScanResult = new BatchedScanResult();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = -1;
                int i7 = -1;
                WifiSsid wifiSsidCreateFromAsciiEncoded = null;
                String str = null;
                while (true) {
                    if (i3 >= strArrSplit.length) {
                        String batchedScanResults2 = this.mWifiNative.getBatchedScanResults();
                        if (batchedScanResults2 == null) {
                            loge("Unexpected null BatchedScanResults");
                            return;
                        }
                        strArrSplit = batchedScanResults2.split("\n");
                        if (strArrSplit.length != 0 && !strArrSplit[0].equals("ok")) {
                            i3 = 0;
                        }
                        loge("batch scan results just ended!");
                        if (this.mBatchedScanResults.size() > 0) {
                            this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
                        }
                        return;
                    }
                    if (strArrSplit[i3].equals("----")) {
                        if (i3 + 1 != strArrSplit.length) {
                            loge("didn't consume " + (strArrSplit.length - i3));
                        }
                        if (this.mBatchedScanResults.size() > 0) {
                            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                        }
                        logd("retrieveBatchedScanResults X");
                        return;
                    }
                    if (strArrSplit[i3].equals(END_STR) || strArrSplit[i3].equals(DELIMITER_STR)) {
                        if (str != null) {
                            batchedScanResult.scanResults.add(new ScanResult(wifiSsidCreateFromAsciiEncoded, str, ProxyProperties.LOCAL_EXCL_LIST, i4, i5, j2, i6, i7));
                            i4 = 0;
                            i5 = 0;
                            i6 = -1;
                            i7 = -1;
                            wifiSsidCreateFromAsciiEncoded = null;
                            str = null;
                            j2 = 0;
                        }
                        if (strArrSplit[i3].equals(END_STR)) {
                            if (batchedScanResult.scanResults.size() != 0) {
                                this.mBatchedScanResults.add(batchedScanResult);
                                batchedScanResult = new BatchedScanResult();
                            } else {
                                logd("Found empty batch");
                            }
                        }
                    } else if (strArrSplit[i3].equals("trunc")) {
                        batchedScanResult.truncated = z2;
                    } else if (strArrSplit[i3].startsWith(BSSID_STR)) {
                        str = new String(strArrSplit[i3].getBytes(), 6, strArrSplit[i3].length() - 6);
                    } else if (strArrSplit[i3].startsWith(FREQ_STR)) {
                        try {
                            i5 = Integer.parseInt(strArrSplit[i3].substring(5));
                        } catch (NumberFormatException unused2) {
                            loge("Invalid freqency: " + strArrSplit[i3]);
                            i5 = 0;
                        }
                    } else if (strArrSplit[i3].startsWith("age=")) {
                        try {
                            j2 = 1000 * (jElapsedRealtime - Long.parseLong(strArrSplit[i3].substring(4)));
                        } catch (NumberFormatException unused3) {
                            loge("Invalid timestamp: " + strArrSplit[i3]);
                            j2 = 0;
                        }
                    } else if (strArrSplit[i3].startsWith(SSID_STR)) {
                        wifiSsidCreateFromAsciiEncoded = WifiSsid.createFromAsciiEncoded(strArrSplit[i3].substring(5));
                    } else if (strArrSplit[i3].startsWith(LEVEL_STR)) {
                        try {
                            int i8 = Integer.parseInt(strArrSplit[i3].substring(6));
                            if (i8 > 0) {
                                i8 -= 256;
                            }
                            i4 = i8;
                        } catch (NumberFormatException unused4) {
                            loge("Invalid level: " + strArrSplit[i3]);
                            i4 = 0;
                        }
                    } else if (strArrSplit[i3].startsWith("dist=")) {
                        try {
                            i6 = Integer.parseInt(strArrSplit[i3].substring(5));
                        } catch (NumberFormatException unused5) {
                            loge("Invalid distance: " + strArrSplit[i3]);
                            i6 = -1;
                        }
                    } else if (strArrSplit[i3].startsWith("distSd=")) {
                        try {
                            i7 = Integer.parseInt(strArrSplit[i3].substring(7));
                        } catch (NumberFormatException unused6) {
                            loge("Invalid distanceSd: " + strArrSplit[i3]);
                            i7 = -1;
                        }
                    } else {
                        loge("Unable to parse batched scan result line: " + strArrSplit[i3]);
                    }
                    i3++;
                    z2 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void sendLinkConfigurationChangedBroadcast() {
        Intent intent = new Intent(WifiManager.LINK_CONFIGURATION_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra(WifiManager.EXTRA_LINK_PROPERTIES, new LinkProperties(this.mLinkProperties));
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNetworkStateChangeBroadcast(String str) {
        Intent intent = new Intent(WifiManager.NETWORK_STATE_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra("networkInfo", new NetworkInfo(this.mNetworkInfo));
        intent.putExtra(WifiManager.EXTRA_LINK_PROPERTIES, new LinkProperties(this.mLinkProperties));
        if (str != null) {
            intent.putExtra("bssid", str);
        }
        if (this.mNetworkInfo.getDetailedState() == NetworkInfo.DetailedState.VERIFYING_POOR_LINK || this.mNetworkInfo.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
            intent.putExtra(WifiManager.EXTRA_WIFI_INFO, new WifiInfo(this.mWifiInfo));
        }
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void sendRssiChangeBroadcast(int i2) {
        Intent intent = new Intent(WifiManager.RSSI_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra(WifiManager.EXTRA_NEW_RSSI, i2);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendScanResultsAvailableBroadcast() {
        noteScanEnd();
        Intent intent = new Intent(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION);
        intent.addFlags(67108864);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSupplicantConnectionChangedBroadcast(boolean z2) {
        Intent intent = new Intent(WifiManager.SUPPLICANT_CONNECTION_CHANGE_ACTION);
        intent.addFlags(67108864);
        intent.putExtra("connected", z2);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetworkDetailedState(NetworkInfo.DetailedState detailedState) {
        if (detailedState != this.mNetworkInfo.getDetailedState()) {
            this.mNetworkInfo.setDetailedState(detailedState, null, this.mWifiInfo.getSSID());
        }
    }

    private void setNextBatchedAlarm(int i2) {
        if (this.mBatchedScanSettings == null || i2 < 1) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        BatchedScanSettings batchedScanSettings = this.mBatchedScanSettings;
        int i3 = batchedScanSettings.scanIntervalSec;
        this.mBatchedScanMinPollTime = jCurrentTimeMillis + ((long) (i3 * 1000));
        int i4 = batchedScanSettings.maxScansPerBatch;
        if (i4 < i2) {
            i2 = i4;
        }
        int i5 = i3 * i2;
        int i6 = SystemProperties.getInt("wifi.batchedScan.pollPeriod", 0);
        if (i6 > 0) {
            i5 = i6;
        }
        this.mAlarmManager.setExact(0, System.currentTimeMillis() + ((long) ((i5 - (this.mBatchedScanSettings.scanIntervalSec / 2)) * 1000)), this.mBatchedScanIntervalIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScanResults() {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        do {
            String strScanResults = this.mWifiNative.scanResults(i2);
            if (TextUtils.isEmpty(strScanResults)) {
                break;
            }
            stringBuffer.append(strScanResults);
            stringBuffer.append("\n");
            String[] strArrSplit = strScanResults.split("\n");
            int length = strArrSplit.length;
            while (true) {
                length--;
                if (length >= 0 && !strArrSplit[length].startsWith(END_STR)) {
                    if (strArrSplit[length].startsWith(ID_STR)) {
                        try {
                            i2 = Integer.parseInt(strArrSplit[length].substring(3)) + 1;
                            break;
                        } catch (NumberFormatException unused) {
                            i2 = -1;
                            break;
                        }
                    }
                }
                i2 = -1;
                break;
                break;
            }
        } while (i2 != -1);
        String string = stringBuffer.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        synchronized (this.mScanResultCache) {
            this.mScanResults = new ArrayList();
            String[] strArrSplit2 = string.split("\n");
            String str = ProxyProperties.LOCAL_EXCL_LIST;
            String str2 = ProxyProperties.LOCAL_EXCL_LIST;
            long jElapsedRealtimeNanos = 0;
            WifiSsid wifiSsidCreateFromAsciiEncoded = null;
            int i3 = 0;
            int i4 = 0;
            for (String str3 : strArrSplit2) {
                if (str3.startsWith(BSSID_STR)) {
                    str = new String(str3.getBytes(), 6, str3.length() - 6);
                } else if (str3.startsWith(FREQ_STR)) {
                    try {
                        i4 = Integer.parseInt(str3.substring(5));
                    } catch (NumberFormatException unused2) {
                        i4 = 0;
                    }
                } else if (str3.startsWith(LEVEL_STR)) {
                    try {
                        int i5 = Integer.parseInt(str3.substring(6));
                        if (i5 > 0) {
                            i5 -= 256;
                        }
                        i3 = i5;
                    } catch (NumberFormatException unused3) {
                        i3 = 0;
                    }
                } else if (str3.startsWith(TSF_STR)) {
                    jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000;
                } else if (str3.startsWith(FLAGS_STR)) {
                    str2 = new String(str3.getBytes(), 6, str3.length() - 6);
                } else if (str3.startsWith(SSID_STR)) {
                    wifiSsidCreateFromAsciiEncoded = WifiSsid.createFromAsciiEncoded(str3.substring(5));
                } else if (str3.startsWith(DELIMITER_STR) || str3.startsWith(END_STR)) {
                    if (str != null) {
                        String str4 = str + (wifiSsidCreateFromAsciiEncoded != null ? wifiSsidCreateFromAsciiEncoded.toString() : WifiSsid.NONE);
                        ScanResult scanResult = this.mScanResultCache.get(str4);
                        if (scanResult != null) {
                            scanResult.level = i3;
                            scanResult.wifiSsid = wifiSsidCreateFromAsciiEncoded;
                            scanResult.SSID = wifiSsidCreateFromAsciiEncoded != null ? wifiSsidCreateFromAsciiEncoded.toString() : WifiSsid.NONE;
                            scanResult.capabilities = str2;
                            scanResult.frequency = i4;
                            scanResult.timestamp = jElapsedRealtimeNanos;
                        } else {
                            scanResult = new ScanResult(wifiSsidCreateFromAsciiEncoded, str, str2, i3, i4, jElapsedRealtimeNanos);
                            this.mScanResultCache.put(str4, scanResult);
                        }
                        this.mScanResults.add(scanResult);
                    }
                    str2 = ProxyProperties.LOCAL_EXCL_LIST;
                    jElapsedRealtimeNanos = 0;
                    wifiSsidCreateFromAsciiEncoded = null;
                    str = null;
                    i3 = 0;
                    i4 = 0;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuspendOptimizations(int i2, boolean z2) {
        if (!z2) {
            this.mSuspendOptNeedsDisabled = i2 | this.mSuspendOptNeedsDisabled;
        } else {
            this.mSuspendOptNeedsDisabled = (~i2) & this.mSuspendOptNeedsDisabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuspendOptimizationsNative(int i2, boolean z2) {
        if (!z2) {
            this.mSuspendOptNeedsDisabled = i2 | this.mSuspendOptNeedsDisabled;
            this.mWifiNative.setSuspendOptimizations(false);
            return;
        }
        int i3 = (~i2) & this.mSuspendOptNeedsDisabled;
        this.mSuspendOptNeedsDisabled = i3;
        if (i3 == 0 && this.mUserWantsSuspendOpt.get()) {
            this.mWifiNative.setSuspendOptimizations(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWifiApState(int i2) {
        int i3 = this.mWifiApState.get();
        try {
            if (i2 != 13) {
                if (i2 == 11) {
                    this.mBatteryStats.T0();
                }
                this.mWifiApState.set(i2);
                Intent intent = new Intent(WifiManager.WIFI_AP_STATE_CHANGED_ACTION);
                intent.addFlags(67108864);
                intent.putExtra("wifi_state", i2);
                intent.putExtra("previous_wifi_state", i3);
                this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
            }
            this.mBatteryStats.r();
        } catch (RemoteException unused) {
            loge("Failed to note battery stats in wifi");
        }
        this.mWifiApState.set(i2);
        Intent intent2 = new Intent(WifiManager.WIFI_AP_STATE_CHANGED_ACTION);
        intent2.addFlags(67108864);
        intent2.putExtra("wifi_state", i2);
        intent2.putExtra("previous_wifi_state", i3);
        this.mContext.sendStickyBroadcastAsUser(intent2, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWifiState(int i2) {
        int i3 = this.mWifiState.get();
        try {
            if (i2 != 3) {
                if (i2 == 1) {
                    this.mBatteryStats.T0();
                }
                this.mWifiState.set(i2);
                Intent intent = new Intent(WifiManager.WIFI_STATE_CHANGED_ACTION);
                intent.addFlags(67108864);
                intent.putExtra("wifi_state", i2);
                intent.putExtra("previous_wifi_state", i3);
                this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
            }
            this.mBatteryStats.r();
        } catch (RemoteException unused) {
            loge("Failed to note battery stats in wifi");
        }
        this.mWifiState.set(i2);
        Intent intent2 = new Intent(WifiManager.WIFI_STATE_CHANGED_ACTION);
        intent2.addFlags(67108864);
        intent2.putExtra("wifi_state", i2);
        intent2.putExtra("previous_wifi_state", i3);
        this.mContext.sendStickyBroadcastAsUser(intent2, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBatchedScan() {
        if (this.mBatchedScanSettings == null || this.mDhcpActive) {
            return;
        }
        retrieveBatchedScanData();
        this.mAlarmManager.cancel(this.mBatchedScanIntervalIntent);
        try {
            int i2 = Integer.parseInt(this.mWifiNative.setBatchedScanSettings(this.mBatchedScanSettings));
            this.mExpectedBatchedScans = i2;
            setNextBatchedAlarm(i2);
            if (this.mExpectedBatchedScans > 0) {
                noteBatchedScanStart();
            }
        } catch (NumberFormatException e2) {
            stopBatchedScan();
            loge("Exception parsing WifiNative.setBatchedScanSettings response " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNextBatchedScan() {
        retrieveBatchedScanData();
        setNextBatchedAlarm(this.mExpectedBatchedScans);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNextBatchedScanAsync() {
        sendMessage(CMD_START_NEXT_BATCHED_SCAN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScanNative(int i2) {
        this.mWifiNative.scan(i2);
        this.mScanResultIsPending = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSoftApWithConfig(final WifiConfiguration wifiConfiguration) {
        new Thread(new Runnable() { // from class: android.net.wifi.WifiStateMachine.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WifiStateMachine.this.mNwService.startAccessPoint(wifiConfiguration, WifiStateMachine.this.mInterfaceName);
                } catch (Exception e2) {
                    WifiStateMachine.this.loge("Exception in softap start " + e2);
                    try {
                        WifiStateMachine.this.mNwService.stopAccessPoint(WifiStateMachine.this.mInterfaceName);
                        WifiStateMachine.this.mNwService.startAccessPoint(wifiConfiguration, WifiStateMachine.this.mInterfaceName);
                    } catch (Exception e3) {
                        WifiStateMachine.this.loge("Exception in softap re-start " + e3);
                        WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_START_AP_FAILURE);
                        return;
                    }
                }
                WifiStateMachine.this.sendMessage(WifiStateMachine.CMD_START_AP_SUCCESS);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startTethering(ArrayList<String> arrayList) {
        checkAndSetConnectivityInstance();
        String[] tetherableWifiRegexs = this.mCm.getTetherableWifiRegexs();
        for (String str : arrayList) {
            for (String str2 : tetherableWifiRegexs) {
                if (str.matches(str2)) {
                    try {
                        InterfaceConfiguration interfaceConfig = this.mNwService.getInterfaceConfig(str);
                        if (interfaceConfig != null) {
                            interfaceConfig.setLinkAddress(new LinkAddress(NetworkUtils.numericToInetAddress("192.168.43.1"), 24));
                            interfaceConfig.setInterfaceUp();
                            this.mNwService.setInterfaceConfig(str, interfaceConfig);
                        }
                        if (this.mCm.tether(str) == 0) {
                            this.mTetherInterfaceName = str;
                            return true;
                        }
                        loge("Error tethering on " + str);
                        return false;
                    } catch (Exception e2) {
                        loge("Error configuring interface " + str + ", :" + e2);
                        return false;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopBatchedScan() {
        this.mAlarmManager.cancel(this.mBatchedScanIntervalIntent);
        retrieveBatchedScanData();
        this.mWifiNative.setBatchedScanSettings(null);
        noteBatchedScanStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopTethering() {
        checkAndSetConnectivityInstance();
        try {
            InterfaceConfiguration interfaceConfig = this.mNwService.getInterfaceConfig(this.mTetherInterfaceName);
            if (interfaceConfig != null) {
                interfaceConfig.setLinkAddress(new LinkAddress(NetworkUtils.numericToInetAddress("0.0.0.0"), 0));
                this.mNwService.setInterfaceConfig(this.mTetherInterfaceName, interfaceConfig);
            }
        } catch (Exception e2) {
            loge("Error resetting interface " + this.mTetherInterfaceName + ", :" + e2);
        }
        if (this.mCm.untether(this.mTetherInterfaceName) != 0) {
            loge("Untether initiate failed!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLinkProperties() {
        LinkProperties linkProperties;
        LinkProperties linkProperties2 = new LinkProperties();
        linkProperties2.setInterfaceName(this.mInterfaceName);
        linkProperties2.setHttpProxy(this.mWifiConfigStore.getProxyProperties(this.mLastNetworkId));
        linkProperties2.setLinkAddresses(this.mNetlinkLinkProperties.getLinkAddresses());
        synchronized (this.mDhcpResultsLock) {
            DhcpResults dhcpResults = this.mDhcpResults;
            if (dhcpResults != null && (linkProperties = dhcpResults.linkProperties) != null) {
                Iterator<RouteInfo> it = linkProperties.getRoutes().iterator();
                while (it.hasNext()) {
                    linkProperties2.addRoute(it.next());
                }
                Iterator<InetAddress> it2 = linkProperties.getDnses().iterator();
                while (it2.hasNext()) {
                    linkProperties2.addDns(it2.next());
                }
                linkProperties2.setDomains(linkProperties.getDomains());
            }
        }
        if (linkProperties2.equals(this.mLinkProperties)) {
            return;
        }
        this.mLinkProperties = linkProperties2;
        if (getNetworkDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
            sendLinkConfigurationChangedBroadcast();
        }
    }

    public void addToBlacklist(String str) {
        sendMessage(CMD_BLACKLIST_NETWORK, str);
    }

    public void captivePortalCheckComplete() {
        sendMessage(CMD_CAPTIVE_CHECK_COMPLETE);
    }

    public void clearBlacklist() {
        sendMessage(CMD_CLEAR_BLACKLIST);
    }

    public void disconnectCommand() {
        sendMessage(CMD_DISCONNECT);
    }

    @Override // u.m
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        this.mSupplicantStateTracker.dump(fileDescriptor, printWriter, strArr);
        printWriter.println("mLinkProperties " + this.mLinkProperties);
        printWriter.println("mWifiInfo " + this.mWifiInfo);
        printWriter.println("mDhcpResults " + this.mDhcpResults);
        printWriter.println("mNetworkInfo " + this.mNetworkInfo);
        printWriter.println("mLastSignalLevel " + this.mLastSignalLevel);
        printWriter.println("mLastBssid " + this.mLastBssid);
        printWriter.println("mLastNetworkId " + this.mLastNetworkId);
        printWriter.println("mReconnectCount " + this.mReconnectCount);
        printWriter.println("mOperationalMode " + this.mOperationalMode);
        printWriter.println("mUserWantsSuspendOpt " + this.mUserWantsSuspendOpt);
        printWriter.println("mSuspendOptNeedsDisabled " + this.mSuspendOptNeedsDisabled);
        printWriter.println("Supplicant status " + this.mWifiNative.status());
        printWriter.println("mEnableBackgroundScan " + this.mEnableBackgroundScan);
        printWriter.println("mLastSetCountryCode " + this.mLastSetCountryCode);
        printWriter.println("mPersistedCountryCode " + this.mPersistedCountryCode);
        printWriter.println();
        this.mWifiConfigStore.dump(fileDescriptor, printWriter, strArr);
    }

    public void enableAllNetworks() {
        sendMessage(CMD_ENABLE_ALL_NETWORKS);
    }

    public void enableBackgroundScanCommand(boolean z2) {
        sendMessage(CMD_ENABLE_BACKGROUND_SCAN, z2 ? 1 : 0, 0);
    }

    public void enableRssiPolling(boolean z2) {
        sendMessage(CMD_ENABLE_RSSI_POLL, z2 ? 1 : 0, 0);
    }

    public void enableTdls(String str, boolean z2) {
        sendMessage(CMD_ENABLE_TDLS, z2 ? 1 : 0, 0, str);
    }

    public String getConfigFile() {
        return this.mWifiConfigStore.getConfigFile();
    }

    public int getFrequencyBand() {
        return this.mFrequencyBand.get();
    }

    public Messenger getMessenger() {
        return new Messenger(getHandler());
    }

    public void handlePostDhcpSetup() {
        setSuspendOptimizationsNative(1, true);
        this.mWifiNative.setPowerSave(true);
        this.mWifiP2pChannel.l(WifiP2pService.BLOCK_DISCOVERY, 0);
        this.mWifiNative.setBluetoothCoexistenceMode(2);
        this.mDhcpActive = false;
        startBatchedScan();
    }

    public void handlePreDhcpSetup() {
        this.mDhcpActive = true;
        if (!this.mBluetoothConnectionActive) {
            this.mWifiNative.setBluetoothCoexistenceMode(1);
        }
        setSuspendOptimizationsNative(1, false);
        this.mWifiNative.setPowerSave(false);
        stopBatchedScan();
        Message message = new Message();
        message.what = WifiP2pService.BLOCK_DISCOVERY;
        message.arg1 = 1;
        message.arg2 = DhcpStateMachine.CMD_PRE_DHCP_ACTION_COMPLETE;
        message.obj = this.mDhcpStateMachine;
        this.mWifiP2pChannel.p(message);
    }

    public void reassociateCommand() {
        sendMessage(CMD_REASSOCIATE);
    }

    public void reconnectCommand() {
        sendMessage(CMD_RECONNECT);
    }

    public void reloadTlsNetworksAndReconnect() {
        sendMessage(CMD_RELOAD_TLS_AND_RECONNECT);
    }

    public void requestBatchedScanPoll() {
        sendMessage(CMD_POLL_BATCHED_SCAN);
    }

    public void sendBluetoothAdapterStateChange(int i2) {
        sendMessage(CMD_BLUETOOTH_ADAPTER_STATE_CHANGE, i2, 0);
    }

    public void setBatchedScanSettings(BatchedScanSettings batchedScanSettings, int i2, int i3, WorkSource workSource) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(BATCHED_SETTING, batchedScanSettings);
        bundle.putParcelable(BATCHED_WORKSOURCE, workSource);
        sendMessage(CMD_SET_BATCHED_SCAN, i2, i3, bundle);
    }

    public void setCountryCode(String str, boolean z2) {
        int iIncrementAndGet = this.mCountryCodeSequence.incrementAndGet();
        if (TextUtils.isEmpty(str)) {
            log("Ignoring resetting of country code");
        } else {
            sendMessage(CMD_SET_COUNTRY_CODE, iIncrementAndGet, z2 ? 1 : 0, str);
        }
    }

    public void setDriverStart(boolean z2) {
        if (z2) {
            sendMessage(CMD_START_DRIVER);
        } else {
            sendMessage(CMD_STOP_DRIVER);
        }
    }

    public void setFrequencyBand(int i2, boolean z2) {
        if (z2) {
            Settings.Global.putInt(this.mContext.getContentResolver(), Settings.Global.WIFI_FREQUENCY_BAND, i2);
        }
        sendMessage(CMD_SET_FREQUENCY_BAND, i2, 0);
    }

    public void setHighPerfModeEnabled(boolean z2) {
        sendMessage(CMD_SET_HIGH_PERF_MODE, z2 ? 1 : 0, 0);
    }

    public void setHostApRunning(WifiConfiguration wifiConfiguration, boolean z2) {
        if (z2) {
            sendMessage(CMD_START_AP, wifiConfiguration);
        } else {
            sendMessage(CMD_STOP_AP);
        }
    }

    public void setOperationalMode(int i2) {
        sendMessage(CMD_SET_OPERATIONAL_MODE, i2, 0);
    }

    public void setSupplicantRunning(boolean z2) {
        if (z2) {
            sendMessage(CMD_START_SUPPLICANT);
        } else {
            sendMessage(CMD_STOP_SUPPLICANT);
        }
    }

    public void setWifiApConfiguration(WifiConfiguration wifiConfiguration) {
        this.mWifiApConfigChannel.o(CMD_SET_AP_CONFIG, wifiConfiguration);
    }

    public void startDhcp() {
        if (this.mDhcpStateMachine == null) {
            this.mDhcpStateMachine = DhcpStateMachine.makeDhcpStateMachine(this.mContext, this, this.mInterfaceName);
        }
        this.mDhcpStateMachine.registerForPreDhcpNotification();
        this.mDhcpStateMachine.sendMessage(DhcpStateMachine.CMD_START_DHCP);
    }

    public void startFilteringMulticastV4Packets() {
        this.mFilteringMulticastV4Packets.set(true);
        sendMessage(CMD_START_PACKET_FILTERING, 0, 0);
    }

    public void startFilteringMulticastV6Packets() {
        sendMessage(CMD_START_PACKET_FILTERING, 1, 0);
    }

    public void startScan(int i2, WorkSource workSource) {
        sendMessage(CMD_START_SCAN, i2, 0, workSource);
    }

    public void stopDhcp() {
        if (this.mDhcpStateMachine != null) {
            handlePostDhcpSetup();
            this.mDhcpStateMachine.sendMessage(DhcpStateMachine.CMD_STOP_DHCP);
        }
    }

    public void stopFilteringMulticastV4Packets() {
        this.mFilteringMulticastV4Packets.set(false);
        sendMessage(CMD_STOP_PACKET_FILTERING, 0, 0);
    }

    public void stopFilteringMulticastV6Packets() {
        sendMessage(CMD_STOP_PACKET_FILTERING, 1, 0);
    }

    public int syncAddOrUpdateNetwork(b bVar, WifiConfiguration wifiConfiguration) {
        Message messageT = bVar.t(CMD_ADD_OR_UPDATE_NETWORK, wifiConfiguration);
        int i2 = messageT.arg1;
        messageT.recycle();
        return i2;
    }

    public boolean syncDisableNetwork(b bVar, int i2) {
        Message messageR = bVar.r(WifiManager.DISABLE_NETWORK, i2);
        boolean z2 = messageR.arg1 != 151570;
        messageR.recycle();
        return z2;
    }

    public boolean syncEnableNetwork(b bVar, int i2, boolean z2) {
        Message messageS = bVar.s(CMD_ENABLE_NETWORK, i2, z2 ? 1 : 0);
        boolean z3 = messageS.arg1 != -1;
        messageS.recycle();
        return z3;
    }

    public List<BatchedScanResult> syncGetBatchedScanResultsList() {
        ArrayList arrayList;
        synchronized (this.mBatchedScanResults) {
            arrayList = new ArrayList(this.mBatchedScanResults.size());
            Iterator<BatchedScanResult> it = this.mBatchedScanResults.iterator();
            while (it.hasNext()) {
                arrayList.add(new BatchedScanResult(it.next()));
            }
        }
        return arrayList;
    }

    public List<WifiConfiguration> syncGetConfiguredNetworks(b bVar) {
        Message messageQ = bVar.q(CMD_GET_CONFIGURED_NETWORKS);
        List<WifiConfiguration> list = (List) messageQ.obj;
        messageQ.recycle();
        return list;
    }

    public DhcpResults syncGetDhcpResults() {
        DhcpResults dhcpResults;
        synchronized (this.mDhcpResultsLock) {
            dhcpResults = new DhcpResults(this.mDhcpResults);
        }
        return dhcpResults;
    }

    public List<ScanResult> syncGetScanResultsList() {
        ArrayList arrayList;
        synchronized (this.mScanResultCache) {
            arrayList = new ArrayList();
            Iterator<ScanResult> it = this.mScanResults.iterator();
            while (it.hasNext()) {
                arrayList.add(new ScanResult(it.next()));
            }
        }
        return arrayList;
    }

    public WifiConfiguration syncGetWifiApConfiguration() {
        Message messageQ = this.mWifiApConfigChannel.q(CMD_REQUEST_AP_CONFIG);
        WifiConfiguration wifiConfiguration = (WifiConfiguration) messageQ.obj;
        messageQ.recycle();
        return wifiConfiguration;
    }

    public int syncGetWifiApState() {
        return this.mWifiApState.get();
    }

    public String syncGetWifiApStateByName() {
        switch (this.mWifiApState.get()) {
            case 10:
                return "disabling";
            case 11:
                return "disabled";
            case 12:
                return "enabling";
            case 13:
                return "enabled";
            case 14:
                return "failed";
            default:
                return "[invalid state]";
        }
    }

    public int syncGetWifiState() {
        return this.mWifiState.get();
    }

    public String syncGetWifiStateByName() {
        int i2 = this.mWifiState.get();
        if (i2 == 0) {
            return "disabling";
        }
        if (i2 == 1) {
            return "disabled";
        }
        if (i2 == 2) {
            return "enabling";
        }
        if (i2 != 3) {
            return i2 != 4 ? "[invalid state]" : "unknown state";
        }
        return "enabled";
    }

    public boolean syncPingSupplicant(b bVar) {
        Message messageQ = bVar.q(CMD_PING_SUPPLICANT);
        boolean z2 = messageQ.arg1 != -1;
        messageQ.recycle();
        return z2;
    }

    public boolean syncRemoveNetwork(b bVar, int i2) {
        Message messageR = bVar.r(CMD_REMOVE_NETWORK, i2);
        boolean z2 = messageR.arg1 != -1;
        messageR.recycle();
        return z2;
    }

    public WifiInfo syncRequestConnectionInfo() {
        return this.mWifiInfo;
    }

    public boolean syncSaveConfig(b bVar) {
        Message messageQ = bVar.q(CMD_SAVE_CONFIG);
        boolean z2 = messageQ.arg1 != -1;
        messageQ.recycle();
        return z2;
    }

    public void updateBatteryWorkSource(WorkSource workSource) {
        synchronized (this.mRunningWifiUids) {
            if (workSource != null) {
                try {
                    this.mRunningWifiUids.set(workSource);
                } catch (RemoteException unused) {
                }
            }
            if (this.mIsRunning) {
                if (!this.mReportedRunning) {
                    this.mBatteryStats.E0(this.mRunningWifiUids);
                    this.mLastRunningWifiUids.set(this.mRunningWifiUids);
                    this.mReportedRunning = true;
                } else if (this.mLastRunningWifiUids.diff(this.mRunningWifiUids)) {
                    this.mBatteryStats.C2(this.mLastRunningWifiUids, this.mRunningWifiUids);
                    this.mLastRunningWifiUids.set(this.mRunningWifiUids);
                }
            } else if (this.mReportedRunning) {
                this.mBatteryStats.F1(this.mLastRunningWifiUids);
                this.mLastRunningWifiUids.clear();
                this.mReportedRunning = false;
            }
            this.mWakeLock.setWorkSource(workSource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFrequencyBand() {
        setFrequencyBand(Settings.Global.getInt(this.mContext.getContentResolver(), Settings.Global.WIFI_FREQUENCY_BAND, 0), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message message, int i2, int i3) {
        if (message.replyTo == null) {
            return;
        }
        Message messageObtainMessageWithArg2 = obtainMessageWithArg2(message);
        messageObtainMessageWithArg2.what = i2;
        messageObtainMessageWithArg2.arg1 = i3;
        this.mReplyChannel.j(message, messageObtainMessageWithArg2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountryCode() {
        String string = Settings.Global.getString(this.mContext.getContentResolver(), Settings.Global.WIFI_COUNTRY_CODE);
        if (string == null || string.isEmpty()) {
            return;
        }
        setCountryCode(string, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message message, int i2, Object obj) {
        if (message.replyTo == null) {
            return;
        }
        Message messageObtainMessageWithArg2 = obtainMessageWithArg2(message);
        messageObtainMessageWithArg2.what = i2;
        messageObtainMessageWithArg2.obj = obj;
        this.mReplyChannel.j(message, messageObtainMessageWithArg2);
    }
}
