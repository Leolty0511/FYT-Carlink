.class public Lcom/google/android/projection/sink/sensors/SimpleObdSensor;
.super Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final KPH_PER_MPS:F = 3.6f

.field private static final OBD_REFRESH_PERIOD_MS:J = 0x3e8L

.field private static final RESPONSE_TO_01:I = 0x41

.field private static final SELF_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "SimpleObdSensor"


# instance fields
.field private final mDataLock:Ljava/lang/Object;

.field private final mDeviceName:Ljava/lang/String;

.field private final mDiconnect:Ljava/lang/Runnable;

.field private final mDiscoveryLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mEnabled:Z

.field private mFuelLevel:F

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private mHasFuelSensor:Z

.field private mHasRpmSensor:Z

.field private mHasSpeedSensor:Z

.field private final mInitLink:Ljava/lang/Runnable;

.field private mInput:Ljava/io/InputStream;

.field private final mObdThread:Ljava/lang/Thread;

.field private mOutput:Ljava/io/OutputStream;

.field private final mRegularUpdate:Ljava/lang/Runnable;

.field private mRpm:I

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private mSpeedKph:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->SELF_UUID:Ljava/util/UUID;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDiscoveryLatch:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDataLock:Ljava/lang/Object;

    .line 25
    .line 26
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mFuelLevel:F

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;

    .line 31
    .line 32
    const-string v2, "OBD connection"

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;-><init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mObdThread:Ljava/lang/Thread;

    .line 38
    .line 39
    new-instance v2, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;-><init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInitLink:Ljava/lang/Runnable;

    .line 45
    .line 46
    new-instance v2, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;-><init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mRegularUpdate:Ljava/lang/Runnable;

    .line 52
    .line 53
    new-instance v2, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$4;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$4;-><init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDiconnect:Ljava/lang/Runnable;

    .line 59
    .line 60
    new-instance v2, Lcom/google/android/projection/sink/settings/Settings;

    .line 61
    .line 62
    invoke-direct {v2, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isObd2Enabled()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mEnabled:Z

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getObd2Device()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDeviceName:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    sget-object v0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    const-string v1, "Can\'t start OBD thread."

    .line 96
    .line 97
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->querySpeed()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasRpmSensor:Z

    return p0
.end method

.method public static synthetic access$1102(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasRpmSensor:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->queryRpm()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasFuelSensor:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasFuelSensor:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->queryFuel()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDiscoveryLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mRegularUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->disconnect()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    return-object p1
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$600(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->sendCommand(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->readResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasSpeedSensor:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasSpeedSensor:Z

    return p1
.end method

.method private disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    .line 18
    :catch_1
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    .line 26
    .line 27
    :catch_2
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)[B
    .locals 7

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "DATA"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    const-string v0, "SEARCH"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    const-string v0, "CONNECT"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v0, "OK"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-array p0, v1, [B

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    rem-int/lit8 v2, v0, 0x2

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    div-int/lit8 v2, v0, 0x2

    .line 55
    .line 56
    new-array v2, v2, [B

    .line 57
    .line 58
    :goto_0
    if-ge v1, v0, :cond_2

    .line 59
    .line 60
    div-int/lit8 v3, v1, 0x2

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/16 v5, 0x10

    .line 67
    .line 68
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    shl-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    add-int/lit8 v6, v1, 0x1

    .line 75
    .line 76
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    add-int/2addr v5, v4

    .line 85
    int-to-byte v4, v5

    .line 86
    aput-byte v4, v2, v3

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return-object v2

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    const-string v0, "protocol error"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method

.method private queryFuel()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    .line 2
    .line 3
    const-string v1, "01 2F"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->sendCommand(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->readResponse(Ljava/io/InputStream;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->parseResponse(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x3

    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    aget-byte v2, v0, v1

    .line 26
    .line 27
    const/16 v3, 0x41

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aget-byte v3, v0, v2

    .line 33
    .line 34
    const/16 v4, 0x2f

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget-byte v0, v0, v1

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    const/high16 v1, 0x43800000    # 256.0f

    .line 45
    .line 46
    div-float/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mFuelLevel:F

    .line 48
    .line 49
    return v2

    .line 50
    :cond_0
    return v1
.end method

.method private queryRpm()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    .line 2
    .line 3
    const-string v1, "01 0C"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->sendCommand(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->readResponse(Ljava/io/InputStream;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->parseResponse(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x4

    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    aget-byte v2, v0, v1

    .line 26
    .line 27
    const/16 v3, 0x41

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aget-byte v3, v0, v2

    .line 33
    .line 34
    const/16 v4, 0xc

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget-byte v3, v0, v1

    .line 40
    .line 41
    shl-int/lit8 v3, v3, 0x8

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aget-byte v0, v0, v4

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    or-int/2addr v0, v3

    .line 49
    const v3, 0xffff

    .line 50
    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    shr-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mRpm:I

    .line 55
    .line 56
    return v2

    .line 57
    :cond_0
    return v1
.end method

.method private querySpeed()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mOutput:Ljava/io/OutputStream;

    .line 2
    .line 3
    const-string v1, "01 0D"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->sendCommand(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInput:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->readResponse(Ljava/io/InputStream;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->parseResponse(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x3

    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    aget-byte v2, v0, v1

    .line 26
    .line 27
    const/16 v3, 0x41

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aget-byte v3, v0, v2

    .line 33
    .line 34
    const/16 v4, 0xd

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget-byte v0, v0, v1

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    iput v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSpeedKph:I

    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    return v1
.end method

.method private static readResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-byte v1, v1

    .line 11
    int-to-char v1, v1

    .line 12
    const/16 v2, 0x3e

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "\r"

    .line 29
    .line 30
    const-string v1, "\n"

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 v0, 0xa

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private static sendCommand(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "\r"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public discoverSensorsImpl(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mEnabled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDeviceName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDeviceName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->SELF_UUID:Ljava/util/UUID;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mInitLink:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "Can\'t start bluetooth connection."

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    :try_start_1
    sget-object v0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "Waiting for sensors discovery..."

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDiscoveryLatch:Ljava/util/concurrent/CountDownLatch;

    .line 62
    .line 63
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    const-wide/16 v3, 0xf

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDataLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasSpeedSensor:Z

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasRpmSensor:Z

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHasFuelSensor:Z

    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    const/4 v1, 0x6

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    monitor-exit v0

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    throw p1

    .line 117
    :cond_4
    const-string p1, "Timed out while discovering OBD2 sensors."

    .line 118
    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_1
    move-exception p1

    .line 124
    sget-object v0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->TAG:Ljava/lang/String;

    .line 125
    .line 126
    const-string v1, "Can\'t discover OBD sensors."

    .line 127
    .line 128
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    return-void
.end method

.method public registerSensorsImpl()V
    .locals 0

    return-void
.end method

.method public sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget p2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mSpeedKph:I

    .line 9
    .line 10
    int-to-float p2, p2

    .line 11
    const v1, 0x40666666    # 3.6f

    .line 12
    .line 13
    .line 14
    div-float/2addr p2, v1

    .line 15
    float-to-int p2, p2

    .line 16
    int-to-float p2, p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportSpeedData(F)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v1, 0x4

    .line 25
    if-ne p2, v1, :cond_1

    .line 26
    .line 27
    iget p2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mRpm:I

    .line 28
    .line 29
    int-to-double v3, p2

    .line 30
    invoke-virtual {p1, v3, v4}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportRpmData(D)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return v2

    .line 35
    :cond_1
    const/4 v1, 0x6

    .line 36
    if-ne p2, v1, :cond_3

    .line 37
    .line 38
    iget p2, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mFuelLevel:F

    .line 39
    .line 40
    const/high16 v1, 0x42c80000    # 100.0f

    .line 41
    .line 42
    mul-float/2addr v1, p2

    .line 43
    float-to-int v1, v1

    .line 44
    const v3, 0x3e4ccccd    # 0.2f

    .line 45
    .line 46
    .line 47
    cmpg-float p2, p2, v3

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-gtz p2, :cond_2

    .line 51
    .line 52
    move p2, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move p2, v3

    .line 55
    :goto_0
    invoke-virtual {p1, v1, v3, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportFuelData(IIZ)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->disconnect()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->shutdown()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public unregisterSensorsImpl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->mDiconnect:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
