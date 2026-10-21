.class public Landroid/media/effect/EffectContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final GL_STATE_ARRAYBUFFER:I

.field private final GL_STATE_COUNT:I

.field private final GL_STATE_FBO:I

.field private final GL_STATE_PROGRAM:I

.field private mFactory:Landroid/media/effect/EffectFactory;

.field mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mOldState:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_FBO:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_PROGRAM:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_ARRAYBUFFER:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_COUNT:I

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 19
    .line 20
    new-instance v0, Landroid/filterfw/core/FilterContext;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 26
    .line 27
    new-instance v1, Landroid/filterfw/core/CachedFrameManager;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/media/effect/EffectFactory;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroid/media/effect/EffectFactory;-><init>(Landroid/media/effect/EffectContext;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    .line 41
    .line 42
    return-void
.end method

.method public static createWithCurrentGlContext()Landroid/media/effect/EffectContext;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/effect/EffectContext;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/effect/EffectContext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/effect/EffectContext;->initInCurrentGlContext()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private initInCurrentGlContext()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithCurrentContext()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    const-string v1, "Attempting to initialize EffectContext with no active GL context!"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public final assertValidGLState()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string v1, "Applying effect in wrong GL context!"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string v1, "Attempting to apply effect without valid GL context!"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public getFactory()Landroid/media/effect/EffectFactory;
    .locals 1

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->tearDown()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 8
    .line 9
    return-void
.end method

.method public final restoreGLState()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    const v1, 0x8d40

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    aget v0, v0, v1

    .line 24
    .line 25
    const v1, 0x8892

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final saveGLState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x8ca6

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const v2, 0x8b8d

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const v2, 0x8894

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
