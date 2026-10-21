.class public Landroid/net/EthernetDataTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;,
        Landroid/net/EthernetDataTracker$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ETHERNET_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.ETHERNET_STATE_CHANGED"

.field public static final ETHER_IFACE_STATE_DOWN:I = 0x0

.field public static final ETHER_IFACE_STATE_UP:I = 0x1

.field public static final ETHER_STATE_CONNECTED:I = 0x2

.field public static final ETHER_STATE_CONNECTING:I = 0x1

.field public static final ETHER_STATE_DISCONNECTED:I = 0x0

.field private static final EVENT_INTERFACE_LINK_STATE_CHANGED:I = 0x0

.field private static final EVENT_INTERFACE_LINK_STATE_CHANGED_DELAY_MS:I = 0xc8

.field public static final EXTRA_ETHERNET_STATE:Ljava/lang/String; = "ethernet_state"

.field private static final NETWORKTYPE:Ljava/lang/String; = "ETHERNET"

.field private static final TAG:Ljava/lang/String; = "Ethernet"

.field private static mIface:Ljava/lang/String; = ""

.field private static mLinkUp:Z = false

.field private static sIfaceMatch:Ljava/lang/String; = ""

.field private static sInstance:Landroid/net/EthernetDataTracker;


# instance fields
.field private dns1:Ljava/lang/String;

.field private dns2:Ljava/lang/String;

.field private ethConnected:Z

.field public ethCurrentState:I

.field private gateway:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private isEthernetContentObserverRegister:Z

.field private isFirstBoot:Z

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEthernetEnableObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHwAddr:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netmask:Ljava/lang/String;

.field private prefixLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput v1, p0, Landroid/net/EthernetDataTracker;->ethCurrentState:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/net/EthernetDataTracker;->isFirstBoot:Z

    .line 8
    new-instance v0, Landroid/net/EthernetDataTracker$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/net/EthernetDataTracker$1;-><init>(Landroid/net/EthernetDataTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mEthernetEnableObserver:Landroid/database/ContentObserver;

    .line 9
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v2, 0x9

    const-string v3, "ETHERNET"

    const-string v4, ""

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 10
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 11
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 12
    sput-boolean v1, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    .line 13
    iput-boolean v1, p0, Landroid/net/EthernetDataTracker;->ethConnected:Z

    .line 14
    iput-boolean v1, p0, Landroid/net/EthernetDataTracker;->isEthernetContentObserverRegister:Z

    .line 15
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 16
    invoke-virtual {p0, v1}, Landroid/net/EthernetDataTracker;->setTeardownRequested(Z)V

    const-string v0, "network_management"

    .line 17
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mNwService:Landroid/os/INetworkManagementService;

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EthernetDataTrackerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    new-instance v1, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, p0}, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;-><init>(Landroid/net/EthernetDataTracker;Landroid/os/Looper;Landroid/net/EthernetDataTracker;)V

    iput-object v1, p0, Landroid/net/EthernetDataTracker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private IsWiFiConnected()Ljava/lang/Boolean;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemService(CONNECTIVITY_SERVICE) failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ethernet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private ReadFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return v0
.end method

