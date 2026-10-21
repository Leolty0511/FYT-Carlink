.class public Lcom/google/android/projection/sink/embedded/service/BackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;,
        Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;
    }
.end annotation


# static fields
.field public static EXTRA_START_REASON:Ljava/lang/String; = "reason"

.field public static EXTRA_START_REASON_RFCOMM:Ljava/lang/String; = "rfcomm"

.field private static final TAG:Ljava/lang/String; = "AHU.Back"


# instance fields
.field bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field deviceLife:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

.field mAP:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field private final mBinder:Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;

.field mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

.field mSettings:Lcom/google/android/projection/sink/settings/Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->deviceLife:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mAP:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;-><init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mBinder:Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mAP:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->initialize(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;-><init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;Landroid/bluetooth/BluetoothDevice;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public isSupportWireless()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mBinder:Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;-><init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->deviceLife:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/sink/settings/Settings;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mAP:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->deviceLife:Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 29
    .line 30
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->startRfcommServer()V

    .line 36
    .line 37
    .line 38
    const-string v0, "AHU.Back"

    .line 39
    .line 40
    const-string v1, "=======>> onCreate"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->bluetoothType()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/16 v2, 0x200

    .line 61
    .line 62
    if-ne v1, v2, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public start()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

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
    const/4 v1, 0x0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x200

    .line 35
    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v0, "AHU.Back"

    .line 41
    .line 42
    const-string v2, "start connect"

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0
.end method
