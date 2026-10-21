.class public Landroid/net/CaptivePortalTracker;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;,
        Landroid/net/CaptivePortalTracker$ProvisioningObserver;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

.field private static final DBG:Z = true

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final DELAYED_CHECK_INTERVAL_MS:I = 0x2710

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"


# instance fields
.field private mActiveNetworkState:Lu/l;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lu/l;

.field private mDelayedCaptiveCheckState:Lu/l;

.field private mDelayedCheckToken:I

.field private mDeviceProvisioned:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lu/l;

.field private mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 3

    const-string v0, "CaptivePortalTracker"

    .line 1
    invoke-direct {p0, v0}, Lu/m;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 3
    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 4
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lu/l;

    .line 5
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v2}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lu/l;

    .line 6
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v2}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lu/l;

    .line 7
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v2}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lu/l;

    .line 8
    iput-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    .line 9
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    const-string p2, "phone"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo p2, "wifi"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    new-instance p1, Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    invoke-direct {p1, p0}, Landroid/net/CaptivePortalTracker$ProvisioningObserver;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    .line 15
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "captive_portal_server"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "clients3.google.com"

    .line 20
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 21
    :cond_0
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "captive_portal_detection_enabled"

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 22
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 23
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lu/l;

    iget-object p2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 24
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lu/l;

    iget-object p2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 25
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lu/l;

    iget-object p2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 26
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static synthetic access$1002(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Landroid/net/CaptivePortalTracker;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/net/CaptivePortalTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Landroid/net/CaptivePortalTracker;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$1800(Landroid/net/CaptivePortalTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2000(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/net/CaptivePortalTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/net/CaptivePortalTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return p0
.end method

.method public static synthetic access$2204(Landroid/net/CaptivePortalTracker;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method public static synthetic access$2300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2900(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method public static synthetic access$3000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    return-object p0
.end method

.method public static synthetic access$3200(Landroid/net/CaptivePortalTracker;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$3300(Landroid/net/CaptivePortalTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/net/CaptivePortalTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return p0
.end method

.method public static synthetic access$502(Landroid/net/CaptivePortalTracker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return p1
.end method

.method public static synthetic access$600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->setNotificationOff()V

    return-void
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 16

    move-object/from16 v8, p0

    .line 1
    iget-boolean v0, v8, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/generate_204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lu/m;->log(Ljava/lang/String;)V

    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, v8, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v12, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v0, 0x2710

    .line 7
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    invoke-virtual {v12, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 13
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    move v15, v1

    goto :goto_0

    :cond_1
    move v15, v9

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move v3, v15

    move-wide v4, v13

    .line 14
    invoke-direct/range {v1 .. v7}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptivePortal: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " rspCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lu/m;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return v15

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v12

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide v13, v10

    :goto_1
    move-object v1, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide v13, v10

    .line 17
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Probably not a portal: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lu/m;->log(Ljava/lang/String;)V

    cmp-long v0, v13, v10

    if-eqz v0, :cond_2

    .line 18
    invoke-direct {v8, v13, v14}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return v9

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    return-object v0

    .line 5
    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    return-object v0
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 2
    invoke-virtual {v0}, Lu/m;->start()V

    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "notifyPortalCheckComplete on null"

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPortalCheckComplete: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "notifyPortalCheckComplete on null"

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->loge(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPortalCheckCompleted: captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendFailedCaptivePortalCheckBroadcast(J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Don\'t send network conditions - lacking user consent."

    .line 2
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_ssid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_bssid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_2
    const-string p1, "network info is TYPE_WIFI but no ConnectionInfo found"

    .line 8
    invoke-virtual {p0, p1}, Lu/m;->logw(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const-string v4, "extra_network_type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 12
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-le v2, v3, :cond_6

    const-string p1, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    .line 13
    invoke-virtual {p0, p1}, Lu/m;->log(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_6
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    const-string v6, "extra_cellid"

    if-eqz v5, :cond_7

    .line 15
    check-cast v4, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v4}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 17
    :cond_7
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_8

    .line 18
    check-cast v4, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 20
    :cond_8
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_9

    .line 21
    check-cast v4, Landroid/telephony/CellInfoLte;

    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 22
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_9
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_a

    .line 24
    check-cast v4, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v4}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    .line 25
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_a
    const-string p1, "Registered cellinfo is unrecognized"

    .line 26
    invoke-virtual {p0, p1}, Lu/m;->logw(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_b
    :goto_1
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v2, "extra_connectivity_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_response_received"

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_request_timestamp_ms"

    .line 29
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p1, :cond_c

    const-string p1, "extra_is_captive_portal"

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_response_timestamp_ms"

    .line 31
    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    :cond_c
    iget-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private setNotificationOff()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotificationOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/m;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
