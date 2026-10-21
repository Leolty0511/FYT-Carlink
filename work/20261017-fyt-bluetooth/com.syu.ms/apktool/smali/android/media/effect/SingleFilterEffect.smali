.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SourceFile"


# instance fields
.field public mFunction:Landroid/filterfw/core/FilterFunction;

.field public mInputName:Ljava/lang/String;

.field public mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p3, p1}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 8
    new-instance p2, Landroid/filterfw/core/FilterFunction;

    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    iput-object p2, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

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
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 4
    iget-object p3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const/4 v0, 0x1

    aput-object p1, p4, v0

    invoke-virtual {p3, p4}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object p3

    .line 5
    invoke-virtual {p2, p3}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 6
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 7
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 8
    invoke-virtual {p3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 9
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->endGLEffect()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
