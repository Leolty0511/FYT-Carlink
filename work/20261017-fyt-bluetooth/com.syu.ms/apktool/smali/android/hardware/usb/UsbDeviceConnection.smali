.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method private static checkBounds([BII)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ltz p1, :cond_1

    add-int/2addr p1, p2

    if-gt p1, p0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Buffer start or length out of bounds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native native_bulk_request(I[BIII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BIII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1
.end method

.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6

    .line 2
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result p1

    return p1
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public controlTransfer(IIII[BIII)I
    .locals 0

    .line 2
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 3
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result p1

    return p1
.end method

.method public getFileDescriptor()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result p1

    return p1
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result p1

    return p1
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    :cond_0
    return-object v0
.end method