.method public static synthetic access$1000(Landroid/net/EthernetDataTracker;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->sendEthStateChangedBroadcast(I)V

    return-void
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return p0
.end method

.method public static synthetic access$1100(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public static synthetic access$1102(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method public static synthetic access$1200(Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->getStaticIpInfo()V

    return-void
.end method

.method public static synthetic access$1300(Landroid/net/EthernetDataTracker;)Landroid/net/LinkAddress;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/net/EthernetDataTracker;)Landroid/os/INetworkManagementService;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mNwService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public static synthetic access$1500(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/net/EthernetDataTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/net/EthernetDataTracker;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->IsWiFiConnected()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/net/EthernetDataTracker;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->acquireWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$2102(Landroid/net/EthernetDataTracker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/EthernetDataTracker;->ethConnected:Z

    return p1
.end method

.method public static synthetic access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/net/EthernetDataTracker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->handleEnable()V

    return-void
.end method

.method public static synthetic access$700(Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->handleDisable()V

    return-void
.end method

.method public static synthetic access$800(Landroid/net/EthernetDataTracker;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->getEthernetCarrierState()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Landroid/net/EthernetDataTracker;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->isUsingStaticIp()Z

    move-result p0

    return p0
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->findUsbEthNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "power"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "USB Ether"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string p1, "Ethernet"

    const-string v0, "acquireWakeLock USB Ether"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private findUsbEthNode()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/vmac/exist"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getEthernetCarrierState()I
    .locals 5

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    if-eq v0, v2, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/class/net/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Landroid/net/EthernetDataTracker;->ReadFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ethernet"

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/EthernetDataTracker;
    .locals 2

    const-class v0, Landroid/net/EthernetDataTracker;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/EthernetDataTracker;

    invoke-direct {v1}, Landroid/net/EthernetDataTracker;-><init>()V

    sput-object v1, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    .line 2
    :cond_0
    sget-object v1, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getStaticIpInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_static_ip"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->ipAddress:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_static_netmask"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->netmask:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_static_gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->gateway:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_static_dns1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->dns1:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_static_dns2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->dns2:Ljava/lang/String;

    const/16 v0, 0x18

    .line 6
    iput v0, p0, Landroid/net/EthernetDataTracker;->prefixLength:I

    .line 7
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->netmask:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v0

    iput v0, p0, Landroid/net/EthernetDataTracker;->prefixLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netmask to prefixLength exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ethernet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleDisable()V
    .locals 4

    const-string v0, "clearInterfaceAddresses configuration failed: "

    const-string v1, "Ethernet"

    .line 1
    sget-object v2, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/net/EthernetDataTracker;->ethConnected:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Landroid/net/EthernetDataTracker;->ethConnected:Z

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mNwService:Landroid/os/INetworkManagementService;

    sget-object v3, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    const-string v2, "clearInterfaceAddresses succeeded"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->disconnect()V

    :cond_1
    :goto_1
    return-void
.end method

.method private handleEnable()V
    .locals 1

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->isEthernetEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/EthernetDataTracker;->ethConnected:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->getEthernetCarrierState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/net/EthernetDataTracker;->sendEthStateChangedBroadcast(I)V

    .line 3
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->connect()V

    :cond_1
    :goto_0
    return-void
.end method

.method private interfaceAdded(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->registerEthernetContentObserver()V

    const-string v0, "Ethernet"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/net/EthernetDataTracker;->acquireWakeLock(Landroid/content/Context;)V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    sput-object p1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Ethernet"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error upping interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->handleEnable()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ethernet"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->releaseWakeLock()V

    .line 4
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->handleDisable()V

    const-string p1, ""

    .line 6
    sput-object p1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->releaseWakeLock()V

    return-void
.end method

.method private isEthernetEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isUsingStaticIp()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_use_static_ip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private makeLinkAddress()Landroid/net/LinkAddress;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->ipAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ethernet"

    const-string v1, "makeLinkAddress with empty ipAddress"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget v2, p0, Landroid/net/EthernetDataTracker;->prefixLength:I

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 3
    new-instance v1, Landroid/net/RouteInfo;

    iget-object v2, p0, Landroid/net/EthernetDataTracker;->gateway:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 4
    iget-object v1, p0, Landroid/net/EthernetDataTracker;->dns1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Ethernet"

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/net/EthernetDataTracker;->dns1:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_0

    :cond_0
    const-string v1, "makeLinkProperties with empty dns1!"

    .line 6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object v1, p0, Landroid/net/EthernetDataTracker;->dns2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Landroid/net/EthernetDataTracker;->dns2:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    :cond_1
    const-string v1, "makeLinkProperties with empty dns2!"

    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private registerEthernetContentObserver()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/net/EthernetDataTracker;->isEthernetContentObserverRegister:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/EthernetDataTracker;->mEthernetEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/net/EthernetDataTracker;->isEthernetContentObserverRegister:Z

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "Ethernet"

    const-string v1, "releaseWakeLock USB Ether"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private runDhcp()V
    .locals 2

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->isEthernetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->registerEthernetContentObserver()V

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/EthernetDataTracker$2;

    invoke-direct {v1, p0}, Landroid/net/EthernetDataTracker$2;-><init>(Landroid/net/EthernetDataTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private sendEthStateChangedBroadcast(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/net/EthernetDataTracker;->ethCurrentState:I

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.ethernet.ETHERNET_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ethernet_state"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private unregisterEthernetContentObserver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/net/EthernetDataTracker;->isEthernetContentObserverRegister:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mEthernetEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/net/EthernetDataTracker;->isEthernetContentObserverRegister:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0

    return-void
.end method

.method public connect()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->runDhcp()V

    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public disableEthIface()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method

.method public disconnect()V
    .locals 5

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 3
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const v3, 0x70001

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/high16 v3, 0x70000

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "network_management"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 10
    :try_start_0
    sget-object v2, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ethernet"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/EthernetDataTracker;->sendEthStateChangedBroadcast(I)V

    return-void
.end method

.method public enableEthIface()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->registerEthernetContentObserver()V

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEthIfaceName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->getEthernetCarrierState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/EthernetDataTracker;->isFirstBoot:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->connect()V

    .line 4
    :cond_0
    iput-boolean v1, p0, Landroid/net/EthernetDataTracker;->isFirstBoot:Z

    .line 5
    sget-boolean v0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return v0
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring setPolicyDataEnable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ethernet"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRadio(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring setUserDataEnable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ethernet"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const-string v0, "Ethernet"

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const-string/jumbo p2, "wifi"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "network_management"

    .line 4
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p2

    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    .line 6
    new-instance p2, Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-direct {p2, p0, p0}, Landroid/net/EthernetDataTracker$InterfaceObserver;-><init>(Landroid/net/EthernetDataTracker;Landroid/net/EthernetDataTracker;)V

    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040018

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    .line 8
    :try_start_0
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {p1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    .line 10
    sget-object v4, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    sput-object v3, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v3}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {p1, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result p2

    sput-boolean p2, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    .line 15
    iget-object p2, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 17
    iget-object p2, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLinkUp = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mHwAddr = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->acquireWakeLock(Landroid/content/Context;)V

    const-string p1, "check link a little later..."

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error upping interface "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get list of interfaces "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_2
    :goto_1
    :try_start_1
    iget-object p1, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object p2, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-interface {p1, p2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not register InterfaceObserver "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0

    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0

    return-void
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method public teardown()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->disconnect()V

    return v1
.end method
