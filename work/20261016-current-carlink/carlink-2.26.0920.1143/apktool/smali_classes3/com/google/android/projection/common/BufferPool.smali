.class public Lcom/google/android/projection/common/BufferPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation


# static fields
.field static final LARGE_BUFFER_SIZE:I = 0x40000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_CACHE_LARGE_BUFFERS:I = 0xa

.field private static final MAX_CACHE_MEDIUM_BUFFERS:I = 0x14

.field private static final MAX_CACHE_SMALL_BUFFERS:I = 0x78

.field static final MEDIUM_BUFFER_SIZE:I = 0x4000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SMALL_BUFFER_SIZE:I = 0x200
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final instance:Lcom/google/android/projection/common/BufferPool;


# instance fields
.field private final largeBufferPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mediumBufferPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final smallBufferPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/common/BufferPool;

    invoke-direct {v0}, Lcom/google/android/projection/common/BufferPool;-><init>()V

    sput-object v0, Lcom/google/android/projection/common/BufferPool;->instance:Lcom/google/android/projection/common/BufferPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->largeBufferPool:Ljava/util/List;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v2, 0x14

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->mediumBufferPool:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v2, 0x78

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->smallBufferPool:Ljava/util/List;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    move v2, v0

    .line 33
    :goto_0
    const/4 v3, 0x5

    .line 34
    if-ge v2, v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/projection/common/BufferPool;->largeBufferPool:Ljava/util/List;

    .line 37
    .line 38
    const/high16 v4, 0x40000

    .line 39
    .line 40
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v2, v0

    .line 51
    :goto_1
    if-ge v2, v1, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/projection/common/BufferPool;->mediumBufferPool:Ljava/util/List;

    .line 54
    .line 55
    const/16 v4, 0x4000

    .line 56
    .line 57
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_2
    const/16 v1, 0x3c

    .line 68
    .line 69
    if-ge v0, v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/projection/common/BufferPool;->smallBufferPool:Ljava/util/List;

    .line 72
    .line 73
    const/16 v2, 0x200

    .line 74
    .line 75
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    return-void
.end method

.method public static getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    sget-object v0, Lcom/google/android/projection/common/BufferPool;->instance:Lcom/google/android/projection/common/BufferPool;

    invoke-virtual {v0, p0}, Lcom/google/android/projection/common/BufferPool;->checkoutBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getCacheSizeForBufferSize(I)I
    .locals 1

    const/16 v0, 0x200

    if-gt p0, v0, :cond_0

    const/16 p0, 0x78

    return p0

    :cond_0
    const/16 v0, 0x4000

    if-gt p0, v0, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method private getPoolForBufferSize(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->smallBufferPool:Ljava/util/List;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/16 v0, 0x4000

    .line 9
    .line 10
    if-gt p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->mediumBufferPool:Ljava/util/List;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->largeBufferPool:Ljava/util/List;

    .line 16
    .line 17
    return-object p1
.end method

.method public static returnBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/google/android/projection/common/BufferPool;->instance:Lcom/google/android/projection/common/BufferPool;

    invoke-virtual {v0, p0}, Lcom/google/android/projection/common/BufferPool;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public checkoutBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/projection/common/BufferPool;->getPoolForBufferSize(I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-lt v4, p1, :cond_0

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-lt v4, p1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 68
    .line 69
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1
.end method

.method public getLargePool()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/common/BufferPool;->largeBufferPool:Ljava/util/List;

    return-object v0
.end method

.method public getMediumPool()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/common/BufferPool;->mediumBufferPool:Ljava/util/List;

    return-object v0
.end method

.method public getSmallPool()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/common/BufferPool;->smallBufferPool:Ljava/util/List;

    return-object v0
.end method

.method public returnByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/projection/common/BufferPool;->getPoolForBufferSize(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0}, Lcom/google/android/projection/common/BufferPool;->getCacheSizeForBufferSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v2, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    rem-int/2addr v2, v0

    .line 36
    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method
