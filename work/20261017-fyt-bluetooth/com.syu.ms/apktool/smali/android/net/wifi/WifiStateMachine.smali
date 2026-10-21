.class public Landroid/net/wifi/WifiStateMachine;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$UntetheringState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field public static final BASE:I = 0x20000

.field private static final BATCHED_SETTING:Ljava/lang/String; = "batched_settings"

.field private static final BATCHED_WORKSOURCE:Ljava/lang/String; = "batched_worksource"

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field public static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field public static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field public static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field public static final CMD_CAPTIVE_CHECK_COMPLETE:I = 0x20014

.field public static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field public static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field public static final CMD_DISCONNECT:I = 0x20049

.field public static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field public static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field public static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field public static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field public static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field public static final CMD_ENABLE_TDLS:I = 0x2005c

.field public static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field public static final CMD_IP_ADDRESS_REMOVED:I = 0x2008d

.field public static final CMD_IP_ADDRESS_UPDATED:I = 0x2008c

.field public static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field public static final CMD_PING_SUPPLICANT:I = 0x20033

.field public static final CMD_POLL_BATCHED_SCAN:I = 0x20089

.field public static final CMD_REASSOCIATE:I = 0x2004b

.field public static final CMD_RECONNECT:I = 0x2004a

.field public static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field public static final CMD_REMOVE_NETWORK:I = 0x20035

.field public static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field public static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field public static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field public static final CMD_RSSI_POLL:I = 0x20053

.field public static final CMD_SAVE_CONFIG:I = 0x2003a

.field public static final CMD_SET_AP_CONFIG:I = 0x20019

.field public static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field public static final CMD_SET_BATCHED_SCAN:I = 0x20087

.field public static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field public static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field public static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field public static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field public static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field public static final CMD_START_AP:I = 0x20015

.field public static final CMD_START_AP_FAILURE:I = 0x20017

.field public static final CMD_START_AP_SUCCESS:I = 0x20016

.field public static final CMD_START_DRIVER:I = 0x2000d

.field public static final CMD_START_NEXT_BATCHED_SCAN:I = 0x20088

.field public static final CMD_START_PACKET_FILTERING:I = 0x20054

.field public static final CMD_START_SCAN:I = 0x20047

.field public static final CMD_START_SUPPLICANT:I = 0x2000b

.field public static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field public static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field public static final CMD_STOP_AP:I = 0x20018

.field public static final CMD_STOP_DRIVER:I = 0x2000e

.field public static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field public static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field public static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field public static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field public static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field public static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z = false

.field private static final DEBUG_PARSE:Z = false

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final FAILURE:I = -0x1

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field public static final MULTICAST_V4:I = 0x0

.field public static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TSF_STR:Ljava/lang/String; = "tsf="

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBackgroundScanSupported:Z

.field private mBatchedScanCsph:I

.field private mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

.field private mBatchedScanMinPollTime:J

.field private mBatchedScanOwnerUid:I

.field private final mBatchedScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

.field private mBatchedScanWorkSource:Landroid/os/WorkSource;

.field private final mBatteryStats:Lj/d;

.field private mBluetoothConnectionActive:Z

.field private mCaptivePortalCheckState:Lu/l;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lu/l;

.field private mConnectedState:Lu/l;

.field private mContext:Landroid/content/Context;

.field private final mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lu/l;

.field private mDelayedStopCounter:I

.field private mDhcpActive:Z

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lu/l;

.field private mDisconnectingState:Lu/l;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lu/l;

.field private mDriverStartingState:Lu/l;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lu/l;

.field private mDriverStoppingState:Lu/l;

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mExpectedBatchedScans:I

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInDelayedStop:Z

.field private mInitialState:Lu/l;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

.field private mIsRunning:Z

.field private mL2ConnectedState:Lu/l;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetlinkLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotedBatchedScanCsph:I

.field private mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lu/l;

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private volatile mPersistedCountryCode:Ljava/lang/String;

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mReconnectCount:I

.field private mReplyChannel:Lu/b;

