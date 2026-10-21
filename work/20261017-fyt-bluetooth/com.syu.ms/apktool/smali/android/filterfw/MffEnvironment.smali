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

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 4
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    return-void
.end method


# virtual methods
.method public activateGLEnvironment()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    const-string v1, "No GLEnvironment in place to activate!"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    return-void
.end method

.method public createGLEnvironment()V
    .locals 1

    .line 1
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 2
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method

.method public deactivateGLEnvironment()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    const-string v1, "No GLEnvironment in place to deactivate!"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    return-void
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method
