.class Lcom/google/android/projection/transport/usb/UsbAccessoryTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport$1;->this$0:Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;

    invoke-static {v0}, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->access$000(Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