.field private mReportedRunning:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lu/l;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSoftApStartedState:Lu/l;

.field private mSoftApStartingState:Lu/l;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lu/l;

.field private mSupplicantStartingState:Lu/l;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lu/l;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lu/l;

.field private mTetheringState:Lu/l;

.field private mUntetheringState:Lu/l;

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerifyingLinkState:Lu/l;

.field private mWaitForP2pDisableState:Lu/l;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lu/b;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiP2pChannel:Lu/b;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lu/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\t+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "WifiStateMachine"

    .line 1
    invoke-direct {p0, v0}, Lu/m;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanOwnerUid:I

    .line 7
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 9
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 10
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 11
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 12
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 13
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    const/4 v2, 0x1

    .line 14
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    .line 15
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 17
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 19
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 20
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 21
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 22
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 23
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 24
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 25
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 26
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v4, Lu/b;

    invoke-direct {v4}, Lu/b;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lu/b;

    .line 30
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 31
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 33
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    .line 34
    new-instance v4, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lu/l;

    .line 35
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lu/l;

    .line 36
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    .line 37
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lu/l;

    .line 38
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lu/l;

    .line 39
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lu/l;

    .line 40
    new-instance v4, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lu/l;

    .line 41
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lu/l;

    .line 42
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lu/l;

    .line 43
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lu/l;

    .line 44
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    .line 45
    new-instance v4, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    .line 46
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lu/l;

    .line 47
    new-instance v4, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lu/l;

    .line 48
    new-instance v4, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lu/l;

    .line 49
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lu/l;

    .line 50
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lu/l;

    .line 51
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lu/l;

    .line 52
    new-instance v4, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lu/l;

    .line 53
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lu/l;

    .line 54
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    .line 55
    new-instance v4, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lu/l;

    .line 56
    new-instance v4, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lu/l;

    .line 57
    new-instance v4, Landroid/net/wifi/WifiStateMachine$UntetheringState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$UntetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lu/l;

    .line 58
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 61
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 62
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 63
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 64
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 65
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 66
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 67
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 68
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 69
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 71
    new-instance p2, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {p2, v2, v1, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string p2, "batterystats"

    .line 72
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lj/d$a;->J2(Landroid/os/IBinder;)Lj/d;

    move-result-object p2

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    const-string p2, "network_management"

    .line 73
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 74
    invoke-static {p2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p2

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 75
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 76
    new-instance p2, Landroid/net/wifi/WifiNative;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p2, v4}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 77
    new-instance p2, Landroid/net/wifi/WifiConfigStore;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {p2, p1, v4}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 78
    new-instance p2, Landroid/net/wifi/WifiMonitor;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {p2, p0, v4}, Landroid/net/wifi/WifiMonitor;-><init>(Lu/m;Landroid/net/wifi/WifiNative;)V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 79
    new-instance p2, Landroid/net/wifi/WifiInfo;

    invoke-direct {p2}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 80
    new-instance p2, Landroid/net/wifi/SupplicantStateTracker;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {p2, p1, p0, v4, v5}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 81
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 82
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    .line 83
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifip2p"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 84
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 85
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 86
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 87
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 88
    new-instance p1, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    invoke-direct {p1, p0, p0}, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    .line 89
    :try_start_0
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {p2, p1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t register interface observer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {p1, p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    .line 96
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10e0011

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 97
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10e0012

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 98
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x1110017

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 99
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x104001a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_suspend_optimizations_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v3, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v3, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {p2, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/net/wifi/WifiStateMachine$5;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/net/wifi/WifiStateMachine$5;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/net/wifi/WifiStateMachine$6;

    invoke-direct {p2, p0}, Landroid/net/wifi/WifiStateMachine$6;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance p1, Landroid/util/LruCache;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 112
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 113
    invoke-virtual {p0}, Lu/m;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p2, "WifiSuspend"

    .line 114
    invoke-virtual {p1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 116
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 117
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 118
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 119
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 120
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 121
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 122
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 123
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 124
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 125
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 126
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 127
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 128
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 129
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 130
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 131
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 132
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 133
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 134
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 135
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 136
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 137
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 138
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 139
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 140
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 141
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    const/16 p1, 0x7d0

    .line 142
    invoke-virtual {p0, p1}, Lu/m;->setLogRecSize(I)V

    .line 143
    invoke-virtual {p0, v1}, Lu/m;->setLogOnlyTransitions(Z)V

    .line 144
    invoke-virtual {p0}, Lu/m;->start()V

    .line 145
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "wifi_scan_available"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x4000000

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo p2, "scan_enabled"

    .line 147
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$10502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method public static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p0
.end method

.method public static synthetic access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method public static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return p0
.end method

.method public static synthetic access$10708(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method public static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method public static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method public static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p0
.end method

.method public static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method public static synthetic access$1102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method public static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$11202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    return p1
.end method

.method public static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    return-void
.end method

.method public static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method public static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    return-void
.end method

.method public static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V

    return-void
.end method

.method public static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    return-object p0
.end method

.method public static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    return-void
.end method

.method public static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$12402(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static synthetic access$12802(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return p0
.end method

.method public static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;)Lu/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentState()Lu/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method public static synthetic access$13802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    return-void
.end method

.method public static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p0
.end method

.method public static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method public static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p0
.end method

.method public static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method public static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method public static synthetic access$15202(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method public static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method public static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return p0
.end method

.method public static synthetic access$16708(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method public static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V

    return-void
.end method

.method public static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1702(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method public static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method public static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method public static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lu/m;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScanAsync()V

    return-void
.end method

.method public static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method public static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V

    return-void
.end method

.method public static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static synthetic access$21100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return p0
.end method

.method public static synthetic access$21200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return p0
.end method

.method public static synthetic access$21204(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method public static synthetic access$21300(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$21400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$21500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$21600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$21700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$21800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$21900(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    return-void
.end method

.method public static synthetic access$22000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$22100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$22200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$22300(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic access$22400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$22500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$22600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$22700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$22800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$22900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p0
.end method

.method public static synthetic access$23000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method public static synthetic access$23100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$23200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$23300(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$23400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$23500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return p0
.end method

.method public static synthetic access$23504(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method public static synthetic access$23600(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$23700(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$23800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$23900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static synthetic access$24000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$24100(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method public static synthetic access$24200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$24300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$24400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method public static synthetic access$24500(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$24600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$24700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$24800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$24900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$25000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$25100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p0
.end method

.method public static synthetic access$2602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method public static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    return-void
.end method

.method public static synthetic access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object p0
.end method

.method public static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method public static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;)Lu/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lu/b;

    return-object p0
.end method

.method public static synthetic access$3302(Landroid/net/wifi/WifiStateMachine;Lu/b;)Lu/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lu/b;

    return-object p1
.end method

.method public static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return p0
.end method

.method public static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object p0
.end method

.method public static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method public static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->diableWifiSta()V

    return-void
.end method

.method public static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method public static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->diableWifiAp()V

    return-void
.end method

.method public static synthetic access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p0
.end method

.method public static synthetic access$5802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method public static synthetic access$5804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method public static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$6002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p0
.end method

.method public static synthetic access$6102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method public static synthetic access$6202(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method public static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object p0
.end method

.method public static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method public static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method public static synthetic access$7502(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method public static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/net/wifi/WifiStateMachine;)Lu/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lu/b;

    return-object p0
.end method

.method public static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$802(Landroid/net/wifi/WifiStateMachine;Lu/b;)Lu/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lu/b;

    return-object p1
.end method

.method public static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss()V

    return-void
.end method

.method public static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method public static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method public static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method public static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p0
.end method

.method public static synthetic access$8702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method public static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return p0
.end method

.method public static synthetic access$8902(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method public static synthetic access$900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return p0
.end method

.method public static synthetic access$9004(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method public static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return p0
.end method

.method public static synthetic access$9604(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method public static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->clearLinkProperties(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private diableWifiAp()V
    .locals 3

    const-string/jumbo v0, "wifi ap open fail, disable"

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    return-void
.end method

.method private diableWifiSta()V
    .locals 2

    const-string/jumbo v0, "wifi sta open fail, disable"

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, "="

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    aget-object v5, v4, v2

    const-string v6, "TXGOOD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 7
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 8
    :cond_1
    aget-object v5, v4, v2

    const-string v7, "TXBAD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const-string v2, "\n"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    move v5, v1

    move v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v7, v0, v4

    const-string v8, "="

    .line 4
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    aget-object v8, v7, v3

    const-string v9, "RSSI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 7
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 8
    :cond_1
    aget-object v8, v7, v3

    const-string v10, "LINKSPEED"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v5, v1

    move v6, v5

    :cond_4
    const/16 v0, -0xc8

    if-eq v5, v1, :cond_7

    if-ge v0, v5, :cond_7

    const/16 v2, 0x100

    if-ge v5, v2, :cond_7

    if-lez v5, :cond_5

    add-int/lit16 v5, v5, -0x100

    .line 10
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    const/4 v0, 0x5

    .line 11
    invoke-static {v5, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 12
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v0, v2, :cond_6

    .line 13
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 14
    :cond_6
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    goto :goto_2

    .line 15
    :cond_7
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :goto_2
    if-eq v6, v1, :cond_8

    .line 16
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    :cond_8
    return-void
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleBatchedScanPollRequest()V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 7
    iput-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    :goto_0
    return-void
.end method

.method private handleFailedIpConfiguration()V
    .locals 4

    const-string v0, "IP configuration failed"

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v2, v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times, Disabling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 8
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->reconnect()Z

    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 6
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v3, -0xc8

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 11
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 12
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 13
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v3, v4, v0}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 14
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 15
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 16
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 17
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return-void
.end method

.method private handleScreenStateChanged(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 2
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const v0, 0x20056

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, v2, v2}, Lu/m;->sendMessage(III)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lu/m;->sendMessage(III)V

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    .locals 4

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    .line 7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->setLinkProperties(ILandroid/net/LinkProperties;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/InetAddress;

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 12
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 13
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleSupplicantConnectionLoss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/StateChangeResult;

    .line 2
    iget-object v1, v0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 4
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 7
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v0, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, v0, Landroid/net/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-object v1
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private noteBatchedScanStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3}, Lj/d;->k2(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 4
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu/m;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :goto_1
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 7
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v2

    .line 8
    :cond_1
    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    invoke-interface {v0, v1, v2}, Lj/d;->m(Landroid/os/WorkSource;I)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 10
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private noteBatchedScanStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v3, v0}, Lj/d;->k2(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 4
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :goto_1
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 7
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private noteScanEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v2, v0}, Lj/d;->p0(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private noteScanStart(ILandroid/os/WorkSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Landroid/os/WorkSource;

    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    :goto_0
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 3
    :try_start_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {p1, p2}, Lj/d;->D(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    .locals 3

    const-string v0, "batched_settings"

    .line 1
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    const-string v1, "batched_worksource"

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v0, v2}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez p3, :cond_2

    .line 6
    new-instance p3, Landroid/os/WorkSource;

    invoke-direct {p3, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 7
    :cond_2
    iput-object p3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 8
    iput p2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    const/4 p1, 0x1

    return p1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lu/b;

    invoke-virtual {p2, p1, v0}, Lu/b;->j(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 1

    .line 5
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 7
    iput p2, v0, Landroid/os/Message;->what:I

    .line 8
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 9
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lu/b;

    invoke-virtual {p2, p1, v0}, Lu/b;->j(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1

    .line 10
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 12
    iput p2, v0, Landroid/os/Message;->what:I

    .line 13
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lu/b;

    invoke-virtual {p2, p1, v0}, Lu/b;->j(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private retrieveBatchedScanData()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    if-eqz v0, :cond_19

    const-string v4, "OK"

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "\n"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 5
    aget-object v5, v0, v4

    const-string/jumbo v6, "scancount="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 6
    :try_start_0
    aget-object v5, v0, v4

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scancount parseInt Exception from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lu/m;->loge(Ljava/lang/String;)V

    move v5, v4

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "scancount not found"

    .line 8
    invoke-virtual {v1, v5}, Lu/m;->log(Ljava/lang/String;)V

    move v5, v4

    move v7, v5

    :goto_1
    if-nez v5, :cond_2

    const-string/jumbo v0, "scanCount==0 - aborting"

    .line 9
    invoke-virtual {v1, v0}, Lu/m;->loge(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.net.wifi.BATCHED_RESULTS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x4000000

    .line 11
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    iget-object v8, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    monitor-enter v8

    .line 13
    :try_start_1
    iget-object v9, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 14
    new-instance v9, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v9}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide/from16 v20, v2

    move/from16 v18, v4

    move/from16 v19, v18

    move/from16 v22, v12

    move/from16 v23, v22

    move-object v15, v13

    move-object/from16 v16, v15

    .line 16
    :goto_2
    array-length v14, v0

    if-ge v7, v14, :cond_14

    .line 17
    aget-object v14, v0, v7

    const-string v2, "----"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v7, 0x1

    .line 18
    array-length v3, v0

    if-eq v2, v3, :cond_3

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didn\'t consume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    sub-int/2addr v0, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 20
    :cond_3
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 21
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    const-string/jumbo v0, "retrieveBatchedScanResults X"

    .line 22
    invoke-virtual {v1, v0}, Lu/m;->logd(Ljava/lang/String;)V

    .line 23
    monitor-exit v8

    return-void

    .line 24
    :cond_5
    aget-object v2, v0, v7

    const-string v3, "####"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    aget-object v2, v0, v7

    const-string v3, "===="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_3

    .line 25
    :cond_6
    aget-object v2, v0, v7

    const-string/jumbo v3, "trunc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    iput-boolean v6, v9, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    goto/16 :goto_4

    .line 27
    :cond_7
    aget-object v2, v0, v7

    const-string v3, "bssid="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Ljava/lang/String;

    aget-object v14, v0, v7

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aget-object v16, v0, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v6, v16, -0x6

    invoke-direct {v2, v14, v3, v6}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 29
    :cond_8
    aget-object v2, v0, v7

    const-string v6, "freq="

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x5

    if-eqz v2, :cond_9

    .line 30
    :try_start_2
    aget-object v2, v0, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 31
    :catch_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid freqency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    move/from16 v19, v4

    goto/16 :goto_4

    .line 32
    :cond_9
    aget-object v2, v0, v7

    const-string v14, "age="

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_a

    .line 33
    :try_start_4
    aget-object v2, v0, v7

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v2, v10, v2

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v2

    goto/16 :goto_4

    .line 34
    :catch_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    goto/16 :goto_4

    .line 35
    :cond_a
    aget-object v2, v0, v7

    const-string/jumbo v14, "ssid="

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36
    aget-object v2, v0, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v15

    goto/16 :goto_4

    .line 37
    :cond_b
    aget-object v2, v0, v7

    const-string v14, "level="

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_d

    .line 38
    :try_start_6
    aget-object v2, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v2, :cond_c

    add-int/lit16 v2, v2, -0x100

    :cond_c
    move/from16 v18, v2

    goto/16 :goto_4

    .line 39
    :catch_3
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    move/from16 v18, v4

    goto/16 :goto_4

    .line 40
    :cond_d
    aget-object v2, v0, v7

    const-string v3, "dist="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_e

    .line 41
    :try_start_8
    aget-object v2, v0, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 42
    :catch_4
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid distance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    move/from16 v22, v12

    goto/16 :goto_4

    .line 43
    :cond_e
    aget-object v2, v0, v7

    const-string v3, "distSd="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_f

    .line 44
    :try_start_a
    aget-object v2, v0, v7

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 45
    :catch_5
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid distanceSd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    move/from16 v23, v12

    goto :goto_4

    .line 46
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse batched scan result line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/m;->loge(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    :goto_3
    if-eqz v16, :cond_11

    .line 47
    iget-object v2, v9, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/ScanResult;

    const-string v17, ""

    move-object v14, v3

    invoke-direct/range {v14 .. v23}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v4

    move/from16 v19, v18

    move/from16 v22, v12

    move/from16 v23, v22

    move-object v15, v13

    move-object/from16 v16, v15

    const-wide/16 v20, 0x0

    .line 48
    :cond_11
    aget-object v2, v0, v7

    const-string v3, "####"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 49
    iget-object v2, v9, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_12

    .line 50
    iget-object v2, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v2}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    move-object v9, v2

    goto :goto_4

    :cond_12
    const-string v2, "Found empty batch"

    .line 52
    invoke-virtual {v1, v2}, Lu/m;->logd(Ljava/lang/String;)V

    :cond_13
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 53
    :cond_14
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "Unexpected null BatchedScanResults"

    .line 54
    invoke-virtual {v1, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 55
    monitor-exit v8

    return-void

    :cond_15
    const-string v2, "\n"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    array-length v2, v0

    if-eqz v2, :cond_17

    aget-object v2, v0, v4

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_6

    :cond_16
    move v7, v4

    :goto_5
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_17
    :goto_6
    const-string v0, "batch scan results just ended!"

    .line 58
    invoke-virtual {v1, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 59
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 60
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 61
    :cond_18
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    .line 62
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 63
    :cond_19
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected BatchedScanResults :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-string v2, "linkProperties"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const-string v2, "networkInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-string v2, "linkProperties"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "bssid"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_2

    .line 7
    :cond_1
    new-instance p1, Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p1, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    const-string/jumbo v1, "wifiInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "newRssi"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "connected"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setCountryCode()V
    .locals 2

    .line 5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setFrequencyBand()V
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setNextBatchedAlarm(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v3, v2, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit16 v4, v3, 0x3e8

    int-to-long v4, v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 3
    iget v0, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v0, p1, :cond_1

    move p1, v0

    :cond_1
    mul-int/2addr v3, p1

    const-string/jumbo p1, "wifi.batchedScan.pollPeriod"

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    move v3, p1

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v4, v4, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setScanResults()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, ""

    const-string v2, ""

    .line 1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    .line 2
    :cond_0
    iget-object v6, v1, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    .line 5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    :goto_0
    const/4 v7, -0x1

    if-ltz v6, :cond_4

    .line 8
    aget-object v8, v5, v6

    const-string v9, "####"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    aget-object v8, v5, v6

    const-string v9, "id="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10
    :try_start_0
    aget-object v5, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    move v5, v7

    :goto_2
    if-ne v5, v7, :cond_0

    .line 11
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 13
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 14
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    const-string v5, "\n"

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 16
    array-length v5, v3

    move-object v12, v0

    move-object v13, v2

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v0, v5, :cond_13

    aget-object v2, v3, v0

    const-string v10, "bssid="

    .line 17
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v4, 0x6

    if-eqz v10, :cond_6

    .line 18
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {v10, v12, v4, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v12, v10

    goto/16 :goto_9

    :cond_6
    const-string v10, "freq="

    .line 19
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x5

    if-eqz v10, :cond_7

    .line 20
    :try_start_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :catch_1
    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_7
    :try_start_3
    const-string v10, "level="

    .line 21
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_9

    .line 22
    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v2, :cond_8

    add-int/lit16 v2, v2, -0x100

    :cond_8
    move v14, v2

    goto/16 :goto_9

    :catch_2
    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_9
    :try_start_5
    const-string/jumbo v10, "tsf="

    .line 23
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    goto/16 :goto_9

    :cond_a
    const-string v10, "flags="

    .line 25
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 26
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {v9, v10, v4, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v13, v9

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v4, "ssid="

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 28
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v11

    goto :goto_9

    :cond_c
    const-string v4, "===="

    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "####"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_d
    if-eqz v12, :cond_11

    if-eqz v11, :cond_e

    .line 30
    invoke-virtual {v11}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_e
    const-string v2, "<unknown ssid>"

    .line 31
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v4, v1, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v4, :cond_10

    .line 33
    iput v14, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 34
    iput-object v11, v4, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v11, :cond_f

    .line 35
    invoke-virtual {v11}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    const-string v2, "<unknown ssid>"

    :goto_7
    iput-object v2, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 36
    iput-object v13, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 37
    iput v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 38
    iput-wide v7, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_8

    .line 39
    :cond_10
    new-instance v4, Landroid/net/wifi/ScanResult;

    move-object v10, v4

    move-wide/from16 v16, v7

    invoke-direct/range {v10 .. v17}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 40
    iget-object v7, v1, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v7, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_8
    iget-object v2, v1, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v2, ""

    move-object v13, v2

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_12
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 42
    :cond_13
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    :goto_0
    return-void
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setWifiApState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v1}, Lj/d;->r()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v1}, Lj/d;->T0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to note battery stats in wifi"

    .line 4
    invoke-virtual {p0, v1}, Lu/m;->loge(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "wifi_state"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "previous_wifi_state"

    .line 9
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setWifiState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v1}, Lj/d;->r()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    invoke-interface {v1}, Lj/d;->T0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to note battery stats in wifi"

    .line 4
    invoke-virtual {p0, v1}, Lu/m;->loge(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "wifi_state"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "previous_wifi_state"

    .line 9
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startBatchedScan()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 7
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 8
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStart()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing WifiNative.setBatchedScanSettings response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startNextBatchedScan()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    return-void
.end method

.method private startNextBatchedScanAsync()V
    .locals 1

    const v0, 0x20088

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method private startScanNative(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->scan(I)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return-void
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$7;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    :try_start_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Landroid/net/LinkAddress;

    const-string v3, "192.168.43.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 8
    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error tethering on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return v2

    .line 12
    :cond_2
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private stopBatchedScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStop()V

    return-void
.end method

.method private stopTethering()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/net/LinkAddress;

    const-string v2, "0.0.0.0"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resetting interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Untether initiate failed!"

    .line 7
    invoke-virtual {p0, v0}, Lu/m;->loge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateLinkProperties()V
    .locals 5

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 8
    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 10
    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 12
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 15
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3

    .line 16
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1

    const v0, 0x20038

    .line 1
    invoke-virtual {p0, v0, p1}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    const v0, 0x20014

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public clearBlacklist()V
    .locals 1

    const v0, 0x20039

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    const v0, 0x20049

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lu/m;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReconnectCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplicant status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableBackgroundScan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSetCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistedCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 19
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    const v0, 0x20037

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x2005b

    .line 1
    invoke-virtual {p0, v1, p1, v0}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public enableRssiPolling(Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x20052

    .line 1
    invoke-virtual {p0, v1, p1, v0}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 2

    const v0, 0x2005c

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p2, v1, p1}, Lu/m;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public handlePostDhcpSetup()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lu/b;

    const v1, 0x2300f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu/b;->l(II)V

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 5
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 6
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    return-void
.end method

.method public handlePreDhcpSetup()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 2
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 5
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 6
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const v2, 0x2300f

    .line 8
    iput v2, v1, Landroid/os/Message;->what:I

    .line 9
    iput v0, v1, Landroid/os/Message;->arg1:I

    const v0, 0x30007

    .line 10
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 11
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lu/b;

    invoke-virtual {v0, v1}, Lu/b;->p(Landroid/os/Message;)V

    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    const v0, 0x2004b

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    const v0, 0x2004a

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    const v0, 0x2008e

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public requestBatchedScanPoll()V
    .locals 1

    const v0, 0x20089

    .line 1
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2

    const v0, 0x2001f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "batched_settings"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "batched_worksource"

    .line 3
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const p1, 0x20087

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lu/m;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Ignoring resetting of country code"

    .line 3
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x20050

    .line 4
    invoke-virtual {p0, v1, v0, p2, p1}, Lu/m;->sendMessage(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setDriverStart(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x2000d

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const p1, 0x2000e

    .line 2
    invoke-virtual {p0, p1}, Lu/m;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public setFrequencyBand(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wifi_frequency_band"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const p2, 0x2005a

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x2004d

    .line 1
    invoke-virtual {p0, v1, p1, v0}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x20015

    .line 1
    invoke-virtual {p0, p2, p1}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const p1, 0x20018

    .line 2
    invoke-virtual {p0, p1}, Lu/m;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public setOperationalMode(I)V
    .locals 2

    const v0, 0x20048

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public setSupplicantRunning(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x2000b

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const p1, 0x2000c

    .line 2
    invoke-virtual {p0, p1}, Lu/m;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lu/b;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lu/b;->o(ILjava/lang/Object;)V

    return-void
.end method

.method public startDhcp()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lu/m;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20054

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public startScan(ILandroid/os/WorkSource;)V
    .locals 2

    const v0, 0x20047

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1, p2}, Lu/m;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public stopDhcp()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Lu/m;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20055

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lu/m;->sendMessage(III)V

    return-void
.end method

.method public syncAddOrUpdateNetwork(Lu/b;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    const v0, 0x20034

    .line 1
    invoke-virtual {p1, v0, p2}, Lu/b;->t(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/os/Message;->arg1:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return p2
.end method

.method public syncDisableNetwork(Lu/b;I)Z
    .locals 1

    const v0, 0x25011

    .line 1
    invoke-virtual {p1, v0, p2}, Lu/b;->r(II)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/os/Message;->arg1:I

    const v0, 0x25012

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return p2
.end method

.method public syncEnableNetwork(Lu/b;IZ)Z
    .locals 1

    const v0, 0x20036

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Lu/b;->s(III)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/os/Message;->arg1:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return p2
.end method

.method public syncGetBatchedScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/BatchedScanResult;

    .line 4
    new-instance v4, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v4, v3}, Landroid/net/wifi/BatchedScanResult;-><init>(Landroid/net/wifi/BatchedScanResult;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncGetConfiguredNetworks(Lu/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const v0, 0x2003b

    .line 1
    invoke-virtual {p1, v0}, Lu/b;->q(I)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 4
    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-direct {v4, v3}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lu/b;

    const v1, 0x2001b

    invoke-virtual {v0, v1}, Lu/b;->q(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    return-object v0

    :pswitch_0
    const-string v0, "failed"

    return-object v0

    :pswitch_1
    const-string v0, "enabled"

    return-object v0

    :pswitch_2
    const-string v0, "enabling"

    return-object v0

    :pswitch_3
    const-string v0, "disabled"

    return-object v0

    :pswitch_4
    const-string v0, "disabling"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "[invalid state]"

    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown state"

    return-object v0

    :cond_1
    const-string v0, "enabled"

    return-object v0

    :cond_2
    const-string v0, "enabling"

    return-object v0

    :cond_3
    const-string v0, "disabled"

    return-object v0

    :cond_4
    const-string v0, "disabling"

    return-object v0
.end method

.method public syncPingSupplicant(Lu/b;)Z
    .locals 2

    const v0, 0x20033

    .line 1
    invoke-virtual {p1, v0}, Lu/b;->q(I)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return v0
.end method

.method public syncRemoveNetwork(Lu/b;I)Z
    .locals 1

    const v0, 0x20035

    .line 1
    invoke-virtual {p1, v0, p2}, Lu/b;->r(II)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/os/Message;->arg1:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return p2
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lu/b;)Z
    .locals 2

    const v0, 0x2003a

    .line 1
    invoke-virtual {p1, v0}, Lu/b;->q(I)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return v0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v3}, Lj/d;->C2(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lj/d;->E0(Landroid/os/WorkSource;)V

    .line 9
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lj/d;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lj/d;->F1(Landroid/os/WorkSource;)V

    .line 13
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 15
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 16
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
