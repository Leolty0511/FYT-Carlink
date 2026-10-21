.class public final Lcom/google/android/projection/transport/UsbHostDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.USB_HOST_CONNECTION"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/google/android/projection/transport/TransportFactory$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReceiverRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mCallbacks:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/transport/UsbHostDelegate$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/projection/transport/UsbHostDelegate$1;-><init>(Lcom/google/android/projection/transport/UsbHostDelegate;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mAppContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v1, Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mIsReceiverRegistered:Z

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/transport/UsbHostDelegate;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public shutdown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mIsReceiverRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mAppContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mIsReceiverRegistered:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mAppContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "usb"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/projection/transport/usb/UsbHostTransport;

    .line 22
    .line 23
    invoke-direct {v1, v0, p1}, Lcom/google/android/projection/transport/usb/UsbHostTransport;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "AHU.USB_HOST_CONNECTION"

    .line 27
    .line 28
    const-string v2, "Started USB host connection"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/projection/transport/UsbHostDelegate;->mCallbacks:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v1}, Lcom/google/android/projection/transport/TransportFactory$Callback;->onConnected(Lcom/google/android/projection/protocol/Transport;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/google/android/projection/transport/TransportFactory;->DO_NOTHING_HANDLE:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string p2, "Unable to get USB manager"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
