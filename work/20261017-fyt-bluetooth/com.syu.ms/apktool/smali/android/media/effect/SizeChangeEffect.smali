.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->beginGLEffect()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 6
    invoke-virtual {p0, p4, p3, v0}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 8
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 9
    invoke-virtual {p3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 10
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 11
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->endGLEffect()V

    return-void
.end method
