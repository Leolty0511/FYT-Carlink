.class public Landroid/ddm/DdmHandleHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "SourceFile"


# static fields
.field public static final CHUNK_HPDS:I

.field public static final CHUNK_HPDU:I

.field public static final CHUNK_HPGC:I

.field public static final CHUNK_HPIF:I

.field public static final CHUNK_HPSG:I

.field public static final CHUNK_NHSG:I

.field public static final CHUNK_REAE:I

.field public static final CHUNK_REAL:I

.field public static final CHUNK_REAQ:I

.field private static mInstance:Landroid/ddm/DdmHandleHeap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "HPIF"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    .line 8
    .line 9
    const-string v0, "HPSG"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    .line 16
    .line 17
    const-string v0, "HPDU"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 24
    .line 25
    const-string v0, "HPDS"

    .line 26
    .line 27
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    .line 32
    .line 33
    const-string v0, "NHSG"

    .line 34
    .line 35
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    .line 40
    .line 41
    const-string v0, "HPGC"

    .line 42
    .line 43
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 48
    .line 49
    const-string v0, "REAE"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    .line 56
    .line 57
    const-string v0, "REAQ"

    .line 58
    .line 59
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 64
    .line 65
    const-string v0, "REAL"

    .line 66
    .line 67
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 72
    .line 73
    new-instance v0, Landroid/ddm/DdmHandleHeap;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/ddm/DdmHandleHeap;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->dumpHprofDataDdms()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    move-object v0, p1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Exception: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    const-string/jumbo v0, "hprof dumps not supported in this VM"

    .line 31
    .line 32
    .line 33
    :goto_0
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string p1, "ddm-heap"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-static {p1, v0}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_0
    return-object p1
.end method

.method private handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Landroid/ddm/DdmHandleHeap;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-static {p1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p1, "ddm-heap"

    .line 21
    .line 22
    const-string/jumbo v2, "hprof dumps not supported in this VM"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :catch_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    new-array v2, p1, [B

    .line 30
    .line 31
    aput-byte v0, v2, v1

    .line 32
    .line 33
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 34
    .line 35
    sget v3, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 36
    .line 37
    invoke-direct {v0, v3, v2, v1, p1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method private handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapInfoNotify(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    const-string v0, "Unsupported HPIF what"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1, p2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapSegmentNotify(IIZ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    const-string p2, "Unsupported HPSG what/when"

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method private handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-static {p1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    .line 1
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocations()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 6
    .line 7
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, p1, v3, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [B

    .line 3
    .line 4
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocationStatus()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-byte v1, v0, v2

    .line 10
    .line 11
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 12
    .line 13
    sget v3, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 14
    .line 15
    invoke-direct {v1, v3, v0, v2, p1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public static register()V
    .locals 2

    .line 1
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    .line 2
    .line 3
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    .line 9
    .line 10
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 16
    .line 17
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 20
    .line 21
    .line 22
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    .line 23
    .line 24
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 27
    .line 28
    .line 29
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    .line 30
    .line 31
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 34
    .line 35
    .line 36
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 37
    .line 38
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 41
    .line 42
    .line 43
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    .line 44
    .line 45
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 48
    .line 49
    .line 50
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 51
    .line 52
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 55
    .line 56
    .line 57
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 58
    .line 59
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    return-void
.end method

.method public disconnected()V
    .locals 0

    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    .line 1
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 2
    .line 3
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_2
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_3
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_4
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_5
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_6
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 69
    .line 70
    if-ne v0, v1, :cond_7

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_7
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 78
    .line 79
    if-ne v0, v1, :cond_8

    .line 80
    .line 81
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "Unknown packet "

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
