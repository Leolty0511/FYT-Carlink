.class public Landroid/ddm/DdmHandleAppName;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "SourceFile"


# static fields
.field public static final CHUNK_APNM:I

.field private static volatile mAppName:Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleAppName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "APNM"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/ddm/DdmHandleAppName;->type(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/ddm/DdmHandleAppName;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/ddm/DdmHandleAppName;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroid/ddm/DdmHandleAppName;->mInstance:Landroid/ddm/DdmHandleAppName;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static register()V
    .locals 0

    return-void
.end method

.method private static sendAPNM(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/ddm/DdmHandleAppName;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 34
    .line 35
    sget p1, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    .line 36
    .line 37
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static setAppName(Ljava/lang/String;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sput-object p0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/ddm/DdmHandleAppName;->sendAPNM(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
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
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
