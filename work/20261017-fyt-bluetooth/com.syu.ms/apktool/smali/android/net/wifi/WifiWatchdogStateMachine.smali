.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final DBG:Z = false

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field public static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field public static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lu/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 1
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x1b7740

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v5, 0x5

    const v6, 0x493e0

    invoke-direct {v1, v3, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v7, 0x6

    const/16 v8, 0xa

    const v9, 0xea60

    invoke-direct {v1, v7, v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v8, 0x9

    const/16 v9, 0x1e

    invoke-direct {v1, v8, v9, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-array v0, v3, [Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 2
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v3, -0xc8

    invoke-direct {v1, v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v3, -0x46

    invoke-direct {v1, v6, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v3, -0x37

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v7

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 3
    sput-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "WifiWatchdogStateMachine"

    .line 1
    invoke-direct {p0, v0}, Lu/m;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lu/b;

    invoke-direct {v0}, Lu/b;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lu/b;

    .line 3
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 6
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 7
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 8
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 9
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 10
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 11
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 12
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 13
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    .line 14
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 15
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lu/b;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lu/b;->c(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 19
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 20
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 21
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 22
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 23
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 24
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 25
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 26
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 27
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 28
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 29
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 30
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, p1, v1}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 31
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    :goto_0
    const/16 p1, 0x19

    .line 34
    invoke-virtual {p0, p1}, Lu/m;->setLogRecSize(I)V

    .line 35
    invoke-virtual {p0, v0}, Lu/m;->setLogOnlyTransitions(Z)V

    .line 36
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method public static synthetic access$100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p0
.end method

.method public static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method public static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public static synthetic access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method public static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method public static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return p0
.end method

.method public static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object p0
.end method

.method public static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return p0
.end method

.method public static synthetic access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method public static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lu/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lu/b;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p0
.end method

.method public static synthetic access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method public static synthetic access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object p0
.end method

.method public static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object p0
.end method

.method public static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p0
.end method

.method public static synthetic access$3702(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method public static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lu/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentState()Lu/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$4800()[D
    .locals 1

    .line 1
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method public static synthetic access$4802([D)[D
    .locals 0

    .line 1
    sput-object p0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method public static synthetic access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    return-object v0
.end method

.method public static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method public static synthetic access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/net/wifi/WifiWatchdogStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    return p1
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWatchdogEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    const-string/jumbo v1, "wifi_watchdog_on"

    .line 4
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lu/m;->start()V

    return-object v0
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .line 1
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .line 1
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lu/b;

    const v0, 0x21016

    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    .line 2
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lu/b;

    const v0, 0x21015

    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_1
    const-string p1, "Poor link notification is sent"

    .line 7
    invoke-virtual {p0, p1}, Lu/m;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .line 1
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3

    const v0, 0x21007

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 3
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 7
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method private updateSettings()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Disabling poor network avoidance for wi-fi only device"

    .line 2
    invoke-virtual {p0, v0}, Lu/m;->logd(Ljava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lu/m;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWifiInfo: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLinkProperties: ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentSignalLevel: ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
