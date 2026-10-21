.class public Landroid/ddm/DdmHandleProfiling;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "SourceFile"


# static fields
.field public static final CHUNK_MPRE:I

.field public static final CHUNK_MPRQ:I

.field public static final CHUNK_MPRS:I

.field public static final CHUNK_MPSE:I

.field public static final CHUNK_MPSS:I

.field public static final CHUNK_SPSE:I

.field public static final CHUNK_SPSS:I

.field private static final DEBUG:Z = false

.field private static mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "MPRS"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    .line 8
    .line 9
    const-string v0, "MPRE"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 16
    .line 17
    const-string v0, "MPSS"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    .line 24
    .line 25
    const-string v0, "MPSE"

    .line 26
    .line 27
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    .line 32
    .line 33
    const-string v0, "MPRQ"

    .line 34
    .line 35
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 40
    .line 41
    const-string v0, "SPSS"

    .line 42
    .line 43
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    .line 48
    .line 49
    const-string v0, "SPSE"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    .line 56
    .line 57
    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/ddm/DdmHandleProfiling;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Method profiling end failed: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "ddm-heap"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move v1, p1

    .line 33
    :goto_0
    new-array v2, p1, [B

    .line 34
    .line 35
    aput-byte v1, v2, v0

    .line 36
    .line 37
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 38
    .line 39
    sget v3, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 40
    .line 41
    invoke-direct {v1, v3, v2, v0, p1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method private handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Debug;->getMethodTracingMode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte p1, v1, v2

    .line 11
    .line 12
    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 13
    .line 14
    sget v3, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 15
    .line 16
    invoke-direct {p1, v3, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method private handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

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
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleProfiling;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method private handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const-string v0, " prof stream end failed: "

    .line 8
    .line 9
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "ddm-heap"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

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
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {v0, p1, v1, v1}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

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
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    invoke-static {v0, v1, v2, p1}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v2, p1}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public static register()V
    .locals 2

    .line 1
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    .line 2
    .line 3
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 9
    .line 10
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    .line 16
    .line 17
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 20
    .line 21
    .line 22
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    .line 23
    .line 24
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 27
    .line 28
    .line 29
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 30
    .line 31
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 34
    .line 35
    .line 36
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    .line 37
    .line 38
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 41
    .line 42
    .line 43
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    .line 44
    .line 45
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 48
    .line 49
    .line 50
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
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_2
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    const-string v0, "Method"

    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_3
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_4
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_5
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    const-string v0, "Sample"

    .line 64
    .line 65
    invoke-direct {p0, p1, v0}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Unknown packet "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method
