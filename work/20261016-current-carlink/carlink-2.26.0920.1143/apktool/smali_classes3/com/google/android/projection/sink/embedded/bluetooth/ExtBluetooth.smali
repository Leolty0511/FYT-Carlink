.class public Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;,
        Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;,
        Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;
    }
.end annotation


# static fields
.field public static final BTFILE:Ljava/lang/String; = "/dev/auto_serial"

.field static final HEAD_LEN:I = 0x2

.field static final TAG:Ljava/lang/String; = "AHU.ExBT"

.field private static hex:[C = null

.field static final rec_bt_mac:Ljava/lang/String; = "DB"

.field static final rec_bt_name:Ljava/lang/String; = "MM"

.field static final rec_ph_UUID:Ljava/lang/String; = "UU"

.field static final rec_ph_UUIDe:Ljava/lang/String; = "UE"

.field static final rec_ph_UUIDs:Ljava/lang/String; = "US"

.field static final rec_ph_connected:Ljava/lang/String; = "IB"

.field static final rec_ph_disconed:Ljava/lang/String; = "IA"

.field static final rec_ph_mac:Ljava/lang/String; = "JH"

.field static final rec_ph_name:Ljava/lang/String; = "SA"

.field static final rec_ph_p0:Ljava/lang/String; = "P0"

.field static final rec_ph_p1:Ljava/lang/String; = "P1"

.field static final rec_ph_p2:Ljava/lang/String; = "P2"

.field static final rec_ph_p3:Ljava/lang/String; = "P3"

.field static final rec_rf_aa:Ljava/lang/String; = "ZB"

.field static final rec_rf_aaconed:Ljava/lang/String; = "AA"

.field static final rec_rf_coned:Ljava/lang/String; = "SV"

.field static final rec_rf_disconed:Ljava/lang/String; = "SS"

.field static final rec_rf_rec:Ljava/lang/String; = "SI"

.field static final rec_ver:Ljava/lang/String; = "BV"

.field static final send_bt_mac:Ljava/lang/String; = "AT#VE"

.field static final send_bt_name:Ljava/lang/String; = "AT#MM"

.field static final send_ph_discon:Ljava/lang/String; = "AT#CD"

.field static final send_ph_info:Ljava/lang/String; = "AT#QI"

.field static final send_rf_aa:Ljava/lang/String; = "AT#ZA"

.field static final send_rf_con:Ljava/lang/String; = "AT#SP"

.field static final send_rf_discon:Ljava/lang/String; = "AT#SH"

.field static final send_rf_send:Ljava/lang/String; = "AT#SG"

.field static final send_ver:Ljava/lang/String; = "AT#QV"


# instance fields
.field final BUFF_SIZE:I

.field volatile btDevice:Landroid/bluetooth/BluetoothDevice;

.field btaddr:Ljava/lang/String;

.field input:Ljava/io/FileInputStream;

.field mExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field mH:Landroid/os/Handler;

.field output:Ljava/io/FileOutputStream;

.field pack:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

.field read_serial:Z

.field final rfbuf:[B

.field rfbuf_cnt:I

.field rfpos:I

.field final startRead:Ljava/lang/Runnable;

.field state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->hex:[C

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)V
    .locals 4

    .line 1
    const-string v0, "/dev/auto_serial"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    const-string v2, "11:22:33:44:55:66"

    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btaddr:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->state:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->read_serial:Z

    .line 18
    .line 19
    new-instance v3, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->pack:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mH:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->startRead:Ljava/lang/Runnable;

    .line 34
    .line 35
    const/16 v1, 0x400

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->BUFF_SIZE:I

    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 42
    .line 43
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 44
    .line 45
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfpos:I

    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 48
    .line 49
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->input:Ljava/io/FileInputStream;

    .line 55
    .line 56
    new-instance p1, Ljava/io/FileOutputStream;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->output:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->startRead()V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mH:Landroid/os/Handler;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->startRead:Ljava/lang/Runnable;

    .line 83
    .line 84
    const-wide/16 v1, 0x3e8

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->writechar(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private asyncWrite(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static getHexString([BI)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [C

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, p1, :cond_0

    .line 15
    .line 16
    aget-byte v4, p0, v3

    .line 17
    .line 18
    sget-object v5, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->hex:[C

    .line 19
    .line 20
    shr-int/lit8 v6, v4, 0x4

    .line 21
    .line 22
    and-int/lit8 v6, v6, 0xf

    .line 23
    .line 24
    aget-char v6, v5, v6

    .line 25
    .line 26
    aput-char v6, v1, v2

    .line 27
    .line 28
    and-int/lit8 v4, v4, 0xf

    .line 29
    .line 30
    aget-char v4, v5, v4

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    aput-char v4, v1, v5

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method private startRead()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private writechar(Ljava/lang/String;)I
    .locals 3

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
    const-string v1, "\n\r"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, ">>>"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "AHU.ExBT"

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->output:Ljava/io/FileOutputStream;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->output:Ljava/io/FileOutputStream;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x0

    .line 61
    return p1
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V

    return-object v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btaddr:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public parseBtInfo(Ljava/lang/String;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "AHU.ExBT"

    .line 6
    .line 7
    const-string v2, "getinfo "

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ge v1, v3, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, -0x1

    .line 41
    sparse-switch v4, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :sswitch_0
    const-string v4, "ZB"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v5, 0x3

    .line 55
    goto :goto_0

    .line 56
    :sswitch_1
    const-string v4, "SS"

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v5, v3

    .line 66
    goto :goto_0

    .line 67
    :sswitch_2
    const-string v4, "JH"

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move v5, v0

    .line 77
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v4, "AA"

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    move v5, v2

    .line 88
    :goto_0
    const/4 v1, 0x4

    .line 89
    packed-switch v5, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 95
    .line 96
    monitor-enter v3

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 102
    .line 103
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 104
    .line 105
    if-ge v2, v5, :cond_6

    .line 106
    .line 107
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 108
    .line 109
    iget v6, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 110
    .line 111
    add-int/lit8 v7, v6, 0x1

    .line 112
    .line 113
    iput v7, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/16 v8, 0x10

    .line 120
    .line 121
    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    shl-int/2addr v7, v1

    .line 126
    add-int/lit8 v9, v2, 0x1

    .line 127
    .line 128
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-static {v9, v8}, Ljava/lang/Character;->digit(CI)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    add-int/2addr v7, v8

    .line 137
    int-to-byte v7, v7

    .line 138
    aput-byte v7, v5, v6

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 146
    .line 147
    .line 148
    monitor-exit v3

    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw p1

    .line 154
    :pswitch_1
    const-string p1, "AHU.ExBT"

    .line 155
    .line 156
    const-string v1, "000 =====>> rec_rf_disconed   RDA DEVICE DISCONECTED!!"

    .line 157
    .line 158
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->removeExBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    .line 175
    iget-object v4, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 176
    .line 177
    monitor-enter v4

    .line 178
    :try_start_1
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 179
    .line 180
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception p1

    .line 187
    goto :goto_3

    .line 188
    :catch_0
    :goto_2
    :try_start_2
    monitor-exit v4

    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    throw p1

    .line 193
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    const/16 v4, 0xc

    .line 203
    .line 204
    if-ne p1, v4, :cond_8

    .line 205
    .line 206
    const/16 p1, 0xa

    .line 207
    .line 208
    const/16 v4, 0x3a

    .line 209
    .line 210
    invoke-virtual {v2, p1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const/16 p1, 0x8

    .line 214
    .line 215
    invoke-virtual {v2, p1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/4 p1, 0x6

    .line 219
    invoke-virtual {v2, p1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btaddr:Ljava/lang/String;

    .line 233
    .line 234
    const-string p1, "AHU.ExBT"

    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v2, "bt connected device "

    .line 239
    .line 240
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btaddr:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 257
    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v1, "AHU.ExBT"

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v3, "000 =====>> rec_rf_aaconed   btDevice: "

    .line 269
    .line 270
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v3, " new device: "

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_8

    .line 300
    .line 301
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->mExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 302
    .line 303
    invoke-virtual {v1, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->exBtConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 304
    .line 305
    .line 306
    const-string p1, "AHU.ExBT"

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, " ===========>>>  android auto connected device "

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btaddr:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_8
    :goto_4
    return v0

    .line 328
    nop

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x820 -> :sswitch_3
        0x93e -> :sswitch_2
        0xa60 -> :sswitch_1
        0xb28 -> :sswitch_0
    .end sparse-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    const-string v2, "AHU.ExBT"

    .line 16
    .line 17
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    if-lez v1, :cond_3

    .line 33
    .line 34
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf:[B

    .line 39
    .line 40
    iget v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfpos:I

    .line 41
    .line 42
    invoke-static {v1, v3, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 46
    .line 47
    sub-int/2addr p1, p2

    .line 48
    iput p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfbuf_cnt:I

    .line 49
    .line 50
    iget v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfpos:I

    .line 51
    .line 52
    add-int/2addr v1, p2

    .line 53
    iput v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfpos:I

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    iput v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->rfpos:I

    .line 58
    .line 59
    :cond_2
    move v2, p2

    .line 60
    :cond_3
    monitor-exit v0

    .line 61
    return v2

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p1
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->read_serial:Z

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->input:Ljava/io/FileInputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->output:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public write([BI)I
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->getHexString([BI)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-int/lit8 v0, v0, 0x64

    .line 11
    .line 12
    const-string v1, "AT#ZA"

    .line 13
    .line 14
    if-ge p2, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    mul-int/lit8 v1, p2, 0x64

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x64

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->writechar(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    rem-int/lit8 p2, p2, 0x64

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sub-int/2addr v1, p2

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->writechar(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    return p1
.end method
