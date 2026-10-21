.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    }
.end annotation


# instance fields
.field protected final mBounds:Landroid/graphics/Rect;

.field protected mDensityScale:F

.field private final mForceSoftware:Z

.field private mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

.field private mHasDisplayListCanvas:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareAnimator:Z

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mSoftwareAnimator:Landroid/animation/Animator;

.field protected mTargetRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    .line 9
    .line 10
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private endHardwareAnimations()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->end()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private endSoftwareAnimations()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static getTargetRadius(Landroid/graphics/Rect;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-float p0, p0

    .line 14
    div-float/2addr p0, v1

    .line 15
    mul-float/2addr v0, v0

    .line 16
    mul-float/2addr p0, p0

    .line 17
    add-float/2addr p0, v0

    .line 18
    float-to-double v0, p0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    double-to-float p0, v0

    .line 24
    return p0
.end method

.method private startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->start(Landroid/view/DisplayListCanvas;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->cancelSoftwareAnimations()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.end method

.method public abstract createSoftwareEnter(Z)Landroid/animation/Animator;
.end method

.method public abstract createSoftwareExit()Landroid/animation/Animator;
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    .line 19
    .line 20
    if-eq v1, v0, :cond_1

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 33
    .line 34
    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/RippleComponent;->startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->drawHardware(Landroid/view/DisplayListCanvas;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public abstract drawHardware(Landroid/view/DisplayListCanvas;)Z
.end method

.method public abstract drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
.end method

.method public end()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endSoftwareAnimations()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final enter(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->createSoftwareEnter(Z)Landroid/animation/Animator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->createSoftwareExit()Landroid/animation/Animator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    double-to-int v0, v0

    .line 9
    neg-int v1, v0

    .line 10
    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final invalidateSelf()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public final isHardwareAnimating()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract jumpValuesToExit()V
.end method

.method public onBoundsChange()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onHotspotBoundsChanged()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr v0, v1

    .line 15
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v2, v1

    .line 23
    mul-float/2addr v0, v0

    .line 24
    mul-float/2addr v2, v2

    .line 25
    add-float/2addr v2, v0

    .line 26
    float-to-double v0, v2

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    double-to-float v0, v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onTargetRadiusChanged(F)V
    .locals 0

    return-void
.end method

.method public final setup(FI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 8
    .line 9
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 19
    .line 20
    :goto_0
    int-to-float p1, p2

    .line 21
    const p2, 0x3bcccccd    # 0.00625f

    .line 22
    .line 23
    .line 24
    mul-float/2addr p1, p2

    .line 25
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 26
    .line 27
    iget p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
