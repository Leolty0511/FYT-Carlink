.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public activateGLEnvironment()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string v1, "No GLEnvironment in place to activate!"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public createGLEnvironment()V
    .locals 1

    .line 1
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public deactivateGLEnvironment()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string v1, "No GLEnvironment in place to deactivate!"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method
