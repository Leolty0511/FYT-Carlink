.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field static final BTSOCK_FLAG_NO_SDP:I = 0x4

.field private static final DBG:Z

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field static final MAX_L2CAP_PACKAGE_SIZE:I = 0xffff

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static PROXY_CONNECTION_TIMEOUT:I = 0x0

.field static final SEC_FLAG_AUTH:I = 0x2

.field static final SEC_FLAG_AUTH_16_DIGIT:I = 0x10

.field static final SEC_FLAG_AUTH_MITM:I = 0x8

.field static final SEC_FLAG_ENCRYPT:I = 0x1

.field private static SOCK_SIGNAL_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field public static final TYPE_L2CAP:I = 0x3

.field public static final TYPE_RFCOMM:I = 0x1

.field public static final TYPE_SCO:I = 0x2

.field private static final VDBG:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private mAuthMitm:Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private mExcludeSdp:Z

.field private mFd:I

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private mL2capBuffer:Ljava/nio/ByteBuffer;

.field private mMaxRxPacketSize:I

.field private mMaxTxPacketSize:I

.field private mMin16DigitPin:Z

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketIS:Ljava/io/InputStream;

.field private mSocketOS:Ljava/io/OutputStream;

.field private volatile mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I

.field private final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "BluetoothSocket"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 16
    .line 17
    const/16 v0, 0x1388

    .line 18
    .line 19
    sput v0, Landroid/bluetooth/BluetoothSocket;->PROXY_CONNECTION_TIMEOUT:I

    .line 20
    .line 21
    const/16 v0, 0x14

    .line 22
    .line 23
    sput v0, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    return-void
.end method

