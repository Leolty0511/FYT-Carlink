.class Lcom/google/android/projection/sink/ui/MainActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$17;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "device"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$17;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$17;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p2}, Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string p2, "AHU.MAIN_ACTIVITY"

    .line 49
    .line 50
    const-string v0, "Failed to interrupt previous attempt to establish Transport"

    .line 51
    .line 52
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$17;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 57
    .line 58
    invoke-static {p2, p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$300(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/hardware/usb/UsbDevice;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
