.class public final Lcom/syu/carlink/UsbScanner;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final j:Lcom/syu/carlink/UsbScanner;


# instance fields
.field public a:Landroid/hardware/usb/UsbManager;

.field public b:Landroid/content/Context;

.field public c:Landroid/os/Handler;

.field public d:Z

.field public final e:Landroid/os/b;

.field public f:Landroid/hardware/usb/UsbDevice;

.field public final g:Landroid/net/b;

.field public final h:[I

.field public i:Le/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/UsbScanner;

    invoke-direct {v0}, Lcom/syu/carlink/UsbScanner;-><init>()V

    sput-object v0, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/b;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/b;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/syu/carlink/UsbScanner;->e:Landroid/os/b;

    .line 12
    .line 13
    new-instance v0, Landroid/net/b;

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/syu/carlink/UsbScanner;->g:Landroid/net/b;

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/syu/carlink/UsbScanner;->h:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xe
        0xe0
        0xfe
    .end array-data
.end method

.method public static e(Landroid/hardware/usb/UsbDevice;)I
    .locals 7

    .line 1
    const-string v0, "device"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Le/b;->e(Landroid/hardware/usb/UsbDevice;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p0}, Le/b;->f(Landroid/hardware/usb/UsbDevice;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v0, v3

    .line 33
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    new-array v5, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    aput-object v6, v5, v3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    aput-object p0, v5, v1

    .line 59
    .line 60
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "USB id: %04X, product id: %04X, "

    .line 65
    .line 66
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v1, "format(format, *args)"

    .line 71
    .line 72
    invoke-static {p0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, "type: "

    .line 79
    .line 80
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v1, "Usb"

    .line 91
    .line 92
    invoke-static {v1, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v0
.end method

.method public static g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z
    .locals 9

    .line 1
    sget-object v0, Lf0/a;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 8
    .line 9
    invoke-static {v6, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x34

    .line 13
    .line 14
    const/16 v2, 0x40

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    array-length v7, v6

    .line 18
    const/16 v8, 0x1f4

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    move v5, p1

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p0, p1, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public static h(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 13

    .line 1
    const-string v0, "Usb"

    .line 2
    .line 3
    const-string v1, "switchAccessory 00"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v10, v1, [B

    .line 10
    .line 11
    const/16 v3, 0xc0

    .line 12
    .line 13
    const/16 v4, 0x33

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v8, 0x2

    .line 18
    const/16 v9, 0x1f4

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v7, v10

    .line 22
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-ne v2, v1, :cond_0

    .line 29
    .line 30
    aget-byte v2, v10, v4

    .line 31
    .line 32
    aget-byte v5, v10, v3

    .line 33
    .line 34
    shl-int/lit8 v5, v5, 0x8

    .line 35
    .line 36
    add-int/2addr v2, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, -0x1

    .line 39
    :goto_0
    if-gtz v2, :cond_1

    .line 40
    .line 41
    new-array p0, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    aput-object v1, p0, v4

    .line 48
    .line 49
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, "Incorrect accessory protocol %d"

    .line 54
    .line 55
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v1, "format(format, *args)"

    .line 60
    .line 61
    invoke-static {p0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v4

    .line 68
    :cond_1
    const-string v2, "Android"

    .line 69
    .line 70
    invoke-static {p0, v4, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    const-string p0, "Unable to send manufacturer name"

    .line 77
    .line 78
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v4

    .line 82
    :cond_2
    const-string v2, "Android Auto"

    .line 83
    .line 84
    invoke-static {p0, v3, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_3

    .line 89
    .line 90
    const-string p0, "Unable to send model name"

    .line 91
    .line 92
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v4

    .line 96
    :cond_3
    invoke-static {p0, v1, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    const-string p0, "Unable to send description"

    .line 103
    .line 104
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v4

    .line 108
    :cond_4
    const/4 v1, 0x3

    .line 109
    const-string v2, "1.0"

    .line 110
    .line 111
    invoke-static {p0, v1, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    const-string p0, "Unable to send version"

    .line 118
    .line 119
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v4

    .line 123
    :cond_5
    const/4 v1, 0x4

    .line 124
    const-string v2, "http://www.android.com/auto"

    .line 125
    .line 126
    invoke-static {p0, v1, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_6

    .line 131
    .line 132
    const-string p0, "Unable to send URI"

    .line 133
    .line 134
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v4

    .line 138
    :cond_6
    const/4 v1, 0x5

    .line 139
    const-string v2, "0000000012345678"

    .line 140
    .line 141
    invoke-static {p0, v1, v2}, Lcom/syu/carlink/UsbScanner;->g(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    const-string p0, "Unable to send serial number"

    .line 148
    .line 149
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v4

    .line 153
    :cond_7
    const/16 v7, 0x35

    .line 154
    .line 155
    const/16 v6, 0x40

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    const/16 v12, 0x1f4

    .line 160
    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v10, 0x0

    .line 163
    move-object v5, p0

    .line 164
    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-nez p0, :cond_8

    .line 169
    .line 170
    move p0, v3

    .line 171
    goto :goto_1

    .line 172
    :cond_8
    move p0, v4

    .line 173
    :goto_1
    if-nez p0, :cond_9

    .line 174
    .line 175
    const-string p0, "Unable to start accessory mode"

    .line 176
    .line 177
    invoke-static {v0, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return v4

    .line 181
    :cond_9
    return v3
.end method


# virtual methods
.method public final a()I
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "==========>>> checkUsbLinkType  size: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/syu/carlink/UsbScanner;->a:Landroid/hardware/usb/UsbManager;

    .line 9
    .line 10
    const-string v2, "usbManager"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "Usb"

    .line 39
    .line 40
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/syu/carlink/UsbScanner;->a:Landroid/hardware/usb/UsbManager;

    .line 44
    .line 45
    if-eqz v0, :cond_9

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, -0x1

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move v4, v2

    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/util/Map$Entry;

    .line 74
    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v7, "Usb Device: "

    .line 78
    .line 79
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x2

    .line 83
    new-array v8, v7, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Landroid/hardware/usb/UsbDevice;

    .line 90
    .line 91
    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/4 v10, 0x0

    .line 100
    aput-object v9, v8, v10

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroid/hardware/usb/UsbDevice;

    .line 107
    .line 108
    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    const/4 v11, 0x1

    .line 117
    aput-object v9, v8, v11

    .line 118
    .line 119
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v9, " Check  USB id: %04X, product id: %04X, "

    .line 124
    .line 125
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const-string v9, "format(format, *args)"

    .line 130
    .line 131
    invoke-static {v8, v9}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v8, " \n"

    .line 138
    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v1, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v8, "device.value"

    .line 161
    .line 162
    invoke-static {v6, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 166
    .line 167
    invoke-static {v6}, Le/b;->e(Landroid/hardware/usb/UsbDevice;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_1

    .line 172
    .line 173
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 181
    .line 182
    invoke-static {v6}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_2

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v1, Landroid/accessibilityservice/a;

    .line 193
    .line 194
    const/4 v2, 0x6

    .line 195
    invoke-direct {v1, p0, v5, v2}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    return v7

    .line 202
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v6, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 210
    .line 211
    invoke-static {v6}, Le/b;->f(Landroid/hardware/usb/UsbDevice;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_3

    .line 216
    .line 217
    move v4, v7

    .line 218
    move v2, v11

    .line 219
    goto :goto_1

    .line 220
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v6, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/syu/carlink/UsbScanner;->b()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {p0, v6, v8}, Lcom/syu/carlink/UsbScanner;->f(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_4

    .line 238
    .line 239
    move v2, v7

    .line 240
    move v4, v10

    .line 241
    :cond_4
    :goto_1
    if-lez v2, :cond_1

    .line 242
    .line 243
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object v3, v0

    .line 248
    :cond_5
    move v0, v2

    .line 249
    move v2, v4

    .line 250
    goto :goto_2

    .line 251
    :cond_6
    move v0, v2

    .line 252
    :goto_2
    if-gtz v2, :cond_8

    .line 253
    .line 254
    if-nez v2, :cond_7

    .line 255
    .line 256
    sget-object v1, Lf/k;->y:Lf/k;

    .line 257
    .line 258
    invoke-virtual {v1}, Lf/k;->d()V

    .line 259
    .line 260
    .line 261
    sget-object v1, Lf/k;->y:Lf/k;

    .line 262
    .line 263
    const-wide/16 v2, 0x7d0

    .line 264
    .line 265
    invoke-virtual {v1, v2, v3}, Lf/k;->e(J)V

    .line 266
    .line 267
    .line 268
    :cond_7
    return v0

    .line 269
    :cond_8
    new-instance v1, Le/a0;

    .line 270
    .line 271
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 275
    .line 276
    invoke-direct {v1, p0, v3, v2}, Le/a0;-><init>(Lcom/syu/carlink/UsbScanner;Landroid/hardware/usb/UsbDevice;I)V

    .line 277
    .line 278
    .line 279
    iput-object v1, p0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    .line 289
    .line 290
    return v0

    .line 291
    :cond_9
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v3

    .line 295
    :cond_a
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v3
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/UsbScanner;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/UsbScanner;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mHandler"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Le/b;->f(Landroid/hardware/usb/UsbDevice;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "me"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static {p1}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    move p2, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_3
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 50
    .line 51
    if-eqz v0, :cond_9

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->d()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/syu/carlink/UsbScanner;->f(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 p2, -0x1

    .line 68
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "Link Mode : "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "Usb"

    .line 83
    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    if-gtz p2, :cond_6

    .line 88
    .line 89
    if-nez p2, :cond_5

    .line 90
    .line 91
    sget-object p1, Lf/k;->y:Lf/k;

    .line 92
    .line 93
    invoke-virtual {p1}, Lf/k;->d()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lf/k;->y:Lf/k;

    .line 97
    .line 98
    const-wide/16 v0, 0x7d0

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Lf/k;->e(J)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    new-instance v0, Le/a0;

    .line 116
    .line 117
    invoke-direct {v0, p0, p1, p2}, Le/a0;-><init>(Lcom/syu/carlink/UsbScanner;Landroid/hardware/usb/UsbDevice;I)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 127
    .line 128
    if-ne p2, v2, :cond_8

    .line 129
    .line 130
    const-wide/16 v1, 0xc8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    const-wide/16 v1, 0x0

    .line 134
    .line 135
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method

.method public final f(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z
    .locals 13

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    const-string v2, "format(format, *args)"

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const-string v4, "Usb"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-ne v0, v5, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v7, "------------->> check device isMarkedDevice, dev: \n"

    .line 23
    .line 24
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-array v0, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    aput-object v7, v0, v6

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    aput-object v7, v0, v5

    .line 58
    .line 59
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v7, "USB id: %04X, product id: %04X"

    .line 64
    .line 65
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v7, " device:"

    .line 73
    .line 74
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v7, "usbDevice.getInterface(0)"

    .line 86
    .line 87
    invoke-static {v0, v7}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v7, "MTP"

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-nez v7, :cond_0

    .line 101
    .line 102
    const-string v7, "mtp"

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_0

    .line 113
    .line 114
    iget-object v7, p0, Lcom/syu/carlink/UsbScanner;->h:[I

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v7, v0}, Lt/c;->H([II)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    move v0, v5

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    move v0, v6

    .line 129
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v8, " isMarkedDevice result: "

    .line 132
    .line 133
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v4, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-le v0, v5, :cond_7

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    const/4 v7, -0x1

    .line 158
    move v10, v5

    .line 159
    move v8, v6

    .line 160
    move v9, v7

    .line 161
    :goto_1
    if-ge v8, v0, :cond_6

    .line 162
    .line 163
    invoke-virtual {p1, v8}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const-string v12, "usbDevice.getInterface(index)"

    .line 168
    .line 169
    invoke-static {v11, v12}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    if-ne v9, v7, :cond_2

    .line 173
    .line 174
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    goto :goto_2

    .line 179
    :cond_2
    if-ltz v9, :cond_4

    .line 180
    .line 181
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-ne v9, v10, :cond_3

    .line 186
    .line 187
    move v10, v5

    .line 188
    goto :goto_2

    .line 189
    :cond_3
    move v10, v6

    .line 190
    :cond_4
    :goto_2
    if-eqz v10, :cond_5

    .line 191
    .line 192
    new-array v10, v3, [Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    aput-object v11, v10, v6

    .line 199
    .line 200
    const/16 v11, 0x8

    .line 201
    .line 202
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    aput-object v11, v10, v5

    .line 207
    .line 208
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v10, v11}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    :cond_5
    if-eqz v10, :cond_6

    .line 217
    .line 218
    add-int/lit8 v8, v8, 0x1

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_6
    move v0, v10

    .line 222
    goto :goto_3

    .line 223
    :cond_7
    move v0, v5

    .line 224
    :goto_3
    if-eqz v0, :cond_8

    .line 225
    .line 226
    return v6

    .line 227
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_9

    .line 232
    .line 233
    return v5

    .line 234
    :cond_9
    new-array v0, v1, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    aput-object v7, v0, v6

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    aput-object v7, v0, v5

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    aput-object v7, v0, v3

    .line 265
    .line 266
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "USB id: %04X, product id: %04X, interfaceCount: %d"

    .line 271
    .line 272
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "------------->> processDevice  "

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const-string v1, "usb"

    .line 293
    .line 294
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 299
    .line 300
    invoke-static {p2, v1}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    check-cast p2, Landroid/hardware/usb/UsbManager;

    .line 304
    .line 305
    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    if-nez p1, :cond_a

    .line 310
    .line 311
    return v6

    .line 312
    :cond_a
    :try_start_0
    invoke-virtual {p1, v0, v5}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 313
    .line 314
    .line 315
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-nez p2, :cond_b

    .line 317
    .line 318
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    :goto_4
    return v6

    .line 327
    :cond_b
    :try_start_2
    invoke-static {p1}, Lcom/syu/carlink/UsbScanner;->h(Landroid/hardware/usb/UsbDeviceConnection;)Z

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v2, "------------->> processDevice result: "

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    if-nez p2, :cond_c

    .line 352
    .line 353
    invoke-virtual {p1, v0, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .line 355
    .line 356
    :cond_c
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :catch_1
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    :goto_5
    return p2

    .line 365
    :catchall_0
    move-exception p2

    .line 366
    goto :goto_7

    .line 367
    :catch_2
    move-exception p2

    .line 368
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v1, "USB Device processDevice failed: "

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    invoke-static {v4, p2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    .line 391
    .line 392
    :try_start_5
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :catch_3
    move-exception p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    .line 399
    .line 400
    :goto_6
    return v6

    .line 401
    :goto_7
    :try_start_6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :catch_4
    move-exception p1

    .line 406
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    .line 408
    .line 409
    :goto_8
    throw p2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "intent"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "onReceive   "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, "  \nMcuOn: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v4, v4, Lg/b;->d:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, "  \nlinkedType : "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v4, v4, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, "  \nlinkState: "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->B()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "Usb"

    .line 96
    .line 97
    invoke-static {v4, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->v()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_0

    .line 109
    .line 110
    return-void

    .line 111
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_11

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    const-string v6, " Check  USB id: %04X, product id: %04X, "

    .line 122
    .line 123
    const-string v7, "device"

    .line 124
    .line 125
    const-string v8, "format(format, *args)"

    .line 126
    .line 127
    const/4 v9, 0x2

    .line 128
    const/4 v10, 0x1

    .line 129
    const/4 v11, 0x0

    .line 130
    sparse-switch v5, :sswitch_data_0

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :sswitch_0
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :sswitch_1
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 139
    .line 140
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :sswitch_2
    const-string v5, "com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION"

    .line 146
    .line 147
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_9

    .line 152
    .line 153
    goto/16 :goto_4

    .line 154
    .line 155
    :sswitch_3
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_1

    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 170
    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    invoke-static {v1}, Le/b0;->a(Landroid/hardware/usb/UsbDevice;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_2

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_2
    new-array v2, v9, [Ljava/lang/Object;

    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    aput-object v3, v2, v11

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    aput-object v3, v2, v10

    .line 202
    .line 203
    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "=====>> onReceive  DETACH usbDevice:"

    .line 215
    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v2, v0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 224
    .line 225
    iget-object v3, v0, Lcom/syu/carlink/UsbScanner;->e:Landroid/os/b;

    .line 226
    .line 227
    if-eqz v2, :cond_5

    .line 228
    .line 229
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->p()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_3

    .line 238
    .line 239
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->l()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-nez v5, :cond_3

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Lcom/syu/carlink/UsbScanner;->e(Landroid/hardware/usb/UsbDevice;)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-lez v5, :cond_3

    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    const-wide/16 v6, 0xbb8

    .line 267
    .line 268
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    .line 270
    .line 271
    :cond_3
    iget-boolean v5, v2, Le/a0;->d:Z

    .line 272
    .line 273
    if-nez v5, :cond_5

    .line 274
    .line 275
    iget-object v5, v2, Le/a0;->e:Lcom/syu/carlink/UsbScanner;

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v5, v2, Le/a0;->b:Landroid/hardware/usb/UsbDevice;

    .line 281
    .line 282
    if-eqz v5, :cond_4

    .line 283
    .line 284
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-static {v6, v7}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_4

    .line 297
    .line 298
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-ne v6, v7, :cond_4

    .line 307
    .line 308
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-ne v5, v6, :cond_4

    .line 317
    .line 318
    move v5, v10

    .line 319
    goto :goto_1

    .line 320
    :cond_4
    move v5, v11

    .line 321
    :goto_1
    if-eqz v5, :cond_5

    .line 322
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    iput-object v2, v0, Lcom/syu/carlink/UsbScanner;->i:Le/a0;

    .line 332
    .line 333
    :cond_5
    invoke-static {v1}, Lcom/syu/carlink/UsbScanner;->e(Landroid/hardware/usb/UsbDevice;)I

    .line 334
    .line 335
    .line 336
    move-result v13

    .line 337
    if-ltz v13, :cond_11

    .line 338
    .line 339
    const-wide/16 v5, 0x3e8

    .line 340
    .line 341
    if-ne v13, v9, :cond_6

    .line 342
    .line 343
    invoke-static {v1}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_6

    .line 348
    .line 349
    const-string v1, "==========>>> Cut  Android Auto"

    .line 350
    .line 351
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    sget-object v1, Lf/k;->y:Lf/k;

    .line 355
    .line 356
    invoke-virtual {v1, v5, v6}, Lf/k;->e(J)V

    .line 357
    .line 358
    .line 359
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 360
    .line 361
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    new-instance v2, Lg/a;

    .line 366
    .line 367
    const/4 v14, 0x7

    .line 368
    const/4 v15, 0x0

    .line 369
    const/16 v16, 0x0

    .line 370
    .line 371
    const/16 v17, 0x0

    .line 372
    .line 373
    const/16 v18, 0x18

    .line 374
    .line 375
    move-object v12, v2

    .line 376
    invoke-direct/range {v12 .. v18}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_4

    .line 383
    .line 384
    :cond_6
    if-ne v13, v10, :cond_11

    .line 385
    .line 386
    const-string v1, "==========>>> Cut  Carplayy"

    .line 387
    .line 388
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    .line 397
    .line 398
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    const/4 v2, 0x3

    .line 407
    if-ne v1, v2, :cond_7

    .line 408
    .line 409
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 410
    .line 411
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    new-instance v2, Lg/a;

    .line 416
    .line 417
    const/4 v14, 0x7

    .line 418
    const/4 v15, 0x0

    .line 419
    const/16 v16, 0x0

    .line 420
    .line 421
    const/16 v17, 0x0

    .line 422
    .line 423
    const/16 v18, 0x18

    .line 424
    .line 425
    move-object v12, v2

    .line 426
    invoke-direct/range {v12 .. v18}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_4

    .line 433
    .line 434
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    new-instance v2, Le/y;

    .line 439
    .line 440
    invoke-direct {v2, v13, v11}, Le/y;-><init>(II)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    .line 445
    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :cond_8
    :goto_2
    return-void

    .line 449
    :sswitch_4
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 450
    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-nez v3, :cond_9

    .line 456
    .line 457
    goto/16 :goto_4

    .line 458
    .line 459
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v5, "onReceive  ATTACHE usbDevice: CarLink.me.isWiredAutoConnection(): "

    .line 462
    .line 463
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->y()Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v5, "  CarLink.me.carlinkService()?.isUIShowing : "

    .line 478
    .line 479
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    iget-boolean v5, v5, Lcom/syu/carlink/CarLink;->d:Z

    .line 487
    .line 488
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-static {v4, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->J()Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-nez v3, :cond_a

    .line 507
    .line 508
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->y()Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-nez v3, :cond_b

    .line 517
    .line 518
    :cond_a
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    iget-boolean v3, v3, Lcom/syu/carlink/CarLink;->d:Z

    .line 523
    .line 524
    if-nez v3, :cond_b

    .line 525
    .line 526
    return-void

    .line 527
    :cond_b
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 532
    .line 533
    if-eqz v2, :cond_11

    .line 534
    .line 535
    invoke-static {v2}, Le/b0;->a(Landroid/hardware/usb/UsbDevice;)Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_c

    .line 540
    .line 541
    goto/16 :goto_4

    .line 542
    .line 543
    :cond_c
    new-array v3, v9, [Ljava/lang/Object;

    .line 544
    .line 545
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    aput-object v5, v3, v11

    .line 554
    .line 555
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    aput-object v5, v3, v10

    .line 564
    .line 565
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-static {v3, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    invoke-static {v2}, Le/b;->e(Landroid/hardware/usb/UsbDevice;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-eqz v3, :cond_d

    .line 584
    .line 585
    return-void

    .line 586
    :cond_d
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->p()Z

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-nez v3, :cond_10

    .line 595
    .line 596
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->l()Z

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    if-eqz v3, :cond_e

    .line 605
    .line 606
    goto :goto_3

    .line 607
    :cond_e
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    const/4 v4, 0x4

    .line 616
    if-ne v3, v4, :cond_f

    .line 617
    .line 618
    invoke-static {v2}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    if-nez v3, :cond_f

    .line 623
    .line 624
    return-void

    .line 625
    :cond_f
    invoke-virtual {v0, v2, v1}, Lcom/syu/carlink/UsbScanner;->d(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    .line 626
    .line 627
    .line 628
    goto :goto_4

    .line 629
    :cond_10
    :goto_3
    new-array v1, v9, [Ljava/lang/Object;

    .line 630
    .line 631
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    aput-object v3, v1, v11

    .line 640
    .line 641
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    aput-object v3, v1, v10

    .line 650
    .line 651
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    const-string v3, "USB id: %04X, product id: %04X"

    .line 656
    .line 657
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v1, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const-string v3, "attach while link tearing down, delay recheck: "

    .line 665
    .line 666
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    iput-object v2, v0, Lcom/syu/carlink/UsbScanner;->f:Landroid/hardware/usb/UsbDevice;

    .line 674
    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    iget-object v2, v0, Lcom/syu/carlink/UsbScanner;->g:Landroid/net/b;

    .line 680
    .line 681
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    const-wide/16 v3, 0x5dc

    .line 689
    .line 690
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    .line 692
    .line 693
    :cond_11
    :goto_4
    return-void

    .line 694
    nop

    .line 695
    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_4
        -0x5fdc9a67 -> :sswitch_3
        -0x5587fe9a -> :sswitch_2
        0x4189e133 -> :sswitch_1
        0x5fafef01 -> :sswitch_0
    .end sparse-switch
.end method
