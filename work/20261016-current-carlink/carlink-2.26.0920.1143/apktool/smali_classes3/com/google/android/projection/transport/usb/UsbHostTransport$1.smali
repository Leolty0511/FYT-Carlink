.class Lcom/google/android/projection/transport/usb/UsbHostTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/transport/usb/UsbHostTransport;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/transport/usb/UsbHostTransport;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/usb/UsbHostTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbHostTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbHostTransport;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/transport/usb/UsbHostTransport;->access$000(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbHostTransport;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/projection/transport/usb/UsbHostTransport;->access$200(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbHostTransport;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/projection/transport/usb/UsbHostTransport;->access$100(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Landroid/hardware/usb/UsbEndpoint;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v6, 0x1770

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    move v4, p2

    .line 25
    move v5, p3

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Ljava/io/IOException;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p2

    .line 38
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 39
    .line 40
    const-string p2, "USB device is closed"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
