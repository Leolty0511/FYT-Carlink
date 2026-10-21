.class public Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;
.super Lcom/google/android/projection/protocol/Transport;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.USB_ACC_CONNECTION"

.field private static final USB_ACCESSORY_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private mIsOpened:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mParcelAccessoryFd:Landroid/os/ParcelFileDescriptor;

.field private final mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/Transport;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mParcelAccessoryFd:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mOutputStream:Ljava/io/OutputStream;

    .line 22
    .line 23
    new-instance p2, Ljava/io/FileInputStream;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mInputStream:Ljava/io/InputStream;

    .line 29
    .line 30
    new-instance p1, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport$1;-><init>(Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/google/android/projection/common/UsbInputReader;

    .line 36
    .line 37
    const/16 v0, 0x4000

    .line 38
    .line 39
    invoke-direct {p2, p1, v0}, Lcom/google/android/projection/common/UsbInputReader;-><init>(Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;I)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mIsOpened:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string p2, "Unable to open USB accessory"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public static synthetic access$000(Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method


# virtual methods
.method public read([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mIsOpened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/projection/common/UsbInputReader;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "Connection was closed."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mInputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mOutputStream:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mParcelAccessoryFd:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Can\'t close USB accessory: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "AHU.USB_ACC_CONNECTION"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mIsOpened:Z

    .line 39
    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mIsOpened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbAccessoryTransport;->mOutputStream:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 12
    .line 13
    const-string p2, "Connection was closed."

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method
