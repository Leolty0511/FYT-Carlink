.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final GLOW_ALPHA_START:F = 0.09f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RADIUS_FACTOR:F = 0.6f

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    double-to-float v2, v2

    .line 11
    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    sput v0, Landroid/widget/EdgeEffect;->COS:F

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/high16 v2, 0x3f000000    # 0.5f

    .line 22
    .line 23
    iput v2, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 24
    .line 25
    iput v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v2, -0x99999a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    .line 46
    .line 47
    const p1, 0xffffff

    .line 48
    .line 49
    .line 50
    and-int/2addr p1, v0

    .line 51
    const/high16 v0, 0x33000000

    .line 52
    .line 53
    or-int/2addr p1, v0

    .line 54
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 63
    .line 64
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    .line 79
    return-void
.end method

.method private update()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    iget v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 25
    .line 26
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 27
    .line 28
    invoke-static {v3, v2, v1, v2}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 33
    .line 34
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 35
    .line 36
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 37
    .line 38
    invoke-static {v3, v2, v1, v2}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 43
    .line 44
    iget v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 45
    .line 46
    iget v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 47
    .line 48
    add-float/2addr v1, v2

    .line 49
    const/high16 v2, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v1, v2

    .line 52
    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 53
    .line 54
    const v1, 0x3f7fbe77    # 0.999f

    .line 55
    .line 56
    .line 57
    cmpl-float v0, v0, v1

    .line 58
    .line 59
    if-ltz v0, :cond_4

    .line 60
    .line 61
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    const/4 v2, 0x4

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eq v0, v1, :cond_3

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    const/4 v4, 0x3

    .line 70
    if-eq v0, v1, :cond_2

    .line 71
    .line 72
    if-eq v0, v4, :cond_1

    .line 73
    .line 74
    if-eq v0, v2, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 85
    .line 86
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 91
    .line 92
    const/high16 v0, 0x44160000    # 600.0f

    .line 93
    .line 94
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 95
    .line 96
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 97
    .line 98
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 99
    .line 100
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 101
    .line 102
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 103
    .line 104
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 105
    .line 106
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 110
    .line 111
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 116
    .line 117
    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 118
    .line 119
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 120
    .line 121
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 122
    .line 123
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 124
    .line 125
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 126
    .line 127
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 128
    .line 129
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 130
    .line 131
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 132
    .line 133
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

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
    iget v3, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 23
    .line 24
    sub-float/2addr v2, v3

    .line 25
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 26
    .line 27
    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v5, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 34
    .line 35
    mul-float/2addr v3, v5

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 38
    .line 39
    .line 40
    iget v3, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/high16 v4, 0x3f000000    # 0.5f

    .line 51
    .line 52
    sub-float/2addr v3, v4

    .line 53
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    mul-float/2addr v4, v3

    .line 61
    const/high16 v3, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr v4, v3

    .line 64
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    const/high16 v4, 0x437f0000    # 255.0f

    .line 75
    .line 76
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 77
    .line 78
    mul-float/2addr v6, v4

    .line 79
    float-to-int v4, v6

    .line 80
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    .line 82
    .line 83
    iget v3, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 84
    .line 85
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    .line 92
    .line 93
    iget p1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 94
    .line 95
    const/4 v0, 0x3

    .line 96
    const/4 v1, 0x1

    .line 97
    const/4 v2, 0x0

    .line 98
    if-ne p1, v0, :cond_0

    .line 99
    .line 100
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 101
    .line 102
    cmpl-float p1, p1, v5

    .line 103
    .line 104
    if-nez p1, :cond_0

    .line 105
    .line 106
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 107
    .line 108
    move p1, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    move p1, v2

    .line 111
    :goto_0
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    move v1, v2

    .line 119
    :cond_2
    :goto_1
    return v1
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

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

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x2710

    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 25
    .line 26
    int-to-float v0, p1

    .line 27
    const v1, 0x3ca3d70a    # 0.02f

    .line 28
    .line 29
    .line 30
    mul-float/2addr v0, v1

    .line 31
    const v1, 0x3e19999a    # 0.15f

    .line 32
    .line 33
    .line 34
    add-float/2addr v0, v1

    .line 35
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 36
    .line 37
    const v0, 0x3db851ec    # 0.09f

    .line 38
    .line 39
    .line 40
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 41
    .line 42
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 50
    .line 51
    div-int/lit8 v0, p1, 0x64

    .line 52
    .line 53
    mul-int/2addr v0, p1

    .line 54
    int-to-float v0, v0

    .line 55
    const v2, 0x391d4952    # 1.5E-4f

    .line 56
    .line 57
    .line 58
    mul-float/2addr v0, v2

    .line 59
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    .line 61
    div-float/2addr v0, v2

    .line 62
    const v2, 0x3ccccccd    # 0.025f

    .line 63
    .line 64
    .line 65
    add-float/2addr v0, v2

    .line 66
    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 73
    .line 74
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 75
    .line 76
    mul-int/lit8 p1, p1, 0x6

    .line 77
    .line 78
    int-to-float p1, p1

    .line 79
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 80
    .line 81
    .line 82
    mul-float/2addr p1, v2

    .line 83
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 92
    .line 93
    const/high16 p1, 0x3f000000    # 0.5f

    .line 94
    .line 95
    iput p1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 96
    .line 97
    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 4
    iget p2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    .line 5
    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 6
    :cond_1
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 7
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 p2, 0x43270000    # 167.0f

    .line 8
    iput p2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 9
    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 11
    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    const p2, 0x3e19999a    # 0.15f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 12
    iget p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float p2, p1, v3

    if-nez p2, :cond_2

    .line 13
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double p1, v0, p1

    sub-double/2addr v0, p1

    const-wide p1, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v0, p1

    const-wide/16 p1, 0x0

    .line 15
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v0, 0x3fe6666666666666L    # 0.7

    div-double/2addr p1, v0

    double-to-float p1, p1

    .line 16
    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 17
    :goto_0
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 18
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 3
    .line 4
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 15
    .line 16
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 17
    .line 18
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 21
    .line 22
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 23
    .line 24
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 25
    .line 26
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 27
    .line 28
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 33
    .line 34
    const/high16 v0, 0x44160000    # 600.0f

    .line 35
    .line 36
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 37
    .line 38
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 5

    .line 1
    int-to-float v0, p1

    .line 2
    const v1, 0x3f19999a    # 0.6f

    .line 3
    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    .line 7
    .line 8
    div-float/2addr v0, v2

    .line 9
    sget v3, Landroid/widget/EdgeEffect;->COS:F

    .line 10
    .line 11
    mul-float v4, v3, v0

    .line 12
    .line 13
    sub-float v4, v0, v4

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    mul-float/2addr v1, p2

    .line 17
    div-float/2addr v1, v2

    .line 18
    mul-float/2addr v3, v1

    .line 19
    sub-float/2addr v1, v3

    .line 20
    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    cmpl-float v0, v4, v0

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    div-float/2addr v1, v4

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :cond_0
    iput v2, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    float-to-int p2, p2

    .line 47
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
