.class public Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;
    }
.end annotation


# static fields
.field static final HEADER_SIZE:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final LENGTH_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_SIZE:I = 0x2

.field private static final VERSION_REQUEST_MESSAGE:[B


# instance fields
.field private volatile mBluetoothConnection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

.field private final mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mConnectionFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

.field private final mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private mExtBt:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

.field private mHandler:Landroid/os/Handler;

.field private final mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

.field private final mPort:I

.field private final mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private final mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWifiSecurityType:I

.field wifiStartRequest:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RfCommConnection"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMajorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMinorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->CHANNELS_DUAL_BAND:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setSupportedWifiChannelType(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->addSupportedWifiChannels(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->VERSION_REQUEST_MESSAGE:[B

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;Lcom/google/android/projection/sink/settings/Settings;Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->wifiStartRequest:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 7
    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 8
    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 9
    iput-object p4, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 10
    invoke-virtual {p4}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mPort:I

    .line 11
    invoke-virtual {p4}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiSecurity()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mWifiSecurityType:I

    .line 12
    iput-object p5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExtBt:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;Lcom/google/android/projection/sink/settings/Settings;Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->wifiStartRequest:Ljava/lang/Runnable;

    .line 20
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 21
    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 22
    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 23
    iput-object p4, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 24
    invoke-virtual {p4}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mPort:I

    .line 25
    invoke-virtual {p4}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiSecurity()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mWifiSecurityType:I

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 27
    iput-object p5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExtBt:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->lambda$handleMessage$1(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mPort:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->raiseConnectionFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendStartResponse(Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExtBt:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleMessage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->lambda$sendStartResponse$0(Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private handleConnectStatus(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    const-string v0, "MD sent connection status "

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;->getConnectStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;->getConnectStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;->getConnectStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onHandleConnectStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Unable to parse connection status: "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method private handleMessage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/d;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$3;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$3;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private handlePingRequest(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;->getTimestampMs()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;->setTimestampMs(J)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;->getData()Lcom/google/protobuf/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 v0, 0x9

    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "Wireless Auto: HU reply WiFi Ping !!"

    .line 45
    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Failed to send ping response: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception p1

    .line 72
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "Unable to parse ping request: "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method private handlePingResponse(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    const-string v0, "Wireless Auto: MD reply WiFi Ping, rtt="

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;->getTimestampMs()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    sub-long/2addr v1, v3

    .line 20
    sget-object v3, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "ms, dataSize="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;->getData()Lcom/google/protobuf/ByteString;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "Unable to parse ping response: "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method private handleRequestInfo()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "MD requested WiFi info  mWifiSsid : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiSsid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "   mWifiPassword: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiPassword()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " HostBssid: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getHostBssid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiSsid()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->setWifiSsid(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getHostBssid()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->setWifiBssid(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiPassword()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->setWifiPassword(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :try_start_0
    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V

    .line 98
    .line 99
    .line 100
    const-string v1, "Wireless Auto Step ==>> 05  HU handle WiFi Info request"

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 111
    .line 112
    const-string v1, "MD requested WiFi info  error!!"

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method private handleStartRequest()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Wireless Auto Step ==>> 0401  HU handle WiFi Start request"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "handleStartRequest: device is null, cannot start projection"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendStartResponse(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 25
    .line 26
    invoke-interface {v3, v1}, Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;->launchProjection(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v1, "handleStartRequest: launchProjection returned null, projection not started"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendStartResponse(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private handleStartResponse(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    const-string v0, "Non success status received: "

    .line 2
    .line 3
    const-string v1, "Received start response "

    .line 4
    .line 5
    const-string v2, "Wireless Auto Step ==>> 04  HU handle WiFi Start response : status : "

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;->hasStatus()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "Received start response without status"

    .line 25
    .line 26
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-object p1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;->getStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/google/common/util/concurrent/SettableFuture;

    .line 42
    .line 43
    sget-object v5, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "  start : "

    .line 54
    .line 55
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " without making a start request"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    if-eqz p1, :cond_3

    .line 92
    .line 93
    sget-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 94
    .line 95
    if-ne p1, v1, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v1, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Unable to parse start response: "

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method

.method private handleVersionResponse(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Wireless Auto Step ==>> 02  HU handle WiFi version response"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getVersionStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    const-string v2, " rejected our protocol version: "

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getVersionStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getVersionStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/google/common/util/concurrent/SettableFuture;

    .line 87
    .line 88
    new-instance v3, Landroid/os/RemoteException;

    .line 89
    .line 90
    invoke-direct {v3, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasDeviceSerial()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const-string p1, "Version response is missing device serial"

    .line 104
    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 119
    .line 120
    .line 121
    :goto_2
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->shutdown()V

    .line 138
    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method private synthetic lambda$handleMessage$1(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    sget-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->MESSAGE_WIFI_PING_REQUEST_BT:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    sget-object p2, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Received unknown message type="

    .line 28
    .line 29
    invoke-static {v0, p1, p2}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "Wireless Auto: MD response WiFi Ping !!"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handlePingResponse(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "Wireless Auto: MD request WiFi Ping !!"

    .line 47
    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handlePingRequest(Ljava/nio/ByteBuffer;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_2
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "Wireless Auto: MD response WiFi Start !!"

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleStartResponse(Ljava/nio/ByteBuffer;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "Wireless Auto: MD response WiFi connect status!!"

    .line 69
    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleConnectStatus(Ljava/nio/ByteBuffer;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_4
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string v0, "Wireless Auto: MD response WiFi version request!!"

    .line 80
    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleVersionResponse(Ljava/nio/ByteBuffer;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string p2, "Wireless Auto: MD request WiFi Info!!"

    .line 91
    .line 92
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleRequestInfo()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    const-string p2, "Wireless Auto: MD request WiFi Start !!"

    .line 102
    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleStartRequest()V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$sendStartResponse$0(Z)Ljava/lang/Void;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;->setStatus(Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getHostIp()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;->setIpAddress(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mPort:I

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;->setPort(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_PROJECTION_ALREADY_STARTED:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;->setStatus(Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x7

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "Wireless Auto Step ==>> 0402  HU Send WiFi Start response"

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method private raiseConnectionFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Didn\'t signal end of connection"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->shutdown()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private sendMessage([BI)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, p1

    .line 9
    int-to-short v1, v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    int-to-short p2, p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothConnection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->write([B)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private sendStartResponse(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/c;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$2;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private sendVersionRequestMessage()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMajorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMinorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isDualBandSupported()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->CHANNELS_DUAL_BAND:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setSupportedWifiChannelType(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->CHANNELS_24GHZ_ONLY:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setSupportedWifiChannelType(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isSupport5GBand()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->addSupportedWifiChannels(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->addSupportedWifiChannels(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "Wireless Auto Step ==>> 01  Sent WiFi version request to MD"

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mExtBt:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public removeWifiStartRequest()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Wireless Auto Step ==>> removeWifiStartRequest"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->wifiStartRequest:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "RfCommConnection reset start!!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "RfCommConnection reset ConnectionInitializationFuture: "

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance v3, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v4, "  <<<=000=>>>   ExBluetooth reset Connection !!"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "RfCommConnection reset StartProjectionFuture: "

    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    new-instance v2, Ljava/io/IOException;

    .line 77
    .line 78
    const-string v3, "  <<<=010=>>>   ExBluetooth reset Connection !!"

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    const-string v1, "RfCommConnection reset end!!"

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public sendStartRequestMessage()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sendStartRequestMessage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->getHostIp()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->setIpAddress(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mPort:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->setPort(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p0, v0, v3}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendMessage([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->wifiStartRequest:Ljava/lang/Runnable;

    .line 77
    .line 78
    const-wide/16 v2, 0xbb8

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    const-string v1, "Wireless Auto Step ==>> 03  HU send WiFi start request to MD"

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mStartProjectionFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v1, "Projection request already being sent"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public shutdown()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Unexpected exception shutting down connection to "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothConnection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mBluetoothConnection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->startReadingMessages()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->sendVersionRequestMessage()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->mConnectionInitializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "Connection already attempted"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method
