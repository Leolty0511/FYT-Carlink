.class public final Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESSORY_DESCRIPTION:Ljava/lang/String; = "Android Auto"

.field private static final ACCESSORY_MANUFACTURER_NAME:Ljava/lang/String; = "Android"

.field private static final ACCESSORY_MODEL_NAME:Ljava/lang/String; = "Android Auto"

.field private static final ACCESSORY_PRODUCT_ID0:I = 0x2d00

.field private static final ACCESSORY_PRODUCT_ID1:I = 0x2d01

.field private static final ACCESSORY_SERIAL_NUMBER:Ljava/lang/String; = "0000000012345678"

.field private static final ACCESSORY_URI:Ljava/lang/String; = "http://www.android.com/auto"

.field private static final ACCESSORY_VERSION:Ljava/lang/String; = "1.0"

.field private static final AOAP_STR_DESCRIPTION:I = 0x2

.field private static final AOAP_STR_MANUFACTURER_NAME:I = 0x0

.field private static final AOAP_STR_MODEL_NAME:I = 0x1

.field private static final AOAP_STR_SERIAL_NUMBER:I = 0x5

.field private static final AOAP_STR_URI:I = 0x4

.field private static final AOAP_STR_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AHU.USB_HOST_CONNECTION"

.field private static final USB_TIMEOUT_MS:I = 0x186a0

.field private static final VENDOR_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->VENDOR_IDS:Ljava/util/Set;

    .line 7
    .line 8
    const/16 v1, 0x18d1

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x4e8

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x22b8

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/16 v1, 0xbb4

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x1004

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccessoryProtocol(Landroid/hardware/usb/UsbDeviceConnection;)I
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v9, v0, [B

    .line 3
    .line 4
    const/16 v2, 0xc0

    .line 5
    .line 6
    const/16 v3, 0x33

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v7, 0x2

    .line 11
    const v8, 0x186a0

    .line 12
    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move-object v6, v9

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    aget-byte p0, v9, p0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aget-byte v0, v9, v0

    .line 27
    .line 28
    shl-int/lit8 v0, v0, 0x8

    .line 29
    .line 30
    add-int/2addr p0, v0

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, -0x1

    .line 33
    return p0
.end method

.method public static processDevice(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->VENDOR_IDS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v3, 0x2d00

    .line 24
    .line 25
    if-eq v0, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v3, 0x2d01

    .line 32
    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    const-string v3, "processDevice(), isAndroidAccessory = "

    .line 39
    .line 40
    const-string v4, "AHU.USB_HOST_CONNECTION"

    .line 41
    .line 42
    invoke-static {v3, v0, v4}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "usb"

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    return v2

    .line 66
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->switchAccessory(Landroid/hardware/usb/UsbDeviceConnection;)Z

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_3
    return v1
.end method

.method private static sendAccessoryControlTransfer(Landroid/hardware/usb/UsbDeviceConnection;II[B)I
    .locals 8

    .line 1
    const/16 v1, 0x40

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v0, p3

    .line 9
    :goto_0
    move v6, v0

    .line 10
    const v7, 0x186a0

    .line 11
    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move v2, p1

    .line 15
    move v4, p2

    .line 16
    move-object v5, p3

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private static sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {p0, v1, p1, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryControlTransfer(Landroid/hardware/usb/UsbDeviceConnection;II[B)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static startAccessory(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryControlTransfer(Landroid/hardware/usb/UsbDeviceConnection;II[B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static switchAccessory(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->getAccessoryProtocol(Landroid/hardware/usb/UsbDeviceConnection;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "AHU.USB_HOST_CONNECTION"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    new-array p0, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    aput-object v0, p0, v3

    .line 18
    .line 19
    const-string v0, "Incorrect accessory protocol %d"

    .line 20
    .line 21
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    const-string v0, "Android"

    .line 30
    .line 31
    invoke-static {p0, v3, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string p0, "Unable to send manufacturer name"

    .line 38
    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_1
    const-string v0, "Android Auto"

    .line 44
    .line 45
    invoke-static {p0, v1, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    const-string p0, "Unable to send model name"

    .line 52
    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    const/4 v4, 0x2

    .line 58
    invoke-static {p0, v4, v0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    const-string p0, "Unable to send description"

    .line 65
    .line 66
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return v3

    .line 70
    :cond_3
    const/4 v0, 0x3

    .line 71
    const-string v4, "1.0"

    .line 72
    .line 73
    invoke-static {p0, v0, v4}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    const-string p0, "Unable to send version"

    .line 80
    .line 81
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return v3

    .line 85
    :cond_4
    const/4 v0, 0x4

    .line 86
    const-string v4, "http://www.android.com/auto"

    .line 87
    .line 88
    invoke-static {p0, v0, v4}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    const-string p0, "Unable to send URI"

    .line 95
    .line 96
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_5
    const/4 v0, 0x5

    .line 101
    const-string v4, "0000000012345678"

    .line 102
    .line 103
    invoke-static {p0, v0, v4}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->sendAccessoryString(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    const-string p0, "Unable to send serial number"

    .line 110
    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return v3

    .line 115
    :cond_6
    invoke-static {p0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->startAccessory(Landroid/hardware/usb/UsbDeviceConnection;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_7

    .line 120
    .line 121
    const-string p0, "Unable to start accessory mode"

    .line 122
    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return v3

    .line 127
    :cond_7
    return v1
.end method
