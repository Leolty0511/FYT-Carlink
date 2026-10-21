.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SourceFile"


# instance fields
.field protected mFunction:Landroid/filterfw/core/FilterFunction;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p3, p1}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroid/filterfw/core/FilterFunction;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-direct {p2, p3, p1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->beginGLEffect()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 13
    .line 14
    const/4 p4, 0x2

    .line 15
    new-array p4, p4, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iget-object v1, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    .line 19
    .line 20
    aput-object v1, p4, v0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object p1, p4, v0

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p2, p3}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->endGLEffect()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 8
    .line 9
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
