.class public Landroid/ddm/DdmHandleExit;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "SourceFile"


# static fields
.field public static final CHUNK_EXIT:I

.field private static mInstance:Landroid/ddm/DdmHandleExit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EXIT"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/ddm/DdmHandleExit;->type(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    .line 8
    .line 9
    new-instance v0, Landroid/ddm/DdmHandleExit;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/ddm/DdmHandleExit;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2

    sget v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    sget-object v1, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

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
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandleExit;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->halt(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method
