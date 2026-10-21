.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDestroyed:Z

.field private mID:I

.field private mName:Ljava/lang/String;

.field public mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    iput-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    return-void
.end method

.method private helpDestroy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, v0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 7
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v1, :cond_1

    .line 8
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->nObjDestroy(I)V

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 11
    iput v2, p0, Landroid/renderscript/BaseObj;->mID:I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkValid()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2
    :cond_1
    check-cast p1, Landroid/renderscript/BaseObj;

    .line 3
    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget p1, p1, Landroid/renderscript/BaseObj;->mID:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    return v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getID(Landroid/renderscript/RenderScript;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using object with mismatched context."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 6
    :cond_2
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Internal error: Object id 0."

    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using a destroyed object."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method public setID(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Internal Error, reset of object ID."

    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v2, v0}, Landroid/renderscript/RenderScript;->nAssignName(I[B)V

    .line 5
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName object already has a name."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName does not accept a zero length string."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName requires a string of non-zero length."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateFromNative()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-void
.end method
