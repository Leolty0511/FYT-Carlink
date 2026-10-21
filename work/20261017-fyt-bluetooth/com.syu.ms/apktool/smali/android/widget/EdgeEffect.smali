.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0x12c

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0xc


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private final mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private final mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x108047d

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const v1, 0x108047e

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    int-to-float v4, v0

    mul-float/2addr v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 10
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 12
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 11

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    .line 4
    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 5
    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    sub-float v5, v4, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 6
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 7
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    sub-float v7, v6, v5

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    .line 8
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    const/4 v10, 0x3

    if-eq v0, v5, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v8, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v6, v9

    if-eqz v0, :cond_1

    mul-float/2addr v6, v6

    div-float/2addr v1, v6

    goto :goto_0

    :cond_1
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 9
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 10
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_1

    .line 12
    :cond_3
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 14
    iput v7, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 15
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 16
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 17
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 18
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 19
    iput v9, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 20
    iput v9, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 21
    iput v9, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 22
    iput v9, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_1

    .line 23
    :cond_4
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 24
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 25
    iput v7, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 26
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 27
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 28
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 29
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 30
    iput v9, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 31
    iput v9, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 32
    iput v9, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 33
    iput v9, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 2
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v1, v0

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v1, v5

    int-to-float v5, v0

    mul-float/2addr v1, v5

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v5

    int-to-float v0, v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 4
    iget v1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v5, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    const/4 v6, 0x0

    if-ge v1, v5, :cond_0

    sub-int v5, v1, v5

    .line 5
    div-int/lit8 v5, v5, 0x2

    .line 6
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    sub-int/2addr v1, v5

    invoke-virtual {v7, v5, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    :goto_0
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10
    iget v1, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 11
    iget v2, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v2, v3, :cond_1

    sub-int v3, v2, v3

    .line 12
    div-int/lit8 v3, v3, 0x2

    .line 13
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    sub-int/2addr v2, v3

    invoke-virtual {v4, v3, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    :goto_1
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget p1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 17
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 18
    :cond_2
    iget p1, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v2, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/EdgeEffect;->mX:I

    iget v2, p0, Landroid/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_0

    iget v3, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_0
    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 3
    iget-object p1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    .line 4
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 6
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    const v1, 0x3e99999a    # 0.3f

    .line 7
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 8
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    mul-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 11
    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v2

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v2

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 12
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    return-void
.end method

.method public onPull(F)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_1

    .line 3
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 4
    :cond_1
    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 5
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    .line 6
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 7
    iget v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    .line 9
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v0, v2

    .line 10
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 11
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 13
    iget p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    neg-float v0, v0

    .line 14
    :cond_2
    iget p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 15
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_3
    const/high16 p1, 0x40800000    # 4.0f

    .line 16
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 17
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 18
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 19
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 20
    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 2
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 3
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 4
    iget v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 5
    iget v1, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 6
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 7
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 8
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 9
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 10
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 11
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 12
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 13
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    return-void
.end method

.method public setPosition(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/EdgeEffect;->mX:I

    .line 2
    iput p2, p0, Landroid/widget/EdgeEffect;->mY:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 2
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    return-void
.end method
