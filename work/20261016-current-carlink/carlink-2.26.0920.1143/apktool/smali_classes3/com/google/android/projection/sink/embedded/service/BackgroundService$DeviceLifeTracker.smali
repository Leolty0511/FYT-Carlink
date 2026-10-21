.class Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/service/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceLifeTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchProjection(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConnectedTo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    iget-object p1, p1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onConnectedTo(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDisconnectedFrom(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$DeviceLifeTracker;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    iget-object p1, p1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->mListener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;->onStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onDisconnectedFrom(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    return-void
.end method
