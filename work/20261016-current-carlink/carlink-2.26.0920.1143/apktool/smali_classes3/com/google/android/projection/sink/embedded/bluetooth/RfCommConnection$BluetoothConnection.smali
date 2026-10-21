.class Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothConnection"
.end annotation


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private final mOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$700(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/bluetooth/BluetoothSocket;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$700(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/bluetooth/BluetoothSocket;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mInputStream:Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$700(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Landroid/bluetooth/BluetoothSocket;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$800(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->getInputStream()Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mInputStream:Ljava/io/InputStream;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$800(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->getOutputStream()Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->lambda$readMessage$0()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$readMessage$0()Landroid/util/Pair;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->readHeader()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->readPayload(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private readBytes(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mInputStream:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v1, v0

    .line 37
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$500()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Read EOF for RFCOMM to "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/io/EOFException;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method private readHeader()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->readBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private readMessage()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$1100(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/e;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private readPayload(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->readBytes(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public startReadingMessages()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->readMessage()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$500()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Couldn\'t write over Bluetooth"

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$1000(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method
