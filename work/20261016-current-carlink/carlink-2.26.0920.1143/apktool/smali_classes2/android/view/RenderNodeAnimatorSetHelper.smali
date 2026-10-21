.class public Landroid/view/RenderNodeAnimatorSetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLinearInterpolator()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-static {p0}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method

.method public static getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    return-object p0
.end method
