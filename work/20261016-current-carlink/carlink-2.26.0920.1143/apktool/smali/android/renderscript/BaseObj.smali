.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final guard:Ldalvik/system/CloseGuard;

.field private mDestroyed:Z

.field private mID:J

.field private mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 19
    .line 20
    return-void
.end method

.method private helpDestroy()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->isAlive()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 41
    .line 42
    cmp-long v1, v4, v2

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 47
    .line 48
    invoke-virtual {v1, v4, v5}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    iput-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0
.end method


# virtual methods
.method public checkValid()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Invalid object."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 10
    .line 11
    const-string v1, "Object already destroyed."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/renderscript/BaseObj;

    .line 21
    .line 22
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 23
    .line 24
    iget-wide v4, p1, Landroid/renderscript/BaseObj;->mID:J

    .line 25
    .line 26
    cmp-long p1, v2, v4

    .line 27
    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    move v0, v1

    .line 32
    :goto_0
    return v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getID(Landroid/renderscript/RenderScript;)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 21
    .line 22
    if-ne p1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 26
    .line 27
    const-string/jumbo v0, "using object with mismatched context."

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    return-wide v0

    .line 35
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 36
    .line 37
    const-string v0, "Internal error: Object id 0."

    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_3
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 44
    .line 45
    const-string/jumbo v0, "using a destroyed object."

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setID(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 13
    .line 14
    const-string p2, "Internal Error, reset of object ID."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string v0, "UTF-8"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 21
    .line 22
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 38
    .line 39
    const-string/jumbo v0, "setName object already has a name."

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 47
    .line 48
    const-string/jumbo v0, "setName does not accept a zero length string."

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 56
    .line 57
    const-string/jumbo v0, "setName requires a string of non-zero length."

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public updateFromNative()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nGetName(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
