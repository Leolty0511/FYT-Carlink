.class public final Lf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final launchProjection(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    const-string p1, "Auto"

    .line 2
    .line 3
    const-string v0, "DeviceLifeTracker launchProjection"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public final onConnectedTo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    :cond_0
    return-void
.end method

.method public final onConnectedTo(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string p1, "Auto"

    const-string v0, "DeviceLifeTracker onDisconnectedFrom"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDisconnectedFrom(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string p1, "Auto"

    const-string v0, "DeviceLifeTracker onDisconnectedFrom"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p1, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    :cond_0
    return-void
.end method

.method public final onDisconnectedFrom(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string p1, "Auto"

    const-string v0, "DeviceLifeTracker onDisconnectedFrom"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
