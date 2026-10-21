.class Lcom/google/android/projection/transport/UsbAccessoryDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/transport/UsbAccessoryDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/transport/UsbAccessoryDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/UsbAccessoryDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/transport/UsbAccessoryDelegate$1;->this$0:Lcom/google/android/projection/transport/UsbAccessoryDelegate;

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
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "accessory"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/google/android/projection/transport/UsbAccessoryDelegate$1;->this$0:Lcom/google/android/projection/transport/UsbAccessoryDelegate;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/google/android/projection/transport/UsbAccessoryDelegate;->access$000(Lcom/google/android/projection/transport/UsbAccessoryDelegate;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/google/android/projection/transport/TransportFactory$Callback;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string p2, "AHU.USB_ACC_CONNECTION"

    .line 40
    .line 41
    const-string v0, "Disconnected, finishing"

    .line 42
    .line 43
    invoke-static {p2, v0}, Lcom/google/android/projection/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/google/android/projection/transport/TransportFactory$Callback;->onDisconnected()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method