.method public constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 4
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 5
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 7
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 8
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 9
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating new BluetoothSocket of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSocket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p7, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const/4 v1, -0x2

    if-eq p6, v1, :cond_2

    if-lt p6, v0, :cond_1

    const/16 v0, 0x1e

    if-gt p6, v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid RFCOMM channel: "

    .line 11
    invoke-static {p2, p6}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p7, :cond_3

    .line 13
    iput-object p7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_1

    .line 14
    :cond_3
    new-instance p7, Landroid/os/ParcelUuid;

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p7, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object p7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 15
    :goto_1
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 16
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 17
    iput-boolean p8, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 18
    iput-boolean p9, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 19
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 20
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 22
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mFd:I

    .line 23
    sget-object p1, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-nez p5, :cond_4

    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 26
    :goto_2
    new-instance p1, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {p1, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 27
    new-instance p1, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {p1, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-void
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .locals 10

    .line 57
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    move-object v0, p5

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 34
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 35
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 37
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 38
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 39
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating new Private BluetoothSocket of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    const-string v2, "BluetoothSocket"

    .line 40
    invoke-static {v0, v1, v2}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 42
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 43
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 44
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 45
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 46
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 47
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 48
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 49
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 50
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 51
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 52
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 53
    iget-boolean p1, p1, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    return-void
.end method

.method private acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;
    .locals 5

    .line 1
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 17
    .line 18
    const-string v3, "BluetoothSocket"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v4, "socket fd passed by stack fds: "

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    const/4 v4, 0x1

    .line 48
    if-ne v2, v4, :cond_1

    .line 49
    .line 50
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aget-object v4, v1, v3

    .line 54
    .line 55
    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 59
    .line 60
    aget-object v1, v1, v3

    .line 61
    .line 62
    invoke-static {v1}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Ljava/io/FileDescriptor;)Landroid/net/LocalSocket;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 73
    .line 74
    iget-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 81
    .line 82
    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v2, "socket fd passed from stack failed, fds: "

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/io/IOException;

    .line 121
    .line 122
    const-string v0, "bt socket acept failed"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method private convertAddr([B)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget-byte v3, p1, v2

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aget-byte v3, p1, v2

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aget-byte v3, p1, v2

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v1, v2

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    aget-byte v3, p1, v2

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    aput-object v3, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    aget-byte v3, p1, v2

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v1, v2

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    aget-byte p1, p1, v2

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aput-object p1, v1, v2

    .line 59
    .line 60
    const-string p1, "%02X:%02X:%02X:%02X:%02X:%02X"

    .line 61
    .line 62
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method private createL2capRxBuffer()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 7
    .line 8
    const-string v1, "BluetoothSocket"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "  Creating mL2capBuffer: mMaxPacketSize: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 32
    .line 33
    new-array v2, v2, [B

    .line 34
    .line 35
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v3, "mL2capBuffer.remaining()"

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v2, "mL2capBuffer.remaining() after limit(0):"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private fillL2capRxBuffer()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method private getSecurityFlags()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    :cond_1
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_2
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    :cond_3
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    or-int/lit8 v0, v0, 0x10

    .line 31
    .line 32
    :cond_4
    return v0
.end method

.method private readAll(Ljava/io/InputStream;[B)I
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "readAll() looping, read partial size: "

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    array-length v2, p2

    .line 24
    sub-int/2addr v2, v0

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", expect size: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    array-length v2, p2

    .line 34
    const-string v3, "BluetoothSocket"

    .line 35
    .line 36
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    const-string/jumbo p2, "read failed, socket might closed or timeout, read ret: "

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    array-length p1, p2

    .line 54
    return p1
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "inputStream.read ret: "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "BluetoothSocket"

    .line 28
    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method private waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8

    .line 1
    sget v0, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 10
    .line 11
    const-string v2, "BluetoothSocket"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v4, "waitSocketSignal read "

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v4, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " bytes signal ret: "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget v3, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    .line 59
    .line 60
    if-ne v0, v3, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x6

    .line 63
    new-array v3, v3, [B

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const v7, 0xffff

    .line 81
    .line 82
    .line 83
    and-int/2addr v6, v7

    .line 84
    iput v6, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    and-int/2addr p1, v7

    .line 91
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 92
    .line 93
    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothSocket;->convertAddr([B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v3, "waitSocketSignal: sig size: "

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ", remote addr: "

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", channel: "

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", status: "

    .line 124
    .line 125
    const-string v3, " MaxRxPktSize: "

    .line 126
    .line 127
    invoke-static {v1, v4, v0, v5, v3}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " MaxTxPktSize: "

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 141
    .line 142
    invoke-static {v1, v0, v2}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    if-nez v5, :cond_2

    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    const-string v0, "Connection failure, status: "

    .line 151
    .line 152
    invoke-static {v0, v5}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 161
    .line 162
    const-string v1, "Connection failure, wrong signal size: "

    .line 163
    .line 164
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1
.end method


# virtual methods
.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 2
    .line 3
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const-string v0, "BluetoothSocket"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "accept() set timeout (ms):"

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 49
    .line 50
    if-ne p1, v1, :cond_2

    .line 51
    .line 52
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    monitor-exit p0

    .line 57
    return-object p1

    .line 58
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v0, "bt socket is not in listen state"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 70
    .line 71
    const-string v0, "bt socket is not in listen state"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public available()I
    .locals 2

    .line 1
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "available: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "BluetoothSocket"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public bindListen()I
    .locals 12

    .line 1
    const-string v0, "channel: "

    .line 2
    .line 3
    const-string v1, "bindListen(), readInt mSocketIS: "

    .line 4
    .line 5
    const-string v2, "bindListen(), SocketState: "

    .line 6
    .line 7
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 8
    .line 9
    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 10
    .line 11
    const/16 v5, 0x4d

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    return v5

    .line 16
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v3, -0x1

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    const-string v0, "BluetoothSocket"

    .line 29
    .line 30
    const-string v1, "bindListen fail, reason: bluetooth is off"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    :try_start_0
    iget v7, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 37
    .line 38
    iget-object v8, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v9, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 41
    .line 42
    iget v10, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 43
    .line 44
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    invoke-interface/range {v6 .. v11}, Landroid/bluetooth/IBluetooth;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iput-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    .line 54
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :try_start_2
    sget-boolean v6, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    const-string v7, "BluetoothSocket"

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 67
    .line 68
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", mPfd: "

    .line 72
    .line 73
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 89
    .line 90
    sget-object v7, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 91
    .line 92
    if-eq v2, v7, :cond_3

    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return v5

    .line 96
    :cond_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return v3

    .line 102
    :cond_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_5

    .line 107
    .line 108
    const-string v0, "BluetoothSocket"

    .line 109
    .line 110
    const-string v1, "bindListen(), null file descriptor"

    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return v3

    .line 117
    :cond_5
    if-eqz v6, :cond_6

    .line 118
    .line 119
    const-string v5, "BluetoothSocket"

    .line 120
    .line 121
    const-string v8, "bindListen(), Create LocalSocket"

    .line 122
    .line 123
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-static {v2}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Ljava/io/FileDescriptor;)Landroid/net/LocalSocket;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 131
    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    const-string v2, "BluetoothSocket"

    .line 135
    .line 136
    const-string v5, "bindListen(), new LocalSocket.getInputStream()"

    .line 137
    .line 138
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_7
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 148
    .line 149
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 156
    .line 157
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    :try_start_3
    const-string v2, "BluetoothSocket"

    .line 161
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 168
    .line 169
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 180
    .line 181
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 187
    .line 188
    if-ne v2, v7, :cond_9

    .line 189
    .line 190
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 191
    .line 192
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 193
    .line 194
    :cond_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    if-eqz v6, :cond_a

    .line 196
    .line 197
    :try_start_5
    const-string v2, "BluetoothSocket"

    .line 198
    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_a
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 215
    .line 216
    if-gt v0, v3, :cond_b

    .line 217
    .line 218
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 219
    .line 220
    :cond_b
    const/4 v0, 0x0

    .line 221
    return v0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 227
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 230
    .line 231
    if-eqz v1, :cond_c

    .line 232
    .line 233
    :try_start_a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    .line 238
    const-string v2, "BluetoothSocket"

    .line 239
    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v6, "bindListen, close mPfd: "

    .line 243
    .line 244
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :goto_0
    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 258
    .line 259
    :cond_c
    const-string v1, "BluetoothSocket"

    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v4, "bindListen, fail to get port number, exception: "

    .line 264
    .line 265
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    return v3

    .line 279
    :catch_2
    const-string v0, "BluetoothSocket"

    .line 280
    .line 281
    invoke-static {v0}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return v3
.end method

.method public close()V
    .locals 4

    .line 1
    const-string v0, "Closing mSocket: "

    .line 2
    .line 3
    const-string v1, "BluetoothSocket"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "close() this: "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", channel: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", mSocketIS: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", mSocketOS: "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "mSocket: "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ", mSocketState: "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 74
    .line 75
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 76
    .line 77
    if-ne v1, v2, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 82
    .line 83
    if-ne v1, v2, :cond_1

    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :cond_1
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 88
    .line 89
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    const-string v1, "BluetoothSocket"

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 106
    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 130
    .line 131
    .line 132
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 142
    .line 143
    :cond_4
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw v0
.end method

.method public connect()V
    .locals 10

    .line 1
    const-string v0, "connect(), SocketState: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 8
    .line 9
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 10
    .line 11
    if-eq v1, v2, :cond_6

    .line 12
    .line 13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_5

    .line 23
    .line 24
    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 25
    .line 26
    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 27
    .line 28
    iget-object v7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 29
    .line 30
    iget v8, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetooth;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 41
    .line 42
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const-string v1, "BluetoothSocket"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", mPfd: "

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 77
    .line 78
    if-eq v0, v2, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Ljava/io/FileDescriptor;)Landroid/net/LocalSocket;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 99
    .line 100
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 107
    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 110
    .line 111
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_2

    .line 116
    .line 117
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 118
    .line 119
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 120
    .line 121
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 126
    .line 127
    if-eq v0, v2, :cond_1

    .line 128
    .line 129
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 130
    .line 131
    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 132
    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 136
    .line 137
    const-string v1, "bt socket closed"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    throw v0

    .line 146
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 147
    .line 148
    const-string v1, "bt socket connect failed"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 154
    :cond_3
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    const-string v1, "bt socket connect failed"

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 163
    .line 164
    const-string/jumbo v1, "socket closed"

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :catchall_1
    move-exception v0

    .line 172
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    :try_start_6
    throw v0

    .line 174
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 175
    .line 176
    const-string v1, "Bluetooth is off"

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 183
    .line 184
    const-string/jumbo v1, "socket closed"

    .line 185
    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "BluetoothSocket"

    .line 193
    .line 194
    new-instance v2, Ljava/lang/Throwable;

    .line 195
    .line 196
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/io/IOException;

    .line 207
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string/jumbo v3, "unable to send RPC: "

    .line 211
    .line 212
    .line 213
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v1

    .line 231
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 232
    .line 233
    const-string v1, "Connect is called on null device"

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "flush: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "BluetoothSocket"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v1, "flush is called on null OutputStream"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getMaxReceivePacketSize()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    return v0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 5

    .line 1
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 2
    .line 3
    const-string v1, "BluetoothSocket"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "read in:  "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " len: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    const-string v4, " length:"

    .line 39
    .line 40
    if-ne v2, v3, :cond_7

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string/jumbo v2, "l2cap: read(): offset: "

    .line 45
    .line 46
    .line 47
    const-string/jumbo v3, "mL2capBuffer= "

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p2, v4, p3, v3}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->createL2capRxBuffer()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    const-string/jumbo v2, "l2cap buffer empty, refilling..."

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->fillL2capRxBuffer()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v3, -0x1

    .line 94
    if-ne v2, v3, :cond_4

    .line 95
    .line 96
    return v3

    .line 97
    :cond_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-le p3, v2, :cond_5

    .line 104
    .line 105
    iget-object p3, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    :cond_5
    if-eqz v0, :cond_6

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v3, "get(): offset: "

    .line 116
    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, " bytesToRead: "

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    if-eqz v0, :cond_8

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "default: read(): offset: "

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 170
    .line 171
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    :goto_0
    if-ltz p3, :cond_a

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo p2, "read out:  "

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p2, " ret: "

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :cond_9
    return p3

    .line 208
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 209
    .line 210
    const-string p2, "bt socket closed, read return: "

    .line 211
    .line 212
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1
.end method

.method public removeChannel()V
    .locals 0

    return-void
.end method

.method public setExcludeSdp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public write([BII)I
    .locals 5

    .line 1
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 2
    .line 3
    const-string v1, " length: "

    .line 4
    .line 5
    const-string v2, "BluetoothSocket"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "write: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-ne v0, v3, :cond_4

    .line 39
    .line 40
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 41
    .line 42
    if-gt p3, v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "WARNING: Write buffer larger than L2CAP packet size!\nPacket will be divided into SDU packets of size "

    .line 57
    .line 58
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 62
    .line 63
    invoke-static {v0, v3, v2}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    move v0, p3

    .line 67
    :goto_0
    if-lez v0, :cond_5

    .line 68
    .line 69
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 70
    .line 71
    if-le v0, v3, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v3, v0

    .line 75
    :goto_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 76
    .line 77
    invoke-virtual {v4, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    .line 79
    .line 80
    add-int/2addr p2, v3

    .line 81
    sub-int/2addr v0, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 84
    .line 85
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    sget-boolean p1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo p2, "write out: "

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_6
    return p3
.end method
