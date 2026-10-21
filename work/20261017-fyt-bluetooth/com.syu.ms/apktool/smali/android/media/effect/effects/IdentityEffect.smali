.class public Landroid/media/effect/effects/IdentityEffect;
.super Landroid/media/effect/FilterEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->beginGLEffect()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 7
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->endGLEffect()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for IdentityEffect!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
