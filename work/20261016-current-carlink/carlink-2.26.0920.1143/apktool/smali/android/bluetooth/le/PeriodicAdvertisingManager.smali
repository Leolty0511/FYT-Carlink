.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SKIP_MAX:I = 0x1f3

.field private static final SKIP_MIN:I = 0x0

.field private static final SYNC_STARTING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PeriodicAdvertisingManager"

.field private static final TIMEOUT_MAX:I = 0x4000

.field private static final TIMEOUT_MIN:I = 0xa


# instance fields
.field callbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 5
    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    .line 12
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method

.method private wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 1

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 9

    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p4, :cond_5

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    const-string/jumbo v1, "timeout must be between 10 and 16384"

    if-ltz p2, :cond_2

    const/16 v2, 0x1f3

    if-gt p2, v2, :cond_2

    const/16 v2, 0xa

    if-lt p3, v2, :cond_1

    const/16 v2, 0x4000

    if-gt p3, v2, :cond_1

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object p5

    .line 6
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    invoke-interface {v2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p5}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to register sync - "

    .line 8
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p5

    const-string v1, "Failed to get Bluetooth gatt - "

    .line 9
    invoke-static {v0, v1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v5

    const/4 v8, 0x2

    move-object v2, p4

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanResult must contain a valid sid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanResult can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 3

    .line 1
    const-string v0, "PeriodicAdvertisingManager"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 6
    .line 7
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const-string v1, "Failed to cancel sync creation - "

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "callback was not properly registered"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catch_1
    move-exception p1

    .line 41
    const-string v1, "Failed to get Bluetooth gatt - "

    .line 42
    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "callback can\'t be null"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
