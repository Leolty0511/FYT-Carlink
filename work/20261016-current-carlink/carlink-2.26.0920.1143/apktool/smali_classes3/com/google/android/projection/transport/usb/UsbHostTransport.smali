.class public Lcom/google/android/projection/transport/usb/UsbHostTransport;
.super Lcom/google/android/projection/protocol/Transport;
.source "SourceFile"


# static fields
.field private static final SCRATCH_SIZE:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "AHU.USB_HOST_CONNECTION"

.field private static final TIMEOUT_MILLIS:I = 0x1770


# instance fields
.field private final mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final mAccessoryInterface:Landroid/hardware/usb/UsbInterface;

.field private final mBulkInEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final mBulkOutEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mIsOpened:Z

.field private final mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/Transport;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "interface not available"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-lt v0, v2, :cond_7

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryInterface:Landroid/hardware/usb/UsbInterface;

    .line 27
    .line 28
    if-eqz p2, :cond_6

    .line 29
    .line 30
    invoke-virtual {p1, p2, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    move-object p2, p1

    .line 38
    move v1, v0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryInterface:Landroid/hardware/usb/UsbInterface;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v1, v3, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryInterface:Landroid/hardware/usb/UsbInterface;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x2

    .line 58
    if-ne v4, v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/16 v5, 0x80

    .line 65
    .line 66
    const-string v6, "AHU.USB_HOST_CONNECTION"

    .line 67
    .line 68
    if-ne v4, v5, :cond_0

    .line 69
    .line 70
    new-array p1, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    aput-object v4, p1, v0

    .line 77
    .line 78
    const-string v4, "Found bulk IN endpoint at %d"

    .line 79
    .line 80
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-object p1, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_1

    .line 94
    .line 95
    new-array p2, v2, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    aput-object v4, p2, v0

    .line 102
    .line 103
    const-string v4, "Found bulk OUT endpoint at %d"

    .line 104
    .line 105
    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-object p2, v3

    .line 113
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    if-eqz p1, :cond_4

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    iput-object p1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mBulkInEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 121
    .line 122
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mBulkOutEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 123
    .line 124
    new-instance p1, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lcom/google/android/projection/transport/usb/UsbHostTransport$1;-><init>(Lcom/google/android/projection/transport/usb/UsbHostTransport;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Lcom/google/android/projection/common/UsbInputReader;

    .line 130
    .line 131
    const v0, 0x8000

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p1, v0}, Lcom/google/android/projection/common/UsbInputReader;-><init>(Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;I)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;

    .line 138
    .line 139
    iput-boolean v2, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mIsOpened:Z

    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 143
    .line 144
    const-string p2, "Could not find USB bulk out endpoint"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 151
    .line 152
    const-string p2, "Could not find USB bulk in endpoint"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 159
    .line 160
    const-string p2, "interface could not be claimed"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 167
    .line 168
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 173
    .line 174
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 179
    .line 180
    const-string p2, "connection failed to open"

    .line 181
    .line 182
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

.method public static synthetic access$000(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mIsOpened:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mBulkInEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/transport/usb/UsbHostTransport;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p0
.end method


# virtual methods
.method public read([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mIsOpened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mUsbInputReader:Lcom/google/android/projection/common/UsbInputReader;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resetDevice"

    .line 20
    .line 21
    new-array v2, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 28
    .line 29
    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string v0, "AHU.USB_HOST_CONNECTION"

    .line 37
    .line 38
    const-string v2, "Unable to reset USB - restarting projection will not work"

    .line 39
    .line 40
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mIsOpened:Z

    .line 49
    .line 50
    return-void
.end method

.method public write([BII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mIsOpened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mAccessoryConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/projection/transport/usb/UsbHostTransport;->mBulkOutEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 8
    .line 9
    const/16 v6, 0x1770

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, p3

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 22
    .line 23
    const-string p2, "Bulk transfer failed."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 30
    .line 31
    const-string p2, "Connection was closed."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
