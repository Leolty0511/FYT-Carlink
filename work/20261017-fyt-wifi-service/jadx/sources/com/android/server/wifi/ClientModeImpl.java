package com.android.server.wifi;

import android.R;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.DhcpResults;
import android.net.IpConfiguration;
import android.net.KeepalivePacketData;
import android.net.LinkProperties;
import android.net.MacAddress;
import android.net.MatchAllNetworkSpecifier;
import android.net.NattKeepalivePacketData;
import android.net.Network;
import android.net.NetworkAgent;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkMisc;
import android.net.NetworkUtils;
import android.net.RouteInfo;
import android.net.SocketKeepalive;
import android.net.StaticIpConfiguration;
import android.net.TcpKeepalivePacketData;
import android.net.ip.IIpClient;
import android.net.ip.IpClientCallbacks;
import android.net.ip.IpClientManager;
import android.net.shared.ProvisioningConfiguration;
import android.net.wifi.INetworkRequestMatchCallback;
import android.net.wifi.IWifiNetworkEventObserver;
import android.net.wifi.IWifiRssiLinkSpeedAndFrequencyObserver;
import android.net.wifi.RssiPacketCountInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiFeaturesUtils;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkAgentSpecifier;
import android.net.wifi.WpsInfo;
import android.net.wifi.WpsResult;
import android.net.wifi.hotspot2.IProvisioningCallback;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.p2p.IWifiP2pManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.provider.Settings;
import android.system.OsConstants;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.util.StatsLog;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.MessageUtils;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.server.wifi.hotspot2.AnqpEvent;
import com.android.server.wifi.hotspot2.IconEvent;
import com.android.server.wifi.hotspot2.NetworkDetail;
import com.android.server.wifi.hotspot2.PasspointManager;
import com.android.server.wifi.hotspot2.WnmData;
import com.android.server.wifi.hotspot2.anqp.Constants;
import com.android.server.wifi.p2p.WifiP2pServiceImpl;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.scanner.ChannelHelper;
import com.android.server.wifi.util.NativeUtil;
import com.android.server.wifi.util.ScanResultUtil;
import com.android.server.wifi.util.TelephonyUtil;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import com.sprd.server.wifi.WifiNetworkMonitor;
import com.sprd.server.wifi.WifiRssiLinkSpeedAndFrequencyMonitor;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class ClientModeImpl extends StateMachine {
    private static final int AUTO_CONNECT_INTERVAL_MSECS = 10000;
    static final int BASE = 131072;
    static final int CMD_ACCEPT_UNVALIDATED = 131225;
    static final int CMD_ADD_KEEPALIVE_PACKET_FILTER_TO_APF = 131281;
    static final int CMD_ADD_OR_UPDATE_NETWORK = 131124;
    static final int CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG = 131178;
    static final int CMD_ASSOCIATED_BSSID = 131219;
    static final int CMD_BLUETOOTH_ADAPTER_STATE_CHANGE = 131103;
    static final int CMD_BOOT_COMPLETED = 131206;
    static final int CMD_CONFIG_ND_OFFLOAD = 131276;
    static final int CMD_DATE_CHANGED = 131185;
    static final int CMD_DIAGS_CONNECT_TIMEOUT = 131324;
    static final int CMD_DISABLE_EPHEMERAL_NETWORK = 131170;
    static final int CMD_DISCONNECT = 131145;
    static final int CMD_DISCONNECTING_WATCHDOG_TIMER = 131168;
    static final int CMD_ENABLE_NETWORK = 131126;
    static final int CMD_ENABLE_RSSI_POLL = 131154;
    static final int CMD_ENABLE_TDLS = 131164;
    static final int CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER = 131238;
    static final int CMD_GET_ALL_MATCHING_FQDNS_FOR_SCAN_RESULTS = 131240;
    static final int CMD_GET_CONFIGURED_NETWORKS = 131131;
    static final int CMD_GET_CURRENT_RSSI = 131251;
    static final int CMD_GET_LINK_LAYER_STATS = 131135;
    static final int CMD_GET_MATCHING_OSU_PROVIDERS = 131181;
    static final int CMD_GET_MATCHING_PASSPOINT_CONFIGS_FOR_OSU_PROVIDERS = 131182;
    static final int CMD_GET_PASSPOINT_CONFIGS = 131180;
    static final int CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS = 131134;
    static final int CMD_GET_SUPPORTED_FEATURES = 131133;
    static final int CMD_GET_WIFI_CONFIGS_FOR_PASSPOINT_PROFILES = 131184;
    static final int CMD_INITIALIZE = 131207;
    static final int CMD_INSTALL_PACKET_FILTER = 131274;
    static final int CMD_IPV4_PROVISIONING_FAILURE = 131273;
    static final int CMD_IPV4_PROVISIONING_SUCCESS = 131272;
    static final int CMD_IP_CONFIGURATION_LOST = 131211;
    static final int CMD_IP_CONFIGURATION_SUCCESSFUL = 131210;
    static final int CMD_IP_REACHABILITY_LOST = 131221;
    static final int CMD_MATCH_PROVIDER_NETWORK = 131177;
    static final int CMD_NETWORK_STATUS = 131220;
    static final int CMD_ONESHOT_RSSI_POLL = 131156;
    private static final int CMD_POST_DHCP_ACTION = 131329;

    @VisibleForTesting
    static final int CMD_PRE_DHCP_ACTION = 131327;
    private static final int CMD_PRE_DHCP_ACTION_COMPLETE = 131328;
    static final int CMD_QUERY_OSU_ICON = 131176;
    static final int CMD_READ_PACKET_FILTER = 131280;
    static final int CMD_REASSOCIATE = 131147;
    static final int CMD_RECONNECT = 131146;
    static final int CMD_REMOVE_APP_CONFIGURATIONS = 131169;
    static final int CMD_REMOVE_KEEPALIVE_PACKET_FILTER_FROM_APF = 131282;
    static final int CMD_REMOVE_NETWORK = 131125;
    static final int CMD_REMOVE_PASSPOINT_CONFIG = 131179;
    static final int CMD_REMOVE_USER_CONFIGURATIONS = 131224;
    static final int CMD_RESET_SIM_NETWORKS = 131173;
    static final int CMD_RESET_SUPPLICANT_STATE = 131183;
    static final int CMD_ROAM_WATCHDOG_TIMER = 131166;
    static final int CMD_RSSI_POLL = 131155;
    static final int CMD_RSSI_THRESHOLD_BREACHED = 131236;
    static final int CMD_SCREEN_STATE_CHANGED = 131167;
    static final int CMD_SET_FALLBACK_PACKET_FILTERING = 131275;
    static final int CMD_SET_HIGH_PERF_MODE = 131149;
    static final int CMD_SET_OPERATIONAL_MODE = 131144;
    static final int CMD_SET_SUSPEND_OPT_ENABLED = 131158;
    static final int CMD_START_CONNECT = 131215;
    static final int CMD_START_IP_PACKET_OFFLOAD = 131232;
    static final int CMD_START_ROAM = 131217;
    static final int CMD_START_RSSI_MONITORING_OFFLOAD = 131234;
    private static final int CMD_START_SUBSCRIPTION_PROVISIONING = 131326;
    static final int CMD_STOP_IP_PACKET_OFFLOAD = 131233;
    static final int CMD_STOP_RSSI_MONITORING_OFFLOAD = 131235;
    static final int CMD_TARGET_BSSID = 131213;
    static final int CMD_UNWANTED_NETWORK = 131216;
    static final int CMD_UPDATE_LINKPROPERTIES = 131212;
    static final int CMD_USER_STOP = 131279;
    static final int CMD_USER_SWITCH = 131277;
    static final int CMD_USER_UNLOCK = 131278;
    static final int CMD_WIFI_STATE_ENABLED = 131186;
    public static final int CONNECT_MODE = 1;
    private static final int DEFAULT_POLL_RSSI_INTERVAL_MSECS = 3000;

    @VisibleForTesting
    public static final long DIAGS_CONNECT_TIMEOUT_MILLIS = 60000;
    public static final int DISABLED_MODE = 4;
    static final int DISCONNECTING_GUARD_TIMER_MSEC = 5000;
    private static final String EXTRA_OSU_ICON_QUERY_BSSID = "BSSID";
    private static final String EXTRA_OSU_ICON_QUERY_FILENAME = "FILENAME";
    private static final String EXTRA_OSU_PROVIDER = "OsuProvider";
    private static final String EXTRA_PACKAGE_NAME = "PackageName";
    private static final String EXTRA_PASSPOINT_CONFIGURATION = "PasspointConfiguration";
    private static final String EXTRA_UID = "uid";
    private static final int FAILURE = -1;
    private static final String GOOGLE_OUI = "DA-A1-19";
    private static final int IPCLIENT_TIMEOUT_MS = 10000;

    @VisibleForTesting
    public static final int LAST_SELECTED_NETWORK_EXPIRATION_AGE_MILLIS = 30000;
    private static final int LINK_FLAPPING_DEBOUNCE_MSEC = 4000;
    private static final String LOGD_LEVEL_DEBUG = "D";
    private static final String LOGD_LEVEL_VERBOSE = "V";
    private static final int MESSAGE_HANDLING_STATUS_DEFERRED = -4;
    private static final int MESSAGE_HANDLING_STATUS_DISCARD = -5;
    private static final int MESSAGE_HANDLING_STATUS_FAIL = -2;
    private static final int MESSAGE_HANDLING_STATUS_HANDLING_ERROR = -7;
    private static final int MESSAGE_HANDLING_STATUS_LOOPED = -6;
    private static final int MESSAGE_HANDLING_STATUS_OBSOLETE = -3;
    private static final int MESSAGE_HANDLING_STATUS_OK = 1;
    private static final int MESSAGE_HANDLING_STATUS_PROCESSED = 2;
    private static final int MESSAGE_HANDLING_STATUS_REFUSED = -1;
    private static final int MESSAGE_HANDLING_STATUS_UNKNOWN = 0;
    private static final String NETWORKTYPE = "WIFI";
    private static final int NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN = 2;
    private static final int NETWORK_STATUS_UNWANTED_DISCONNECT = 0;
    private static final int NETWORK_STATUS_UNWANTED_VALIDATION_FAILED = 1;

    @VisibleForTesting
    public static final short NUM_LOG_RECS_NORMAL = 100;

    @VisibleForTesting
    public static final short NUM_LOG_RECS_VERBOSE = 3000;

    @VisibleForTesting
    public static final short NUM_LOG_RECS_VERBOSE_LOW_MEMORY = 200;
    private static final int ONE_HOUR_MILLI = 3600000;
    static final int ROAM_GUARD_TIMER_MSEC = 15000;
    public static final int SCAN_ONLY_MODE = 2;
    public static final int SCAN_ONLY_WITH_WIFI_OFF_MODE = 3;
    private static final int SUCCESS = 1;
    public static final String SUPPLICANT_BSSID_ANY = "any";
    private static final int SUPPLICANT_RESTART_INTERVAL_MSECS = 5000;
    private static final int SUPPLICANT_RESTART_TRIES = 5;
    private static final int SUSPEND_DUE_TO_DHCP = 1;
    private static final int SUSPEND_DUE_TO_HIGH_PERF = 2;
    private static final int SUSPEND_DUE_TO_SCREEN = 4;
    private static final String SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL = "log.tag.WifiHAL";
    private static final String TAG = "WifiClientModeImpl";
    private int mAttemptConnectTime;
    private AtomicBoolean mAutoRoamSwitchFlag;
    private final BackupManagerProxy mBackupManagerProxy;
    private final IBatteryStats mBatteryStats;
    private boolean mBluetoothConnectionActive;
    private boolean mBootCompleted;
    private final BuildProperties mBuildProperties;
    private ClientModeManager.Listener mClientModeCallback;
    private final Clock mClock;
    private ConnectivityManager mCm;
    private State mConnectModeState;
    private boolean mConnectedMacRandomzationSupported;
    private State mConnectedState;
    private Context mContext;
    private final WifiCountryCode mCountryCode;
    private State mDefaultState;
    private DhcpResults mDhcpResults;
    private final Object mDhcpResultsLock;
    private boolean mDidBlackListBSSID;
    private int mDisabledNetworkId;
    private State mDisconnectedState;
    private State mDisconnectingState;
    int mDisconnectingWatchdogCount;
    private boolean mEnableRssiPolling;
    private FrameworkFacade mFacade;
    private String mInterfaceName;
    private volatile IpClientManager mIpClient;
    private IpClientCallbacksImpl mIpClientCallbacks;
    private boolean mIpReachabilityDisconnectEnabled;
    private boolean mIsAutoRoamOngoing;
    private boolean mIsAutoRoaming;
    private boolean mIsOffloading;
    private boolean mIsRunning;
    private boolean mIsSprdRoaming;
    private State mL2ConnectedState;
    private String mLastBssid;
    private long mLastConnectAttemptTimestamp;
    private long mLastDriverRoamAttempt;
    private Pair<String, String> mLastL2KeyAndGroupHint;
    private WifiLinkLayerStats mLastLinkLayerStats;
    private long mLastLinkLayerStatsUpdate;
    private int mLastNetworkId;
    private long mLastOntimeReportTimeStamp;
    private final WorkSource mLastRunningWifiUids;
    private long mLastScreenStateChangeTimeStamp;
    private int mLastSignalLevel;
    private long mLastUserConnectAttempt;
    private final LinkProbeManager mLinkProbeManager;
    private LinkProperties mLinkProperties;
    private final McastLockManagerFilterController mMcastLockManagerFilterController;
    private int mMessageHandlingStatus;
    private boolean mModeChange;

    @GuardedBy({"mNetworkAgentLock"})
    private WifiNetworkAgent mNetworkAgent;
    private final Object mNetworkAgentLock;
    private final NetworkCapabilities mNetworkCapabilitiesFilter;
    private WifiNetworkFactory mNetworkFactory;
    private NetworkInfo mNetworkInfo;
    private final NetworkMisc mNetworkMisc;
    private AtomicInteger mNullMessageCounter;
    private State mObtainingIpState;
    private int mOnTime;
    private int mOnTimeLastReport;
    private int mOnTimeScreenStateChange;
    private int mOperationalMode;
    private final AtomicBoolean mP2pConnected;
    private final boolean mP2pSupported;
    private final PasspointManager mPasspointManager;
    private int mPeriodicScanToken;
    private volatile int mPollRssiIntervalMsecs;
    private final PropertyService mPropertyService;
    private AsyncChannel mReplyChannel;
    private boolean mReportedRunning;
    private int mRoamFailCount;
    int mRoamWatchdogCount;
    private State mRoamingState;
    private int mRssiPollToken;
    private byte[] mRssiRanges;
    int mRunningBeaconCount;
    private final WorkSource mRunningWifiUids;
    private int mRxTime;
    private int mRxTimeLastReport;
    private final SarManager mSarManager;
    private boolean mScreenOn;
    private long mSupplicantScanIntervalMs;
    private SupplicantStateTracker mSupplicantStateTracker;
    private int mSuspendOptNeedsDisabled;
    private PowerManager.WakeLock mSuspendWakeLock;
    private int mTargetNetworkId;
    private String mTargetRoamBSSID;
    private WifiConfiguration mTargetWifiConfiguration;
    private final String mTcpBufferSizes;
    private TelephonyManager mTelephonyManager;
    private boolean mTemporarilyDisconnectWifi;
    private int mTxTime;
    private int mTxTimeLastReport;
    private UntrustedWifiNetworkFactory mUntrustedNetworkFactory;
    private AtomicBoolean mUserWantsSuspendOpt;
    private boolean mVerboseLoggingEnabled;
    private PowerManager.WakeLock mWakeLock;
    private WifiApClientStats mWifiApClientStats;
    private final WifiConfigManager mWifiConfigManager;
    private final WifiConnectivityManager mWifiConnectivityManager;
    private final WifiDataStall mWifiDataStall;
    private BaseWifiDiagnostics mWifiDiagnostics;
    private final WifiFeaturesUtils mWifiFeaturesUtils;
    private final ExtendedWifiInfo mWifiInfo;
    private final WifiInjector mWifiInjector;
    private final WifiMetrics mWifiMetrics;
    private final WifiMonitor mWifiMonitor;
    private final WifiNative mWifiNative;
    private WifiNetworkMonitor mWifiNetworkMonitor;
    private WifiNetworkSuggestionsManager mWifiNetworkSuggestionsManager;
    private AsyncChannel mWifiP2pChannel;
    private final WifiPermissionsUtil mWifiPermissionsUtil;
    private final WifiPermissionsWrapper mWifiPermissionsWrapper;
    private WifiRssiLinkSpeedAndFrequencyMonitor mWifiRssiLinkSpeedAndFrequencyMonitor;
    private final WifiScoreCard mWifiScoreCard;
    private final WifiScoreReport mWifiScoreReport;
    private final AtomicInteger mWifiState;
    private WifiStateTracker mWifiStateTracker;
    private final WifiTrafficPoller mWifiTrafficPoller;
    private final WrongPasswordNotifier mWrongPasswordNotifier;
    private static final Class[] sMessageClasses = {AsyncChannel.class, ClientModeImpl.class};
    private static final SparseArray<String> sGetWhatToString = MessageUtils.findMessageNames(sMessageClasses);
    public static final WorkSource WIFI_WORK_SOURCE = new WorkSource(1010);
    private static int sScanAlarmIntentCount = 0;

    static /* synthetic */ int access$12608(ClientModeImpl x0) {
        int i = x0.mRoamFailCount;
        x0.mRoamFailCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$9208(ClientModeImpl x0) {
        int i = x0.mRssiPollToken;
        x0.mRssiPollToken = i + 1;
        return i;
    }

    protected void loge(String s) {
        Log.e(getName(), s);
    }

    protected void logd(String s) {
        Log.d(getName(), s);
    }

    protected void log(String s) {
        Log.d(getName(), s);
    }

    public WifiScoreReport getWifiScoreReport() {
        return this.mWifiScoreReport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processRssiThreshold(byte curRssi, int reason, WifiNative.WifiRssiEventHandler rssiHandler) {
        if (curRssi == 127 || curRssi == -128) {
            Log.wtf(TAG, "processRssiThreshold: Invalid rssi " + ((int) curRssi));
            return;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.mRssiRanges;
            if (i < bArr.length) {
                if (curRssi >= bArr[i]) {
                    i++;
                } else {
                    byte maxRssi = bArr[i];
                    byte minRssi = bArr[i - 1];
                    this.mWifiInfo.setRssi(curRssi);
                    updateCapabilities();
                    int ret = startRssiMonitoringOffload(maxRssi, minRssi, rssiHandler);
                    Log.d(TAG, "Re-program RSSI thresholds for " + getWhatToString(reason) + ": [" + ((int) minRssi) + ", " + ((int) maxRssi) + "], curRssi=" + ((int) curRssi) + " ret=" + ret);
                    return;
                }
            } else {
                return;
            }
        }
    }

    int getPollRssiIntervalMsecs() {
        return this.mPollRssiIntervalMsecs;
    }

    void setPollRssiIntervalMsecs(int newPollIntervalMsecs) {
        this.mPollRssiIntervalMsecs = newPollIntervalMsecs;
    }

    public boolean clearTargetBssid(String dbg) {
        WifiConfiguration config = this.mWifiConfigManager.getConfiguredNetwork(this.mTargetNetworkId);
        if (config == null) {
            return false;
        }
        String bssid = "any";
        if (config.BSSID != null) {
            bssid = config.BSSID;
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "force BSSID to " + bssid + "due to config");
            }
        }
        if (this.mVerboseLoggingEnabled) {
            logd(dbg + " clearTargetBssid " + bssid + " key=" + config.configKey());
        }
        this.mTargetRoamBSSID = bssid;
        return this.mWifiNative.setConfiguredNetworkBSSID(this.mInterfaceName, bssid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setTargetBssid(WifiConfiguration config, String bssid) {
        if (config == null || bssid == null) {
            return false;
        }
        if (config.BSSID != null) {
            bssid = config.BSSID;
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "force BSSID to " + bssid + "due to config");
            }
        }
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "setTargetBssid set to " + bssid + " key=" + config.configKey());
        }
        this.mTargetRoamBSSID = bssid;
        config.getNetworkSelectionStatus().setNetworkSelectionBSSID(bssid);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TelephonyManager getTelephonyManager() {
        if (this.mTelephonyManager == null) {
            this.mTelephonyManager = this.mWifiInjector.makeTelephonyManager();
        }
        return this.mTelephonyManager;
    }

    public ClientModeImpl(Context context, FrameworkFacade facade, Looper looper, UserManager userManager, WifiInjector wifiInjector, BackupManagerProxy backupManagerProxy, WifiCountryCode countryCode, WifiNative wifiNative, WrongPasswordNotifier wrongPasswordNotifier, SarManager sarManager, WifiTrafficPoller wifiTrafficPoller, LinkProbeManager linkProbeManager) {
        super(TAG, looper);
        this.mVerboseLoggingEnabled = false;
        this.mAttemptConnectTime = 0;
        this.mDisabledNetworkId = -1;
        this.mBootCompleted = false;
        this.mDidBlackListBSSID = false;
        this.mP2pConnected = new AtomicBoolean(false);
        this.mTemporarilyDisconnectWifi = false;
        this.mScreenOn = false;
        this.mLastSignalLevel = -1;
        this.mIpReachabilityDisconnectEnabled = true;
        this.mEnableRssiPolling = false;
        this.mPollRssiIntervalMsecs = DEFAULT_POLL_RSSI_INTERVAL_MSECS;
        this.mRssiPollToken = 0;
        this.mOperationalMode = 4;
        this.mModeChange = false;
        this.mClientModeCallback = null;
        this.mBluetoothConnectionActive = false;
        this.mPeriodicScanToken = 0;
        this.mDhcpResultsLock = new Object();
        this.mWifiApClientStats = null;
        this.mIsAutoRoaming = false;
        this.mRoamFailCount = 0;
        this.mTargetRoamBSSID = "any";
        this.mTargetNetworkId = -1;
        this.mLastDriverRoamAttempt = 0L;
        this.mTargetWifiConfiguration = null;
        this.mReplyChannel = new AsyncChannel();
        this.mNetworkAgentLock = new Object();
        this.mNetworkCapabilitiesFilter = new NetworkCapabilities();
        this.mNetworkMisc = new NetworkMisc();
        this.mRoamWatchdogCount = 0;
        this.mDisconnectingWatchdogCount = 0;
        this.mSuspendOptNeedsDisabled = 0;
        this.mUserWantsSuspendOpt = new AtomicBoolean(true);
        this.mRunningBeaconCount = 0;
        this.mDefaultState = new DefaultState();
        this.mConnectModeState = new ConnectModeState();
        this.mL2ConnectedState = new L2ConnectedState();
        this.mObtainingIpState = new ObtainingIpState();
        this.mConnectedState = new ConnectedState();
        this.mRoamingState = new RoamingState();
        this.mDisconnectingState = new DisconnectingState();
        this.mDisconnectedState = new DisconnectedState();
        this.mWifiState = new AtomicInteger(1);
        this.mIsRunning = false;
        this.mReportedRunning = false;
        this.mRunningWifiUids = new WorkSource();
        this.mLastRunningWifiUids = new WorkSource();
        this.mLastUserConnectAttempt = 0L;
        this.mLastConnectAttemptTimestamp = 0L;
        this.mMessageHandlingStatus = 0;
        this.mOnTime = 0;
        this.mTxTime = 0;
        this.mRxTime = 0;
        this.mOnTimeScreenStateChange = 0;
        this.mLastOntimeReportTimeStamp = 0L;
        this.mLastScreenStateChangeTimeStamp = 0L;
        this.mOnTimeLastReport = 0;
        this.mTxTimeLastReport = 0;
        this.mRxTimeLastReport = 0;
        this.mLastLinkLayerStatsUpdate = 0L;
        this.mNullMessageCounter = new AtomicInteger(0);
        this.mLastL2KeyAndGroupHint = null;
        this.mAutoRoamSwitchFlag = new AtomicBoolean(false);
        this.mIsAutoRoamOngoing = false;
        this.mIsSprdRoaming = false;
        this.mIsOffloading = false;
        this.mWifiInjector = wifiInjector;
        this.mWifiMetrics = this.mWifiInjector.getWifiMetrics();
        this.mClock = wifiInjector.getClock();
        this.mPropertyService = wifiInjector.getPropertyService();
        this.mBuildProperties = wifiInjector.getBuildProperties();
        this.mWifiScoreCard = wifiInjector.getWifiScoreCard();
        this.mContext = context;
        this.mFacade = facade;
        this.mWifiNative = wifiNative;
        this.mBackupManagerProxy = backupManagerProxy;
        this.mWrongPasswordNotifier = wrongPasswordNotifier;
        this.mSarManager = sarManager;
        this.mWifiTrafficPoller = wifiTrafficPoller;
        this.mLinkProbeManager = linkProbeManager;
        this.mNetworkInfo = new NetworkInfo(1, 0, NETWORKTYPE, "");
        this.mBatteryStats = IBatteryStats.Stub.asInterface(this.mFacade.getService("batterystats"));
        this.mWifiStateTracker = wifiInjector.getWifiStateTracker();
        this.mFacade.getService("network_management");
        this.mWifiFeaturesUtils = WifiFeaturesUtils.getInstance(context);
        this.mP2pSupported = this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.direct");
        this.mWifiPermissionsUtil = this.mWifiInjector.getWifiPermissionsUtil();
        this.mWifiConfigManager = this.mWifiInjector.getWifiConfigManager();
        this.mPasspointManager = this.mWifiInjector.getPasspointManager();
        this.mWifiMonitor = this.mWifiInjector.getWifiMonitor();
        this.mWifiDiagnostics = this.mWifiInjector.getWifiDiagnostics();
        this.mWifiPermissionsWrapper = this.mWifiInjector.getWifiPermissionsWrapper();
        this.mWifiDataStall = this.mWifiInjector.getWifiDataStall();
        this.mWifiApClientStats = this.mWifiInjector.getWifiApClientStats();
        this.mWifiInfo = new ExtendedWifiInfo();
        this.mSupplicantStateTracker = this.mFacade.makeSupplicantStateTracker(context, this.mWifiConfigManager, getHandler());
        this.mWifiConnectivityManager = this.mWifiInjector.makeWifiConnectivityManager(this);
        this.mLinkProperties = new LinkProperties();
        this.mMcastLockManagerFilterController = new McastLockManagerFilterController();
        this.mNetworkInfo.setIsAvailable(false);
        this.mLastBssid = null;
        this.mLastNetworkId = -1;
        this.mLastSignalLevel = -1;
        this.mCountryCode = countryCode;
        this.mWifiScoreReport = new WifiScoreReport(this.mWifiInjector.getScoringParams(), this.mClock);
        this.mNetworkCapabilitiesFilter.addTransportType(1);
        this.mNetworkCapabilitiesFilter.addCapability(12);
        this.mNetworkCapabilitiesFilter.addCapability(11);
        this.mNetworkCapabilitiesFilter.addCapability(18);
        this.mNetworkCapabilitiesFilter.addCapability(20);
        this.mNetworkCapabilitiesFilter.addCapability(13);
        this.mNetworkCapabilitiesFilter.setLinkUpstreamBandwidthKbps(1048576);
        this.mNetworkCapabilitiesFilter.setLinkDownstreamBandwidthKbps(1048576);
        this.mNetworkCapabilitiesFilter.setNetworkSpecifier(new MatchAllNetworkSpecifier());
        this.mNetworkFactory = this.mWifiInjector.makeWifiNetworkFactory(this.mNetworkCapabilitiesFilter, this.mWifiConnectivityManager);
        this.mUntrustedNetworkFactory = this.mWifiInjector.makeUntrustedWifiNetworkFactory(this.mNetworkCapabilitiesFilter, this.mWifiConnectivityManager);
        this.mWifiNetworkSuggestionsManager = this.mWifiInjector.getWifiNetworkSuggestionsManager();
        this.mWifiNetworkMonitor = new WifiNetworkMonitor(context, this);
        this.mWifiRssiLinkSpeedAndFrequencyMonitor = new WifiRssiLinkSpeedAndFrequencyMonitor(context);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.ClientModeImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_SCREEN_STATE_CHANGED, 1);
                } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                    ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_SCREEN_STATE_CHANGED, 0);
                }
            }
        }, filter);
        this.mFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_suspend_optimizations_enabled"), false, new ContentObserver(getHandler()) { // from class: com.android.server.wifi.ClientModeImpl.2
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                ClientModeImpl.this.mUserWantsSuspendOpt.set(ClientModeImpl.this.mFacade.getIntegerSetting(ClientModeImpl.this.mContext, "wifi_suspend_optimizations_enabled", 1) == 1);
            }
        });
        this.mUserWantsSuspendOpt.set(this.mFacade.getIntegerSetting(this.mContext, "wifi_suspend_optimizations_enabled", 1) == 1);
        if (WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_WIFI_AUTO_ROAM) {
            this.mAutoRoamSwitchFlag.set(Settings.Global.getInt(this.mContext.getContentResolver(), "wifi_auto_roam_switch", 0) == 1);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("wifi_auto_roam_switch"), false, new ContentObserver(getHandler()) { // from class: com.android.server.wifi.ClientModeImpl.3
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    if (Settings.Global.getInt(ClientModeImpl.this.mContext.getContentResolver(), "wifi_auto_roam_switch", 0) == 1) {
                        ClientModeImpl.this.mAutoRoamSwitchFlag.set(true);
                        if (ClientModeImpl.this.mInterfaceName != null) {
                            ClientModeImpl.this.mWifiNative.startBgscan(ClientModeImpl.this.mInterfaceName, true);
                            return;
                        }
                        return;
                    }
                    ClientModeImpl.this.mAutoRoamSwitchFlag.set(false);
                    if (ClientModeImpl.this.mInterfaceName != null) {
                        ClientModeImpl.this.mWifiNative.startBgscan(ClientModeImpl.this.mInterfaceName, false);
                    }
                }
            });
        }
        if (this.mWifiFeaturesUtils.isConnectMaxTimeDisableNetworkSupported()) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.DATE_CHANGED");
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.ClientModeImpl.4
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    if (action.equals("android.intent.action.DATE_CHANGED")) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DATE_CHANGED);
                    } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                        int wifiState = intent.getIntExtra("wifi_state", 4);
                        if (3 == wifiState) {
                            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_WIFI_STATE_ENABLED);
                        }
                    }
                }
            }, intentFilter);
        }
        PowerManager powerManager = (PowerManager) this.mContext.getSystemService("power");
        this.mWakeLock = powerManager.newWakeLock(1, getName());
        this.mSuspendWakeLock = powerManager.newWakeLock(1, "WifiSuspend");
        this.mSuspendWakeLock.setReferenceCounted(false);
        this.mConnectedMacRandomzationSupported = this.mContext.getResources().getBoolean(R.bool.config_cecSoundbarMode_userConfigurable);
        this.mWifiInfo.setEnableConnectedMacRandomization(this.mConnectedMacRandomzationSupported);
        this.mWifiMetrics.setIsMacRandomizationOn(this.mConnectedMacRandomzationSupported);
        this.mTcpBufferSizes = this.mContext.getResources().getString(R.string.biometric_error_user_canceled);
        addState(this.mDefaultState);
        addState(this.mConnectModeState, this.mDefaultState);
        addState(this.mL2ConnectedState, this.mConnectModeState);
        addState(this.mObtainingIpState, this.mL2ConnectedState);
        addState(this.mConnectedState, this.mL2ConnectedState);
        addState(this.mRoamingState, this.mL2ConnectedState);
        addState(this.mDisconnectingState, this.mConnectModeState);
        addState(this.mDisconnectedState, this.mConnectModeState);
        setInitialState(this.mDefaultState);
        setLogRecSize(100);
        setLogOnlyTransitions(false);
    }

    public void start() {
        super.start();
        PowerManager powerManager = (PowerManager) this.mContext.getSystemService("power");
        handleScreenStateChanged(powerManager.isInteractive());
    }

    private void registerForWifiMonitorEvents() {
        this.mWifiMonitor.registerHandler(this.mInterfaceName, CMD_TARGET_BSSID, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, CMD_ASSOCIATED_BSSID, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.ANQP_DONE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.ASSOCIATION_REJECTION_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.AUTHENTICATION_FAILURE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.GAS_QUERY_DONE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.GAS_QUERY_START_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.HS20_REMEDIATION_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.NETWORK_CONNECTION_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.NETWORK_DISCONNECTION_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.RX_HS20_ANQP_ICON_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.SUP_REQUEST_IDENTITY, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.SUP_REQUEST_SIM_AUTH, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.ASSOCIATION_REJECTION_EVENT, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.AUTHENTICATION_FAILURE_EVENT, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.NETWORK_CONNECTION_EVENT, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.NETWORK_DISCONNECTION_EVENT, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, CMD_ASSOCIATED_BSSID, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, CMD_TARGET_BSSID, this.mWifiMetrics.getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.WAPI_AUTHENTICATION_FAILURE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.WAPI_CERTIFICATION_FAILURE_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.WAPI_CERTIFICATION_LOST_EVENT, getHandler());
        this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiMonitor.OFFLOAD_ROAM_NOTIFY_EVENT, getHandler());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMulticastFilter(boolean enabled) {
        if (this.mIpClient != null) {
            this.mIpClient.setMulticastFilter(enabled);
        }
    }

    class McastLockManagerFilterController implements WifiMulticastLockManager.FilterController {
        McastLockManagerFilterController() {
        }

        @Override // com.android.server.wifi.WifiMulticastLockManager.FilterController
        public void startFilteringMulticastPackets() {
            ClientModeImpl.this.setMulticastFilter(true);
        }

        @Override // com.android.server.wifi.WifiMulticastLockManager.FilterController
        public void stopFilteringMulticastPackets() {
            ClientModeImpl.this.setMulticastFilter(false);
        }
    }

    class IpClientCallbacksImpl extends IpClientCallbacks {
        private final ConditionVariable mWaitForCreationCv = new ConditionVariable(false);
        private final ConditionVariable mWaitForStopCv = new ConditionVariable(false);

        IpClientCallbacksImpl() {
        }

        public void onIpClientCreated(IIpClient ipClient) {
            ClientModeImpl clientModeImpl = ClientModeImpl.this;
            clientModeImpl.mIpClient = new IpClientManager(ipClient, clientModeImpl.getName());
            this.mWaitForCreationCv.open();
        }

        public void onPreDhcpAction() {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_PRE_DHCP_ACTION);
        }

        public void onPostDhcpAction() {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_POST_DHCP_ACTION);
        }

        public void onNewDhcpResults(DhcpResults dhcpResults) {
            if (dhcpResults != null) {
                ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_IPV4_PROVISIONING_SUCCESS, dhcpResults);
            } else {
                ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_IPV4_PROVISIONING_FAILURE);
            }
        }

        public void onProvisioningSuccess(LinkProperties newLp) {
            ClientModeImpl.this.mWifiMetrics.logStaEvent(7);
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_UPDATE_LINKPROPERTIES, newLp);
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_IP_CONFIGURATION_SUCCESSFUL);
        }

        public void onProvisioningFailure(LinkProperties newLp) {
            ClientModeImpl.this.mWifiMetrics.logStaEvent(8);
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_IP_CONFIGURATION_LOST);
        }

        public void onLinkPropertiesChange(LinkProperties newLp) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_UPDATE_LINKPROPERTIES, newLp);
        }

        public void onReachabilityLost(String logMsg) {
            ClientModeImpl.this.mWifiMetrics.logStaEvent(9);
        }

        public void installPacketFilter(byte[] filter) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_INSTALL_PACKET_FILTER, filter);
        }

        public void startReadPacketFilter() {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_READ_PACKET_FILTER);
        }

        public void setFallbackMulticastFilter(boolean enabled) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_SET_FALLBACK_PACKET_FILTERING, Boolean.valueOf(enabled));
        }

        public void setNeighborDiscoveryOffload(boolean z) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_CONFIG_ND_OFFLOAD, z ? 1 : 0);
        }

        public void onQuit() {
            this.mWaitForStopCv.open();
        }

        boolean awaitCreation() {
            return this.mWaitForCreationCv.block(RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS);
        }

        boolean awaitShutdown() {
            return this.mWaitForStopCv.block(RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopIpClient() {
        handlePostDhcpSetup();
        if (this.mIpClient != null) {
            this.mIpClient.stop();
        }
    }

    void setSupplicantLogLevel() {
        this.mWifiNative.setSupplicantLogLevel(this.mVerboseLoggingEnabled);
    }

    public void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.mVerboseLoggingEnabled = true;
            setLogRecSize(ActivityManager.isLowRamDeviceStatic() ? ChannelHelper.SCAN_PERIOD_PER_CHANNEL_MS : DEFAULT_POLL_RSSI_INTERVAL_MSECS);
        } else {
            this.mVerboseLoggingEnabled = false;
            setLogRecSize(100);
        }
        configureVerboseHalLogging(this.mVerboseLoggingEnabled);
        setSupplicantLogLevel();
        this.mCountryCode.enableVerboseLogging(verbose);
        this.mWifiScoreReport.enableVerboseLogging(this.mVerboseLoggingEnabled);
        this.mWifiDiagnostics.startLogging(this.mVerboseLoggingEnabled);
        this.mWifiMonitor.enableVerboseLogging(verbose);
        this.mWifiNative.enableVerboseLogging(verbose);
        this.mWifiConfigManager.enableVerboseLogging(verbose);
        this.mSupplicantStateTracker.enableVerboseLogging(verbose);
        this.mPasspointManager.enableVerboseLogging(verbose);
        this.mNetworkFactory.enableVerboseLogging(verbose);
        this.mLinkProbeManager.enableVerboseLogging(this.mVerboseLoggingEnabled);
    }

    private void configureVerboseHalLogging(boolean enableVerbose) {
        if (this.mBuildProperties.isUserBuild()) {
            return;
        }
        this.mPropertyService.set(SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL, enableVerbose ? LOGD_LEVEL_VERBOSE : LOGD_LEVEL_DEBUG);
    }

    private boolean setRandomMacOui() {
        String oui = this.mContext.getResources().getString(R.string.biometric_error_device_not_secured);
        if (TextUtils.isEmpty(oui)) {
            oui = GOOGLE_OUI;
        }
        String[] ouiParts = oui.split("-");
        byte[] ouiBytes = {(byte) (Integer.parseInt(ouiParts[0], 16) & Constants.BYTE_MASK), (byte) (Integer.parseInt(ouiParts[1], 16) & Constants.BYTE_MASK), (byte) (Integer.parseInt(ouiParts[2], 16) & Constants.BYTE_MASK)};
        logd("Setting OUI to " + oui);
        return this.mWifiNative.setScanningMacOui(this.mInterfaceName, ouiBytes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean connectToUserSelectNetwork(int netId, int uid, boolean forceReconnect) {
        logd("connectToUserSelectNetwork netId " + netId + ", uid " + uid + ", forceReconnect = " + forceReconnect);
        WifiConfiguration config = this.mWifiConfigManager.getConfiguredNetwork(netId);
        if (config == null) {
            loge("connectToUserSelectNetwork Invalid network Id=" + netId);
            return false;
        }
        if (!this.mWifiConfigManager.enableNetwork(netId, true, uid) || !this.mWifiConfigManager.updateLastConnectUid(netId, uid)) {
            logi("connectToUserSelectNetwork Allowing uid " + uid + " with insufficient permissions to connect=" + netId);
        } else if (this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid)) {
            this.mWifiConnectivityManager.setUserConnectChoice(netId);
        }
        if (!forceReconnect && this.mWifiInfo.getNetworkId() == netId) {
            logi("connectToUserSelectNetwork already connecting/connected=" + netId);
        } else {
            this.mLastUserConnectAttempt = this.mClock.getWallClockMillis();
            this.mWifiConnectivityManager.prepareForForcedConnection(netId);
            if (uid == 1000) {
                this.mWifiMetrics.setNominatorForNetwork(config.networkId, 1);
            }
            startConnectToNetwork(netId, uid, "any");
        }
        return true;
    }

    public Messenger getMessenger() {
        return new Messenger(getHandler());
    }

    String reportOnTime() {
        long now = this.mClock.getWallClockMillis();
        StringBuilder sb = new StringBuilder();
        int i = this.mOnTime;
        int on = i - this.mOnTimeLastReport;
        this.mOnTimeLastReport = i;
        int i2 = this.mTxTime;
        int tx = i2 - this.mTxTimeLastReport;
        this.mTxTimeLastReport = i2;
        int i3 = this.mRxTime;
        int rx = i3 - this.mRxTimeLastReport;
        this.mRxTimeLastReport = i3;
        int period = (int) (now - this.mLastOntimeReportTimeStamp);
        this.mLastOntimeReportTimeStamp = now;
        sb.append(String.format("[on:%d tx:%d rx:%d period:%d]", Integer.valueOf(on), Integer.valueOf(tx), Integer.valueOf(rx), Integer.valueOf(period)));
        int on2 = this.mOnTime - this.mOnTimeScreenStateChange;
        int period2 = (int) (now - this.mLastScreenStateChangeTimeStamp);
        sb.append(String.format(" from screen [on:%d period:%d]", Integer.valueOf(on2), Integer.valueOf(period2)));
        return sb.toString();
    }

    WifiLinkLayerStats getWifiLinkLayerStats() {
        if (this.mInterfaceName == null) {
            loge("getWifiLinkLayerStats called without an interface");
            return null;
        }
        this.mLastLinkLayerStatsUpdate = this.mClock.getWallClockMillis();
        WifiLinkLayerStats stats = this.mWifiNative.getWifiLinkLayerStats(this.mInterfaceName);
        if (stats != null) {
            this.mOnTime = stats.on_time;
            this.mTxTime = stats.tx_time;
            this.mRxTime = stats.rx_time;
            this.mRunningBeaconCount = stats.beacon_rx;
            this.mWifiInfo.updatePacketRates(stats, this.mLastLinkLayerStatsUpdate);
        } else {
            long mTxPkts = this.mFacade.getTxPackets(this.mInterfaceName);
            long mRxPkts = this.mFacade.getRxPackets(this.mInterfaceName);
            this.mWifiInfo.updatePacketRates(mTxPkts, mRxPkts, this.mLastLinkLayerStatsUpdate);
        }
        return stats;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.net.SocketKeepalive$InvalidPacketException */
    private byte[] getDstMacForKeepalive(KeepalivePacketData packetData) throws SocketKeepalive.InvalidPacketException {
        try {
            InetAddress gateway = RouteInfo.selectBestRoute(this.mLinkProperties.getRoutes(), packetData.dstAddress).getGateway();
            String dstMacStr = macAddressFromRoute(gateway.getHostAddress());
            return NativeUtil.macAddressToByteArray(dstMacStr);
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new SocketKeepalive.InvalidPacketException(-21);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.net.SocketKeepalive$InvalidPacketException */
    private static int getEtherProtoForKeepalive(KeepalivePacketData packetData) throws SocketKeepalive.InvalidPacketException {
        if (packetData.dstAddress instanceof Inet4Address) {
            return OsConstants.ETH_P_IP;
        }
        if (packetData.dstAddress instanceof Inet6Address) {
            return OsConstants.ETH_P_IPV6;
        }
        throw new SocketKeepalive.InvalidPacketException(-21);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: android.net.SocketKeepalive$InvalidPacketException */
    public int startWifiIPPacketOffload(int slot, KeepalivePacketData packetData, int intervalSeconds) {
        SocketKeepalive.InvalidPacketException e;
        try {
            byte[] packet = packetData.getPacket();
            try {
                byte[] dstMac = getDstMacForKeepalive(packetData);
                try {
                    int proto = getEtherProtoForKeepalive(packetData);
                    int ret = this.mWifiNative.startSendingOffloadedPacket(this.mInterfaceName, slot, dstMac, packet, proto, intervalSeconds * 1000);
                    if (ret != 0) {
                        loge("startWifiIPPacketOffload(" + slot + ", " + intervalSeconds + "): hardware error " + ret);
                        return -31;
                    }
                    return 0;
                } catch (SocketKeepalive.InvalidPacketException e2) {
                    e = e2;
                    return e.error;
                }
            } catch (SocketKeepalive.InvalidPacketException e3) {
                e = e3;
            }
        } catch (SocketKeepalive.InvalidPacketException e4) {
            e = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int stopWifiIPPacketOffload(int slot) {
        int ret = this.mWifiNative.stopSendingOffloadedPacket(this.mInterfaceName, slot);
        if (ret != 0) {
            loge("stopWifiIPPacketOffload(" + slot + "): hardware error " + ret);
            return -31;
        }
        return 0;
    }

    private int startRssiMonitoringOffload(byte maxRssi, byte minRssi, WifiNative.WifiRssiEventHandler rssiHandler) {
        return this.mWifiNative.startRssiMonitoring(this.mInterfaceName, maxRssi, minRssi, rssiHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int stopRssiMonitoringOffload() {
        return this.mWifiNative.stopRssiMonitoring(this.mInterfaceName);
    }

    public void setWifiStateForApiCalls(int newState) {
        if (newState == 0 || newState == 1 || newState == 2 || newState == 3 || newState == 4) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "setting wifi state to: " + newState);
            }
            this.mWifiState.set(newState);
            return;
        }
        Log.d(TAG, "attempted to set an invalid state: " + newState);
    }

    public int syncGetWifiState() {
        return this.mWifiState.get();
    }

    public String syncGetWifiStateByName() {
        int i = this.mWifiState.get();
        if (i == 0) {
            return "disabling";
        }
        if (i == 1) {
            return "disabled";
        }
        if (i == 2) {
            return "enabling";
        }
        if (i == 3) {
            return "enabled";
        }
        if (i == 4) {
            return "unknown state";
        }
        return "[invalid state]";
    }

    public boolean isConnected() {
        return getCurrentState() == this.mConnectedState;
    }

    public boolean isDisconnected() {
        return getCurrentState() == this.mDisconnectedState;
    }

    public boolean isSupplicantTransientState() {
        SupplicantState supplicantState = this.mWifiInfo.getSupplicantState();
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "Supplicant is under steady state: " + supplicantState);
        }
        if (supplicantState == SupplicantState.ASSOCIATING || supplicantState == SupplicantState.AUTHENTICATING || supplicantState == SupplicantState.FOUR_WAY_HANDSHAKE || supplicantState == SupplicantState.GROUP_HANDSHAKE) {
            return true;
        }
        if (this.mLastUserConnectAttempt > 0) {
            long mSecs = this.mClock.getWallClockMillis() - this.mLastUserConnectAttempt;
            if (mSecs < RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS) {
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "Last user select network just " + mSecs);
                }
                return true;
            }
            this.mLastUserConnectAttempt = 0L;
            return false;
        }
        return false;
    }

    public WifiInfo syncRequestConnectionInfo() {
        WifiInfo result = new WifiInfo(this.mWifiInfo);
        return result;
    }

    public WifiInfo getWifiInfo() {
        return this.mWifiInfo;
    }

    public DhcpResults syncGetDhcpResults() {
        DhcpResults dhcpResults;
        synchronized (this.mDhcpResultsLock) {
            dhcpResults = new DhcpResults(this.mDhcpResults);
        }
        return dhcpResults;
    }

    public void handleIfaceDestroyed() {
        handleNetworkDisconnect();
    }

    public void setOperationalMode(int mode, String ifaceName) {
        if (this.mVerboseLoggingEnabled) {
            log("setting operational mode to " + String.valueOf(mode) + " for iface: " + ifaceName);
        }
        this.mModeChange = true;
        if (mode != 1) {
            transitionTo(this.mDefaultState);
        } else if (ifaceName != null) {
            this.mInterfaceName = ifaceName;
            transitionTo(this.mDisconnectedState);
        } else {
            Log.e(TAG, "supposed to enter connect mode, but iface is null -> DefaultState");
            transitionTo(this.mDefaultState);
        }
        sendMessageAtFrontOfQueue(CMD_SET_OPERATIONAL_MODE);
    }

    public void takeBugReport(String bugTitle, String bugDetail) {
        this.mWifiDiagnostics.takeBugReport(bugTitle, bugDetail);
    }

    @VisibleForTesting
    protected int getOperationalModeForTest() {
        return this.mOperationalMode;
    }

    protected WifiMulticastLockManager.FilterController getMcastLockManagerFilterController() {
        return this.mMcastLockManagerFilterController;
    }

    public boolean syncQueryPasspointIcon(AsyncChannel channel, long bssid, String fileName) {
        Bundle bundle = new Bundle();
        bundle.putLong("BSSID", bssid);
        bundle.putString(EXTRA_OSU_ICON_QUERY_FILENAME, fileName);
        Message resultMsg = channel.sendMessageSynchronously(CMD_QUERY_OSU_ICON, bundle);
        int result = resultMsg.arg1;
        resultMsg.recycle();
        return result == 1;
    }

    public int matchProviderWithCurrentNetwork(AsyncChannel channel, String fqdn) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_MATCH_PROVIDER_NETWORK, fqdn);
        int result = resultMsg.arg1;
        resultMsg.recycle();
        return result;
    }

    public void deauthenticateNetwork(AsyncChannel channel, long holdoff, boolean ess) {
    }

    public void disableEphemeralNetwork(String ssid) {
        if (ssid != null) {
            sendMessage(CMD_DISABLE_EPHEMERAL_NETWORK, ssid);
        }
    }

    public void disconnectCommand() {
        sendMessage(CMD_DISCONNECT);
    }

    public void disconnectCommand(int uid, int reason) {
        sendMessage(CMD_DISCONNECT, uid, reason);
    }

    public void reconnectCommand(WorkSource workSource) {
        sendMessage(CMD_RECONNECT, workSource);
    }

    public void reassociateCommand() {
        sendMessage(CMD_REASSOCIATE);
    }

    private boolean messageIsNull(Message resultMsg) {
        if (resultMsg != null) {
            return false;
        }
        if (this.mNullMessageCounter.getAndIncrement() > 0) {
            Log.wtf(TAG, "Persistent null Message", new RuntimeException());
            return true;
        }
        return true;
    }

    public int syncAddOrUpdateNetwork(AsyncChannel channel, WifiConfiguration config) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_ADD_OR_UPDATE_NETWORK, config);
        if (messageIsNull(resultMsg)) {
            return -1;
        }
        int result = resultMsg.arg1;
        resultMsg.recycle();
        return result;
    }

    public List<WifiConfiguration> syncGetConfiguredNetworks(int uuid, AsyncChannel channel, int targetUid) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_CONFIGURED_NETWORKS, uuid, targetUid);
        if (messageIsNull(resultMsg)) {
            return null;
        }
        List<WifiConfiguration> result = (List) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    public List<WifiConfiguration> syncGetPrivilegedConfiguredNetwork(AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS);
        if (messageIsNull(resultMsg)) {
            return null;
        }
        List<WifiConfiguration> result = (List) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    Map<String, Map<Integer, List<ScanResult>>> syncGetAllMatchingFqdnsForScanResults(List<ScanResult> scanResults, AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_ALL_MATCHING_FQDNS_FOR_SCAN_RESULTS, scanResults);
        if (messageIsNull(resultMsg)) {
            return new HashMap();
        }
        Map<String, Map<Integer, List<ScanResult>>> configs = (Map) resultMsg.obj;
        resultMsg.recycle();
        return configs;
    }

    public Map<OsuProvider, List<ScanResult>> syncGetMatchingOsuProviders(List<ScanResult> scanResults, AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_MATCHING_OSU_PROVIDERS, scanResults);
        if (messageIsNull(resultMsg)) {
            return new HashMap();
        }
        Map<OsuProvider, List<ScanResult>> providers = (Map) resultMsg.obj;
        resultMsg.recycle();
        return providers;
    }

    public Map<OsuProvider, PasspointConfiguration> syncGetMatchingPasspointConfigsForOsuProviders(List<OsuProvider> osuProviders, AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_MATCHING_PASSPOINT_CONFIGS_FOR_OSU_PROVIDERS, osuProviders);
        if (messageIsNull(resultMsg)) {
            return new HashMap();
        }
        Map<OsuProvider, PasspointConfiguration> result = (Map) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    public List<WifiConfiguration> syncGetWifiConfigsForPasspointProfiles(List<String> fqdnList, AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_WIFI_CONFIGS_FOR_PASSPOINT_PROFILES, fqdnList);
        if (messageIsNull(resultMsg)) {
            return new ArrayList();
        }
        List<WifiConfiguration> result = (List) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    public boolean syncAddOrUpdatePasspointConfig(AsyncChannel channel, PasspointConfiguration config, int uid, String packageName) {
        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_UID, uid);
        bundle.putString(EXTRA_PACKAGE_NAME, packageName);
        bundle.putParcelable(EXTRA_PASSPOINT_CONFIGURATION, config);
        Message resultMsg = channel.sendMessageSynchronously(CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG, bundle);
        if (messageIsNull(resultMsg)) {
            return false;
        }
        boolean result = resultMsg.arg1 == 1;
        resultMsg.recycle();
        return result;
    }

    public boolean syncRemovePasspointConfig(AsyncChannel channel, String fqdn) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_REMOVE_PASSPOINT_CONFIG, fqdn);
        if (messageIsNull(resultMsg)) {
            return false;
        }
        boolean result = resultMsg.arg1 == 1;
        resultMsg.recycle();
        return result;
    }

    public List<PasspointConfiguration> syncGetPasspointConfigs(AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_PASSPOINT_CONFIGS);
        if (messageIsNull(resultMsg)) {
            return null;
        }
        List<PasspointConfiguration> result = (List) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    public boolean syncStartSubscriptionProvisioning(int callingUid, OsuProvider provider, IProvisioningCallback callback, AsyncChannel channel) {
        Message msg = Message.obtain();
        msg.what = CMD_START_SUBSCRIPTION_PROVISIONING;
        msg.arg1 = callingUid;
        msg.obj = callback;
        msg.getData().putParcelable(EXTRA_OSU_PROVIDER, provider);
        Message resultMsg = channel.sendMessageSynchronously(msg);
        if (messageIsNull(resultMsg)) {
            return false;
        }
        boolean result = resultMsg.arg1 != 0;
        resultMsg.recycle();
        return result;
    }

    public long syncGetSupportedFeatures(AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_SUPPORTED_FEATURES);
        if (messageIsNull(resultMsg)) {
            return 0L;
        }
        long supportedFeatureSet = ((Long) resultMsg.obj).longValue();
        resultMsg.recycle();
        boolean rttSupported = this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.rtt");
        if (!rttSupported) {
            return supportedFeatureSet & (-385);
        }
        return supportedFeatureSet;
    }

    public WifiLinkLayerStats syncGetLinkLayerStats(AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_LINK_LAYER_STATS);
        if (messageIsNull(resultMsg)) {
            return null;
        }
        WifiLinkLayerStats result = (WifiLinkLayerStats) resultMsg.obj;
        resultMsg.recycle();
        return result;
    }

    public boolean syncRemoveNetwork(AsyncChannel channel, int networkId) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_REMOVE_NETWORK, networkId);
        if (messageIsNull(resultMsg)) {
            return false;
        }
        boolean result = resultMsg.arg1 != -1;
        resultMsg.recycle();
        return result;
    }

    public boolean syncEnableNetwork(AsyncChannel asyncChannel, int i, boolean z) {
        Message messageSendMessageSynchronously = asyncChannel.sendMessageSynchronously(CMD_ENABLE_NETWORK, i, z ? 1 : 0);
        if (messageIsNull(messageSendMessageSynchronously)) {
            return false;
        }
        boolean z2 = messageSendMessageSynchronously.arg1 != -1;
        messageSendMessageSynchronously.recycle();
        return z2;
    }

    public boolean syncDisableNetwork(AsyncChannel channel, int netId) {
        Message resultMsg = channel.sendMessageSynchronously(151569, netId);
        boolean result = resultMsg.what != 151570;
        if (messageIsNull(resultMsg)) {
            return false;
        }
        resultMsg.recycle();
        return result;
    }

    public void enableRssiPolling(boolean z) {
        sendMessage(CMD_ENABLE_RSSI_POLL, z ? 1 : 0, 0);
    }

    public void setHighPerfModeEnabled(boolean z) {
        sendMessage(CMD_SET_HIGH_PERF_MODE, z ? 1 : 0, 0);
    }

    public synchronized void resetSimAuthNetworks(boolean simPresent) {
        sendMessage(CMD_RESET_SIM_NETWORKS, simPresent ? 1 : 0);
    }

    public synchronized void resetSimAuthNetworks(boolean simPresent, int phoneId) {
        sendMessage(CMD_RESET_SIM_NETWORKS, simPresent ? 1 : 0, phoneId);
    }

    public Network getCurrentNetwork() {
        synchronized (this.mNetworkAgentLock) {
            if (this.mNetworkAgent != null) {
                return new Network(this.mNetworkAgent.netId);
            }
            return null;
        }
    }

    public void enableTdls(String str, boolean z) {
        sendMessage(CMD_ENABLE_TDLS, z ? 1 : 0, 0, str);
    }

    public void sendBluetoothAdapterStateChange(int state) {
        sendMessage(CMD_BLUETOOTH_ADAPTER_STATE_CHANGE, state, 0);
    }

    public void removeAppConfigs(String packageName, int uid) {
        ApplicationInfo ai = new ApplicationInfo();
        ai.packageName = packageName;
        ai.uid = uid;
        sendMessage(CMD_REMOVE_APP_CONFIGURATIONS, ai);
    }

    public void removeUserConfigs(int userId) {
        sendMessage(CMD_REMOVE_USER_CONFIGURATIONS, userId);
    }

    public void updateBatteryWorkSource(WorkSource newSource) {
        synchronized (this.mRunningWifiUids) {
            if (newSource != null) {
                try {
                    this.mRunningWifiUids.set(newSource);
                } catch (RemoteException e) {
                }
            }
            if (this.mIsRunning) {
                if (this.mReportedRunning) {
                    if (!this.mLastRunningWifiUids.equals(this.mRunningWifiUids)) {
                        this.mBatteryStats.noteWifiRunningChanged(this.mLastRunningWifiUids, this.mRunningWifiUids);
                        this.mLastRunningWifiUids.set(this.mRunningWifiUids);
                    }
                } else {
                    this.mBatteryStats.noteWifiRunning(this.mRunningWifiUids);
                    this.mLastRunningWifiUids.set(this.mRunningWifiUids);
                    this.mReportedRunning = true;
                }
            } else if (this.mReportedRunning) {
                this.mBatteryStats.noteWifiStopped(this.mLastRunningWifiUids);
                this.mLastRunningWifiUids.clear();
                this.mReportedRunning = false;
            }
            this.mWakeLock.setWorkSource(newSource);
        }
    }

    public void dumpIpClient(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (this.mIpClient != null) {
            pw.println("IpClient logs have moved to dumpsys network_stack");
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        super.dump(fd, pw, args);
        this.mSupplicantStateTracker.dump(fd, pw, args);
        pw.println("mLinkProperties " + this.mLinkProperties);
        pw.println("mWifiInfo " + this.mWifiInfo);
        pw.println("mDhcpResults " + this.mDhcpResults);
        pw.println("mNetworkInfo " + this.mNetworkInfo);
        pw.println("mLastSignalLevel " + this.mLastSignalLevel);
        pw.println("mLastBssid " + this.mLastBssid);
        pw.println("mLastNetworkId " + this.mLastNetworkId);
        pw.println("mOperationalMode " + this.mOperationalMode);
        pw.println("mUserWantsSuspendOpt " + this.mUserWantsSuspendOpt);
        pw.println("mSuspendOptNeedsDisabled " + this.mSuspendOptNeedsDisabled);
        this.mCountryCode.dump(fd, pw, args);
        this.mNetworkFactory.dump(fd, pw, args);
        this.mUntrustedNetworkFactory.dump(fd, pw, args);
        pw.println("Wlan Wake Reasons:" + this.mWifiNative.getWlanWakeReasonCount());
        pw.println();
        this.mWifiConfigManager.dump(fd, pw, args);
        pw.println();
        this.mPasspointManager.dump(pw);
        pw.println();
        this.mWifiDiagnostics.captureBugReportData(7);
        this.mWifiDiagnostics.dump(fd, pw, args);
        dumpIpClient(fd, pw, args);
        this.mWifiConnectivityManager.dump(fd, pw, args);
        this.mWifiInjector.getWakeupController().dump(fd, pw, args);
        this.mLinkProbeManager.dump(fd, pw, args);
        this.mWifiInjector.getWifiLastResortWatchdog().dump(fd, pw, args);
        this.mWifiInjector.getSavedNetworkEvaluator().dump(fd, pw, args);
        this.mWifiInjector.getWifiNetworkSelector().dump(fd, pw, args);
    }

    public void handleBootCompleted() {
        sendMessage(CMD_BOOT_COMPLETED);
    }

    public void handleUserSwitch(int userId) {
        sendMessage(CMD_USER_SWITCH, userId);
    }

    public void handleUserUnlock(int userId) {
        sendMessage(CMD_USER_UNLOCK, userId);
    }

    public void handleUserStop(int userId) {
        sendMessage(CMD_USER_STOP, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logStateAndMessage(Message message, State state) {
        this.mMessageHandlingStatus = 0;
        if (this.mVerboseLoggingEnabled) {
            logd(" " + state.getClass().getSimpleName() + " " + getLogRecString(message));
        }
    }

    protected boolean recordLogRec(Message msg) {
        if (msg.what == CMD_RSSI_POLL) {
            return this.mVerboseLoggingEnabled;
        }
        return true;
    }

    protected String getLogRecString(Message msg) {
        StringBuilder sb = new StringBuilder();
        sb.append("screen=");
        sb.append(this.mScreenOn ? "on" : "off");
        if (this.mMessageHandlingStatus != 0) {
            sb.append("(");
            sb.append(this.mMessageHandlingStatus);
            sb.append(")");
        }
        if (msg.sendingUid > 0 && msg.sendingUid != 1010) {
            sb.append(" uid=" + msg.sendingUid);
        }
        switch (msg.what) {
            case CMD_ADD_OR_UPDATE_NETWORK /* 131124 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                if (msg.obj != null) {
                    WifiConfiguration config = (WifiConfiguration) msg.obj;
                    sb.append(" ");
                    sb.append(config.configKey());
                    sb.append(" prio=");
                    sb.append(config.priority);
                    sb.append(" status=");
                    sb.append(config.status);
                    if (config.BSSID != null) {
                        sb.append(" ");
                        sb.append(config.BSSID);
                    }
                    WifiConfiguration curConfig = getCurrentWifiConfiguration();
                    if (curConfig != null) {
                        if (curConfig.configKey().equals(config.configKey())) {
                            sb.append(" is current");
                        } else {
                            sb.append(" current=");
                            sb.append(curConfig.configKey());
                            sb.append(" prio=");
                            sb.append(curConfig.priority);
                            sb.append(" status=");
                            sb.append(curConfig.status);
                        }
                    }
                }
                break;
            case CMD_ENABLE_NETWORK /* 131126 */:
            case 151569:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                String key = this.mWifiConfigManager.getLastSelectedNetworkConfigKey();
                if (key != null) {
                    sb.append(" last=");
                    sb.append(key);
                }
                WifiConfiguration config2 = this.mWifiConfigManager.getConfiguredNetwork(msg.arg1);
                if (config2 != null && (key == null || !config2.configKey().equals(key))) {
                    sb.append(" target=");
                    sb.append(key);
                }
                break;
            case CMD_GET_CONFIGURED_NETWORKS /* 131131 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" num=");
                sb.append(this.mWifiConfigManager.getConfiguredNetworks().size());
                break;
            case CMD_RSSI_POLL /* 131155 */:
            case CMD_ONESHOT_RSSI_POLL /* 131156 */:
            case CMD_UNWANTED_NETWORK /* 131216 */:
            case 151572:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                if (this.mWifiInfo.getSSID() != null && this.mWifiInfo.getSSID() != null) {
                    sb.append(" ");
                    sb.append(this.mWifiInfo.getSSID());
                }
                if (this.mWifiInfo.getBSSID() != null) {
                    sb.append(" ");
                    sb.append(this.mWifiInfo.getBSSID());
                }
                sb.append(" rssi=");
                sb.append(this.mWifiInfo.getRssi());
                sb.append(" f=");
                sb.append(this.mWifiInfo.getFrequency());
                sb.append(" sc=");
                sb.append(this.mWifiInfo.score);
                sb.append(" link=");
                sb.append(this.mWifiInfo.getLinkSpeed());
                sb.append(String.format(" tx=%.1f,", Double.valueOf(this.mWifiInfo.txSuccessRate)));
                sb.append(String.format(" %.1f,", Double.valueOf(this.mWifiInfo.txRetriesRate)));
                sb.append(String.format(" %.1f ", Double.valueOf(this.mWifiInfo.txBadRate)));
                sb.append(String.format(" rx=%.1f", Double.valueOf(this.mWifiInfo.rxSuccessRate)));
                sb.append(String.format(" bcn=%d", Integer.valueOf(this.mRunningBeaconCount)));
                String report = reportOnTime();
                if (report != null) {
                    sb.append(" ");
                    sb.append(report);
                }
                sb.append(String.format(" score=%d", Integer.valueOf(this.mWifiInfo.score)));
                break;
            case CMD_ROAM_WATCHDOG_TIMER /* 131166 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" cur=");
                sb.append(this.mRoamWatchdogCount);
                break;
            case CMD_DISCONNECTING_WATCHDOG_TIMER /* 131168 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" cur=");
                sb.append(this.mDisconnectingWatchdogCount);
                break;
            case CMD_IP_CONFIGURATION_LOST /* 131211 */:
                int count = -1;
                WifiConfiguration c = getCurrentWifiConfiguration();
                if (c != null) {
                    count = c.getNetworkSelectionStatus().getDisableReasonCounter(4);
                }
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" failures: ");
                sb.append(Integer.toString(count));
                sb.append("/");
                sb.append(Integer.toString(this.mFacade.getIntegerSetting(this.mContext, "wifi_max_dhcp_retry_count", 0)));
                if (this.mWifiInfo.getBSSID() != null) {
                    sb.append(" ");
                    sb.append(this.mWifiInfo.getBSSID());
                }
                sb.append(String.format(" bcn=%d", Integer.valueOf(this.mRunningBeaconCount)));
                break;
            case CMD_UPDATE_LINKPROPERTIES /* 131212 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                if (this.mLinkProperties != null) {
                    sb.append(" ");
                    sb.append(getLinkPropertiesSummary(this.mLinkProperties));
                }
                break;
            case CMD_TARGET_BSSID /* 131213 */:
            case CMD_ASSOCIATED_BSSID /* 131219 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                if (msg.obj != null) {
                    sb.append(" BSSID=");
                    sb.append((String) msg.obj);
                }
                if (this.mTargetRoamBSSID != null) {
                    sb.append(" Target=");
                    sb.append(this.mTargetRoamBSSID);
                }
                sb.append(" roam=");
                sb.append(Boolean.toString(this.mIsAutoRoaming));
                break;
            case CMD_START_CONNECT /* 131215 */:
            case 151553:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                WifiConfiguration config3 = this.mWifiConfigManager.getConfiguredNetwork(msg.arg1);
                if (config3 != null) {
                    sb.append(" ");
                    sb.append(config3.configKey());
                }
                if (this.mTargetRoamBSSID != null) {
                    sb.append(" ");
                    sb.append(this.mTargetRoamBSSID);
                }
                sb.append(" roam=");
                sb.append(Boolean.toString(this.mIsAutoRoaming));
                WifiConfiguration config4 = getCurrentWifiConfiguration();
                if (config4 != null) {
                    sb.append(config4.configKey());
                }
                break;
            case CMD_START_ROAM /* 131217 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                ScanResult result = (ScanResult) msg.obj;
                if (result != null) {
                    Long now = Long.valueOf(this.mClock.getWallClockMillis());
                    sb.append(" bssid=");
                    sb.append(result.BSSID);
                    sb.append(" rssi=");
                    sb.append(result.level);
                    sb.append(" freq=");
                    sb.append(result.frequency);
                    if (result.seen > 0 && result.seen < now.longValue()) {
                        sb.append(" seen=");
                        sb.append(now.longValue() - result.seen);
                    } else {
                        sb.append(" !seen=");
                        sb.append(result.seen);
                    }
                }
                if (this.mTargetRoamBSSID != null) {
                    sb.append(" ");
                    sb.append(this.mTargetRoamBSSID);
                }
                sb.append(" roam=");
                sb.append(Boolean.toString(this.mIsAutoRoaming));
                sb.append(" fail count=");
                sb.append(Integer.toString(this.mRoamFailCount));
                break;
            case CMD_IP_REACHABILITY_LOST /* 131221 */:
                if (msg.obj != null) {
                    sb.append(" ");
                    sb.append((String) msg.obj);
                }
                break;
            case CMD_START_RSSI_MONITORING_OFFLOAD /* 131234 */:
            case CMD_STOP_RSSI_MONITORING_OFFLOAD /* 131235 */:
            case CMD_RSSI_THRESHOLD_BREACHED /* 131236 */:
                sb.append(" rssi=");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" thresholds=");
                sb.append(Arrays.toString(this.mRssiRanges));
                break;
            case CMD_IPV4_PROVISIONING_SUCCESS /* 131272 */:
                sb.append(" ");
                sb.append(msg.obj);
                break;
            case CMD_INSTALL_PACKET_FILTER /* 131274 */:
                sb.append(" len=" + ((byte[]) msg.obj).length);
                break;
            case CMD_SET_FALLBACK_PACKET_FILTERING /* 131275 */:
                sb.append(" enabled=" + ((Boolean) msg.obj).booleanValue());
                break;
            case CMD_USER_SWITCH /* 131277 */:
                sb.append(" userId=");
                sb.append(Integer.toString(msg.arg1));
                break;
            case CMD_PRE_DHCP_ACTION /* 131327 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" txpkts=");
                sb.append(this.mWifiInfo.txSuccess);
                sb.append(",");
                sb.append(this.mWifiInfo.txBad);
                sb.append(",");
                sb.append(this.mWifiInfo.txRetries);
                break;
            case CMD_POST_DHCP_ACTION /* 131329 */:
                if (this.mLinkProperties != null) {
                    sb.append(" ");
                    sb.append(getLinkPropertiesSummary(this.mLinkProperties));
                }
                break;
            case WifiP2pServiceImpl.P2P_CONNECTION_CHANGED /* 143371 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                if (msg.obj != null) {
                    NetworkInfo info = (NetworkInfo) msg.obj;
                    NetworkInfo.State state = info.getState();
                    NetworkInfo.DetailedState detailedState = info.getDetailedState();
                    if (state != null) {
                        sb.append(" st=");
                        sb.append(state);
                    }
                    if (detailedState != null) {
                        sb.append("/");
                        sb.append(detailedState);
                    }
                }
                break;
            case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                sb.append(" ");
                sb.append(this.mLastBssid);
                sb.append(" nid=");
                sb.append(this.mLastNetworkId);
                WifiConfiguration config5 = getCurrentWifiConfiguration();
                if (config5 != null) {
                    sb.append(" ");
                    sb.append(config5.configKey());
                }
                String key2 = this.mWifiConfigManager.getLastSelectedNetworkConfigKey();
                if (key2 != null) {
                    sb.append(" last=");
                    sb.append(key2);
                }
                break;
            case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                if (msg.obj != null) {
                    sb.append(" ");
                    sb.append((String) msg.obj);
                }
                sb.append(" nid=");
                sb.append(msg.arg1);
                sb.append(" reason=");
                sb.append(msg.arg2);
                if (this.mLastBssid != null) {
                    sb.append(" lastbssid=");
                    sb.append(this.mLastBssid);
                }
                if (this.mWifiInfo.getFrequency() != -1) {
                    sb.append(" freq=");
                    sb.append(this.mWifiInfo.getFrequency());
                    sb.append(" rssi=");
                    sb.append(this.mWifiInfo.getRssi());
                }
                break;
            case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                StateChangeResult stateChangeResult = (StateChangeResult) msg.obj;
                if (stateChangeResult != null) {
                    sb.append(stateChangeResult.toString());
                }
                break;
            case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                sb.append(" ");
                sb.append(" timedOut=" + Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                String bssid = (String) msg.obj;
                if (bssid != null && bssid.length() > 0) {
                    sb.append(" ");
                    sb.append(bssid);
                }
                sb.append(" blacklist=" + Boolean.toString(this.mDidBlackListBSSID));
                break;
            case 151556:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                WifiConfiguration config6 = (WifiConfiguration) msg.obj;
                if (config6 != null) {
                    sb.append(" ");
                    sb.append(config6.configKey());
                    sb.append(" nid=");
                    sb.append(config6.networkId);
                    if (config6.hiddenSSID) {
                        sb.append(" hidden");
                    }
                    if (config6.preSharedKey != null) {
                        sb.append(" hasPSK");
                    }
                    if (config6.ephemeral) {
                        sb.append(" ephemeral");
                    }
                    if (config6.selfAdded) {
                        sb.append(" selfAdded");
                    }
                    sb.append(" cuid=");
                    sb.append(config6.creatorUid);
                    sb.append(" suid=");
                    sb.append(config6.lastUpdateUid);
                    WifiConfiguration.NetworkSelectionStatus netWorkSelectionStatus = config6.getNetworkSelectionStatus();
                    sb.append(" ajst=");
                    sb.append(netWorkSelectionStatus.getNetworkStatusString());
                }
                break;
            case 151559:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                WifiConfiguration config7 = (WifiConfiguration) msg.obj;
                if (config7 != null) {
                    sb.append(" ");
                    sb.append(config7.configKey());
                    sb.append(" nid=");
                    sb.append(config7.networkId);
                    if (config7.hiddenSSID) {
                        sb.append(" hidden");
                    }
                    if (config7.preSharedKey != null && !config7.preSharedKey.equals("*")) {
                        sb.append(" hasPSK");
                    }
                    if (config7.ephemeral) {
                        sb.append(" ephemeral");
                    }
                    if (config7.selfAdded) {
                        sb.append(" selfAdded");
                    }
                    sb.append(" cuid=");
                    sb.append(config7.creatorUid);
                    sb.append(" suid=");
                    sb.append(config7.lastUpdateUid);
                }
                break;
            default:
                sb.append(" ");
                sb.append(Integer.toString(msg.arg1));
                sb.append(" ");
                sb.append(Integer.toString(msg.arg2));
                break;
        }
        return sb.toString();
    }

    protected String getWhatToString(int what) {
        String s = sGetWhatToString.get(what);
        if (s != null) {
            return s;
        }
        switch (what) {
            case 69632:
                return "CMD_CHANNEL_HALF_CONNECTED";
            case 69636:
                return "CMD_CHANNEL_DISCONNECTED";
            case WifiP2pServiceImpl.GROUP_CREATING_TIMED_OUT /* 143361 */:
                return "GROUP_CREATING_TIMED_OUT";
            case WifiP2pServiceImpl.P2P_CONNECTION_CHANGED /* 143371 */:
                return "P2P_CONNECTION_CHANGED";
            case WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST /* 143372 */:
                return "DISCONNECT_WIFI_REQUEST";
            case WifiP2pServiceImpl.DISCONNECT_WIFI_RESPONSE /* 143373 */:
                return "DISCONNECT_WIFI_RESPONSE";
            case WifiP2pServiceImpl.SET_MIRACAST_MODE /* 143374 */:
                return "SET_MIRACAST_MODE";
            case WifiP2pServiceImpl.BLOCK_DISCOVERY /* 143375 */:
                return "BLOCK_DISCOVERY";
            case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                return "NETWORK_CONNECTION_EVENT";
            case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                return "NETWORK_DISCONNECTION_EVENT";
            case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                return "SUPPLICANT_STATE_CHANGE_EVENT";
            case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                return "AUTHENTICATION_FAILURE_EVENT";
            case WifiMonitor.SUP_REQUEST_IDENTITY /* 147471 */:
                return "SUP_REQUEST_IDENTITY";
            case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                return "ASSOCIATION_REJECTION_EVENT";
            case WifiMonitor.ANQP_DONE_EVENT /* 147500 */:
                return "ANQP_DONE_EVENT";
            case WifiMonitor.GAS_QUERY_START_EVENT /* 147507 */:
                return "GAS_QUERY_START_EVENT";
            case WifiMonitor.GAS_QUERY_DONE_EVENT /* 147508 */:
                return "GAS_QUERY_DONE_EVENT";
            case WifiMonitor.RX_HS20_ANQP_ICON_EVENT /* 147509 */:
                return "RX_HS20_ANQP_ICON_EVENT";
            case WifiMonitor.HS20_REMEDIATION_EVENT /* 147517 */:
                return "HS20_REMEDIATION_EVENT";
            case 151553:
                return "CONNECT_NETWORK";
            case 151556:
                return "FORGET_NETWORK";
            case 151559:
                return "SAVE_NETWORK";
            case 151569:
                return "DISABLE_NETWORK";
            case 151572:
                return "RSSI_PKTCNT_FETCH";
            default:
                return "what:" + Integer.toString(what);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScreenStateChanged(boolean screenOn) {
        this.mScreenOn = screenOn;
        if (this.mVerboseLoggingEnabled) {
            logd(" handleScreenStateChanged Enter: screenOn=" + screenOn + " mUserWantsSuspendOpt=" + this.mUserWantsSuspendOpt + " state " + getCurrentState().getName() + " suppState:" + this.mSupplicantStateTracker.getSupplicantStateName());
        }
        enableRssiPolling(screenOn);
        if (this.mUserWantsSuspendOpt.get()) {
            int shouldReleaseWakeLock = 0;
            if (screenOn) {
                sendMessage(CMD_SET_SUSPEND_OPT_ENABLED, 0, 0);
            } else {
                if (isConnected()) {
                    this.mSuspendWakeLock.acquire(2000L);
                    shouldReleaseWakeLock = 1;
                }
                sendMessage(CMD_SET_SUSPEND_OPT_ENABLED, 1, shouldReleaseWakeLock);
            }
        }
        getWifiLinkLayerStats();
        this.mOnTimeScreenStateChange = this.mOnTime;
        this.mLastScreenStateChangeTimeStamp = this.mLastLinkLayerStatsUpdate;
        this.mWifiMetrics.setScreenState(screenOn);
        this.mWifiConnectivityManager.handleScreenStateChanged(screenOn);
        this.mNetworkFactory.handleScreenStateChanged(screenOn);
        WifiLockManager wifiLockManager = this.mWifiInjector.getWifiLockManager();
        if (wifiLockManager == null) {
            Log.w(TAG, "WifiLockManager not initialized, skipping screen state notification");
        } else {
            wifiLockManager.handleScreenStateChanged(screenOn);
        }
        this.mSarManager.handleScreenStateChanged(screenOn);
        if (this.mVerboseLoggingEnabled) {
            log("handleScreenStateChanged Exit: " + screenOn);
        }
    }

    private boolean checkAndSetConnectivityInstance() {
        if (this.mCm == null) {
            this.mCm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        }
        if (this.mCm == null) {
            Log.e(TAG, "Cannot retrieve connectivity service");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuspendOptimizationsNative(int reason, boolean enabled) {
        if (this.mVerboseLoggingEnabled) {
            log("setSuspendOptimizationsNative: " + reason + " " + enabled + " -want " + this.mUserWantsSuspendOpt.get() + " stack:" + Thread.currentThread().getStackTrace()[2].getMethodName() + " - " + Thread.currentThread().getStackTrace()[3].getMethodName() + " - " + Thread.currentThread().getStackTrace()[4].getMethodName() + " - " + Thread.currentThread().getStackTrace()[5].getMethodName());
        }
        if (enabled) {
            this.mSuspendOptNeedsDisabled &= ~reason;
            if (this.mSuspendOptNeedsDisabled == 0 && this.mUserWantsSuspendOpt.get()) {
                if (this.mVerboseLoggingEnabled) {
                    log("setSuspendOptimizationsNative do it " + reason + " " + enabled + " stack:" + Thread.currentThread().getStackTrace()[2].getMethodName() + " - " + Thread.currentThread().getStackTrace()[3].getMethodName() + " - " + Thread.currentThread().getStackTrace()[4].getMethodName() + " - " + Thread.currentThread().getStackTrace()[5].getMethodName());
                }
                this.mWifiNative.setSuspendOptimizations(this.mInterfaceName, true);
                return;
            }
            return;
        }
        this.mSuspendOptNeedsDisabled |= reason;
        this.mWifiNative.setSuspendOptimizations(this.mInterfaceName, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuspendOptimizations(int reason, boolean enabled) {
        if (this.mVerboseLoggingEnabled) {
            log("setSuspendOptimizations: " + reason + " " + enabled);
        }
        if (enabled) {
            this.mSuspendOptNeedsDisabled &= ~reason;
        } else {
            this.mSuspendOptNeedsDisabled |= reason;
        }
        if (this.mVerboseLoggingEnabled) {
            log("mSuspendOptNeedsDisabled " + this.mSuspendOptNeedsDisabled);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchRssiLinkSpeedAndFrequencyNative() {
        WifiNative.SignalPollResult pollResult = this.mWifiNative.signalPoll(this.mInterfaceName);
        if (pollResult == null) {
            return;
        }
        int newRssi = pollResult.currentRssi;
        int newTxLinkSpeed = pollResult.txBitrate;
        int newFrequency = pollResult.associationFrequency;
        int newRxLinkSpeed = pollResult.rxBitrate;
        int newNoise = pollResult.noise;
        int oldRssi = this.mWifiInfo.getRssi();
        int oldTxLinkSpeed = this.mWifiInfo.getTxLinkSpeedMbps();
        int oldRxLinkSpeed = this.mWifiInfo.getRxLinkSpeedMbps();
        int oldFrequency = this.mWifiInfo.getFrequency();
        int oldNoise = this.mWifiInfo.getNoise();
        if (this.mVerboseLoggingEnabled) {
            logd("fetchRssiLinkSpeedAndFrequencyNative rssi=" + newRssi + " TxLinkspeed=" + newTxLinkSpeed + " freq=" + newFrequency + " RxLinkSpeed=" + newRxLinkSpeed + " noise=" + newNoise);
        }
        if (newRssi <= -127 || newRssi >= 200) {
            this.mWifiInfo.setRssi(WifiMetrics.MIN_RSSI_DELTA);
            updateCapabilities();
        } else {
            if (newRssi > 0) {
                Log.wtf(TAG, "Error! +ve value RSSI: " + newRssi);
                newRssi += -256;
            }
            this.mWifiInfo.setRssi(newRssi);
            int newSignalLevel = WifiManager.calculateSignalLevel(newRssi, 5);
            if (newSignalLevel != this.mLastSignalLevel) {
                updateCapabilities();
                sendRssiChangeBroadcast(newRssi);
            }
            this.mLastSignalLevel = newSignalLevel;
        }
        if (newTxLinkSpeed > 0) {
            this.mWifiInfo.setLinkSpeed(newTxLinkSpeed);
            this.mWifiInfo.setTxLinkSpeedMbps(newTxLinkSpeed);
        }
        if (newRxLinkSpeed > 0) {
            this.mWifiInfo.setRxLinkSpeedMbps(newRxLinkSpeed);
        }
        this.mWifiInfo.setNoise(newNoise);
        if (newFrequency > 0) {
            this.mWifiInfo.setFrequency(newFrequency);
        }
        this.mWifiConfigManager.updateScanDetailCacheFromWifiInfo(this.mWifiInfo);
        this.mWifiMetrics.handlePollResult(this.mWifiInfo);
        if (this.mWifiNetworkMonitor != null && oldRssi != this.mWifiInfo.getRssi()) {
            this.mWifiNetworkMonitor.updateRssi(newRssi);
        }
        if (this.mWifiRssiLinkSpeedAndFrequencyMonitor != null) {
            if (oldRssi != this.mWifiInfo.getRssi() || oldTxLinkSpeed != this.mWifiInfo.getTxLinkSpeedMbps() || oldRxLinkSpeed != this.mWifiInfo.getRxLinkSpeedMbps() || oldNoise != this.mWifiInfo.getNoise() || oldFrequency != this.mWifiInfo.getFrequency()) {
                this.mWifiRssiLinkSpeedAndFrequencyMonitor.notifyWifiRssiLinkSpeedAndFrequencyChange(this.mWifiInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanWifiScore() {
        ExtendedWifiInfo extendedWifiInfo = this.mWifiInfo;
        extendedWifiInfo.txBadRate = 0.0d;
        extendedWifiInfo.txSuccessRate = 0.0d;
        extendedWifiInfo.txRetriesRate = 0.0d;
        extendedWifiInfo.rxSuccessRate = 0.0d;
        this.mWifiScoreReport.reset();
        this.mLastLinkLayerStats = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLinkProperties(LinkProperties newLp) {
        if (this.mVerboseLoggingEnabled) {
            log("Link configuration changed for netId: " + this.mLastNetworkId + " old: " + this.mLinkProperties + " new: " + newLp);
        }
        this.mLinkProperties = newLp;
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent != null) {
            wifiNetworkAgent.sendLinkProperties(this.mLinkProperties);
        }
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            wifiNetworkMonitor.updateLinkProperties(this.mLinkProperties);
        }
        if (getNetworkDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
            sendLinkConfigurationChangedBroadcast();
        }
        if (this.mVerboseLoggingEnabled) {
            StringBuilder sb = new StringBuilder();
            sb.append("updateLinkProperties nid: " + this.mLastNetworkId);
            sb.append(" state: " + getNetworkDetailedState());
            if (this.mLinkProperties != null) {
                sb.append(" ");
                sb.append(getLinkPropertiesSummary(this.mLinkProperties));
            }
            logd(sb.toString());
        }
    }

    private void clearLinkProperties() {
        synchronized (this.mDhcpResultsLock) {
            if (this.mDhcpResults != null) {
                this.mDhcpResults.clear();
            }
        }
        this.mLinkProperties.clear();
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent != null) {
            wifiNetworkAgent.sendLinkProperties(this.mLinkProperties);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRssiChangeBroadcast(int newRssi) {
        try {
            this.mBatteryStats.noteWifiRssiChanged(newRssi);
        } catch (RemoteException e) {
        }
        StatsLog.write(38, WifiManager.calculateSignalLevel(newRssi, 5));
        Intent intent = new Intent("android.net.wifi.RSSI_CHANGED");
        intent.addFlags(67108864);
        intent.putExtra("newRssi", newRssi);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.ACCESS_WIFI_STATE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNetworkStateChangeBroadcast(String bssid) {
        Intent intent = new Intent("android.net.wifi.STATE_CHANGE");
        intent.addFlags(67108864);
        NetworkInfo networkInfo = new NetworkInfo(this.mNetworkInfo);
        networkInfo.setExtraInfo(null);
        intent.putExtra("networkInfo", networkInfo);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void sendLinkConfigurationChangedBroadcast() {
        Intent intent = new Intent("android.net.wifi.LINK_CONFIGURATION_CHANGED");
        intent.addFlags(67108864);
        intent.putExtra("linkProperties", new LinkProperties(this.mLinkProperties));
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void sendSupplicantConnectionChangedBroadcast(boolean connected) {
        Intent intent = new Intent("android.net.wifi.supplicant.CONNECTION_CHANGE");
        intent.addFlags(67108864);
        intent.putExtra("connected", connected);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setNetworkDetailedState(NetworkInfo.DetailedState state) {
        boolean hidden = false;
        if (this.mIsAutoRoaming) {
            hidden = true;
        }
        if (this.mVerboseLoggingEnabled) {
            log("setDetailed state, old =" + this.mNetworkInfo.getDetailedState() + " and new state=" + state + " hidden=" + hidden);
        }
        if (hidden || state == this.mNetworkInfo.getDetailedState()) {
            return false;
        }
        this.mNetworkInfo.setDetailedState(state, null, null);
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent != null) {
            wifiNetworkAgent.sendNetworkInfo(this.mNetworkInfo);
        }
        sendNetworkStateChangeBroadcast(null);
        return true;
    }

    private NetworkInfo.DetailedState getNetworkDetailedState() {
        return this.mNetworkInfo.getDetailedState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SupplicantState handleSupplicantStateChange(Message message) {
        ScanDetail scanDetail;
        StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
        SupplicantState state = stateChangeResult.state;
        this.mWifiScoreCard.noteSupplicantStateChanging(this.mWifiInfo, state);
        this.mWifiInfo.setSupplicantState(state);
        if (SupplicantState.isConnecting(state)) {
            this.mWifiInfo.setNetworkId(stateChangeResult.networkId);
            this.mWifiInfo.setBSSID(stateChangeResult.BSSID);
            this.mWifiInfo.setSSID(stateChangeResult.wifiSsid);
        } else {
            this.mWifiInfo.setNetworkId(-1);
            this.mWifiInfo.setBSSID(null);
            this.mWifiInfo.setSSID(null);
        }
        updateL2KeyAndGroupHint();
        updateCapabilities();
        WifiConfiguration config = getCurrentWifiConfiguration();
        if (config != null) {
            this.mWifiInfo.setEphemeral(config.ephemeral);
            this.mWifiInfo.setTrusted(config.trusted);
            this.mWifiInfo.setOsuAp(config.osu);
            if (config.fromWifiNetworkSpecifier || config.fromWifiNetworkSuggestion) {
                this.mWifiInfo.setNetworkSuggestionOrSpecifierPackageName(config.creatorName);
            }
            ScanDetailCache scanDetailCache = this.mWifiConfigManager.getScanDetailCacheForNetwork(config.networkId);
            if (scanDetailCache != null && (scanDetail = scanDetailCache.getScanDetail(stateChangeResult.BSSID)) != null) {
                this.mWifiInfo.setFrequency(scanDetail.getScanResult().frequency);
                NetworkDetail networkDetail = scanDetail.getNetworkDetail();
                if (networkDetail != null && networkDetail.getAnt() == NetworkDetail.Ant.ChargeablePublic) {
                    this.mWifiInfo.setMeteredHint(true);
                }
            }
        }
        this.mSupplicantStateTracker.sendMessage(Message.obtain(message));
        this.mWifiScoreCard.noteSupplicantStateChanged(this.mWifiInfo);
        return state;
    }

    private void updateL2KeyAndGroupHint() {
        if (this.mIpClient != null) {
            Pair<String, String> p = this.mWifiScoreCard.getL2KeyAndGroupHint(this.mWifiInfo);
            if (!p.equals(this.mLastL2KeyAndGroupHint)) {
                if (this.mIpClient.setL2KeyAndGroupHint((String) p.first, (String) p.second)) {
                    this.mLastL2KeyAndGroupHint = p;
                } else {
                    this.mLastL2KeyAndGroupHint = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkDisconnect() {
        if (this.mVerboseLoggingEnabled) {
            log("handleNetworkDisconnect: Stopping DHCP and clearing IP stack:" + Thread.currentThread().getStackTrace()[2].getMethodName() + " - " + Thread.currentThread().getStackTrace()[3].getMethodName() + " - " + Thread.currentThread().getStackTrace()[4].getMethodName() + " - " + Thread.currentThread().getStackTrace()[5].getMethodName());
        }
        WifiConfiguration wifiConfig = getCurrentWifiConfiguration();
        if (wifiConfig != null) {
            ScanResultMatchInfo matchInfo = ScanResultMatchInfo.fromWifiConfiguration(wifiConfig);
            this.mWifiInjector.getWakeupController().setLastDisconnectInfo(matchInfo);
            this.mWifiNetworkSuggestionsManager.handleDisconnect(wifiConfig, getCurrentBSSID());
        }
        stopRssiMonitoringOffload();
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            wifiNetworkMonitor.updateNetworkState(this.mWifiInfo, NetworkInfo.DetailedState.DISCONNECTED, this.mWifiState.get());
        }
        clearTargetBssid("handleNetworkDisconnect");
        stopIpClient();
        this.mWifiScoreReport.reset();
        this.mWifiInfo.reset();
        this.mIsAutoRoaming = false;
        setNetworkDetailedState(NetworkInfo.DetailedState.DISCONNECTED);
        synchronized (this.mNetworkAgentLock) {
            if (this.mNetworkAgent != null) {
                this.mNetworkAgent.sendNetworkInfo(this.mNetworkInfo);
                this.mNetworkAgent = null;
            }
        }
        clearLinkProperties();
        sendNetworkStateChangeBroadcast(this.mLastBssid);
        this.mLastBssid = null;
        this.mLastLinkLayerStats = null;
        registerDisconnected();
        this.mLastNetworkId = -1;
        this.mWifiScoreCard.resetConnectionState();
        updateL2KeyAndGroupHint();
    }

    void handlePreDhcpSetup() {
        if (!this.mBluetoothConnectionActive) {
            this.mWifiNative.setBluetoothCoexistenceMode(this.mInterfaceName, 1);
        }
        setSuspendOptimizationsNative(1, false);
        setPowerSave(false);
        getWifiLinkLayerStats();
        if (this.mWifiP2pChannel != null) {
            Message msg = new Message();
            msg.what = WifiP2pServiceImpl.BLOCK_DISCOVERY;
            msg.arg1 = 1;
            msg.arg2 = CMD_PRE_DHCP_ACTION_COMPLETE;
            msg.obj = this;
            this.mWifiP2pChannel.sendMessage(msg);
            return;
        }
        sendMessage(CMD_PRE_DHCP_ACTION_COMPLETE);
    }

    void handlePostDhcpSetup() {
        setSuspendOptimizationsNative(1, true);
        setPowerSave(true);
        p2pSendMessage(WifiP2pServiceImpl.BLOCK_DISCOVERY, 0);
        this.mWifiNative.setBluetoothCoexistenceMode(this.mInterfaceName, 2);
    }

    public boolean setPowerSave(boolean ps) {
        if (this.mInterfaceName != null) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "Setting power save for: " + this.mInterfaceName + " to: " + ps);
            }
            this.mWifiNative.setPowerSave(this.mInterfaceName, ps);
            return true;
        }
        Log.e(TAG, "Failed to setPowerSave, interfaceName is null");
        return false;
    }

    public boolean setLowLatencyMode(boolean enabled) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "Setting low latency mode to " + enabled);
        }
        if (!this.mWifiNative.setLowLatencyMode(enabled)) {
            Log.e(TAG, "Failed to setLowLatencyMode");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportConnectionAttemptStart(WifiConfiguration config, String targetBSSID, int roamType) {
        this.mWifiMetrics.startConnectionEvent(config, targetBSSID, roamType);
        this.mWifiDiagnostics.reportConnectionEvent((byte) 0);
        this.mWrongPasswordNotifier.onNewConnectionAttempt();
        removeMessages(CMD_DIAGS_CONNECT_TIMEOUT);
        sendMessageDelayed(CMD_DIAGS_CONNECT_TIMEOUT, 60000L);
    }

    private void handleConnectionAttemptEndForDiagnostics(int level2FailureCode) {
        if (level2FailureCode != 1 && level2FailureCode != 5) {
            removeMessages(CMD_DIAGS_CONNECT_TIMEOUT);
            this.mWifiDiagnostics.reportConnectionEvent((byte) 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportConnectionAttemptEnd(int level2FailureCode, int connectivityFailureCode, int level2FailureReason) {
        if (level2FailureCode != 1) {
            this.mWifiScoreCard.noteConnectionFailure(this.mWifiInfo, level2FailureCode, connectivityFailureCode);
        }
        WifiConfiguration configuration = getCurrentWifiConfiguration();
        if (configuration == null) {
            configuration = getTargetWifiConfiguration();
        }
        this.mWifiMetrics.endConnectionEvent(level2FailureCode, connectivityFailureCode, level2FailureReason);
        this.mWifiConnectivityManager.handleConnectionAttemptEnded(level2FailureCode);
        if (configuration != null) {
            this.mNetworkFactory.handleConnectionAttemptEnded(level2FailureCode, configuration);
            this.mWifiNetworkSuggestionsManager.handleConnectionAttemptEnded(level2FailureCode, configuration, getCurrentBSSID());
        }
        handleConnectionAttemptEndForDiagnostics(level2FailureCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIPv4Success(DhcpResults dhcpResults) {
        Inet4Address addr;
        if (this.mVerboseLoggingEnabled) {
            logd("handleIPv4Success <" + dhcpResults.toString() + ">");
            StringBuilder sb = new StringBuilder();
            sb.append("link address ");
            sb.append(dhcpResults.ipAddress);
            logd(sb.toString());
        }
        synchronized (this.mDhcpResultsLock) {
            this.mDhcpResults = dhcpResults;
            addr = (Inet4Address) dhcpResults.ipAddress.getAddress();
        }
        if (this.mIsAutoRoaming) {
            int previousAddress = this.mWifiInfo.getIpAddress();
            int newAddress = NetworkUtils.inetAddressToInt(addr);
            if (previousAddress != newAddress) {
                logd("handleIPv4Success, roaming and address changed" + this.mWifiInfo + " got: " + addr);
            }
        }
        this.mWifiInfo.setInetAddress(addr);
        WifiConfiguration config = getCurrentWifiConfiguration();
        if (config != null) {
            this.mWifiInfo.setEphemeral(config.ephemeral);
            this.mWifiInfo.setTrusted(config.trusted);
        }
        if (dhcpResults.hasMeteredHint()) {
            this.mWifiInfo.setMeteredHint(true);
        }
        updateCapabilities(config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccessfulIpConfiguration() {
        this.mLastSignalLevel = -1;
        WifiConfiguration c = getCurrentWifiConfiguration();
        if (c != null) {
            c.getNetworkSelectionStatus().clearDisableReasonCounter(4);
            updateCapabilities(c);
        }
        this.mWifiScoreCard.noteIpConfiguration(this.mWifiInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIPv4Failure() {
        this.mWifiDiagnostics.captureBugReportData(4);
        if (this.mVerboseLoggingEnabled) {
            int count = -1;
            WifiConfiguration config = getCurrentWifiConfiguration();
            if (config != null) {
                count = config.getNetworkSelectionStatus().getDisableReasonCounter(4);
            }
            log("DHCP failure count=" + count);
        }
        reportConnectionAttemptEnd(10, 2, 0);
        synchronized (this.mDhcpResultsLock) {
            if (this.mDhcpResults != null) {
                this.mDhcpResults.clear();
            }
        }
        if (this.mVerboseLoggingEnabled) {
            logd("handleIPv4Failure");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIpConfigurationLost() {
        this.mWifiInfo.setInetAddress(null);
        this.mWifiInfo.setMeteredHint(false);
        this.mWifiConfigManager.updateNetworkSelectionStatus(this.mLastNetworkId, 4);
        this.mWifiNative.disconnect(this.mInterfaceName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIpReachabilityLost() {
        this.mWifiScoreCard.noteIpReachabilityLost(this.mWifiInfo);
        this.mWifiInfo.setInetAddress(null);
        this.mWifiInfo.setMeteredHint(false);
        this.mWifiNative.disconnect(this.mInterfaceName);
    }

    private String macAddressFromRoute(String ipAddress) {
        String macAddress = null;
        BufferedReader reader = null;
        try {
            try {
                try {
                    reader = new BufferedReader(new FileReader("/proc/net/arp"));
                    reader.readLine();
                    while (true) {
                        String line = reader.readLine();
                        if (line == null) {
                            break;
                        }
                        String[] tokens = line.split("[ ]+");
                        if (tokens.length >= 6) {
                            String ip = tokens[0];
                            String mac = tokens[3];
                            if (ipAddress.equals(ip)) {
                                macAddress = mac;
                                break;
                            }
                        }
                    }
                    if (macAddress == null) {
                        loge("Did not find remoteAddress {" + ipAddress + "} in /proc/net/arp");
                    }
                    reader.close();
                } catch (Throwable th) {
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                loge("Could not open /proc/net/arp to lookup mac address");
                if (reader != null) {
                    reader.close();
                }
                return macAddress;
            } catch (IOException e3) {
                loge("Could not read /proc/net/arp to lookup mac address");
                if (reader != null) {
                    reader.close();
                }
                return macAddress;
            }
        } catch (IOException e4) {
        }
        return macAddress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPermanentWrongPasswordFailure(int networkId, int reasonCode) {
        if (reasonCode != 2) {
            return false;
        }
        return true;
    }

    void registerNetworkFactory() {
        if (checkAndSetConnectivityInstance()) {
            this.mNetworkFactory.register();
            this.mUntrustedNetworkFactory.register();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAdditionalWifiServiceInterfaces() {
        if (this.mP2pSupported) {
            IBinder s1 = this.mFacade.getService("wifip2p");
            WifiP2pServiceImpl wifiP2pServiceImpl = IWifiP2pManager.Stub.asInterface(s1);
            if (wifiP2pServiceImpl != null) {
                this.mWifiP2pChannel = new AsyncChannel();
                this.mWifiP2pChannel.connect(this.mContext, getHandler(), wifiP2pServiceImpl.getP2pStateMachineMessenger());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureRandomizedMacAddress(WifiConfiguration config) {
        String str;
        if (config == null) {
            Log.e(TAG, "No config to change MAC address to");
            return;
        }
        String macAddr = null;
        WifiNative wifiNative = this.mWifiNative;
        if (wifiNative != null && (str = this.mInterfaceName) != null) {
            macAddr = wifiNative.getMacAddress(str);
        }
        MacAddress currentMac = null;
        if (macAddr != null) {
            currentMac = MacAddress.fromString(macAddr);
        }
        MacAddress newMac = config.getOrCreateRandomizedMacAddress();
        this.mWifiConfigManager.setNetworkRandomizedMacAddress(config.networkId, newMac);
        if (!WifiConfiguration.isValidMacAddressForRandomization(newMac)) {
            Log.wtf(TAG, "Config generated an invalid MAC address");
            return;
        }
        if (currentMac != null && currentMac.equals(newMac)) {
            Log.d(TAG, "No changes in MAC address");
            return;
        }
        this.mWifiMetrics.logStaEvent(17, config);
        boolean setMacSuccess = this.mWifiNative.setMacAddress(this.mInterfaceName, newMac);
        StringBuilder sb = new StringBuilder();
        sb.append("ConnectedMacRandomization SSID(");
        sb.append(config.getPrintableSsid());
        sb.append("). setMacAddress(");
        sb.append(newMac.toString());
        sb.append(") from ");
        sb.append(currentMac == null ? "" : currentMac.toString());
        sb.append(" = ");
        sb.append(setMacSuccess);
        Log.d(TAG, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentMacToFactoryMac(WifiConfiguration config) {
        MacAddress factoryMac = this.mWifiNative.getFactoryMacAddress(this.mInterfaceName);
        if (factoryMac == null) {
            Log.e(TAG, "Fail to set factory MAC address. Factory MAC is null.");
            return;
        }
        String currentMacStr = this.mWifiNative.getMacAddress(this.mInterfaceName);
        if (!TextUtils.equals(currentMacStr, factoryMac.toString())) {
            if (this.mWifiNative.setMacAddress(this.mInterfaceName, factoryMac)) {
                this.mWifiMetrics.logStaEvent(17, config);
                return;
            }
            Log.e(TAG, "Failed to set MAC address to '" + factoryMac.toString() + "'");
        }
    }

    public boolean isConnectedMacRandomizationEnabled() {
        return this.mConnectedMacRandomzationSupported;
    }

    public void failureDetected(int reason) {
        this.mWifiInjector.getSelfRecovery().trigger(2);
    }

    class DefaultState extends State {
        DefaultState() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean processMessage(Message message) {
            switch (message.what) {
                case 0:
                    Log.wtf(ClientModeImpl.TAG, "Error! empty message encountered");
                    break;
                case 69632:
                    AsyncChannel ac = (AsyncChannel) message.obj;
                    if (ac == ClientModeImpl.this.mWifiP2pChannel) {
                        if (message.arg1 == 0) {
                            ClientModeImpl.this.p2pSendMessage(69633);
                        } else {
                            ClientModeImpl.this.loge("WifiP2pService connection failure, error=" + message.arg1);
                        }
                    } else {
                        ClientModeImpl.this.loge("got HALF_CONNECTED for unknown channel");
                    }
                    break;
                case 69636:
                    AsyncChannel ac2 = (AsyncChannel) message.obj;
                    if (ac2 == ClientModeImpl.this.mWifiP2pChannel) {
                        ClientModeImpl.this.loge("WifiP2pService channel lost, message.arg1 =" + message.arg1);
                    }
                    break;
                case ClientModeImpl.CMD_BLUETOOTH_ADAPTER_STATE_CHANGE /* 131103 */:
                    ClientModeImpl.this.mBluetoothConnectionActive = message.arg1 != 0;
                    break;
                case ClientModeImpl.CMD_ADD_OR_UPDATE_NETWORK /* 131124 */:
                    WifiConfiguration config = (WifiConfiguration) message.obj;
                    NetworkUpdateResult result = ClientModeImpl.this.mWifiConfigManager.addOrUpdateNetwork(config, message.sendingUid);
                    if (!result.isSuccess()) {
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                    }
                    ClientModeImpl.this.replyToMessage(message, message.what, result.getNetworkId());
                    break;
                case ClientModeImpl.CMD_REMOVE_NETWORK /* 131125 */:
                    ClientModeImpl.this.deleteNetworkConfigAndSendReply(message, false);
                    break;
                case ClientModeImpl.CMD_ENABLE_NETWORK /* 131126 */:
                    boolean disableOthers = message.arg2 == 1;
                    int netId = message.arg1;
                    boolean ok = ClientModeImpl.this.mWifiConfigManager.enableNetwork(netId, disableOthers, message.sendingUid);
                    if (!ok) {
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                    }
                    ClientModeImpl.this.replyToMessage(message, message.what, ok ? 1 : -1);
                    break;
                case ClientModeImpl.CMD_GET_CONFIGURED_NETWORKS /* 131131 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mWifiConfigManager.getSavedNetworks(message.arg2));
                    break;
                case ClientModeImpl.CMD_GET_SUPPORTED_FEATURES /* 131133 */:
                    long featureSet = ClientModeImpl.this.mWifiNative.getSupportedFeatureSet(ClientModeImpl.this.mInterfaceName);
                    ClientModeImpl.this.replyToMessage(message, message.what, Long.valueOf(featureSet));
                    break;
                case ClientModeImpl.CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS /* 131134 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mWifiConfigManager.getConfiguredNetworksWithPasswords());
                    break;
                case ClientModeImpl.CMD_GET_LINK_LAYER_STATS /* 131135 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, (Object) null);
                    break;
                case ClientModeImpl.CMD_SET_OPERATIONAL_MODE /* 131144 */:
                    break;
                case ClientModeImpl.CMD_DISCONNECT /* 131145 */:
                case ClientModeImpl.CMD_RECONNECT /* 131146 */:
                case ClientModeImpl.CMD_REASSOCIATE /* 131147 */:
                case ClientModeImpl.CMD_RSSI_POLL /* 131155 */:
                case ClientModeImpl.CMD_ONESHOT_RSSI_POLL /* 131156 */:
                case ClientModeImpl.CMD_ROAM_WATCHDOG_TIMER /* 131166 */:
                case ClientModeImpl.CMD_DISCONNECTING_WATCHDOG_TIMER /* 131168 */:
                case ClientModeImpl.CMD_DISABLE_EPHEMERAL_NETWORK /* 131170 */:
                case ClientModeImpl.CMD_TARGET_BSSID /* 131213 */:
                case ClientModeImpl.CMD_START_CONNECT /* 131215 */:
                case ClientModeImpl.CMD_UNWANTED_NETWORK /* 131216 */:
                case ClientModeImpl.CMD_START_ROAM /* 131217 */:
                case ClientModeImpl.CMD_ASSOCIATED_BSSID /* 131219 */:
                case ClientModeImpl.CMD_PRE_DHCP_ACTION /* 131327 */:
                case ClientModeImpl.CMD_PRE_DHCP_ACTION_COMPLETE /* 131328 */:
                case ClientModeImpl.CMD_POST_DHCP_ACTION /* 131329 */:
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                case WifiMonitor.SUP_REQUEST_IDENTITY /* 147471 */:
                case WifiMonitor.SUP_REQUEST_SIM_AUTH /* 147472 */:
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case ClientModeImpl.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.setSuspendOptimizations(2, false);
                    } else {
                        ClientModeImpl.this.setSuspendOptimizations(2, true);
                    }
                    break;
                case ClientModeImpl.CMD_ENABLE_RSSI_POLL /* 131154 */:
                    ClientModeImpl.this.mEnableRssiPolling = message.arg1 == 1;
                    break;
                case ClientModeImpl.CMD_SET_SUSPEND_OPT_ENABLED /* 131158 */:
                    if (message.arg1 != 1) {
                        ClientModeImpl.this.setSuspendOptimizations(4, false);
                    } else {
                        if (message.arg2 == 1) {
                            ClientModeImpl.this.mSuspendWakeLock.release();
                        }
                        ClientModeImpl.this.setSuspendOptimizations(4, true);
                    }
                    break;
                case ClientModeImpl.CMD_SCREEN_STATE_CHANGED /* 131167 */:
                    ClientModeImpl.this.handleScreenStateChanged(message.arg1 != 0);
                    break;
                case ClientModeImpl.CMD_REMOVE_APP_CONFIGURATIONS /* 131169 */:
                    ClientModeImpl.this.deferMessage(message);
                    break;
                case ClientModeImpl.CMD_RESET_SIM_NETWORKS /* 131173 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DEFERRED;
                    ClientModeImpl.this.deferMessage(message);
                    break;
                case ClientModeImpl.CMD_QUERY_OSU_ICON /* 131176 */:
                case ClientModeImpl.CMD_MATCH_PROVIDER_NETWORK /* 131177 */:
                    ClientModeImpl.this.replyToMessage(message, message.what);
                    break;
                case ClientModeImpl.CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG /* 131178 */:
                    Bundle bundle = (Bundle) message.obj;
                    int addResult = ClientModeImpl.this.mPasspointManager.addOrUpdateProvider((PasspointConfiguration) bundle.getParcelable(ClientModeImpl.EXTRA_PASSPOINT_CONFIGURATION), bundle.getInt(ClientModeImpl.EXTRA_UID), bundle.getString(ClientModeImpl.EXTRA_PACKAGE_NAME)) ? 1 : -1;
                    ClientModeImpl.this.replyToMessage(message, message.what, addResult);
                    break;
                case ClientModeImpl.CMD_REMOVE_PASSPOINT_CONFIG /* 131179 */:
                    int removeResult = ClientModeImpl.this.mPasspointManager.removeProvider(message.sendingUid, (String) message.obj) ? 1 : -1;
                    ClientModeImpl.this.replyToMessage(message, message.what, removeResult);
                    break;
                case ClientModeImpl.CMD_GET_PASSPOINT_CONFIGS /* 131180 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.getProviderConfigs());
                    break;
                case ClientModeImpl.CMD_GET_MATCHING_OSU_PROVIDERS /* 131181 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, new HashMap());
                    break;
                case ClientModeImpl.CMD_GET_MATCHING_PASSPOINT_CONFIGS_FOR_OSU_PROVIDERS /* 131182 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, new HashMap());
                    break;
                case ClientModeImpl.CMD_GET_WIFI_CONFIGS_FOR_PASSPOINT_PROFILES /* 131184 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, new ArrayList());
                    break;
                case ClientModeImpl.CMD_DATE_CHANGED /* 131185 */:
                case ClientModeImpl.CMD_WIFI_STATE_ENABLED /* 131186 */:
                    WifiConfiguration wifiConfiguration = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetwork(ClientModeImpl.this.mDisabledNetworkId);
                    if (wifiConfiguration != null && wifiConfiguration.enterpriseConfig.getMaxConnectTIme() > 0) {
                        ClientModeImpl.this.mWifiConfigManager.enableNetwork(ClientModeImpl.this.mDisabledNetworkId, false, 1010);
                    }
                    break;
                case ClientModeImpl.CMD_BOOT_COMPLETED /* 131206 */:
                    ClientModeImpl.this.mBootCompleted = true;
                    ClientModeImpl.this.getAdditionalWifiServiceInterfaces();
                    new MemoryStoreImpl(ClientModeImpl.this.mContext, ClientModeImpl.this.mWifiInjector, ClientModeImpl.this.mWifiScoreCard).start();
                    if (!ClientModeImpl.this.mWifiConfigManager.loadFromStore()) {
                        Log.e(ClientModeImpl.TAG, "Failed to load from config store");
                    }
                    if (ClientModeImpl.this.mWifiFeaturesUtils.isPresetWifiEapNetwork()) {
                        ClientModeImpl.this.mWifiInjector.getCarrierNetworkConfig().presetWifiEapNetwork(ClientModeImpl.this.mWifiFeaturesUtils.getPresetWifiEapNetworkConfig(), ClientModeImpl.this.mWifiConfigManager, ClientModeImpl.this.getTelephonyManager());
                    }
                    ClientModeImpl.this.registerNetworkFactory();
                    break;
                case ClientModeImpl.CMD_INITIALIZE /* 131207 */:
                    boolean ok2 = ClientModeImpl.this.mWifiNative.initialize();
                    ClientModeImpl.this.mPasspointManager.initializeProvisioner(ClientModeImpl.this.mWifiInjector.getWifiServiceHandlerThread().getLooper());
                    ClientModeImpl.this.replyToMessage(message, message.what, ok2 ? 1 : -1);
                    break;
                case ClientModeImpl.CMD_IP_CONFIGURATION_SUCCESSFUL /* 131210 */:
                case ClientModeImpl.CMD_IP_CONFIGURATION_LOST /* 131211 */:
                case ClientModeImpl.CMD_IP_REACHABILITY_LOST /* 131221 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case ClientModeImpl.CMD_UPDATE_LINKPROPERTIES /* 131212 */:
                    ClientModeImpl.this.updateLinkProperties((LinkProperties) message.obj);
                    break;
                case ClientModeImpl.CMD_REMOVE_USER_CONFIGURATIONS /* 131224 */:
                    ClientModeImpl.this.deferMessage(message);
                    break;
                case ClientModeImpl.CMD_START_IP_PACKET_OFFLOAD /* 131232 */:
                case ClientModeImpl.CMD_STOP_IP_PACKET_OFFLOAD /* 131233 */:
                case ClientModeImpl.CMD_ADD_KEEPALIVE_PACKET_FILTER_TO_APF /* 131281 */:
                case ClientModeImpl.CMD_REMOVE_KEEPALIVE_PACKET_FILTER_FROM_APF /* 131282 */:
                    if (ClientModeImpl.this.mNetworkAgent != null) {
                        ClientModeImpl.this.mNetworkAgent.onSocketKeepaliveEvent(message.arg1, -20);
                    }
                    break;
                case ClientModeImpl.CMD_START_RSSI_MONITORING_OFFLOAD /* 131234 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case ClientModeImpl.CMD_STOP_RSSI_MONITORING_OFFLOAD /* 131235 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case ClientModeImpl.CMD_GET_ALL_MATCHING_FQDNS_FOR_SCAN_RESULTS /* 131240 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, new HashMap());
                    break;
                case ClientModeImpl.CMD_GET_CURRENT_RSSI /* 131251 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, WifiMetrics.MIN_RSSI_DELTA);
                    break;
                case ClientModeImpl.CMD_INSTALL_PACKET_FILTER /* 131274 */:
                    ClientModeImpl.this.mWifiNative.installPacketFilter(ClientModeImpl.this.mInterfaceName, (byte[]) message.obj);
                    break;
                case ClientModeImpl.CMD_SET_FALLBACK_PACKET_FILTERING /* 131275 */:
                    if (((Boolean) message.obj).booleanValue()) {
                        ClientModeImpl.this.mWifiNative.startFilteringMulticastV4Packets(ClientModeImpl.this.mInterfaceName);
                    } else {
                        ClientModeImpl.this.mWifiNative.stopFilteringMulticastV4Packets(ClientModeImpl.this.mInterfaceName);
                    }
                    break;
                case ClientModeImpl.CMD_USER_SWITCH /* 131277 */:
                    Set<Integer> removedNetworkIds = ClientModeImpl.this.mWifiConfigManager.handleUserSwitch(message.arg1);
                    if (removedNetworkIds.contains(Integer.valueOf(ClientModeImpl.this.mTargetNetworkId)) || removedNetworkIds.contains(Integer.valueOf(ClientModeImpl.this.mLastNetworkId))) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case ClientModeImpl.CMD_USER_UNLOCK /* 131278 */:
                    ClientModeImpl.this.mWifiConfigManager.handleUserUnlock(message.arg1);
                    break;
                case ClientModeImpl.CMD_USER_STOP /* 131279 */:
                    ClientModeImpl.this.mWifiConfigManager.handleUserStop(message.arg1);
                    break;
                case ClientModeImpl.CMD_READ_PACKET_FILTER /* 131280 */:
                    byte[] data = ClientModeImpl.this.mWifiNative.readPacketFilter(ClientModeImpl.this.mInterfaceName);
                    if (ClientModeImpl.this.mIpClient != null) {
                        ClientModeImpl.this.mIpClient.readPacketFilterComplete(data);
                    }
                    break;
                case ClientModeImpl.CMD_DIAGS_CONNECT_TIMEOUT /* 131324 */:
                    ClientModeImpl.this.mWifiDiagnostics.reportConnectionEvent((byte) 3);
                    break;
                case ClientModeImpl.CMD_START_SUBSCRIPTION_PROVISIONING /* 131326 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, 0);
                    break;
                case WifiP2pServiceImpl.P2P_CONNECTION_CHANGED /* 143371 */:
                    NetworkInfo info = (NetworkInfo) message.obj;
                    ClientModeImpl.this.mP2pConnected.set(info.isConnected());
                    break;
                case WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST /* 143372 */:
                    ClientModeImpl.this.mTemporarilyDisconnectWifi = message.arg1 == 1;
                    ClientModeImpl.this.replyToMessage(message, WifiP2pServiceImpl.DISCONNECT_WIFI_RESPONSE);
                    break;
                case WifiMonitor.WAPI_AUTHENTICATION_FAILURE_EVENT /* 147523 */:
                case WifiMonitor.WAPI_CERTIFICATION_FAILURE_EVENT /* 147524 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case WifiMonitor.WAPI_CERTIFICATION_LOST_EVENT /* 147525 */:
                    Log.e(ClientModeImpl.TAG, "Handling WAPI_EVENT, msg [" + message.what + "]");
                    Intent intent = new Intent("android.net.wifi.supplicant.WAPI_EVENT");
                    intent.addFlags(67108864);
                    intent.putExtra("wapi_string", 18);
                    ClientModeImpl.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                    break;
                case 151553:
                    ClientModeImpl.this.replyToMessage(message, 151554, 2);
                    break;
                case 151556:
                    ClientModeImpl.this.deleteNetworkConfigAndSendReply(message, true);
                    break;
                case 151559:
                    ClientModeImpl.this.saveNetworkConfigAndSendReply(message);
                    break;
                case 151569:
                    ClientModeImpl.this.replyToMessage(message, 151570, 2);
                    break;
                case 151572:
                    ClientModeImpl.this.replyToMessage(message, 151574, 2);
                    break;
                case 151575:
                    WpsInfo wpsInfo = (WpsInfo) message.obj;
                    WpsResult wpsResult = null;
                    ClientModeImpl.this.mWifiNative.softApCancelWps();
                    int i = wpsInfo.setup;
                    if (i == 0) {
                        wpsResult = ClientModeImpl.this.softApStartWpsPbc(wpsInfo);
                    } else if (i == 2) {
                        wpsResult = ClientModeImpl.this.softApStartWpsPinKeypad(wpsInfo);
                    } else {
                        ClientModeImpl.this.loge("Invalid setup for WPS");
                    }
                    if (wpsResult != null) {
                        if (wpsResult.status == WpsResult.Status.SUCCESS) {
                            ClientModeImpl.this.replyToMessage(message, 151563, (Object) null);
                        } else {
                            ClientModeImpl.this.loge("Failed to start WPS with config " + wpsInfo.toString());
                            ClientModeImpl.this.replyToMessage(message, 151564, 0);
                        }
                        Log.wtf(ClientModeImpl.TAG, "Error! empty message encountered");
                    }
                    break;
                case 151577:
                    String wpsPin = (String) message.obj;
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mWifiNative.softApCheckWpsPin(wpsPin) ? 1 : -1);
                    break;
                default:
                    ClientModeImpl.this.loge("Error! unhandled message" + message);
                    break;
            }
            if (1 == 1) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupClientMode() {
        boolean z;
        Log.d(TAG, "setupClientMode() ifacename = " + this.mInterfaceName);
        setHighPerfModeEnabled(false);
        this.mWifiStateTracker.updateState(0);
        this.mIpClientCallbacks = new IpClientCallbacksImpl();
        this.mFacade.makeIpClient(this.mContext, this.mInterfaceName, this.mIpClientCallbacks);
        if (!this.mIpClientCallbacks.awaitCreation()) {
            loge("Timeout waiting for IpClient");
        }
        setMulticastFilter(true);
        registerForWifiMonitorEvents();
        this.mWifiInjector.getWifiLastResortWatchdog().clearAllFailureCounts();
        setSupplicantLogLevel();
        this.mSupplicantStateTracker.sendMessage(CMD_RESET_SUPPLICANT_STATE);
        this.mLastUserConnectAttempt = 0L;
        this.mTargetNetworkId = -1;
        this.mLastBssid = null;
        this.mLastNetworkId = -1;
        this.mLastSignalLevel = -1;
        this.mWifiInfo.setMacAddress(this.mWifiNative.getMacAddress(this.mInterfaceName));
        sendSupplicantConnectionChangedBroadcast(true);
        this.mWifiNative.setExternalSim(this.mInterfaceName, true);
        setRandomMacOui();
        setCurrentCountryCode();
        this.mCountryCode.setReadyForChange(true);
        this.mWifiDiagnostics.startLogging(this.mVerboseLoggingEnabled);
        this.mIsRunning = true;
        updateBatteryWorkSource(null);
        this.mWifiNative.setBluetoothCoexistenceScanMode(this.mInterfaceName, this.mBluetoothConnectionActive);
        setNetworkDetailedState(NetworkInfo.DetailedState.DISCONNECTED);
        this.mWifiNative.stopFilteringMulticastV4Packets(this.mInterfaceName);
        this.mWifiNative.stopFilteringMulticastV6Packets(this.mInterfaceName);
        WifiNative wifiNative = this.mWifiNative;
        String str = this.mInterfaceName;
        if (this.mSuspendOptNeedsDisabled != 0 || !this.mUserWantsSuspendOpt.get()) {
            z = false;
        } else {
            z = true;
        }
        wifiNative.setSuspendOptimizations(str, z);
        setPowerSave(true);
        this.mWifiNative.enableStaAutoReconnect(this.mInterfaceName, false);
        this.mWifiNative.setConcurrencyPriority(true);
        if (WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_WIFI_AUTO_ROAM) {
            this.mWifiNative.startBgscan(this.mInterfaceName, this.mAutoRoamSwitchFlag.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopClientMode() {
        this.mWifiDiagnostics.stopLogging();
        this.mIsRunning = false;
        updateBatteryWorkSource(null);
        if (this.mIpClient != null && this.mIpClient.shutdown()) {
            this.mIpClientCallbacks.awaitShutdown();
        }
        this.mNetworkInfo.setIsAvailable(false);
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent != null) {
            wifiNetworkAgent.sendNetworkInfo(this.mNetworkInfo);
        }
        this.mCountryCode.setReadyForChange(false);
        this.mInterfaceName = null;
        sendSupplicantConnectionChangedBroadcast(false);
        this.mWifiConfigManager.removeAllEphemeralOrPasspointConfiguredNetworks();
    }

    void registerConnected() {
        int i = this.mLastNetworkId;
        if (i != -1) {
            this.mWifiConfigManager.updateNetworkAfterConnect(i);
            WifiConfiguration currentNetwork = getCurrentWifiConfiguration();
            if (currentNetwork != null && currentNetwork.isPasspoint()) {
                this.mPasspointManager.onPasspointNetworkConnected(currentNetwork.FQDN);
            }
        }
    }

    void registerDisconnected() {
        int i = this.mLastNetworkId;
        if (i != -1) {
            this.mWifiConfigManager.updateNetworkAfterDisconnect(i);
        }
    }

    public WifiConfiguration getCurrentWifiConfiguration() {
        int i = this.mLastNetworkId;
        if (i == -1) {
            return null;
        }
        return this.mWifiConfigManager.getConfiguredNetwork(i);
    }

    private WifiConfiguration getTargetWifiConfiguration() {
        int i = this.mTargetNetworkId;
        if (i == -1) {
            return null;
        }
        return this.mWifiConfigManager.getConfiguredNetwork(i);
    }

    ScanResult getCurrentScanResult() {
        WifiConfiguration config = getCurrentWifiConfiguration();
        if (config == null) {
            return null;
        }
        String bssid = this.mWifiInfo.getBSSID();
        if (bssid == null) {
            bssid = this.mTargetRoamBSSID;
        }
        ScanDetailCache scanDetailCache = this.mWifiConfigManager.getScanDetailCacheForNetwork(config.networkId);
        if (scanDetailCache == null) {
            return null;
        }
        return scanDetailCache.getScanResult(bssid);
    }

    String getCurrentBSSID() {
        return this.mLastBssid;
    }

    class ConnectModeState extends State {
        ConnectModeState() {
        }

        public void enter() {
            Log.d(ClientModeImpl.TAG, "entering ConnectModeState: ifaceName = " + ClientModeImpl.this.mInterfaceName);
            ClientModeImpl.this.mOperationalMode = 1;
            ClientModeImpl.this.setupClientMode();
            if (!ClientModeImpl.this.mWifiNative.removeAllNetworks(ClientModeImpl.this.mInterfaceName)) {
                ClientModeImpl.this.loge("Failed to remove networks on entering connect mode");
            }
            ClientModeImpl.this.mWifiInfo.reset();
            ClientModeImpl.this.mWifiInfo.setSupplicantState(SupplicantState.DISCONNECTED);
            ClientModeImpl.this.mWifiInjector.getWakeupController().reset();
            ClientModeImpl.this.mNetworkInfo.setIsAvailable(true);
            if (ClientModeImpl.this.mNetworkAgent != null) {
                ClientModeImpl.this.mNetworkAgent.sendNetworkInfo(ClientModeImpl.this.mNetworkInfo);
            }
            ClientModeImpl.this.setNetworkDetailedState(NetworkInfo.DetailedState.DISCONNECTED);
            ClientModeImpl.this.mWifiConnectivityManager.setWifiEnabled(true);
            ClientModeImpl.this.mNetworkFactory.setWifiState(true);
            ClientModeImpl.this.mWifiMetrics.setWifiState(2);
            ClientModeImpl.this.mWifiMetrics.logStaEvent(18);
            ClientModeImpl.this.mSarManager.setClientWifiState(3);
            ClientModeImpl.this.mWifiScoreCard.noteSupplicantStateChanged(ClientModeImpl.this.mWifiInfo);
        }

        public void exit() {
            ClientModeImpl.this.mOperationalMode = 4;
            ClientModeImpl.this.mNetworkInfo.setIsAvailable(false);
            if (ClientModeImpl.this.mNetworkAgent != null) {
                ClientModeImpl.this.mNetworkAgent.sendNetworkInfo(ClientModeImpl.this.mNetworkInfo);
            }
            ClientModeImpl.this.mWifiConnectivityManager.setWifiEnabled(false);
            ClientModeImpl.this.mNetworkFactory.setWifiState(false);
            ClientModeImpl.this.mWifiMetrics.setWifiState(1);
            ClientModeImpl.this.mWifiMetrics.logStaEvent(19);
            ClientModeImpl.this.mWifiScoreCard.noteWifiDisabled(ClientModeImpl.this.mWifiInfo);
            ClientModeImpl.this.mSarManager.setClientWifiState(1);
            if (!ClientModeImpl.this.mWifiNative.removeAllNetworks(ClientModeImpl.this.mInterfaceName)) {
                ClientModeImpl.this.loge("Failed to remove networks on exiting connect mode");
            }
            ClientModeImpl.this.mWifiInfo.reset();
            ClientModeImpl.this.mWifiInfo.setSupplicantState(SupplicantState.DISCONNECTED);
            ClientModeImpl.this.mWifiScoreCard.noteSupplicantStateChanged(ClientModeImpl.this.mWifiInfo);
            ClientModeImpl.this.stopClientMode();
        }

        /* JADX WARN: Code duplicated, block: B:256:0x0956  */
        /* JADX WARN: Code duplicated, block: B:258:0x09b2  */
        /* JADX WARN: Code duplicated, block: B:259:0x09bb  */
        /* JADX WARN: Code duplicated, block: B:264:0x09ef  */
        /* JADX WARN: Code duplicated, block: B:276:0x0a73  */
        /* JADX WARN: Code duplicated, block: B:278:0x0aa3  */
        /* JADX WARN: Code duplicated, block: B:279:0x0aae  */
        /* JADX WARN: Code duplicated, block: B:292:0x0b4e  */
        /* JADX WARN: Code duplicated, block: B:301:0x0bb9  */
        /* JADX WARN: Code duplicated, block: B:47:0x01a6  */
        /* JADX WARN: Code duplicated, block: B:48:0x01b2  */
        /* JADX WARN: Instruction removed from duplicated block: B:256:0x0956, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:279:0x0aae, please report this as an issue */
        /* JADX WARN: Multi-variable type inference failed */
        public boolean processMessage(Message message) {
            WifiConfiguration configuredNetworkWithoutMasking;
            ScanDetailCache scanDetailCacheForNetwork;
            ScanResult scanResult;
            int i;
            int i2;
            boolean z = true;
            switch (message.what) {
                case ClientModeImpl.CMD_BLUETOOTH_ADAPTER_STATE_CHANGE /* 131103 */:
                    ClientModeImpl.this.mBluetoothConnectionActive = message.arg1 != 0;
                    ClientModeImpl.this.mWifiNative.setBluetoothCoexistenceScanMode(ClientModeImpl.this.mInterfaceName, ClientModeImpl.this.mBluetoothConnectionActive);
                    break;
                case ClientModeImpl.CMD_REMOVE_NETWORK /* 131125 */:
                    if (!ClientModeImpl.this.deleteNetworkConfigAndSendReply(message, false)) {
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                    } else {
                        int i3 = message.arg1;
                        if (i3 == ClientModeImpl.this.mTargetNetworkId || i3 == ClientModeImpl.this.mLastNetworkId) {
                            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                        }
                    }
                    break;
                case ClientModeImpl.CMD_ENABLE_NETWORK /* 131126 */:
                    Object[] objArr = message.arg2 == 1;
                    int i4 = message.arg1;
                    boolean zConnectToUserSelectNetwork = objArr != false ? ClientModeImpl.this.connectToUserSelectNetwork(i4, message.sendingUid, false) : ClientModeImpl.this.mWifiConfigManager.enableNetwork(i4, false, message.sendingUid);
                    if (!zConnectToUserSelectNetwork) {
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                    }
                    ClientModeImpl.this.replyToMessage(message, message.what, zConnectToUserSelectNetwork ? 1 : -1);
                    break;
                case ClientModeImpl.CMD_GET_LINK_LAYER_STATS /* 131135 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.getWifiLinkLayerStats());
                    break;
                case ClientModeImpl.CMD_RECONNECT /* 131146 */:
                    ClientModeImpl.this.mWifiConnectivityManager.forceConnectivityScan((WorkSource) message.obj);
                    break;
                case ClientModeImpl.CMD_REASSOCIATE /* 131147 */:
                    ClientModeImpl clientModeImpl = ClientModeImpl.this;
                    clientModeImpl.mLastConnectAttemptTimestamp = clientModeImpl.mClock.getWallClockMillis();
                    ClientModeImpl.this.mWifiNative.reassociate(ClientModeImpl.this.mInterfaceName);
                    break;
                case ClientModeImpl.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.setSuspendOptimizationsNative(2, false);
                    } else {
                        ClientModeImpl.this.setSuspendOptimizationsNative(2, true);
                    }
                    break;
                case ClientModeImpl.CMD_SET_SUSPEND_OPT_ENABLED /* 131158 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.setSuspendOptimizationsNative(4, true);
                        if (message.arg2 == 1) {
                            ClientModeImpl.this.mSuspendWakeLock.release();
                        }
                    } else {
                        ClientModeImpl.this.setSuspendOptimizationsNative(4, false);
                    }
                    break;
                case ClientModeImpl.CMD_ENABLE_TDLS /* 131164 */:
                    if (message.obj != null) {
                        ClientModeImpl.this.mWifiNative.startTdls(ClientModeImpl.this.mInterfaceName, (String) message.obj, message.arg1 == 1);
                    }
                    break;
                case ClientModeImpl.CMD_REMOVE_APP_CONFIGURATIONS /* 131169 */:
                    Set<Integer> setRemoveNetworksForApp = ClientModeImpl.this.mWifiConfigManager.removeNetworksForApp((ApplicationInfo) message.obj);
                    if (setRemoveNetworksForApp.contains(Integer.valueOf(ClientModeImpl.this.mTargetNetworkId)) || setRemoveNetworksForApp.contains(Integer.valueOf(ClientModeImpl.this.mLastNetworkId))) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case ClientModeImpl.CMD_DISABLE_EPHEMERAL_NETWORK /* 131170 */:
                    WifiConfiguration wifiConfigurationDisableEphemeralNetwork = ClientModeImpl.this.mWifiConfigManager.disableEphemeralNetwork((String) message.obj);
                    if (wifiConfigurationDisableEphemeralNetwork != null && (wifiConfigurationDisableEphemeralNetwork.networkId == ClientModeImpl.this.mTargetNetworkId || wifiConfigurationDisableEphemeralNetwork.networkId == ClientModeImpl.this.mLastNetworkId)) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case ClientModeImpl.CMD_RESET_SIM_NETWORKS /* 131173 */:
                    ClientModeImpl.this.log("resetting EAP-SIM/AKA/AKA' networks since SIM was changed");
                    if ((message.arg1 == 1) == false) {
                        ClientModeImpl.this.mPasspointManager.removeEphemeralProviders();
                    }
                    ClientModeImpl.this.mWifiConfigManager.resetSimNetworks(message.arg1 == 1, message.arg2);
                    if (ClientModeImpl.this.mBootCompleted && ClientModeImpl.this.mWifiFeaturesUtils.isPresetWifiEapNetwork()) {
                        ClientModeImpl.this.mWifiInjector.getCarrierNetworkConfig().presetWifiEapNetwork(ClientModeImpl.this.mWifiFeaturesUtils.getPresetWifiEapNetworkConfig(), ClientModeImpl.this.mWifiConfigManager, ClientModeImpl.this.getTelephonyManager());
                    }
                    break;
                case ClientModeImpl.CMD_QUERY_OSU_ICON /* 131176 */:
                    ClientModeImpl.this.mPasspointManager.queryPasspointIcon(((Bundle) message.obj).getLong("BSSID"), ((Bundle) message.obj).getString(ClientModeImpl.EXTRA_OSU_ICON_QUERY_FILENAME));
                    break;
                case ClientModeImpl.CMD_MATCH_PROVIDER_NETWORK /* 131177 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, 0);
                    break;
                case ClientModeImpl.CMD_ADD_OR_UPDATE_PASSPOINT_CONFIG /* 131178 */:
                    Bundle bundle = (Bundle) message.obj;
                    PasspointConfiguration passpointConfiguration = (PasspointConfiguration) bundle.getParcelable(ClientModeImpl.EXTRA_PASSPOINT_CONFIGURATION);
                    if (!ClientModeImpl.this.mPasspointManager.addOrUpdateProvider(passpointConfiguration, bundle.getInt(ClientModeImpl.EXTRA_UID), bundle.getString(ClientModeImpl.EXTRA_PACKAGE_NAME))) {
                        ClientModeImpl.this.replyToMessage(message, message.what, -1);
                    } else {
                        String fqdn = passpointConfiguration.getHomeSp().getFqdn();
                        ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                        if (!clientModeImpl2.isProviderOwnedNetwork(clientModeImpl2.mTargetNetworkId, fqdn)) {
                            ClientModeImpl clientModeImpl3 = ClientModeImpl.this;
                            if (clientModeImpl3.isProviderOwnedNetwork(clientModeImpl3.mLastNetworkId, fqdn)) {
                                ClientModeImpl.this.logd("Disconnect from current network since its provider is updated");
                                ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                            }
                        } else {
                            ClientModeImpl.this.logd("Disconnect from current network since its provider is updated");
                            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                        }
                        ClientModeImpl.this.replyToMessage(message, message.what, 1);
                    }
                    break;
                case ClientModeImpl.CMD_REMOVE_PASSPOINT_CONFIG /* 131179 */:
                    String str = (String) message.obj;
                    if (!ClientModeImpl.this.mPasspointManager.removeProvider(message.sendingUid, str)) {
                        ClientModeImpl.this.replyToMessage(message, message.what, -1);
                    } else {
                        ClientModeImpl clientModeImpl4 = ClientModeImpl.this;
                        if (!clientModeImpl4.isProviderOwnedNetwork(clientModeImpl4.mTargetNetworkId, str)) {
                            ClientModeImpl clientModeImpl5 = ClientModeImpl.this;
                            if (clientModeImpl5.isProviderOwnedNetwork(clientModeImpl5.mLastNetworkId, str)) {
                                ClientModeImpl.this.logd("Disconnect from current network since its provider is removed");
                                ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                            }
                        } else {
                            ClientModeImpl.this.logd("Disconnect from current network since its provider is removed");
                            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                        }
                        ClientModeImpl.this.mWifiConfigManager.removePasspointConfiguredNetwork(str);
                        ClientModeImpl.this.replyToMessage(message, message.what, 1);
                    }
                    break;
                case ClientModeImpl.CMD_GET_MATCHING_OSU_PROVIDERS /* 131181 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.getMatchingOsuProviders((List) message.obj));
                    break;
                case ClientModeImpl.CMD_GET_MATCHING_PASSPOINT_CONFIGS_FOR_OSU_PROVIDERS /* 131182 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.getMatchingPasspointConfigsForOsuProviders((List) message.obj));
                    break;
                case ClientModeImpl.CMD_GET_WIFI_CONFIGS_FOR_PASSPOINT_PROFILES /* 131184 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.getWifiConfigsForPasspointProfiles((List) message.obj));
                    break;
                case ClientModeImpl.CMD_TARGET_BSSID /* 131213 */:
                    if (message.obj != null) {
                        ClientModeImpl.this.mTargetRoamBSSID = (String) message.obj;
                    }
                    break;
                case ClientModeImpl.CMD_START_CONNECT /* 131215 */:
                    int i5 = message.arg1;
                    int i6 = message.arg2;
                    String str2 = (String) message.obj;
                    if (ClientModeImpl.this.hasConnectionRequests()) {
                        configuredNetworkWithoutMasking = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetworkWithoutMasking(i5);
                        ClientModeImpl.this.logd("CMD_START_CONNECT sup state " + ClientModeImpl.this.mSupplicantStateTracker.getSupplicantStateName() + " my state " + ClientModeImpl.this.getCurrentState().getName() + " nid=" + Integer.toString(i5) + " roam=" + Boolean.toString(ClientModeImpl.this.mIsAutoRoaming));
                        if (configuredNetworkWithoutMasking == null) {
                            ClientModeImpl.this.mWifiScoreCard.noteConnectionAttempt(ClientModeImpl.this.mWifiInfo);
                            ClientModeImpl.this.mTargetNetworkId = i5;
                            ClientModeImpl.this.setTargetBssid(configuredNetworkWithoutMasking, str2);
                            ClientModeImpl clientModeImpl6 = ClientModeImpl.this;
                            clientModeImpl6.reportConnectionAttemptStart(configuredNetworkWithoutMasking, clientModeImpl6.mTargetRoamBSSID, 5);
                            if (configuredNetworkWithoutMasking.macRandomizationSetting == 1 || !ClientModeImpl.this.mConnectedMacRandomzationSupported) {
                                ClientModeImpl.this.setCurrentMacToFactoryMac(configuredNetworkWithoutMasking);
                            } else {
                                ClientModeImpl.this.configureRandomizedMacAddress(configuredNetworkWithoutMasking);
                            }
                            String macAddress = ClientModeImpl.this.mWifiNative.getMacAddress(ClientModeImpl.this.mInterfaceName);
                            ClientModeImpl.this.mWifiInfo.setMacAddress(macAddress);
                            Log.i(ClientModeImpl.TAG, "Connecting with " + macAddress + " as the mac address");
                            if (configuredNetworkWithoutMasking.enterpriseConfig != null && TelephonyUtil.isSimEapMethod(configuredNetworkWithoutMasking.enterpriseConfig.getEapMethod()) && ClientModeImpl.this.mWifiInjector.getCarrierNetworkConfig().isCarrierEncryptionInfoAvailable() && TextUtils.isEmpty(configuredNetworkWithoutMasking.enterpriseConfig.getAnonymousIdentity())) {
                                configuredNetworkWithoutMasking.enterpriseConfig.setAnonymousIdentity(TelephonyUtil.getAnonymousIdentityWith3GppRealm(ClientModeImpl.this.getTelephonyManager()));
                            }
                            if (ClientModeImpl.this.mWifiNative.connectToNetwork(ClientModeImpl.this.mInterfaceName, configuredNetworkWithoutMasking)) {
                                ClientModeImpl.this.mWifiMetrics.logStaEvent(11, configuredNetworkWithoutMasking);
                                ClientModeImpl clientModeImpl7 = ClientModeImpl.this;
                                clientModeImpl7.mLastConnectAttemptTimestamp = clientModeImpl7.mClock.getWallClockMillis();
                                ClientModeImpl.this.mTargetWifiConfiguration = configuredNetworkWithoutMasking;
                                ClientModeImpl.this.mIsAutoRoaming = false;
                                if (ClientModeImpl.this.getCurrentState() != ClientModeImpl.this.mDisconnectedState) {
                                    ClientModeImpl clientModeImpl8 = ClientModeImpl.this;
                                    clientModeImpl8.transitionTo(clientModeImpl8.mDisconnectingState);
                                }
                            } else {
                                ClientModeImpl.this.loge("CMD_START_CONNECT Failed to start connection to network " + configuredNetworkWithoutMasking);
                                ClientModeImpl.this.reportConnectionAttemptEnd(5, 1, 0);
                                ClientModeImpl.this.replyToMessage(message, 151554, 0);
                            }
                        } else {
                            ClientModeImpl.this.loge("CMD_START_CONNECT and no config, bail out...");
                        }
                    } else if (ClientModeImpl.this.mNetworkAgent != null) {
                        if (ClientModeImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(i6)) {
                            configuredNetworkWithoutMasking = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetworkWithoutMasking(i5);
                            ClientModeImpl.this.logd("CMD_START_CONNECT sup state " + ClientModeImpl.this.mSupplicantStateTracker.getSupplicantStateName() + " my state " + ClientModeImpl.this.getCurrentState().getName() + " nid=" + Integer.toString(i5) + " roam=" + Boolean.toString(ClientModeImpl.this.mIsAutoRoaming));
                            if (configuredNetworkWithoutMasking == null) {
                                ClientModeImpl.this.mWifiScoreCard.noteConnectionAttempt(ClientModeImpl.this.mWifiInfo);
                                ClientModeImpl.this.mTargetNetworkId = i5;
                                ClientModeImpl.this.setTargetBssid(configuredNetworkWithoutMasking, str2);
                                ClientModeImpl clientModeImpl9 = ClientModeImpl.this;
                                clientModeImpl9.reportConnectionAttemptStart(configuredNetworkWithoutMasking, clientModeImpl9.mTargetRoamBSSID, 5);
                                if (configuredNetworkWithoutMasking.macRandomizationSetting == 1) {
                                    ClientModeImpl.this.setCurrentMacToFactoryMac(configuredNetworkWithoutMasking);
                                } else {
                                    ClientModeImpl.this.setCurrentMacToFactoryMac(configuredNetworkWithoutMasking);
                                }
                                String macAddress2 = ClientModeImpl.this.mWifiNative.getMacAddress(ClientModeImpl.this.mInterfaceName);
                                ClientModeImpl.this.mWifiInfo.setMacAddress(macAddress2);
                                Log.i(ClientModeImpl.TAG, "Connecting with " + macAddress2 + " as the mac address");
                                if (configuredNetworkWithoutMasking.enterpriseConfig != null) {
                                    configuredNetworkWithoutMasking.enterpriseConfig.setAnonymousIdentity(TelephonyUtil.getAnonymousIdentityWith3GppRealm(ClientModeImpl.this.getTelephonyManager()));
                                }
                                if (ClientModeImpl.this.mWifiNative.connectToNetwork(ClientModeImpl.this.mInterfaceName, configuredNetworkWithoutMasking)) {
                                    ClientModeImpl.this.mWifiMetrics.logStaEvent(11, configuredNetworkWithoutMasking);
                                    ClientModeImpl clientModeImpl10 = ClientModeImpl.this;
                                    clientModeImpl10.mLastConnectAttemptTimestamp = clientModeImpl10.mClock.getWallClockMillis();
                                    ClientModeImpl.this.mTargetWifiConfiguration = configuredNetworkWithoutMasking;
                                    ClientModeImpl.this.mIsAutoRoaming = false;
                                    if (ClientModeImpl.this.getCurrentState() != ClientModeImpl.this.mDisconnectedState) {
                                        ClientModeImpl clientModeImpl11 = ClientModeImpl.this;
                                        clientModeImpl11.transitionTo(clientModeImpl11.mDisconnectingState);
                                    }
                                } else {
                                    ClientModeImpl.this.loge("CMD_START_CONNECT Failed to start connection to network " + configuredNetworkWithoutMasking);
                                    ClientModeImpl.this.reportConnectionAttemptEnd(5, 1, 0);
                                    ClientModeImpl.this.replyToMessage(message, 151554, 0);
                                }
                            } else {
                                ClientModeImpl.this.loge("CMD_START_CONNECT and no config, bail out...");
                            }
                        } else {
                            ClientModeImpl.this.loge("CMD_START_CONNECT but no requests and connected, but app does not have sufficient permissions, bailing");
                        }
                    } else {
                        ClientModeImpl.this.loge("CMD_START_CONNECT but no requests and not connected, bailing");
                    }
                    break;
                case ClientModeImpl.CMD_START_ROAM /* 131217 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case ClientModeImpl.CMD_ASSOCIATED_BSSID /* 131219 */:
                    String str3 = (String) message.obj;
                    if (str3 != null && (scanDetailCacheForNetwork = ClientModeImpl.this.mWifiConfigManager.getScanDetailCacheForNetwork(ClientModeImpl.this.mTargetNetworkId)) != null) {
                        ClientModeImpl.this.mWifiMetrics.setConnectionScanDetail(scanDetailCacheForNetwork.getScanDetail(str3));
                    }
                    z = false;
                    break;
                case ClientModeImpl.CMD_REMOVE_USER_CONFIGURATIONS /* 131224 */:
                    Set<Integer> setRemoveNetworksForUser = ClientModeImpl.this.mWifiConfigManager.removeNetworksForUser(Integer.valueOf(message.arg1).intValue());
                    if (setRemoveNetworksForUser.contains(Integer.valueOf(ClientModeImpl.this.mTargetNetworkId)) || setRemoveNetworksForUser.contains(Integer.valueOf(ClientModeImpl.this.mLastNetworkId))) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case ClientModeImpl.CMD_STOP_IP_PACKET_OFFLOAD /* 131233 */:
                    int i7 = message.arg1;
                    int iStopWifiIPPacketOffload = ClientModeImpl.this.stopWifiIPPacketOffload(i7);
                    if (ClientModeImpl.this.mNetworkAgent != null) {
                        ClientModeImpl.this.mNetworkAgent.onSocketKeepaliveEvent(i7, iStopWifiIPPacketOffload);
                    }
                    break;
                case ClientModeImpl.CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER /* 131238 */:
                    ClientModeImpl.this.mWifiConnectivityManager.enable(message.arg1 == 1);
                    break;
                case ClientModeImpl.CMD_GET_ALL_MATCHING_FQDNS_FOR_SCAN_RESULTS /* 131240 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.getAllMatchingFqdnsForScanResults((List) message.obj));
                    break;
                case ClientModeImpl.CMD_CONFIG_ND_OFFLOAD /* 131276 */:
                    ClientModeImpl.this.mWifiNative.configureNeighborDiscoveryOffload(ClientModeImpl.this.mInterfaceName, message.arg1 > 0);
                    break;
                case ClientModeImpl.CMD_START_SUBSCRIPTION_PROVISIONING /* 131326 */:
                    ClientModeImpl.this.replyToMessage(message, message.what, ClientModeImpl.this.mPasspointManager.startSubscriptionProvisioning(message.arg1, message.getData().getParcelable(ClientModeImpl.EXTRA_OSU_PROVIDER), (IProvisioningCallback) message.obj) ? 1 : 0);
                    break;
                case WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST /* 143372 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 5);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl.this.mTemporarilyDisconnectWifi = true;
                    } else {
                        ClientModeImpl.this.mWifiNative.reconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl.this.mTemporarilyDisconnectWifi = false;
                    }
                    break;
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl.this.log("Network connection established");
                    }
                    ClientModeImpl.this.mLastNetworkId = message.arg1;
                    ClientModeImpl.this.mWifiConfigManager.clearRecentFailureReason(ClientModeImpl.this.mLastNetworkId);
                    ClientModeImpl.this.mLastBssid = (String) message.obj;
                    int i8 = message.arg2;
                    WifiConfiguration currentWifiConfiguration = ClientModeImpl.this.getCurrentWifiConfiguration();
                    if (currentWifiConfiguration != null) {
                        ClientModeImpl.this.mWifiInfo.setBSSID(ClientModeImpl.this.mLastBssid);
                        ClientModeImpl.this.mWifiInfo.setNetworkId(ClientModeImpl.this.mLastNetworkId);
                        ClientModeImpl.this.mWifiInfo.setMacAddress(ClientModeImpl.this.mWifiNative.getMacAddress(ClientModeImpl.this.mInterfaceName));
                        ScanDetailCache scanDetailCacheForNetwork2 = ClientModeImpl.this.mWifiConfigManager.getScanDetailCacheForNetwork(currentWifiConfiguration.networkId);
                        if (scanDetailCacheForNetwork2 != null && ClientModeImpl.this.mLastBssid != null && (scanResult = scanDetailCacheForNetwork2.getScanResult(ClientModeImpl.this.mLastBssid)) != null) {
                            ClientModeImpl.this.mWifiInfo.setFrequency(scanResult.frequency);
                        }
                        ClientModeImpl.this.mWifiConnectivityManager.trackBssid(ClientModeImpl.this.mLastBssid, true, i8);
                        if (currentWifiConfiguration.enterpriseConfig != null && TelephonyUtil.isSimEapMethod(currentWifiConfiguration.enterpriseConfig.getEapMethod()) && !TelephonyUtil.isAnonymousAtRealmIdentity(currentWifiConfiguration.enterpriseConfig.getAnonymousIdentity())) {
                            String eapAnonymousIdentity = ClientModeImpl.this.mWifiNative.getEapAnonymousIdentity(ClientModeImpl.this.mInterfaceName);
                            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                                ClientModeImpl.this.log("EAP Pseudonym: " + eapAnonymousIdentity);
                            }
                            currentWifiConfiguration.enterpriseConfig.setAnonymousIdentity(eapAnonymousIdentity);
                            ClientModeImpl.this.mWifiConfigManager.addOrUpdateNetwork(currentWifiConfiguration, 1010);
                        }
                        ClientModeImpl clientModeImpl12 = ClientModeImpl.this;
                        clientModeImpl12.sendNetworkStateChangeBroadcast(clientModeImpl12.mLastBssid);
                        ClientModeImpl clientModeImpl13 = ClientModeImpl.this;
                        clientModeImpl13.transitionTo(clientModeImpl13.mObtainingIpState);
                    } else {
                        ClientModeImpl.this.logw("Connected to unknown networkId " + ClientModeImpl.this.mLastNetworkId + ", disconnecting...");
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl.this.log("ConnectModeState: Network connection lost ");
                    }
                    int i9 = message.arg2;
                    String str4 = (String) message.obj;
                    if (i9 == 5) {
                        if (str4 != null) {
                            ClientModeImpl clientModeImpl14 = ClientModeImpl.this;
                            clientModeImpl14.mDidBlackListBSSID = clientModeImpl14.mWifiConnectivityManager.trackBssid(str4, false, 17);
                        }
                        ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(ClientModeImpl.this.mTargetNetworkId, 2);
                        ClientModeImpl.this.mWifiConfigManager.setRecentFailureAssociationStatus(ClientModeImpl.this.mTargetNetworkId, 17);
                    }
                    ClientModeImpl.this.handleNetworkDisconnect();
                    ClientModeImpl clientModeImpl15 = ClientModeImpl.this;
                    clientModeImpl15.transitionTo(clientModeImpl15.mDisconnectedState);
                    break;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    SupplicantState supplicantStateHandleSupplicantStateChange = ClientModeImpl.this.handleSupplicantStateChange(message);
                    if (ClientModeImpl.this.mWifiNetworkMonitor != null && (supplicantStateHandleSupplicantStateChange == SupplicantState.ASSOCIATING || supplicantStateHandleSupplicantStateChange == SupplicantState.ASSOCIATED)) {
                        ClientModeImpl.this.mWifiNetworkMonitor.updateNetworkState(ClientModeImpl.this.mWifiInfo, NetworkInfo.DetailedState.CONNECTING, ClientModeImpl.this.mWifiState.get());
                    }
                    if (supplicantStateHandleSupplicantStateChange == SupplicantState.DISCONNECTED && ClientModeImpl.this.mNetworkInfo.getState() != NetworkInfo.State.DISCONNECTED) {
                        if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                            ClientModeImpl.this.log("Missed CTRL-EVENT-DISCONNECTED, disconnect");
                        }
                        ClientModeImpl.this.handleNetworkDisconnect();
                        ClientModeImpl clientModeImpl16 = ClientModeImpl.this;
                        clientModeImpl16.transitionTo(clientModeImpl16.mDisconnectedState);
                    }
                    if (supplicantStateHandleSupplicantStateChange == SupplicantState.COMPLETED) {
                        if (ClientModeImpl.this.mIpClient != null) {
                            ClientModeImpl.this.mIpClient.confirmConfiguration();
                        }
                        ClientModeImpl.this.mWifiScoreReport.noteIpCheck();
                        if (!ClientModeImpl.this.mIsSprdRoaming || ClientModeImpl.this.mIsOffloading) {
                            if (ClientModeImpl.this.mIsSprdRoaming && ClientModeImpl.this.mIsOffloading && ClientModeImpl.this.mWifiNetworkMonitor != null) {
                                ClientModeImpl.this.mWifiNetworkMonitor.updateNetworkState(ClientModeImpl.this.mWifiInfo, NetworkInfo.DetailedState.CONNECTED, ClientModeImpl.this.mWifiState.get());
                                WifiConfiguration currentWifiConfiguration2 = ClientModeImpl.this.getCurrentWifiConfiguration();
                                if (currentWifiConfiguration2 != null && currentWifiConfiguration2.validatedInternetAccess) {
                                    ClientModeImpl.this.mWifiNetworkMonitor.updateNetworkStatus(ClientModeImpl.this.mWifiInfo, 1);
                                }
                            }
                        } else {
                            ClientModeImpl.this.log("Missed CTRL-EVENT-DISCONNECTED, disconnect Auto Roam may happens!!");
                            ClientModeImpl.this.mIsAutoRoamOngoing = true;
                            ClientModeImpl.this.stopIpClient();
                            ProvisioningConfiguration provisioningConfigurationBuild = new ProvisioningConfiguration.Builder().withPreDhcpAction().withApfCapabilities(ClientModeImpl.this.mWifiNative.getApfCapabilities(ClientModeImpl.this.mInterfaceName)).withNetwork(ClientModeImpl.this.getCurrentNetwork()).withDisplayName(ClientModeImpl.this.getCurrentWifiConfiguration().SSID).withRandomMacAddress().build();
                            if (ClientModeImpl.this.mIpClient != null) {
                                ClientModeImpl.this.mIpClient.startProvisioning(provisioningConfigurationBuild);
                            }
                        }
                    }
                    if (ClientModeImpl.this.mNetworkInfo.getState() == NetworkInfo.State.CONNECTED && supplicantStateHandleSupplicantStateChange == SupplicantState.ASSOCIATED) {
                        ClientModeImpl.this.mIsSprdRoaming = true;
                    } else if (supplicantStateHandleSupplicantStateChange == SupplicantState.DISCONNECTED || supplicantStateHandleSupplicantStateChange == SupplicantState.COMPLETED) {
                        ClientModeImpl.this.mIsSprdRoaming = false;
                        ClientModeImpl.this.mIsOffloading = false;
                    }
                    break;
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                    ClientModeImpl.this.mWifiDiagnostics.captureBugReportData(2);
                    ClientModeImpl.this.mSupplicantStateTracker.sendMessage(WifiMonitor.AUTHENTICATION_FAILURE_EVENT);
                    int i10 = 3;
                    int i11 = message.arg1;
                    ClientModeImpl clientModeImpl17 = ClientModeImpl.this;
                    if (clientModeImpl17.isPermanentWrongPasswordFailure(clientModeImpl17.mTargetNetworkId, i11)) {
                        i10 = 13;
                        WifiConfiguration configuredNetwork = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetwork(ClientModeImpl.this.mTargetNetworkId);
                        if (configuredNetwork != null) {
                            ClientModeImpl.this.mWrongPasswordNotifier.onWrongPasswordError(configuredNetwork.SSID);
                        }
                    } else if (i11 == 3) {
                        int i12 = message.arg2;
                        ClientModeImpl clientModeImpl18 = ClientModeImpl.this;
                        clientModeImpl18.handleEapAuthFailure(clientModeImpl18.mTargetNetworkId, i12);
                        if (i12 == 1031) {
                            i10 = 14;
                        }
                    }
                    ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(ClientModeImpl.this.mTargetNetworkId, i10);
                    ClientModeImpl.this.mWifiConfigManager.clearRecentFailureReason(ClientModeImpl.this.mTargetNetworkId);
                    if (i11 == 0) {
                        i = 1;
                    } else if (i11 == 1) {
                        i = 2;
                    } else if (i11 == 2) {
                        i = 3;
                    } else if (i11 == 3) {
                        i = 4;
                    } else {
                        i = 0;
                    }
                    ClientModeImpl.this.reportConnectionAttemptEnd(3, 1, i);
                    if (i11 != 2) {
                        ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().noteConnectionFailureAndTriggerIfNeeded(ClientModeImpl.this.getTargetSsid(), ClientModeImpl.this.mTargetRoamBSSID, 2);
                    }
                    if (ClientModeImpl.this.mWifiFeaturesUtils.isConnectMaxTimeDisableNetworkSupported()) {
                        ClientModeImpl.this.checkIsSwitchSimCard();
                    }
                    break;
                case WifiMonitor.SUP_REQUEST_IDENTITY /* 147471 */:
                    int i13 = message.arg2;
                    boolean z2 = false;
                    if (ClientModeImpl.this.mTargetWifiConfiguration != null && ClientModeImpl.this.mTargetWifiConfiguration.networkId == i13 && TelephonyUtil.isSimConfig(ClientModeImpl.this.mTargetWifiConfiguration) && ClientModeImpl.this.mWifiConfigManager.isSimPresent(ClientModeImpl.this.mTargetWifiConfiguration.enterpriseConfig.getSimNum())) {
                        Pair<String, String> simIdentity = TelephonyUtil.getSimIdentity(ClientModeImpl.this.getTelephonyManager(), new TelephonyUtil(), ClientModeImpl.this.mTargetWifiConfiguration, ClientModeImpl.this.mWifiInjector.getCarrierNetworkConfig());
                        Log.i(ClientModeImpl.TAG, "SUP_REQUEST_IDENTITY: identityPair=" + simIdentity);
                        if (simIdentity != null && simIdentity.first != null) {
                            ClientModeImpl.this.mWifiNative.simIdentityResponse(ClientModeImpl.this.mInterfaceName, i13, (String) simIdentity.first, (String) simIdentity.second);
                            z2 = true;
                        } else {
                            Log.e(ClientModeImpl.TAG, "Unable to retrieve identity from Telephony");
                        }
                    }
                    if (!z2) {
                        String str5 = (String) message.obj;
                        if (ClientModeImpl.this.mTargetWifiConfiguration != null && str5 != null && ClientModeImpl.this.mTargetWifiConfiguration.SSID != null) {
                            if (ClientModeImpl.this.mTargetWifiConfiguration.SSID.equals("\"" + str5 + "\"")) {
                                ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(ClientModeImpl.this.mTargetWifiConfiguration.networkId, 9);
                            }
                        }
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 2);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                    }
                    break;
                case WifiMonitor.SUP_REQUEST_SIM_AUTH /* 147472 */:
                    ClientModeImpl.this.logd("Received SUP_REQUEST_SIM_AUTH");
                    TelephonyUtil.SimAuthRequestData simAuthRequestData = (TelephonyUtil.SimAuthRequestData) message.obj;
                    if (simAuthRequestData != null) {
                        if (simAuthRequestData.protocol == 4) {
                            ClientModeImpl.this.handleGsmAuthRequest(simAuthRequestData);
                        } else if (simAuthRequestData.protocol == 5 || simAuthRequestData.protocol == 6) {
                            ClientModeImpl.this.handle3GAuthRequest(simAuthRequestData);
                        }
                    } else {
                        ClientModeImpl.this.loge("Invalid SIM auth request");
                    }
                    break;
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                    ClientModeImpl.this.mWifiDiagnostics.captureBugReportData(1);
                    ClientModeImpl.this.mDidBlackListBSSID = false;
                    String str6 = (String) message.obj;
                    boolean z3 = message.arg1 > 0;
                    int i14 = message.arg2;
                    Log.d(ClientModeImpl.TAG, "Association Rejection event: bssid=" + str6 + " reason code=" + i14 + " timedOut=" + Boolean.toString(z3));
                    if (str6 == null || TextUtils.isEmpty(str6)) {
                        str6 = ClientModeImpl.this.mTargetRoamBSSID;
                    }
                    if (str6 != null) {
                        ClientModeImpl clientModeImpl19 = ClientModeImpl.this;
                        clientModeImpl19.mDidBlackListBSSID = clientModeImpl19.mWifiConnectivityManager.trackBssid(str6, false, i14);
                    }
                    ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(ClientModeImpl.this.mTargetNetworkId, 2);
                    ClientModeImpl.this.mWifiConfigManager.setRecentFailureAssociationStatus(ClientModeImpl.this.mTargetNetworkId, i14);
                    ClientModeImpl.this.mSupplicantStateTracker.sendMessage(WifiMonitor.ASSOCIATION_REJECTION_EVENT);
                    ClientModeImpl.this.reportConnectionAttemptEnd(z3 ? 11 : 2, 1, 0);
                    ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().noteConnectionFailureAndTriggerIfNeeded(ClientModeImpl.this.getTargetSsid(), str6, 1);
                    if (ClientModeImpl.this.mWifiFeaturesUtils.isConnectMaxTimeDisableNetworkSupported()) {
                        ClientModeImpl.this.checkIsSwitchSimCard();
                    }
                    break;
                case WifiMonitor.ANQP_DONE_EVENT /* 147500 */:
                    ClientModeImpl.this.mPasspointManager.notifyANQPDone((AnqpEvent) message.obj);
                    break;
                case WifiMonitor.RX_HS20_ANQP_ICON_EVENT /* 147509 */:
                    ClientModeImpl.this.mPasspointManager.notifyIconDone((IconEvent) message.obj);
                    break;
                case WifiMonitor.HS20_REMEDIATION_EVENT /* 147517 */:
                    ClientModeImpl.this.mPasspointManager.receivedWnmFrame((WnmData) message.obj);
                    break;
                case WifiMonitor.WAPI_AUTHENTICATION_FAILURE_EVENT /* 147523 */:
                    Log.v(ClientModeImpl.TAG, "Handling WAPI_EVENT, msg [" + message.what + "]");
                    ClientModeImpl.this.mSupplicantStateTracker.sendMessage(WifiMonitor.WAPI_AUTHENTICATION_FAILURE_EVENT);
                    break;
                case WifiMonitor.WAPI_CERTIFICATION_FAILURE_EVENT /* 147524 */:
                    Log.v(ClientModeImpl.TAG, "Handling WAPI_EVENT, msg [" + message.what + "] mTargetNetworkId=" + ClientModeImpl.this.mTargetNetworkId);
                    ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(ClientModeImpl.this.mTargetNetworkId, 9);
                    break;
                case 151553:
                    int networkId = message.arg1;
                    WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                    boolean zHasCredentialChanged = false;
                    if (wifiConfiguration != null) {
                        NetworkUpdateResult networkUpdateResultAddOrUpdateNetwork = ClientModeImpl.this.mWifiConfigManager.addOrUpdateNetwork(wifiConfiguration, message.sendingUid);
                        if (!networkUpdateResultAddOrUpdateNetwork.isSuccess()) {
                            ClientModeImpl.this.loge("CONNECT_NETWORK adding/updating config=" + wifiConfiguration + " failed");
                            ClientModeImpl.this.mMessageHandlingStatus = -2;
                            ClientModeImpl.this.replyToMessage(message, 151554, 0);
                        } else {
                            networkId = networkUpdateResultAddOrUpdateNetwork.getNetworkId();
                            zHasCredentialChanged = networkUpdateResultAddOrUpdateNetwork.hasCredentialChanged();
                            if (!ClientModeImpl.this.connectToUserSelectNetwork(networkId, message.sendingUid, zHasCredentialChanged)) {
                                ClientModeImpl.this.mMessageHandlingStatus = -2;
                                ClientModeImpl.this.replyToMessage(message, 151554, 9);
                            } else {
                                ClientModeImpl.this.mWifiMetrics.logStaEvent(13, wifiConfiguration);
                                ClientModeImpl.this.broadcastWifiCredentialChanged(0, wifiConfiguration);
                                ClientModeImpl.this.replyToMessage(message, 151555);
                            }
                        }
                    } else if (!ClientModeImpl.this.connectToUserSelectNetwork(networkId, message.sendingUid, zHasCredentialChanged)) {
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                        ClientModeImpl.this.replyToMessage(message, 151554, 9);
                    } else {
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(13, wifiConfiguration);
                        ClientModeImpl.this.broadcastWifiCredentialChanged(0, wifiConfiguration);
                        ClientModeImpl.this.replyToMessage(message, 151555);
                    }
                    break;
                case 151556:
                    if (ClientModeImpl.this.deleteNetworkConfigAndSendReply(message, true) && ((i2 = message.arg1) == ClientModeImpl.this.mTargetNetworkId || i2 == ClientModeImpl.this.mLastNetworkId)) {
                        ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                    }
                    break;
                case 151559:
                    NetworkUpdateResult networkUpdateResultSaveNetworkConfigAndSendReply = ClientModeImpl.this.saveNetworkConfigAndSendReply(message);
                    int networkId2 = networkUpdateResultSaveNetworkConfigAndSendReply.getNetworkId();
                    if (networkUpdateResultSaveNetworkConfigAndSendReply.isSuccess()) {
                        if (ClientModeImpl.this.mWifiInfo.getNetworkId() != networkId2) {
                            if (ClientModeImpl.this.mWifiInfo.getNetworkId() == -1) {
                                WifiConfiguration wifiConfiguration2 = (WifiConfiguration) message.obj;
                                ClientModeImpl.this.logi("SAVE_NETWORK auto connect to user saved or modified config=" + wifiConfiguration2.configKey() + ", when wifi disconnected.");
                                ClientModeImpl.this.startConnectToNetwork(networkId2, message.sendingUid, "any");
                            }
                        } else if (networkUpdateResultSaveNetworkConfigAndSendReply.hasCredentialChanged()) {
                            WifiConfiguration wifiConfiguration3 = (WifiConfiguration) message.obj;
                            ClientModeImpl.this.logi("SAVE_NETWORK credential changed for config=" + wifiConfiguration3.configKey() + ", Reconnecting.");
                            ClientModeImpl.this.startConnectToNetwork(networkId2, message.sendingUid, "any");
                        } else {
                            if (networkUpdateResultSaveNetworkConfigAndSendReply.hasProxyChanged() && ClientModeImpl.this.mIpClient != null) {
                                ClientModeImpl.this.log("Reconfiguring proxy on connection");
                                ClientModeImpl.this.mIpClient.setHttpProxy(ClientModeImpl.this.getCurrentWifiConfiguration().getHttpProxy());
                            }
                            if (networkUpdateResultSaveNetworkConfigAndSendReply.hasIpChanged()) {
                                ClientModeImpl.this.log("Reconfiguring IP on connection");
                                ClientModeImpl clientModeImpl20 = ClientModeImpl.this;
                                clientModeImpl20.transitionTo(clientModeImpl20.mObtainingIpState);
                            }
                        }
                    }
                    break;
                case 151569:
                    int i15 = message.arg1;
                    if (ClientModeImpl.this.mWifiConfigManager.disableNetwork(i15, message.sendingUid)) {
                        ClientModeImpl.this.replyToMessage(message, 151571);
                        if (i15 == ClientModeImpl.this.mTargetNetworkId || i15 == ClientModeImpl.this.mLastNetworkId) {
                            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_DISCONNECT);
                        }
                    } else {
                        ClientModeImpl.this.loge("Failed to disable network");
                        ClientModeImpl.this.mMessageHandlingStatus = -2;
                        ClientModeImpl.this.replyToMessage(message, 151570, 0);
                    }
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return z;
        }
    }

    private WifiNetworkAgentSpecifier createNetworkAgentSpecifier(WifiConfiguration currentWifiConfiguration, String currentBssid, int specificRequestUid, String specificRequestPackageName) {
        currentWifiConfiguration.BSSID = currentBssid;
        WifiNetworkAgentSpecifier wns = new WifiNetworkAgentSpecifier(currentWifiConfiguration, specificRequestUid, specificRequestPackageName);
        return wns;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkCapabilities getCapabilities(WifiConfiguration currentWifiConfiguration) {
        NetworkCapabilities result = new NetworkCapabilities(this.mNetworkCapabilitiesFilter);
        result.setNetworkSpecifier(null);
        if (currentWifiConfiguration == null) {
            return result;
        }
        if (!this.mWifiInfo.isTrusted()) {
            result.removeCapability(14);
        } else {
            result.addCapability(14);
        }
        if (!WifiConfiguration.isMetered(currentWifiConfiguration, this.mWifiInfo)) {
            result.addCapability(11);
        } else {
            result.removeCapability(11);
        }
        if (this.mWifiInfo.getRssi() != -127) {
            result.setSignalStrength(this.mWifiInfo.getRssi());
        } else {
            result.setSignalStrength(Integer.MIN_VALUE);
        }
        if (currentWifiConfiguration.osu) {
            result.removeCapability(12);
        }
        if (!this.mWifiInfo.getSSID().equals("<unknown ssid>")) {
            result.setSSID(this.mWifiInfo.getSSID());
        } else {
            result.setSSID(null);
        }
        Pair<Integer, String> specificRequestUidAndPackageName = this.mNetworkFactory.getSpecificNetworkRequestUidAndPackageName(currentWifiConfiguration);
        if (((Integer) specificRequestUidAndPackageName.first).intValue() != -1) {
            result.removeCapability(12);
        }
        result.setNetworkSpecifier(createNetworkAgentSpecifier(currentWifiConfiguration, getCurrentBSSID(), ((Integer) specificRequestUidAndPackageName.first).intValue(), (String) specificRequestUidAndPackageName.second));
        return result;
    }

    public void updateCapabilities() {
        updateCapabilities(getCurrentWifiConfiguration());
    }

    private void updateCapabilities(WifiConfiguration currentWifiConfiguration) {
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent == null) {
            return;
        }
        wifiNetworkAgent.sendNetworkCapabilities(getCapabilities(currentWifiConfiguration));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isProviderOwnedNetwork(int networkId, String providerFqdn) {
        WifiConfiguration config;
        if (networkId == -1 || (config = this.mWifiConfigManager.getConfiguredNetwork(networkId)) == null) {
            return false;
        }
        return TextUtils.equals(config.FQDN, providerFqdn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEapAuthFailure(int networkId, int errorCode) {
        WifiConfiguration targetedNetwork = this.mWifiConfigManager.getConfiguredNetwork(this.mTargetNetworkId);
        if (targetedNetwork != null) {
            int eapMethod = targetedNetwork.enterpriseConfig.getEapMethod();
            if ((eapMethod == 4 || eapMethod == 5 || eapMethod == 6) && errorCode == 16385) {
                getTelephonyManager().createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).resetCarrierKeysForImsiEncryption();
            }
        }
    }

    private class WifiNetworkAgent extends NetworkAgent {
        private int mLastNetworkStatus;

        WifiNetworkAgent(Looper l, Context c, String tag, NetworkInfo ni, NetworkCapabilities nc, LinkProperties lp, int score, NetworkMisc misc) {
            super(l, c, tag, ni, nc, lp, score, misc);
            this.mLastNetworkStatus = -1;
        }

        protected void unwanted() {
            if (this != ClientModeImpl.this.mNetworkAgent) {
                return;
            }
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                log("WifiNetworkAgent -> Wifi unwanted score " + Integer.toString(ClientModeImpl.this.mWifiInfo.score));
            }
            ClientModeImpl.this.unwantedNetwork(0);
        }

        protected void networkStatus(int status, String redirectUrl) {
            if (this == ClientModeImpl.this.mNetworkAgent && status != this.mLastNetworkStatus) {
                this.mLastNetworkStatus = status;
                if (status == 2) {
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        log("WifiNetworkAgent -> Wifi networkStatus invalid, score=" + Integer.toString(ClientModeImpl.this.mWifiInfo.score));
                    }
                    ClientModeImpl.this.unwantedNetwork(1);
                    return;
                }
                if (status == 1) {
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        log("WifiNetworkAgent -> Wifi networkStatus valid, score= " + Integer.toString(ClientModeImpl.this.mWifiInfo.score));
                    }
                    ClientModeImpl.this.mWifiMetrics.logStaEvent(14);
                    ClientModeImpl.this.doNetworkStatus(status);
                    if (ClientModeImpl.this.mWifiNetworkMonitor != null) {
                        ClientModeImpl.this.mWifiNetworkMonitor.updateNetworkStatus(ClientModeImpl.this.mWifiInfo, status);
                    }
                }
            }
        }

        protected void saveAcceptUnvalidated(boolean z) {
            if (this != ClientModeImpl.this.mNetworkAgent) {
                return;
            }
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_ACCEPT_UNVALIDATED, z ? 1 : 0);
        }

        protected void startSocketKeepalive(Message msg) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_START_IP_PACKET_OFFLOAD, msg.arg1, msg.arg2, msg.obj);
        }

        protected void stopSocketKeepalive(Message msg) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_STOP_IP_PACKET_OFFLOAD, msg.arg1, msg.arg2, msg.obj);
        }

        protected void addKeepalivePacketFilter(Message msg) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_ADD_KEEPALIVE_PACKET_FILTER_TO_APF, msg.arg1, msg.arg2, msg.obj);
        }

        protected void removeKeepalivePacketFilter(Message msg) {
            ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_REMOVE_KEEPALIVE_PACKET_FILTER_FROM_APF, msg.arg1, msg.arg2, msg.obj);
        }

        protected void setSignalStrengthThresholds(int[] thresholds) {
            log("Received signal strength thresholds: " + Arrays.toString(thresholds));
            if (thresholds.length == 0) {
                ClientModeImpl clientModeImpl = ClientModeImpl.this;
                clientModeImpl.sendMessage(ClientModeImpl.CMD_STOP_RSSI_MONITORING_OFFLOAD, clientModeImpl.mWifiInfo.getRssi());
                return;
            }
            int[] rssiVals = Arrays.copyOf(thresholds, thresholds.length + 2);
            rssiVals[rssiVals.length - 2] = -128;
            rssiVals[rssiVals.length - 1] = 127;
            Arrays.sort(rssiVals);
            byte[] rssiRange = new byte[rssiVals.length];
            for (int i = 0; i < rssiVals.length; i++) {
                int val = rssiVals[i];
                if (val <= 127 && val >= -128) {
                    rssiRange[i] = (byte) val;
                } else {
                    Log.e(ClientModeImpl.TAG, "Illegal value " + val + " for RSSI thresholds: " + Arrays.toString(rssiVals));
                    ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                    clientModeImpl2.sendMessage(ClientModeImpl.CMD_STOP_RSSI_MONITORING_OFFLOAD, clientModeImpl2.mWifiInfo.getRssi());
                    return;
                }
            }
            ClientModeImpl.this.mRssiRanges = rssiRange;
            ClientModeImpl clientModeImpl3 = ClientModeImpl.this;
            clientModeImpl3.sendMessage(ClientModeImpl.CMD_START_RSSI_MONITORING_OFFLOAD, clientModeImpl3.mWifiInfo.getRssi());
        }

        protected void preventAutomaticReconnect() {
            if (this != ClientModeImpl.this.mNetworkAgent) {
                return;
            }
            ClientModeImpl.this.unwantedNetwork(2);
        }
    }

    void unwantedNetwork(int reason) {
        sendMessage(CMD_UNWANTED_NETWORK, reason);
    }

    void doNetworkStatus(int status) {
        sendMessage(CMD_NETWORK_STATUS, status);
    }

    private String buildIdentity(int eapMethod, String imsi, String mccMnc) {
        String prefix;
        String mcc;
        String mnc;
        if (imsi == null || imsi.isEmpty()) {
            return "";
        }
        if (eapMethod == 4) {
            prefix = "1";
        } else if (eapMethod == 5) {
            prefix = "0";
        } else {
            if (eapMethod != 6) {
                return "";
            }
            prefix = "6";
        }
        if (mccMnc != null && !mccMnc.isEmpty()) {
            mcc = mccMnc.substring(0, 3);
            mnc = mccMnc.substring(3);
            if (mnc.length() == 2) {
                mnc = "0" + mnc;
            }
        } else {
            mcc = imsi.substring(0, 3);
            mnc = imsi.substring(3, 6);
        }
        return prefix + imsi + "@wlan.mnc" + mnc + ".mcc" + mcc + ".3gppnetwork.org";
    }

    class L2ConnectedState extends State {
        RssiEventHandler mRssiEventHandler = new RssiEventHandler();

        class RssiEventHandler implements WifiNative.WifiRssiEventHandler {
            RssiEventHandler() {
            }

            @Override // com.android.server.wifi.WifiNative.WifiRssiEventHandler
            public void onRssiThresholdBreached(byte curRssi) {
                if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                    Log.e(ClientModeImpl.TAG, "onRssiThresholdBreach event. Cur Rssi = " + ((int) curRssi));
                }
                ClientModeImpl.this.sendMessage(ClientModeImpl.CMD_RSSI_THRESHOLD_BREACHED, curRssi);
            }
        }

        L2ConnectedState() {
        }

        public void enter() {
            ClientModeImpl.access$9208(ClientModeImpl.this);
            if (ClientModeImpl.this.mEnableRssiPolling) {
                ClientModeImpl.this.mLinkProbeManager.resetOnNewConnection();
                ClientModeImpl clientModeImpl = ClientModeImpl.this;
                clientModeImpl.sendMessage(ClientModeImpl.CMD_RSSI_POLL, clientModeImpl.mRssiPollToken, 0);
            }
            if (ClientModeImpl.this.mNetworkAgent != null) {
                ClientModeImpl.this.loge("Have NetworkAgent when entering L2Connected");
                ClientModeImpl.this.setNetworkDetailedState(NetworkInfo.DetailedState.DISCONNECTED);
            }
            ClientModeImpl.this.setNetworkDetailedState(NetworkInfo.DetailedState.CONNECTING);
            ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
            NetworkCapabilities nc = clientModeImpl2.getCapabilities(clientModeImpl2.getCurrentWifiConfiguration());
            synchronized (ClientModeImpl.this.mNetworkAgentLock) {
                ClientModeImpl.this.mNetworkAgent = ClientModeImpl.this.new WifiNetworkAgent(ClientModeImpl.this.getHandler().getLooper(), ClientModeImpl.this.mContext, "WifiNetworkAgent", ClientModeImpl.this.mNetworkInfo, nc, ClientModeImpl.this.mLinkProperties, 60, ClientModeImpl.this.mNetworkMisc);
            }
            ClientModeImpl.this.clearTargetBssid("L2ConnectedState");
            ClientModeImpl.this.mIsAutoRoamOngoing = false;
            ClientModeImpl.this.mCountryCode.setReadyForChange(false);
            ClientModeImpl.this.mWifiMetrics.setWifiState(3);
            ClientModeImpl.this.mWifiScoreCard.noteNetworkAgentCreated(ClientModeImpl.this.mWifiInfo, ClientModeImpl.this.mNetworkAgent.netId);
        }

        public void exit() {
            if (ClientModeImpl.this.mIpClient != null) {
                ClientModeImpl.this.mIpClient.stop();
            }
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                StringBuilder sb = new StringBuilder();
                sb.append("leaving L2ConnectedState state nid=" + Integer.toString(ClientModeImpl.this.mLastNetworkId));
                if (ClientModeImpl.this.mLastBssid != null) {
                    sb.append(" ");
                    sb.append(ClientModeImpl.this.mLastBssid);
                }
            }
            if (ClientModeImpl.this.mLastBssid != null || ClientModeImpl.this.mLastNetworkId != -1) {
                ClientModeImpl.this.handleNetworkDisconnect();
            }
            ClientModeImpl.this.mIsAutoRoamOngoing = false;
            ClientModeImpl.this.setCurrentCountryCode();
            ClientModeImpl.this.mCountryCode.setReadyForChange(true);
            ClientModeImpl.this.mWifiMetrics.setWifiState(2);
            ClientModeImpl.this.mWifiStateTracker.updateState(2);
            WifiLockManager wifiLockManager = ClientModeImpl.this.mWifiInjector.getWifiLockManager();
            wifiLockManager.updateWifiClientConnected(false);
        }

        public boolean processMessage(Message message) {
            ScanDetailCache scanDetailCache;
            ScanResult scanResult;
            boolean handleStatus = true;
            switch (message.what) {
                case ClientModeImpl.CMD_DISCONNECT /* 131145 */:
                    ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 2);
                    ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                    ClientModeImpl clientModeImpl = ClientModeImpl.this;
                    clientModeImpl.transitionTo(clientModeImpl.mDisconnectingState);
                    break;
                case ClientModeImpl.CMD_RECONNECT /* 131146 */:
                    ClientModeImpl.this.log(" Ignore CMD_RECONNECT request because wifi is already connected");
                    break;
                case ClientModeImpl.CMD_ENABLE_RSSI_POLL /* 131154 */:
                    ClientModeImpl.this.cleanWifiScore();
                    ClientModeImpl.this.mEnableRssiPolling = message.arg1 == 1;
                    ClientModeImpl.access$9208(ClientModeImpl.this);
                    if (ClientModeImpl.this.mEnableRssiPolling) {
                        ClientModeImpl.this.mLastSignalLevel = -1;
                        ClientModeImpl.this.mLinkProbeManager.resetOnScreenTurnedOn();
                        ClientModeImpl.this.fetchRssiLinkSpeedAndFrequencyNative();
                        ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                        clientModeImpl2.sendMessageDelayed(clientModeImpl2.obtainMessage(ClientModeImpl.CMD_RSSI_POLL, clientModeImpl2.mRssiPollToken, 0), ClientModeImpl.this.mPollRssiIntervalMsecs);
                    }
                    break;
                case ClientModeImpl.CMD_RSSI_POLL /* 131155 */:
                    if (message.arg1 == ClientModeImpl.this.mRssiPollToken) {
                        WifiLinkLayerStats stats = updateLinkLayerStatsRssiAndScoreReportInternal();
                        ClientModeImpl.this.mWifiMetrics.updateWifiUsabilityStatsEntries(ClientModeImpl.this.mWifiInfo, stats);
                        if (ClientModeImpl.this.mWifiScoreReport.shouldCheckIpLayer()) {
                            if (ClientModeImpl.this.mIpClient != null) {
                                ClientModeImpl.this.mIpClient.confirmConfiguration();
                            }
                            ClientModeImpl.this.mWifiScoreReport.noteIpCheck();
                        }
                        int statusDataStall = ClientModeImpl.this.mWifiDataStall.checkForDataStall(ClientModeImpl.this.mLastLinkLayerStats, stats);
                        if (statusDataStall != 0) {
                            ClientModeImpl.this.mWifiMetrics.addToWifiUsabilityStatsList(2, ClientModeImpl.convertToUsabilityStatsTriggerType(statusDataStall), -1);
                        }
                        ClientModeImpl.this.mWifiMetrics.incrementWifiLinkLayerUsageStats(stats);
                        ClientModeImpl.this.mLastLinkLayerStats = stats;
                        ClientModeImpl.this.mWifiScoreCard.noteSignalPoll(ClientModeImpl.this.mWifiInfo);
                        ClientModeImpl.this.mLinkProbeManager.updateConnectionStats(ClientModeImpl.this.mWifiInfo, ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl clientModeImpl3 = ClientModeImpl.this;
                        clientModeImpl3.sendMessageDelayed(clientModeImpl3.obtainMessage(ClientModeImpl.CMD_RSSI_POLL, clientModeImpl3.mRssiPollToken, 0), ClientModeImpl.this.mPollRssiIntervalMsecs);
                        if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                            ClientModeImpl clientModeImpl4 = ClientModeImpl.this;
                            clientModeImpl4.sendRssiChangeBroadcast(clientModeImpl4.mWifiInfo.getRssi());
                        }
                        ClientModeImpl.this.mWifiTrafficPoller.notifyOnDataActivity(ClientModeImpl.this.mWifiInfo.txSuccess, ClientModeImpl.this.mWifiInfo.rxSuccess);
                    }
                    break;
                case ClientModeImpl.CMD_ONESHOT_RSSI_POLL /* 131156 */:
                    if (!ClientModeImpl.this.mEnableRssiPolling) {
                        updateLinkLayerStatsRssiAndScoreReportInternal();
                    }
                    break;
                case ClientModeImpl.CMD_RESET_SIM_NETWORKS /* 131173 */:
                    if (message.arg1 == 0 && ClientModeImpl.this.mLastNetworkId != -1) {
                        WifiConfiguration config = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetwork(ClientModeImpl.this.mLastNetworkId);
                        if (TelephonyUtil.isSimConfig(config) && message.arg2 == config.enterpriseConfig.getSimNum()) {
                            ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 6);
                            ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                            ClientModeImpl clientModeImpl5 = ClientModeImpl.this;
                            clientModeImpl5.transitionTo(clientModeImpl5.mDisconnectingState);
                        }
                    }
                    handleStatus = false;
                    break;
                case ClientModeImpl.CMD_IP_CONFIGURATION_SUCCESSFUL /* 131210 */:
                    if (ClientModeImpl.this.getCurrentWifiConfiguration() == null) {
                        ClientModeImpl.this.reportConnectionAttemptEnd(6, 1, 0);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl clientModeImpl6 = ClientModeImpl.this;
                        clientModeImpl6.transitionTo(clientModeImpl6.mDisconnectingState);
                    } else {
                        ClientModeImpl.this.mAttemptConnectTime = 0;
                        ClientModeImpl.this.handleSuccessfulIpConfiguration();
                        ClientModeImpl.this.sendConnectedState();
                        ClientModeImpl clientModeImpl7 = ClientModeImpl.this;
                        clientModeImpl7.transitionTo(clientModeImpl7.mConnectedState);
                    }
                    break;
                case ClientModeImpl.CMD_IP_CONFIGURATION_LOST /* 131211 */:
                    ClientModeImpl.this.getWifiLinkLayerStats();
                    if (!ClientModeImpl.this.mIsAutoRoamOngoing) {
                        ClientModeImpl.this.handleIpConfigurationLost();
                        ClientModeImpl.this.reportConnectionAttemptEnd(10, 1, 0);
                        ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().noteConnectionFailureAndTriggerIfNeeded(ClientModeImpl.this.getTargetSsid(), ClientModeImpl.this.mTargetRoamBSSID, 3);
                        ClientModeImpl clientModeImpl8 = ClientModeImpl.this;
                        clientModeImpl8.transitionTo(clientModeImpl8.mDisconnectingState);
                    } else {
                        ClientModeImpl.this.log("IP LOST during Auto Roam!!!");
                    }
                    break;
                case ClientModeImpl.CMD_ASSOCIATED_BSSID /* 131219 */:
                    if (((String) message.obj) == null) {
                        ClientModeImpl.this.logw("Associated command w/o BSSID");
                    } else {
                        ClientModeImpl.this.mLastBssid = (String) message.obj;
                        if (ClientModeImpl.this.mLastBssid != null && (ClientModeImpl.this.mWifiInfo.getBSSID() == null || !ClientModeImpl.this.mLastBssid.equals(ClientModeImpl.this.mWifiInfo.getBSSID()))) {
                            ClientModeImpl.this.mWifiInfo.setBSSID(ClientModeImpl.this.mLastBssid);
                            WifiConfiguration config2 = ClientModeImpl.this.getCurrentWifiConfiguration();
                            if (config2 != null && (scanDetailCache = ClientModeImpl.this.mWifiConfigManager.getScanDetailCacheForNetwork(config2.networkId)) != null && (scanResult = scanDetailCache.getScanResult(ClientModeImpl.this.mLastBssid)) != null) {
                                ClientModeImpl.this.mWifiInfo.setFrequency(scanResult.frequency);
                            }
                            ClientModeImpl clientModeImpl9 = ClientModeImpl.this;
                            clientModeImpl9.sendNetworkStateChangeBroadcast(clientModeImpl9.mLastBssid);
                        }
                    }
                    break;
                case ClientModeImpl.CMD_IP_REACHABILITY_LOST /* 131221 */:
                    if (ClientModeImpl.this.mVerboseLoggingEnabled && message.obj != null) {
                        ClientModeImpl.this.log((String) message.obj);
                    }
                    ClientModeImpl.this.mWifiDiagnostics.captureBugReportData(9);
                    ClientModeImpl.this.mWifiMetrics.logWifiIsUnusableEvent(5);
                    ClientModeImpl.this.mWifiMetrics.addToWifiUsabilityStatsList(2, 5, -1);
                    if (ClientModeImpl.this.mIpReachabilityDisconnectEnabled) {
                        ClientModeImpl.this.handleIpReachabilityLost();
                        ClientModeImpl clientModeImpl10 = ClientModeImpl.this;
                        clientModeImpl10.transitionTo(clientModeImpl10.mDisconnectingState);
                    } else {
                        ClientModeImpl.this.logd("CMD_IP_REACHABILITY_LOST but disconnect disabled -- ignore");
                    }
                    break;
                case ClientModeImpl.CMD_START_IP_PACKET_OFFLOAD /* 131232 */:
                    int slot = message.arg1;
                    int intervalSeconds = message.arg2;
                    KeepalivePacketData pkt = (KeepalivePacketData) message.obj;
                    int result = ClientModeImpl.this.startWifiIPPacketOffload(slot, pkt, intervalSeconds);
                    if (ClientModeImpl.this.mNetworkAgent != null) {
                        ClientModeImpl.this.mNetworkAgent.onSocketKeepaliveEvent(slot, result);
                    }
                    break;
                case ClientModeImpl.CMD_START_RSSI_MONITORING_OFFLOAD /* 131234 */:
                case ClientModeImpl.CMD_RSSI_THRESHOLD_BREACHED /* 131236 */:
                    byte currRssi = (byte) message.arg1;
                    ClientModeImpl.this.processRssiThreshold(currRssi, message.what, this.mRssiEventHandler);
                    break;
                case ClientModeImpl.CMD_STOP_RSSI_MONITORING_OFFLOAD /* 131235 */:
                    ClientModeImpl.this.stopRssiMonitoringOffload();
                    break;
                case ClientModeImpl.CMD_GET_CURRENT_RSSI /* 131251 */:
                    int newRssi = ClientModeImpl.this.fetchCurrentRssi();
                    ClientModeImpl.this.replyToMessage(message, message.what, newRssi);
                    break;
                case ClientModeImpl.CMD_IPV4_PROVISIONING_SUCCESS /* 131272 */:
                    ClientModeImpl.this.handleIPv4Success((DhcpResults) message.obj);
                    ClientModeImpl clientModeImpl11 = ClientModeImpl.this;
                    clientModeImpl11.sendNetworkStateChangeBroadcast(clientModeImpl11.mLastBssid);
                    break;
                case ClientModeImpl.CMD_IPV4_PROVISIONING_FAILURE /* 131273 */:
                    ClientModeImpl.this.handleIPv4Failure();
                    ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().noteConnectionFailureAndTriggerIfNeeded(ClientModeImpl.this.getTargetSsid(), ClientModeImpl.this.mTargetRoamBSSID, 3);
                    break;
                case ClientModeImpl.CMD_ADD_KEEPALIVE_PACKET_FILTER_TO_APF /* 131281 */:
                    if (ClientModeImpl.this.mIpClient != null) {
                        int slot2 = message.arg1;
                        if (message.obj instanceof NattKeepalivePacketData) {
                            NattKeepalivePacketData pkt2 = (NattKeepalivePacketData) message.obj;
                            ClientModeImpl.this.mIpClient.addKeepalivePacketFilter(slot2, pkt2);
                        } else if (message.obj instanceof TcpKeepalivePacketData) {
                            TcpKeepalivePacketData pkt3 = (TcpKeepalivePacketData) message.obj;
                            ClientModeImpl.this.mIpClient.addKeepalivePacketFilter(slot2, pkt3);
                        }
                    }
                    break;
                case ClientModeImpl.CMD_REMOVE_KEEPALIVE_PACKET_FILTER_FROM_APF /* 131282 */:
                    if (ClientModeImpl.this.mIpClient != null) {
                        ClientModeImpl.this.mIpClient.removeKeepalivePacketFilter(message.arg1);
                    }
                    break;
                case ClientModeImpl.CMD_PRE_DHCP_ACTION /* 131327 */:
                    ClientModeImpl.this.handlePreDhcpSetup();
                    break;
                case ClientModeImpl.CMD_PRE_DHCP_ACTION_COMPLETE /* 131328 */:
                    if (ClientModeImpl.this.mIpClient != null) {
                        ClientModeImpl.this.mIpClient.completedPreDhcpAction();
                    }
                    break;
                case ClientModeImpl.CMD_POST_DHCP_ACTION /* 131329 */:
                    ClientModeImpl.this.mIsAutoRoamOngoing = false;
                    ClientModeImpl.this.handlePostDhcpSetup();
                    break;
                case WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST /* 143372 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 5);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl.this.mTemporarilyDisconnectWifi = true;
                        ClientModeImpl clientModeImpl12 = ClientModeImpl.this;
                        clientModeImpl12.transitionTo(clientModeImpl12.mDisconnectingState);
                    }
                    break;
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                    ClientModeImpl.this.mWifiInfo.setBSSID((String) message.obj);
                    ClientModeImpl.this.mLastNetworkId = message.arg1;
                    ClientModeImpl.this.mWifiInfo.setNetworkId(ClientModeImpl.this.mLastNetworkId);
                    ClientModeImpl.this.mWifiInfo.setMacAddress(ClientModeImpl.this.mWifiNative.getMacAddress(ClientModeImpl.this.mInterfaceName));
                    if (!ClientModeImpl.this.mLastBssid.equals(message.obj)) {
                        ClientModeImpl.this.mLastBssid = (String) message.obj;
                        ClientModeImpl clientModeImpl13 = ClientModeImpl.this;
                        clientModeImpl13.sendNetworkStateChangeBroadcast(clientModeImpl13.mLastBssid);
                    }
                    break;
                case 151553:
                    int netId = message.arg1;
                    if (ClientModeImpl.this.mWifiInfo.getNetworkId() == netId) {
                        ClientModeImpl.this.replyToMessage(message, 151555);
                    } else {
                        handleStatus = false;
                    }
                    break;
                case 151572:
                    RssiPacketCountInfo info = new RssiPacketCountInfo();
                    ClientModeImpl.this.fetchRssiLinkSpeedAndFrequencyNative();
                    info.rssi = ClientModeImpl.this.mWifiInfo.getRssi();
                    WifiNative.TxPacketCounters counters = ClientModeImpl.this.mWifiNative.getTxPacketCounters(ClientModeImpl.this.mInterfaceName);
                    if (counters == null) {
                        ClientModeImpl.this.replyToMessage(message, 151574, 0);
                    } else {
                        info.txgood = counters.txSucceeded;
                        info.txbad = counters.txFailed;
                        ClientModeImpl.this.replyToMessage(message, 151573, info);
                    }
                    break;
                default:
                    handleStatus = false;
                    break;
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }

        private WifiLinkLayerStats updateLinkLayerStatsRssiAndScoreReportInternal() {
            WifiLinkLayerStats stats = ClientModeImpl.this.getWifiLinkLayerStats();
            ClientModeImpl.this.fetchRssiLinkSpeedAndFrequencyNative();
            ClientModeImpl.this.mWifiScoreReport.calculateAndReportScore(ClientModeImpl.this.mWifiInfo, ClientModeImpl.this.mNetworkAgent, ClientModeImpl.this.mWifiMetrics);
            return stats;
        }
    }

    public void updateLinkLayerStatsRssiAndScoreReport() {
        sendMessage(CMD_ONESHOT_RSSI_POLL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int convertToUsabilityStatsTriggerType(int unusableEventTriggerType) {
        if (unusableEventTriggerType == 1) {
            return 1;
        }
        if (unusableEventTriggerType == 2) {
            return 2;
        }
        if (unusableEventTriggerType == 3) {
            return 3;
        }
        if (unusableEventTriggerType == 4) {
            return 4;
        }
        if (unusableEventTriggerType == 5) {
            return 5;
        }
        Log.e(TAG, "Unknown WifiIsUnusableEvent: " + unusableEventTriggerType);
        return 0;
    }

    class ObtainingIpState extends State {
        ObtainingIpState() {
        }

        public void enter() {
            ProvisioningConfiguration.Builder prov;
            WifiConfiguration currentConfig = ClientModeImpl.this.getCurrentWifiConfiguration();
            boolean z = false;
            boolean isUsingStaticIp = currentConfig.getIpAssignment() == IpConfiguration.IpAssignment.STATIC;
            if (currentConfig.macRandomizationSetting == 1 && ClientModeImpl.this.isConnectedMacRandomizationEnabled()) {
                z = true;
            }
            boolean isUsingMacRandomization = z;
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                String key = currentConfig.configKey();
                ClientModeImpl.this.log("enter ObtainingIpState netId=" + Integer.toString(ClientModeImpl.this.mLastNetworkId) + " " + key + "  roam=" + ClientModeImpl.this.mIsAutoRoaming + " static=" + isUsingStaticIp + " randomMac=" + isUsingMacRandomization);
            }
            ClientModeImpl.this.setNetworkDetailedState(NetworkInfo.DetailedState.OBTAINING_IPADDR);
            ClientModeImpl.this.clearTargetBssid("ObtainingIpAddress");
            ClientModeImpl.this.stopIpClient();
            if (ClientModeImpl.this.mIpClient != null) {
                ClientModeImpl.this.mIpClient.setHttpProxy(currentConfig.getHttpProxy());
                if (!TextUtils.isEmpty(ClientModeImpl.this.mTcpBufferSizes)) {
                    ClientModeImpl.this.mIpClient.setTcpBufferSizes(ClientModeImpl.this.mTcpBufferSizes);
                }
            }
            if (!isUsingStaticIp) {
                prov = new ProvisioningConfiguration.Builder().withPreDhcpAction().withApfCapabilities(ClientModeImpl.this.mWifiNative.getApfCapabilities(ClientModeImpl.this.mInterfaceName)).withNetwork(ClientModeImpl.this.getCurrentNetwork()).withDisplayName(currentConfig.SSID);
                if (isUsingMacRandomization) {
                    prov.withRandomMacAddress();
                }
            } else {
                StaticIpConfiguration staticIpConfig = currentConfig.getStaticIpConfiguration();
                prov = new ProvisioningConfiguration.Builder().withStaticConfiguration(staticIpConfig).withApfCapabilities(ClientModeImpl.this.mWifiNative.getApfCapabilities(ClientModeImpl.this.mInterfaceName)).withNetwork(ClientModeImpl.this.getCurrentNetwork()).withDisplayName(currentConfig.SSID);
            }
            if (ClientModeImpl.this.mIpClient != null) {
                ClientModeImpl.this.mIpClient.startProvisioning(prov.build());
            }
            ClientModeImpl.this.getWifiLinkLayerStats();
        }

        public boolean processMessage(Message message) {
            boolean handleStatus = true;
            switch (message.what) {
                case ClientModeImpl.CMD_SET_HIGH_PERF_MODE /* 131149 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DEFERRED;
                    ClientModeImpl.this.deferMessage(message);
                    break;
                case ClientModeImpl.CMD_START_CONNECT /* 131215 */:
                case ClientModeImpl.CMD_START_ROAM /* 131217 */:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    ClientModeImpl.this.reportConnectionAttemptEnd(6, 1, 0);
                    handleStatus = false;
                    break;
                case 151559:
                    ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DEFERRED;
                    ClientModeImpl.this.deferMessage(message);
                    break;
                default:
                    handleStatus = false;
                    break;
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }
    }

    @VisibleForTesting
    public boolean shouldEvaluateWhetherToSendExplicitlySelected(WifiConfiguration currentConfig) {
        if (currentConfig == null) {
            Log.wtf(TAG, "Current WifiConfiguration is null, but IP provisioning just succeeded");
            return false;
        }
        long currentTimeMillis = this.mClock.getElapsedSinceBootMillis();
        return this.mWifiConfigManager.getLastSelectedNetwork() == currentConfig.networkId && currentTimeMillis - this.mWifiConfigManager.getLastSelectedTimeStamp() < 30000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendConnectedState() {
        WifiConfiguration config = getCurrentWifiConfiguration();
        boolean explicitlySelected = false;
        if (shouldEvaluateWhetherToSendExplicitlySelected(config)) {
            explicitlySelected = this.mWifiPermissionsUtil.checkNetworkSettingsPermission(config.lastConnectUid);
            if (this.mVerboseLoggingEnabled) {
                log("Network selected by UID " + config.lastConnectUid + " explicitlySelected=" + explicitlySelected);
            }
        }
        if (this.mVerboseLoggingEnabled) {
            log("explictlySelected=" + explicitlySelected + " acceptUnvalidated=" + config.noInternetAccessExpected);
        }
        WifiNetworkAgent wifiNetworkAgent = this.mNetworkAgent;
        if (wifiNetworkAgent != null) {
            wifiNetworkAgent.explicitlySelected(explicitlySelected, config.noInternetAccessExpected);
        }
        setNetworkDetailedState(NetworkInfo.DetailedState.CONNECTED);
        sendNetworkStateChangeBroadcast(this.mLastBssid);
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            wifiNetworkMonitor.updateNetworkState(this.mWifiInfo, NetworkInfo.DetailedState.CONNECTED, this.mWifiState.get());
        }
    }

    class RoamingState extends State {
        boolean mAssociated;

        RoamingState() {
        }

        public void enter() {
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                ClientModeImpl.this.log("RoamingState Enter mScreenOn=" + ClientModeImpl.this.mScreenOn);
            }
            ClientModeImpl.this.mRoamWatchdogCount++;
            ClientModeImpl.this.logd("Start Roam Watchdog " + ClientModeImpl.this.mRoamWatchdogCount);
            ClientModeImpl clientModeImpl = ClientModeImpl.this;
            clientModeImpl.sendMessageDelayed(clientModeImpl.obtainMessage(ClientModeImpl.CMD_ROAM_WATCHDOG_TIMER, clientModeImpl.mRoamWatchdogCount, 0), 15000L);
            this.mAssociated = false;
        }

        public boolean processMessage(Message message) {
            boolean handleStatus = true;
            switch (message.what) {
                case ClientModeImpl.CMD_ROAM_WATCHDOG_TIMER /* 131166 */:
                    if (ClientModeImpl.this.mRoamWatchdogCount == message.arg1) {
                        if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                            ClientModeImpl.this.log("roaming watchdog! -> disconnect");
                        }
                        ClientModeImpl.this.mWifiMetrics.endConnectionEvent(9, 1, 0);
                        ClientModeImpl.access$12608(ClientModeImpl.this);
                        ClientModeImpl.this.handleNetworkDisconnect();
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 4);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl clientModeImpl = ClientModeImpl.this;
                        clientModeImpl.transitionTo(clientModeImpl.mDisconnectedState);
                    }
                    break;
                case ClientModeImpl.CMD_IP_CONFIGURATION_LOST /* 131211 */:
                    WifiConfiguration config = ClientModeImpl.this.getCurrentWifiConfiguration();
                    if (config != null) {
                        ClientModeImpl.this.mWifiDiagnostics.captureBugReportData(3);
                    }
                    handleStatus = false;
                    break;
                case ClientModeImpl.CMD_UNWANTED_NETWORK /* 131216 */:
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl.this.log("Roaming and CS doesn't want the network -> ignore");
                    }
                    break;
                case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                    if (this.mAssociated) {
                        if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                            ClientModeImpl.this.log("roaming and Network connection established");
                        }
                        ClientModeImpl.this.mLastNetworkId = message.arg1;
                        ClientModeImpl.this.mLastBssid = (String) message.obj;
                        ClientModeImpl.this.mWifiInfo.setBSSID(ClientModeImpl.this.mLastBssid);
                        ClientModeImpl.this.mWifiInfo.setNetworkId(ClientModeImpl.this.mLastNetworkId);
                        int reasonCode = message.arg2;
                        ClientModeImpl.this.mWifiConnectivityManager.trackBssid(ClientModeImpl.this.mLastBssid, true, reasonCode);
                        ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                        clientModeImpl2.sendNetworkStateChangeBroadcast(clientModeImpl2.mLastBssid);
                        ClientModeImpl.this.reportConnectionAttemptEnd(1, 1, 0);
                        ClientModeImpl.this.clearTargetBssid("RoamingCompleted");
                        ClientModeImpl clientModeImpl3 = ClientModeImpl.this;
                        clientModeImpl3.transitionTo(clientModeImpl3.mConnectedState);
                    } else {
                        ClientModeImpl.this.mMessageHandlingStatus = ClientModeImpl.MESSAGE_HANDLING_STATUS_DISCARD;
                    }
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    String bssid = (String) message.obj;
                    String target = "";
                    if (ClientModeImpl.this.mTargetRoamBSSID != null) {
                        target = ClientModeImpl.this.mTargetRoamBSSID;
                    }
                    ClientModeImpl.this.log("NETWORK_DISCONNECTION_EVENT in roaming state BSSID=" + bssid + " target=" + target);
                    if (bssid != null && bssid.equals(ClientModeImpl.this.mTargetRoamBSSID)) {
                        ClientModeImpl.this.handleNetworkDisconnect();
                        ClientModeImpl clientModeImpl4 = ClientModeImpl.this;
                        clientModeImpl4.transitionTo(clientModeImpl4.mDisconnectedState);
                    }
                    break;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
                    if (stateChangeResult.state == SupplicantState.DISCONNECTED || stateChangeResult.state == SupplicantState.INACTIVE || stateChangeResult.state == SupplicantState.INTERFACE_DISABLED) {
                        if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                            ClientModeImpl.this.log("STATE_CHANGE_EVENT in roaming state " + stateChangeResult.toString());
                        }
                        if (stateChangeResult.BSSID != null && stateChangeResult.BSSID.equals(ClientModeImpl.this.mTargetRoamBSSID)) {
                            ClientModeImpl.this.handleNetworkDisconnect();
                            ClientModeImpl clientModeImpl5 = ClientModeImpl.this;
                            clientModeImpl5.transitionTo(clientModeImpl5.mDisconnectedState);
                        }
                    }
                    if (stateChangeResult.state == SupplicantState.ASSOCIATED) {
                        this.mAssociated = true;
                        if (stateChangeResult.BSSID != null) {
                            ClientModeImpl.this.mTargetRoamBSSID = stateChangeResult.BSSID;
                        }
                    }
                    break;
                default:
                    handleStatus = false;
                    break;
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }

        public void exit() {
            ClientModeImpl.this.logd("ClientModeImpl: Leaving Roaming state");
        }
    }

    class ConnectedState extends State {
        ConnectedState() {
        }

        public void enter() {
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                ClientModeImpl.this.log("Enter ConnectedState  mScreenOn=" + ClientModeImpl.this.mScreenOn);
            }
            ClientModeImpl.this.reportConnectionAttemptEnd(1, 1, 0);
            ClientModeImpl.this.mWifiConnectivityManager.handleConnectionStateChanged(1);
            ClientModeImpl.this.registerConnected();
            ClientModeImpl.this.mLastConnectAttemptTimestamp = 0L;
            ClientModeImpl.this.mTargetWifiConfiguration = null;
            ClientModeImpl.this.mWifiScoreReport.reset();
            ClientModeImpl.this.mLastSignalLevel = -1;
            ClientModeImpl.this.mIsAutoRoaming = false;
            ClientModeImpl.this.mLastDriverRoamAttempt = 0L;
            ClientModeImpl.this.mLastUserConnectAttempt = 0L;
            ClientModeImpl.this.mTargetNetworkId = -1;
            ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().connectedStateTransition(true);
            ClientModeImpl.this.mWifiStateTracker.updateState(3);
            WifiLockManager wifiLockManager = ClientModeImpl.this.mWifiInjector.getWifiLockManager();
            wifiLockManager.updateWifiClientConnected(true);
            if (ClientModeImpl.this.mWifiFeaturesUtils.isSupportAppConnectPolicy()) {
                boolean cmccWarning = ClientModeImpl.this.mFacade.getIntegerSetting(ClientModeImpl.this.mContext, "wifi_connected_warning_flag", 1) == 1;
                String currentSsid = ClientModeImpl.this.mWifiInfo != null ? ClientModeImpl.this.mWifiInfo.getSSID() : null;
                if (cmccWarning && ScanResultUtil.createQuotedSSID("CMCC").equals(currentSsid)) {
                    try {
                        Intent intent = new Intent();
                        intent.setClassName("com.android.settings", "com.sprd.settings.wifi.WifiConnectedWarningActivity");
                        intent.addFlags(268435456);
                        ClientModeImpl.this.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                    } catch (Exception e) {
                        Log.e(ClientModeImpl.TAG, "unable to start cmcc warning activity.", e);
                    }
                }
            }
        }

        public boolean processMessage(Message message) {
            String str;
            boolean handleStatus = true;
            switch (message.what) {
                case ClientModeImpl.CMD_UNWANTED_NETWORK /* 131216 */:
                    if (message.arg1 == 0) {
                        ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 3);
                        ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                        ClientModeImpl clientModeImpl = ClientModeImpl.this;
                        clientModeImpl.transitionTo(clientModeImpl.mDisconnectingState);
                    } else if (message.arg1 == 2 || message.arg1 == 1) {
                        if (message.arg1 == 2) {
                            str = "NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN";
                        } else {
                            str = "NETWORK_STATUS_UNWANTED_VALIDATION_FAILED";
                        }
                        Log.d(ClientModeImpl.TAG, str);
                        WifiConfiguration config = ClientModeImpl.this.getCurrentWifiConfiguration();
                        if (config != null) {
                            if (message.arg1 == 2) {
                                ClientModeImpl.this.mWifiConfigManager.setNetworkValidatedInternetAccess(config.networkId, false);
                                ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(config.networkId, 10);
                            } else {
                                ClientModeImpl.this.removeMessages(ClientModeImpl.CMD_DIAGS_CONNECT_TIMEOUT);
                                ClientModeImpl.this.mWifiDiagnostics.reportConnectionEvent((byte) 2);
                                ClientModeImpl.this.mWifiConfigManager.incrementNetworkNoInternetAccessReports(config.networkId);
                                if (ClientModeImpl.this.mWifiConfigManager.getLastSelectedNetwork() != config.networkId && !config.noInternetAccessExpected) {
                                    Log.i(ClientModeImpl.TAG, "Temporarily disabling network because ofno-internet access");
                                    ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(config.networkId, 6);
                                }
                            }
                        }
                    }
                    break;
                case ClientModeImpl.CMD_START_ROAM /* 131217 */:
                    ClientModeImpl.this.mLastDriverRoamAttempt = 0L;
                    int netId = message.arg1;
                    ScanResult candidate = (ScanResult) message.obj;
                    String bssid = "any";
                    if (candidate != null) {
                        bssid = candidate.BSSID;
                    }
                    WifiConfiguration config2 = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetworkWithoutMasking(netId);
                    if (config2 != null) {
                        ClientModeImpl.this.mWifiScoreCard.noteConnectionAttempt(ClientModeImpl.this.mWifiInfo);
                        ClientModeImpl.this.setTargetBssid(config2, bssid);
                        ClientModeImpl.this.mTargetNetworkId = netId;
                        ClientModeImpl.this.logd("CMD_START_ROAM sup state " + ClientModeImpl.this.mSupplicantStateTracker.getSupplicantStateName() + " my state " + ClientModeImpl.this.getCurrentState().getName() + " nid=" + Integer.toString(netId) + " config " + config2.configKey() + " targetRoamBSSID " + ClientModeImpl.this.mTargetRoamBSSID);
                        ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                        clientModeImpl2.reportConnectionAttemptStart(config2, clientModeImpl2.mTargetRoamBSSID, 3);
                        if (ClientModeImpl.this.mWifiNative.roamToNetwork(ClientModeImpl.this.mInterfaceName, config2)) {
                            ClientModeImpl clientModeImpl3 = ClientModeImpl.this;
                            clientModeImpl3.mLastConnectAttemptTimestamp = clientModeImpl3.mClock.getWallClockMillis();
                            ClientModeImpl.this.mTargetWifiConfiguration = config2;
                            ClientModeImpl.this.mIsAutoRoaming = true;
                            ClientModeImpl.this.mWifiMetrics.logStaEvent(12, config2);
                            ClientModeImpl clientModeImpl4 = ClientModeImpl.this;
                            clientModeImpl4.transitionTo(clientModeImpl4.mRoamingState);
                        } else {
                            ClientModeImpl.this.loge("CMD_START_ROAM Failed to start roaming to network " + config2);
                            ClientModeImpl.this.reportConnectionAttemptEnd(5, 1, 0);
                            ClientModeImpl.this.replyToMessage(message, 151554, 0);
                            ClientModeImpl.this.mMessageHandlingStatus = -2;
                        }
                    } else {
                        ClientModeImpl.this.loge("CMD_START_ROAM and no config, bail out...");
                    }
                    break;
                case ClientModeImpl.CMD_ASSOCIATED_BSSID /* 131219 */:
                    ClientModeImpl clientModeImpl5 = ClientModeImpl.this;
                    clientModeImpl5.mLastDriverRoamAttempt = clientModeImpl5.mClock.getWallClockMillis();
                    handleStatus = false;
                    break;
                case ClientModeImpl.CMD_NETWORK_STATUS /* 131220 */:
                    if (message.arg1 == 1) {
                        ClientModeImpl.this.removeMessages(ClientModeImpl.CMD_DIAGS_CONNECT_TIMEOUT);
                        ClientModeImpl.this.mWifiDiagnostics.reportConnectionEvent((byte) 1);
                        ClientModeImpl.this.mWifiScoreCard.noteValidationSuccess(ClientModeImpl.this.mWifiInfo);
                        WifiConfiguration config3 = ClientModeImpl.this.getCurrentWifiConfiguration();
                        if (config3 != null) {
                            ClientModeImpl.this.mWifiConfigManager.updateNetworkSelectionStatus(config3.networkId, 0);
                            ClientModeImpl.this.mWifiConfigManager.setNetworkValidatedInternetAccess(config3.networkId, true);
                        }
                    }
                    break;
                case ClientModeImpl.CMD_ACCEPT_UNVALIDATED /* 131225 */:
                    boolean accept = message.arg1 != 0;
                    ClientModeImpl.this.mWifiConfigManager.setNetworkNoInternetAccessExpected(ClientModeImpl.this.mLastNetworkId, accept);
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    ClientModeImpl.this.reportConnectionAttemptEnd(6, 1, 0);
                    if (ClientModeImpl.this.mLastDriverRoamAttempt != 0) {
                        long lastRoam = ClientModeImpl.this.mClock.getWallClockMillis() - ClientModeImpl.this.mLastDriverRoamAttempt;
                        ClientModeImpl.this.mLastDriverRoamAttempt = 0L;
                    }
                    if (ClientModeImpl.unexpectedDisconnectedReason(message.arg2)) {
                        ClientModeImpl.this.mWifiDiagnostics.captureBugReportData(5);
                    }
                    WifiConfiguration config4 = ClientModeImpl.this.getCurrentWifiConfiguration();
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl clientModeImpl6 = ClientModeImpl.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append("NETWORK_DISCONNECTION_EVENT in connected state BSSID=");
                        sb.append(ClientModeImpl.this.mWifiInfo.getBSSID());
                        sb.append(" RSSI=");
                        sb.append(ClientModeImpl.this.mWifiInfo.getRssi());
                        sb.append(" freq=");
                        sb.append(ClientModeImpl.this.mWifiInfo.getFrequency());
                        sb.append(" reason=");
                        sb.append(message.arg2);
                        sb.append(" Network Selection Status=");
                        sb.append(config4 == null ? "Unavailable" : config4.getNetworkSelectionStatus().getNetworkStatusString());
                        clientModeImpl6.log(sb.toString());
                    }
                    break;
                case WifiMonitor.OFFLOAD_ROAM_NOTIFY_EVENT /* 147522 */:
                    ClientModeImpl.this.logd("OFFLOAD_ROAM_NOTIFY_EVENT");
                    ClientModeImpl.this.mIsOffloading = true;
                    break;
                default:
                    handleStatus = false;
                    break;
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }

        public void exit() {
            ClientModeImpl.this.logd("ClientModeImpl: Leaving Connected state");
            ClientModeImpl.this.mWifiConnectivityManager.handleConnectionStateChanged(3);
            ClientModeImpl.this.mLastDriverRoamAttempt = 0L;
            ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().connectedStateTransition(false);
        }
    }

    class DisconnectingState extends State {
        DisconnectingState() {
        }

        public void enter() {
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                ClientModeImpl.this.logd(" Enter DisconnectingState State screenOn=" + ClientModeImpl.this.mScreenOn);
            }
            ClientModeImpl.this.mDisconnectingWatchdogCount++;
            ClientModeImpl.this.logd("Start Disconnecting Watchdog " + ClientModeImpl.this.mDisconnectingWatchdogCount);
            ClientModeImpl clientModeImpl = ClientModeImpl.this;
            clientModeImpl.sendMessageDelayed(clientModeImpl.obtainMessage(ClientModeImpl.CMD_DISCONNECTING_WATCHDOG_TIMER, clientModeImpl.mDisconnectingWatchdogCount, 0), RttServiceImpl.HAL_RANGING_TIMEOUT_MS);
        }

        public boolean processMessage(Message message) {
            boolean handleStatus = true;
            int i = message.what;
            if (i != ClientModeImpl.CMD_DISCONNECT) {
                if (i != ClientModeImpl.CMD_DISCONNECTING_WATCHDOG_TIMER) {
                    if (i == 147462) {
                        ClientModeImpl.this.deferMessage(message);
                        ClientModeImpl.this.handleNetworkDisconnect();
                        ClientModeImpl clientModeImpl = ClientModeImpl.this;
                        clientModeImpl.transitionTo(clientModeImpl.mDisconnectedState);
                    } else {
                        handleStatus = false;
                    }
                } else if (ClientModeImpl.this.mDisconnectingWatchdogCount == message.arg1) {
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl.this.log("disconnecting watchdog! -> disconnect");
                    }
                    ClientModeImpl.this.handleNetworkDisconnect();
                    ClientModeImpl clientModeImpl2 = ClientModeImpl.this;
                    clientModeImpl2.transitionTo(clientModeImpl2.mDisconnectedState);
                }
            } else if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                ClientModeImpl.this.log("Ignore CMD_DISCONNECT when already disconnecting.");
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }
    }

    class DisconnectedState extends State {
        DisconnectedState() {
        }

        public void enter() {
            Log.i(ClientModeImpl.TAG, "disconnectedstate enter");
            if (ClientModeImpl.this.mTemporarilyDisconnectWifi) {
                ClientModeImpl.this.p2pSendMessage(WifiP2pServiceImpl.DISCONNECT_WIFI_RESPONSE);
                return;
            }
            if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                ClientModeImpl.this.logd(" Enter DisconnectedState screenOn=" + ClientModeImpl.this.mScreenOn);
            }
            ClientModeImpl.this.mIsAutoRoaming = false;
            ClientModeImpl.this.mWifiConnectivityManager.handleConnectionStateChanged(2);
        }

        public boolean processMessage(Message message) {
            boolean handleStatus = true;
            switch (message.what) {
                case ClientModeImpl.CMD_DISCONNECT /* 131145 */:
                    ClientModeImpl.this.mWifiMetrics.logStaEvent(15, 2);
                    ClientModeImpl.this.mWifiNative.disconnect(ClientModeImpl.this.mInterfaceName);
                    break;
                case ClientModeImpl.CMD_RECONNECT /* 131146 */:
                case ClientModeImpl.CMD_REASSOCIATE /* 131147 */:
                    if (!ClientModeImpl.this.mTemporarilyDisconnectWifi) {
                        handleStatus = false;
                    }
                    break;
                case ClientModeImpl.CMD_SCREEN_STATE_CHANGED /* 131167 */:
                    ClientModeImpl.this.handleScreenStateChanged(message.arg1 != 0);
                    break;
                case WifiP2pServiceImpl.P2P_CONNECTION_CHANGED /* 143371 */:
                    NetworkInfo info = (NetworkInfo) message.obj;
                    ClientModeImpl.this.mP2pConnected.set(info.isConnected());
                    break;
                case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                    if (message.arg2 == 15) {
                        String bssid = message.obj == null ? ClientModeImpl.this.mTargetRoamBSSID : (String) message.obj;
                        ClientModeImpl.this.mWifiInjector.getWifiLastResortWatchdog().noteConnectionFailureAndTriggerIfNeeded(ClientModeImpl.this.getTargetSsid(), bssid, 2);
                        if (ClientModeImpl.this.mWifiFeaturesUtils.isConnectMaxTimeDisableNetworkSupported()) {
                            ClientModeImpl.this.checkIsSwitchSimCard();
                        }
                    }
                    break;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
                    if (ClientModeImpl.this.mVerboseLoggingEnabled) {
                        ClientModeImpl.this.logd("SUPPLICANT_STATE_CHANGE_EVENT state=" + stateChangeResult.state + " -> state= " + WifiInfo.getDetailedStateOf(stateChangeResult.state));
                    }
                    if (SupplicantState.isConnecting(stateChangeResult.state)) {
                        WifiConfiguration config = ClientModeImpl.this.mWifiConfigManager.getConfiguredNetwork(stateChangeResult.networkId);
                        ClientModeImpl.this.mWifiInfo.setFQDN(null);
                        ClientModeImpl.this.mWifiInfo.setOsuAp(false);
                        ClientModeImpl.this.mWifiInfo.setProviderFriendlyName(null);
                        if (config != null && (config.isPasspoint() || config.osu)) {
                            if (config.isPasspoint()) {
                                ClientModeImpl.this.mWifiInfo.setFQDN(config.FQDN);
                            } else {
                                ClientModeImpl.this.mWifiInfo.setOsuAp(true);
                            }
                            ClientModeImpl.this.mWifiInfo.setProviderFriendlyName(config.providerFriendlyName);
                        }
                    }
                    ClientModeImpl.this.setNetworkDetailedState(WifiInfo.getDetailedStateOf(stateChangeResult.state));
                    handleStatus = false;
                    break;
                default:
                    handleStatus = false;
                    break;
            }
            if (handleStatus) {
                ClientModeImpl.this.logStateAndMessage(message, this);
            }
            return handleStatus;
        }

        public void exit() {
            ClientModeImpl.this.mWifiConnectivityManager.handleConnectionStateChanged(3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message msg, int what) {
        if (msg.replyTo == null) {
            return;
        }
        Message dstMsg = obtainMessageWithWhatAndArg2(msg, what);
        this.mReplyChannel.replyToMessage(msg, dstMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message msg, int what, int arg1) {
        if (msg.replyTo == null) {
            return;
        }
        Message dstMsg = obtainMessageWithWhatAndArg2(msg, what);
        dstMsg.arg1 = arg1;
        this.mReplyChannel.replyToMessage(msg, dstMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyToMessage(Message msg, int what, Object obj) {
        if (msg.replyTo == null) {
            return;
        }
        Message dstMsg = obtainMessageWithWhatAndArg2(msg, what);
        dstMsg.obj = obj;
        this.mReplyChannel.replyToMessage(msg, dstMsg);
    }

    private Message obtainMessageWithWhatAndArg2(Message srcMsg, int what) {
        Message msg = Message.obtain();
        msg.what = what;
        msg.arg2 = srcMsg.arg2;
        return msg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastWifiCredentialChanged(int wifiCredentialEventType, WifiConfiguration config) {
        if (config != null && config.preSharedKey != null) {
            Intent intent = new Intent("android.net.wifi.WIFI_CREDENTIAL_CHANGED");
            intent.putExtra(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_SSID, config.SSID);
            intent.putExtra("et", wifiCredentialEventType);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.CURRENT, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE");
        }
    }

    void handleGsmAuthRequest(TelephonyUtil.SimAuthRequestData requestData) {
        WifiConfiguration wifiConfiguration = this.mTargetWifiConfiguration;
        if (wifiConfiguration == null || wifiConfiguration.networkId == requestData.networkId) {
            logd("id matches targetWifiConfiguration");
            int subId = SubscriptionManager.getSubId(this.mTargetWifiConfiguration.enterpriseConfig.getSimNum())[0];
            String response = TelephonyUtil.getGsmSimAuthResponse(requestData.data, getTelephonyManager(), subId);
            if (response == null && (response = TelephonyUtil.getGsmSimpleSimAuthResponse(requestData.data, getTelephonyManager())) == null) {
                response = TelephonyUtil.getGsmSimpleSimNoLengthAuthResponse(requestData.data, getTelephonyManager());
            }
            if (response == null || response.length() == 0) {
                this.mWifiNative.simAuthFailedResponse(this.mInterfaceName, requestData.networkId);
                return;
            }
            logv("Supplicant Response -" + response);
            this.mWifiNative.simAuthResponse(this.mInterfaceName, requestData.networkId, WifiNative.SIM_AUTH_RESP_TYPE_GSM_AUTH, response);
            return;
        }
        logd("id does not match targetWifiConfiguration");
    }

    void handle3GAuthRequest(TelephonyUtil.SimAuthRequestData requestData) {
        WifiConfiguration wifiConfiguration = this.mTargetWifiConfiguration;
        if (wifiConfiguration == null || wifiConfiguration.networkId == requestData.networkId) {
            logd("id matches targetWifiConfiguration");
            int subId = SubscriptionManager.getSubId(this.mTargetWifiConfiguration.enterpriseConfig.getSimNum())[0];
            TelephonyUtil.SimAuthResponseData response = TelephonyUtil.get3GAuthResponse(requestData, getTelephonyManager(), subId);
            if (response != null) {
                this.mWifiNative.simAuthResponse(this.mInterfaceName, requestData.networkId, response.type, response.response);
                return;
            } else {
                this.mWifiNative.umtsAuthFailedResponse(this.mInterfaceName, requestData.networkId);
                return;
            }
        }
        logd("id does not match targetWifiConfiguration");
    }

    public void startConnectToNetwork(int networkId, int uid, String bssid) {
        sendMessage(CMD_START_CONNECT, networkId, uid, bssid);
    }

    public void startRoamToNetwork(int networkId, ScanResult scanResult) {
        sendMessage(CMD_START_ROAM, networkId, 0, scanResult);
    }

    public void enableWifiConnectivityManager(boolean z) {
        sendMessage(CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER, z ? 1 : 0);
    }

    static boolean unexpectedDisconnectedReason(int reason) {
        return reason == 2 || reason == 6 || reason == 7 || reason == 8 || reason == 9 || reason == 14 || reason == 15 || reason == 16 || reason == 18 || reason == 19 || reason == 23 || reason == 34;
    }

    public void updateWifiMetrics() {
        this.mWifiMetrics.updateSavedNetworks(this.mWifiConfigManager.getSavedNetworks(1010));
        this.mPasspointManager.updateMetrics();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean deleteNetworkConfigAndSendReply(Message message, boolean calledFromForget) {
        boolean success = this.mWifiConfigManager.removeNetwork(message.arg1, message.sendingUid);
        if (!success) {
            loge("Failed to remove network");
        }
        if (calledFromForget) {
            if (!success) {
                replyToMessage(message, 151557, 0);
                return false;
            }
            replyToMessage(message, 151558);
            broadcastWifiCredentialChanged(1, (WifiConfiguration) message.obj);
            return true;
        }
        if (success) {
            replyToMessage(message, message.what, 1);
            return true;
        }
        this.mMessageHandlingStatus = -2;
        replyToMessage(message, message.what, -1);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkUpdateResult saveNetworkConfigAndSendReply(Message message) {
        WifiConfiguration config = (WifiConfiguration) message.obj;
        if (config == null) {
            loge("SAVE_NETWORK with null configuration " + this.mSupplicantStateTracker.getSupplicantStateName() + " my state " + getCurrentState().getName());
            this.mMessageHandlingStatus = -2;
            replyToMessage(message, 151560, 0);
            return new NetworkUpdateResult(-1);
        }
        NetworkUpdateResult result = this.mWifiConfigManager.addOrUpdateNetwork(config, message.sendingUid);
        if (!result.isSuccess()) {
            loge("SAVE_NETWORK adding/updating config=" + config + " failed");
            this.mMessageHandlingStatus = -2;
            replyToMessage(message, 151560, 0);
            return result;
        }
        if (!this.mWifiConfigManager.enableNetwork(result.getNetworkId(), false, message.sendingUid)) {
            loge("SAVE_NETWORK enabling config=" + config + " failed");
            this.mMessageHandlingStatus = -2;
            replyToMessage(message, 151560, 0);
            return new NetworkUpdateResult(-1);
        }
        broadcastWifiCredentialChanged(0, config);
        replyToMessage(message, 151561);
        return result;
    }

    private static String getLinkPropertiesSummary(LinkProperties lp) {
        List<String> attributes = new ArrayList<>(6);
        if (lp.hasIPv4Address()) {
            attributes.add("v4");
        }
        if (lp.hasIPv4DefaultRoute()) {
            attributes.add("v4r");
        }
        if (lp.hasIPv4DnsServer()) {
            attributes.add("v4dns");
        }
        if (lp.hasGlobalIPv6Address()) {
            attributes.add("v6");
        }
        if (lp.hasIPv6DefaultRoute()) {
            attributes.add("v6r");
        }
        if (lp.hasIPv6DnsServer()) {
            attributes.add("v6dns");
        }
        return TextUtils.join(" ", attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTargetSsid() {
        WifiConfiguration currentConfig = this.mWifiConfigManager.getConfiguredNetwork(this.mTargetNetworkId);
        if (currentConfig != null) {
            return currentConfig.SSID;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p2pSendMessage(int what) {
        AsyncChannel asyncChannel = this.mWifiP2pChannel;
        if (asyncChannel != null) {
            asyncChannel.sendMessage(what);
            return true;
        }
        return false;
    }

    private boolean p2pSendMessage(int what, int arg1) {
        AsyncChannel asyncChannel = this.mWifiP2pChannel;
        if (asyncChannel != null) {
            asyncChannel.sendMessage(what, arg1);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasConnectionRequests() {
        return this.mNetworkFactory.hasConnectionRequests() || this.mUntrustedNetworkFactory.hasConnectionRequests();
    }

    public boolean getIpReachabilityDisconnectEnabled() {
        return this.mIpReachabilityDisconnectEnabled;
    }

    public void setIpReachabilityDisconnectEnabled(boolean enabled) {
        this.mIpReachabilityDisconnectEnabled = enabled;
    }

    public boolean syncInitialize(AsyncChannel channel) {
        if (channel == null) {
            return false;
        }
        Message resultMsg = channel.sendMessageSynchronously(CMD_INITIALIZE);
        boolean result = resultMsg.arg1 != -1;
        resultMsg.recycle();
        return result;
    }

    public void addNetworkRequestMatchCallback(IBinder binder, INetworkRequestMatchCallback callback, int callbackIdentifier) {
        this.mNetworkFactory.addCallback(binder, callback, callbackIdentifier);
    }

    public void removeNetworkRequestMatchCallback(int callbackIdentifier) {
        this.mNetworkFactory.removeCallback(callbackIdentifier);
    }

    public void removeNetworkRequestUserApprovedAccessPointsForApp(String packageName) {
        this.mNetworkFactory.removeUserApprovedAccessPointsForApp(packageName);
    }

    public void clearNetworkRequestUserApprovedAccessPoints() {
        this.mNetworkFactory.clear();
    }

    public String getFactoryMacAddress() {
        MacAddress macAddress = this.mWifiNative.getFactoryMacAddress(this.mInterfaceName);
        if (macAddress != null) {
            return macAddress.toString();
        }
        if (!this.mConnectedMacRandomzationSupported) {
            return this.mWifiNative.getMacAddress(this.mInterfaceName);
        }
        return null;
    }

    public void setDeviceMobilityState(int state) {
        this.mWifiConnectivityManager.setDeviceMobilityState(state);
    }

    public void updateWifiUsabilityScore(int seqNum, int score, int predictionHorizonSec) {
        this.mWifiMetrics.incrementWifiUsabilityScoreCount(seqNum, score, predictionHorizonSec);
    }

    @VisibleForTesting
    public void probeLink(WifiNative.SendMgmtFrameCallback callback, int mcs) {
        this.mWifiNative.probeLink(this.mInterfaceName, MacAddress.fromString(this.mWifiInfo.getBSSID()), callback, mcs);
    }

    private String getCurrentCountryCode() {
        return getTelephonyManager().getNetworkCountryIso();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentCountryCode() {
        String currentCountryCode = getCurrentCountryCode();
        String countryCode = this.mCountryCode.getCountryCode();
        if (TextUtils.isEmpty(currentCountryCode)) {
            currentCountryCode = Settings.Global.getString(this.mContext.getContentResolver(), "wifi_country_code");
        }
        if (!TextUtils.isEmpty(currentCountryCode) && !currentCountryCode.equalsIgnoreCase(countryCode)) {
            this.mCountryCode.setCountryCode(currentCountryCode);
            Settings.Global.putString(this.mContext.getContentResolver(), "wifi_country_code", currentCountryCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsSwitchSimCard() {
        WifiConfiguration targetedNetwork = this.mWifiConfigManager.getConfiguredNetwork(this.mTargetNetworkId);
        if (targetedNetwork != null) {
            int maxConnectTime = targetedNetwork.enterpriseConfig.getMaxConnectTIme();
            String imsi = targetedNetwork.enterpriseConfig.getImsi();
            if (maxConnectTime > 0 && imsi != null) {
                this.mAttemptConnectTime++;
                Log.d(TAG, "SwitchSimCardConfig mAttemptConnectTime = " + this.mAttemptConnectTime);
                if (this.mAttemptConnectTime >= maxConnectTime) {
                    int slotEnabled = this.mWifiInjector.getCarrierNetworkConfig().checkEapNetworkSlot(imsi, getTelephonyManager());
                    if (slotEnabled >= getTelephonyManager().getPhoneCount() && targetedNetwork.enterpriseConfig.getSimNum() == 0) {
                        targetedNetwork.enterpriseConfig.setSimNum(1);
                        targetedNetwork.enterpriseConfig.setAnonymousIdentity("");
                        NetworkUpdateResult result = this.mWifiConfigManager.addOrUpdateNetwork(targetedNetwork, 1010);
                        if (!result.isSuccess()) {
                            loge("CheckIsSwitchSimCard failed to add preset network: " + targetedNetwork);
                            return;
                        }
                        if (!this.mWifiConfigManager.enableNetwork(result.getNetworkId(), false, 1010)) {
                            loge("CheckIsSwitchSimCard failed to enable preset network: " + targetedNetwork);
                            return;
                        }
                        return;
                    }
                    targetedNetwork.getNetworkSelectionStatus().setNetworkSelectionDisableReason(11);
                    this.mWifiConfigManager.disableNetwork(targetedNetwork.networkId, 1010);
                    this.mDisabledNetworkId = targetedNetwork.networkId;
                }
            }
        }
    }

    private class SoftApClient {
        public String mac;
        public String name;

        public SoftApClient(String _mac, String _name) {
            this.mac = _mac;
            this.name = _name;
        }
    }

    WpsResult softApStartWpsPbc(WpsInfo config) {
        WpsResult result = new WpsResult();
        if (this.mWifiNative.softApStartWpsPbc()) {
            result.status = WpsResult.Status.SUCCESS;
        } else {
            loge("Failed to start WPS push button configuration");
            result.status = WpsResult.Status.FAILURE;
        }
        return result;
    }

    WpsResult softApStartWpsPinKeypad(WpsInfo config) {
        WpsResult result = new WpsResult();
        if (this.mWifiNative.softApStartWpsPinKeypad(config.pin)) {
            result.status = WpsResult.Status.SUCCESS;
        } else {
            loge("Failed to start WPS pin method configuration");
            result.status = WpsResult.Status.FAILURE;
        }
        return result;
    }

    public boolean syncSoftApWpsCheckPin(String wpsPin) {
        return this.mWifiNative.softApCheckWpsPin(wpsPin);
    }

    public boolean syncSoftApBlockStation(String mac) {
        this.mWifiNative.softApSetBlockStation(mac, true);
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            wifiApClientStats.blockClient(mac);
        }
        return true;
    }

    public boolean syncSoftApUnblockStation(String mac) {
        this.mWifiNative.softApSetBlockStation(mac, false);
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            wifiApClientStats.unBlockClient(mac);
        }
        logd("unBlockClient ");
        return true;
    }

    public String syncSoftApGetBlockedStations() {
        logd("Get Soft AP Blocked Station");
        String ret = this.mWifiNative.softApGetBlockStationList();
        return ret;
    }

    public List<String> syncSoftApGetConnectedStationsDetail() {
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            return wifiApClientStats.getStaClientInfoList();
        }
        return new ArrayList();
    }

    public List<String> syncSoftApGetBlockedStationsDetail() {
        logd("Get Soft AP Blocked Station");
        String result = this.mWifiNative.softApGetBlockStationList();
        return this.mWifiApClientStats.getBlockedClientInfoList(result);
    }

    public boolean syncSoftApAddClientToWhiteList(String mac, String name) {
        if (mac == null) {
            return false;
        }
        SoftApClient client = new SoftApClient(mac, name);
        this.mWifiApClientStats.addClientToWhiteList(client.mac, client.name, false);
        return this.mWifiNative.softApSetStationToWhiteList(mac, true);
    }

    public boolean syncSoftApDelClientFromWhiteList(String mac, String name) {
        if (mac == null) {
            return false;
        }
        SoftApClient client = new SoftApClient(mac, name);
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            wifiApClientStats.delClientFromWhiteList(client.mac, client.name, false);
        }
        return this.mWifiNative.softApSetStationToWhiteList(mac, false);
    }

    public boolean syncSoftApSetClientWhiteListEnabled(boolean enabled) {
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            wifiApClientStats.setClientWhiteListEnabled(enabled, false);
        }
        return this.mWifiNative.softApSetWhiteListEnabled(enabled);
    }

    public List<String> syncSoftApGetClientWhiteList() {
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            return wifiApClientStats.getClientWhiteList();
        }
        return new ArrayList();
    }

    public boolean syncSoftApIsWhiteListEnabled() {
        WifiApClientStats wifiApClientStats = this.mWifiApClientStats;
        if (wifiApClientStats != null) {
            return wifiApClientStats.isWhiteListEnabled();
        }
        return false;
    }

    public WifiNetworkMonitor getWifiNetworkMonitor() {
        return this.mWifiNetworkMonitor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int fetchCurrentRssi() {
        WifiNative.SignalPollResult pollResult = this.mWifiNative.signalPoll(this.mInterfaceName);
        if (pollResult == null) {
            if (this.mVerboseLoggingEnabled) {
                logd("fetchCurrentRssi: signalPoll failed");
            }
            return WifiMetrics.MIN_RSSI_DELTA;
        }
        Integer newRssi = Integer.valueOf(pollResult.currentRssi);
        Integer newLinkSpeed = Integer.valueOf(pollResult.txBitrate);
        Integer newFrequency = Integer.valueOf(pollResult.associationFrequency);
        if (this.mVerboseLoggingEnabled) {
            logd("fetchCurrentRssi rssi=" + newRssi + " linkspeed=" + newLinkSpeed + " freq=" + newFrequency);
        }
        if (newRssi == null || newRssi.intValue() <= -127 || newRssi.intValue() >= 200) {
            this.mWifiInfo.setRssi(WifiMetrics.MIN_RSSI_DELTA);
        } else {
            if (newRssi.intValue() > 0) {
                newRssi = Integer.valueOf(newRssi.intValue() - 256);
            }
            this.mWifiInfo.setRssi(newRssi.intValue());
            int newSignalLevel = WifiManager.calculateSignalLevel(newRssi.intValue(), 5);
            if (newSignalLevel != this.mLastSignalLevel) {
                sendRssiChangeBroadcast(newRssi.intValue());
            }
            this.mLastSignalLevel = newSignalLevel;
        }
        if (newLinkSpeed != null) {
            this.mWifiInfo.setLinkSpeed(newLinkSpeed.intValue());
        }
        if (newFrequency != null && newFrequency.intValue() > 0) {
            this.mWifiInfo.setFrequency(newFrequency.intValue());
        }
        this.mWifiConfigManager.updateScanDetailCacheFromWifiInfo(this.mWifiInfo);
        return newRssi != null ? newRssi.intValue() : WifiMetrics.MIN_RSSI_DELTA;
    }

    public boolean registerWifiNetworkEventObserver(IWifiNetworkEventObserver observer) {
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            return wifiNetworkMonitor.registerObserver(observer);
        }
        return false;
    }

    public boolean unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver observer) {
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            return wifiNetworkMonitor.unregisterObserver(observer);
        }
        return false;
    }

    public int syncGetCurrentRssi(AsyncChannel channel) {
        Message resultMsg = channel.sendMessageSynchronously(CMD_GET_CURRENT_RSSI);
        int result = resultMsg.arg1;
        resultMsg.recycle();
        return result;
    }

    public boolean isNetworkValidForVoWifi() {
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            return wifiNetworkMonitor.isNetworkValidForVoWifi();
        }
        return false;
    }

    public boolean setCheckingInternetForVoWifi(boolean enabled) {
        WifiNetworkMonitor wifiNetworkMonitor = this.mWifiNetworkMonitor;
        if (wifiNetworkMonitor != null) {
            return wifiNetworkMonitor.setCheckingInternetForVoWifi(enabled);
        }
        return false;
    }

    public boolean registerWifiRssiLinkSpeedAndFrequencyObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        WifiRssiLinkSpeedAndFrequencyMonitor wifiRssiLinkSpeedAndFrequencyMonitor = this.mWifiRssiLinkSpeedAndFrequencyMonitor;
        if (wifiRssiLinkSpeedAndFrequencyMonitor != null) {
            return wifiRssiLinkSpeedAndFrequencyMonitor.registerObserver(observer);
        }
        return false;
    }

    public boolean unregisterWifiRssiLinkSpeedAndFrequencyObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        WifiRssiLinkSpeedAndFrequencyMonitor wifiRssiLinkSpeedAndFrequencyMonitor = this.mWifiRssiLinkSpeedAndFrequencyMonitor;
        if (wifiRssiLinkSpeedAndFrequencyMonitor != null) {
            return wifiRssiLinkSpeedAndFrequencyMonitor.unregisterObserver(observer);
        }
        return false;
    }
}
