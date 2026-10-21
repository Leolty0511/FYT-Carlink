.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "SourceFile"


# instance fields
.field protected mEffectContext:Landroid/media/effect/EffectContext;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public beginGLEffect()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->saveGLState()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public endGLEffect()V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    return-void
.end method

.method public frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-static {p2, p3, v1, v1}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/16 p3, 0x64

    .line 15
    .line 16
    int-to-long v1, p1

    .line 17
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-wide/16 p2, -0x1

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object v0, v0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object v0
.end method
