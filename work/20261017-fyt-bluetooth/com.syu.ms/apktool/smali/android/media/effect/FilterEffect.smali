.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "SourceFile"


# instance fields
.field public mEffectContext:Landroid/media/effect/EffectContext;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 3
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beginGLEffect()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    .line 2
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->saveGLState()V

    return-void
.end method

.method public endGLEffect()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    return-void
.end method

.method public frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-static {p2, p3, v1, v1}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p2

    int-to-long v1, p1

    const/16 p1, 0x64

    .line 3
    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    const-wide/16 p2, -0x1

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    return-object p1
.end method

.method public getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object v0, v0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object v0
.end method
