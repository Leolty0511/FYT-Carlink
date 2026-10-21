.class public Landroid/filterfw/core/CachedFrameManager;
.super Landroid/filterfw/core/SimpleFrameManager;
.source "SourceFile"


# instance fields
.field private mAvailableFrames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageCapacity:I

.field private mStorageSize:I

.field private mTimeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/SimpleFrameManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x1800000

    .line 5
    .line 6
    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 10
    .line 11
    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 19
    .line 20
    return-void
.end method

.method private dropOldestFrame()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/filterfw/core/Frame;

    .line 24
    .line 25
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/filterfw/core/Frame;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, p1}, Landroid/filterfw/core/FrameFormat;->isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getBindingType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne p2, v4, :cond_0

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getBindingId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    cmp-long v4, p3, v4

    .line 55
    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    :cond_1
    invoke-super {p0, v3}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->onFrameFetch()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sub-int/2addr p2, p1

    .line 83
    iput p2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 84
    .line 85
    monitor-exit v0

    .line 86
    return-object v3

    .line 87
    :cond_2
    monitor-exit v0

    .line 88
    const/4 p1, 0x0

    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1
.end method

.method private storeFrame(Landroid/filterfw/core/Frame;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :goto_0
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    .line 23
    .line 24
    if-le v2, v3, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/filterfw/core/CachedFrameManager;->dropOldestFrame()V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 30
    .line 31
    :goto_1
    add-int/2addr v2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 34
    .line 35
    .line 36
    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 37
    .line 38
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 39
    .line 40
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget p1, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    add-int/2addr p1, v1

    .line 53
    iput p1, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return v1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/filterfw/core/Frame;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/filterfw/core/SimpleFrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    const-wide/16 p1, -0x2

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    const-wide/16 v1, -0x2

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->isReusable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroid/filterfw/core/CachedFrameManager;->storeFrame(Landroid/filterfw/core/Frame;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_1
    if-ltz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v0, "Frame reference count dropped below 0!"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_3
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object p1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 0

    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p1

    return-object p1
.end method

.method public tearDown()V
    .locals 0

    invoke-virtual {p0}, Landroid/filterfw/core/CachedFrameManager;->clearCache()V

    return-void
.end method
