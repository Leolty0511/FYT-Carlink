.class public Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KNOWN_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field bttype:I

.field enable:Z

.field extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

.field initExBt:Ljava/lang/Runnable;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

.field private final mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field mH:Landroid/os/Handler;

.field private final mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

.field private volatile mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BluetoothExplorer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "4de17a00-52cb-11e6-bdf4-0800200c9a66"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->KNOWN_UUID:Ljava/util/UUID;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 13
    .line 14
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bttype:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->initExBt:Ljava/lang/Runnable;

    .line 38
    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mH:Landroid/os/Handler;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 53
    .line 54
    new-instance p3, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "wifi"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 67
    .line 68
    invoke-direct {p3, p2, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;-><init>(Lcom/google/android/projection/sink/settings/Settings;Landroid/net/wifi/WifiManager;)V

    .line 69
    .line 70
    .line 71
    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 72
    .line 73
    const-string p2, "power"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/os/PowerManager;

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    sget-object p3, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getBluetoothType()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bttype:I

    .line 95
    .line 96
    if-lez p1, :cond_0

    .line 97
    .line 98
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mH:Landroid/os/Handler;

    .line 99
    .line 100
    iget-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->initExBt:Ljava/lang/Runnable;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->lambda$exBtConnected$2(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->KNOWN_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->makeAndStartRfCommConnection(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->lambda$startRfcommServer$0()Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->lambda$makeAndStartRfCommConnection$1(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private handleConnectionLifecycle(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 11
    .line 12
    invoke-static {p2, v1, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$exBtConnected$2(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Void;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->handleConnectionLifecycle(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "exBtConnected =====>> Dev: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, " RDA DEVICE CONECTED!!  size: "

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method private synthetic lambda$makeAndStartRfCommConnection$1(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->handleConnectionLifecycle(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Lcom/google/common/util/concurrent/ListenableFuture;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$startRfcommServer$0()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method private makeAndStartRfCommConnection(Landroid/bluetooth/BluetoothSocket;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 14
    .line 15
    move-object v1, v7

    .line 16
    move-object v6, p1

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;Lcom/google/android/projection/sink/settings/Settings;Landroid/bluetooth/BluetoothSocket;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/a;

    .line 23
    .line 24
    invoke-direct {v1, p0, v7}, Lcom/google/android/projection/sink/embedded/bluetooth/a;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0, v7}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1, v1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public bluetoothType()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bttype:I

    return v0
.end method

.method public exBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "================================>>>  exBtConnected "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "  extBluetooth.btDevice : "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "exBtConnected =====>> device : "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 67
    .line 68
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mHostInfoLocator:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 71
    .line 72
    iget-object v7, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;Lcom/google/android/projection/sink/settings/Settings;Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 79
    .line 80
    iput-object p1, v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 83
    .line 84
    new-instance v2, Lcom/google/android/projection/sink/embedded/bluetooth/b;

    .line 85
    .line 86
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/b;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$6;

    .line 94
    .line 95
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$6;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v1, v2, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public getBluetoothType()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Landroid/os/SystemProperties;

    .line 3
    .line 4
    sget v2, Landroid/os/SystemProperties;->PROP_NAME_MAX:I

    .line 5
    .line 6
    const-string v2, "getInt"

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v5, Ljava/lang/String;

    .line 12
    .line 13
    aput-object v5, v4, v0

    .line 14
    .line 15
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v5, v4, v6

    .line 19
    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-array v2, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v3, "sys.fyt.bluetooth_type"

    .line 27
    .line 28
    aput-object v3, v2, v0

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v2, v6

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_4

    .line 48
    :catch_0
    move-exception v1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :catch_2
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :catch_3
    move-exception v1

    .line 55
    goto :goto_3

    .line 56
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_4
    return v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeExBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "======================>>>>   removeExBluetoothDevice : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " mConnectedDevices.remove "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mDeviceLifecycleTracker:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;->onDisconnectedFrom(Landroid/bluetooth/BluetoothDevice;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public removeWifiStartRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->removeWifiStartRequest()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public reset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->reset()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    return-void
.end method

.method public shutdownRfcommServer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->initExBt:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :try_start_1
    sget-object v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "Error closing RFCOMM server, nothing to do"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    return-void

    .line 37
    :goto_2
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mConnectedDevices:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public startProjectingTo(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$2;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized startRfcommServer()V
    .locals 4

    .line 1
    const-string v0, "Starting Bluetooth RFCOMM listener on UUID: "

    .line 2
    .line 3
    const-string v1, "enable : "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v2, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " bttype: "

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bttype:I

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " mServerSocket: "

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bttype:I

    .line 50
    .line 51
    if-gtz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->KNOWN_UUID:Ljava/util/UUID;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 76
    .line 77
    const-string v2, "Android Auto Bluetooth RFCOMM"

    .line 78
    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 84
    .line 85
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/e;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/e;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 92
    .line 93
    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;

    .line 98
    .line 99
    invoke-direct {v2, p0, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Ljava/util/concurrent/Callable;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 103
    .line 104
    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    sget-object v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string v2, "Couldn\'t start RFCOMM server"

    .line 112
    .line 113
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    :goto_0
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :cond_1
    :goto_1
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
.end method

.method public supportWireless(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "device : "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, " mac:"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "HDL"

    .line 52
    .line 53
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_2
    return v2
.end method

.method public teardown()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->shutdownRfcommServer()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 13
    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
