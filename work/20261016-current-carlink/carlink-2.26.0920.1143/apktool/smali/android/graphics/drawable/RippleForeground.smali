.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final BOUNDED_OPACITY_EXIT_DURATION:I = 0x190

.field private static final BOUNDED_ORIGIN_EXIT_DURATION:I = 0x12c

.field private static final BOUNDED_RADIUS_EXIT_DURATION:I = 0x320

.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final MAX_BOUNDED_RADIUS:F = 350.0f

.field private static final OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final RIPPLE_ENTER_DELAY:I = 0x50

.field private static final TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBoundedRadius:F

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mHasFinishedExit:Z

.field private mIsBounded:Z

.field private mOpacity:F

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingX:F

.field private mStartingY:F

.field private mTargetX:F

.field private mTargetY:F

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;

    .line 9
    .line 10
    const v1, 0x3fb33333    # 1.4f

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/high16 v3, 0x43c80000    # 400.0f

    .line 15
    .line 16
    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;-><init>(FFF)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    .line 22
    .line 23
    const-string/jumbo v1, "tweenRadius"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    .line 32
    .line 33
    const-string/jumbo v1, "tweenOrigin"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    .line 42
    .line 43
    const-string/jumbo v1, "opacity"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p6}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 6
    .line 7
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 8
    .line 9
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 10
    .line 11
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 14
    .line 15
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    .line 16
    .line 17
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    .line 18
    .line 19
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/drawable/RippleForeground$1;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 27
    .line 28
    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    .line 29
    .line 30
    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 31
    .line 32
    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 33
    .line 34
    if-eqz p5, :cond_0

    .line 35
    .line 36
    const-wide p1, 0x4075e00000000000L    # 350.0

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 42
    .line 43
    .line 44
    move-result-wide p3

    .line 45
    mul-double/2addr p3, p1

    .line 46
    const-wide p1, 0x3fb999999999999aL    # 0.1

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    mul-double/2addr p3, p1

    .line 52
    double-to-float p1, p3

    .line 53
    const p2, 0x439d8000    # 315.0f

    .line 54
    .line 55
    .line 56
    add-float/2addr p1, p2

    .line 57
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/RippleForeground;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p0
.end method

.method public static synthetic access$102(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p1
.end method

.method public static synthetic access$200(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p0
.end method

.method public static synthetic access$202(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p1
.end method

.method public static synthetic access$302(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    return p1
.end method

.method public static synthetic access$400(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p0
.end method

.method public static synthetic access$402(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p1
.end method

.method private clampStartingPosition()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 14
    .line 15
    sub-float v3, v2, v0

    .line 16
    .line 17
    iget v4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 18
    .line 19
    sub-float v5, v4, v1

    .line 20
    .line 21
    iget v6, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 22
    .line 23
    mul-float v7, v3, v3

    .line 24
    .line 25
    mul-float v8, v5, v5

    .line 26
    .line 27
    add-float/2addr v8, v7

    .line 28
    mul-float v7, v6, v6

    .line 29
    .line 30
    cmpl-float v7, v8, v7

    .line 31
    .line 32
    if-lez v7, :cond_0

    .line 33
    .line 34
    float-to-double v4, v5

    .line 35
    float-to-double v2, v3

    .line 36
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    float-to-double v6, v6

    .line 45
    mul-double/2addr v4, v6

    .line 46
    double-to-float v4, v4

    .line 47
    add-float/2addr v0, v4

    .line 48
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    mul-double/2addr v2, v6

    .line 55
    double-to-float v0, v2

    .line 56
    add-float/2addr v1, v0

    .line 57
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iput v2, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 61
    .line 62
    iput v4, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method private computeBoundedTargetValues()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 2
    .line 3
    iget-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    const v1, 0x3f333333    # 0.7f

    .line 11
    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 15
    .line 16
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 17
    .line 18
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-float/2addr v0, v2

    .line 25
    mul-float/2addr v0, v1

    .line 26
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 27
    .line 28
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 29
    .line 30
    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 31
    .line 32
    return-void
.end method

.method private getCurrentRadius()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentX()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentY()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getOpacityExitDuration()I
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private getRadiusExitDuration()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-float/2addr v0, v1

    .line 8
    const v1, 0x458a4000    # 4424.0f

    .line 9
    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    iget v1, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 13
    .line 14
    mul-float/2addr v0, v1

    .line 15
    float-to-double v0, v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 27
    .line 28
    add-double/2addr v0, v2

    .line 29
    double-to-int v0, v0

    .line 30
    return v0
.end method


# virtual methods
.method public createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x320

    .line 9
    .line 10
    const/16 v1, 0x12c

    .line 11
    .line 12
    const/16 v2, 0x190

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    move v1, v0

    .line 24
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    int-to-float v6, v6

    .line 41
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 42
    .line 43
    mul-float/2addr v6, v7

    .line 44
    const/high16 v7, 0x3f000000    # 0.5f

    .line 45
    .line 46
    add-float/2addr v6, v7

    .line 47
    float-to-int v6, v6

    .line 48
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 56
    .line 57
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 68
    .line 69
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 74
    .line 75
    new-instance p1, Landroid/view/RenderNodeAnimator;

    .line 76
    .line 77
    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 78
    .line 79
    iget v4, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 80
    .line 81
    invoke-direct {p1, v3, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 82
    .line 83
    .line 84
    int-to-long v3, v0

    .line 85
    invoke-virtual {p1, v3, v4}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 86
    .line 87
    .line 88
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Landroid/view/RenderNodeAnimator;

    .line 94
    .line 95
    iget-object v4, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 96
    .line 97
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 98
    .line 99
    invoke-direct {v3, v4, v5}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 100
    .line 101
    .line 102
    int-to-long v4, v1

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Landroid/view/RenderNodeAnimator;

    .line 110
    .line 111
    iget-object v6, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 112
    .line 113
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 114
    .line 115
    invoke-direct {v1, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 125
    .line 126
    iget-object v4, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    const/4 v6, 0x0

    .line 130
    invoke-direct {v0, v4, v5, v6}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 131
    .line 132
    .line 133
    int-to-long v4, v2

    .line 134
    invoke-virtual {v0, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 135
    .line 136
    .line 137
    sget-object v2, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 148
    .line 149
    invoke-direct {v2}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 162
    .line 163
    .line 164
    return-object v2
.end method

.method public createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 10

    .line 1
    iget-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 8
    .line 9
    const/high16 v0, 0x44800000    # 1024.0f

    .line 10
    .line 11
    div-float/2addr p1, v0

    .line 12
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 13
    .line 14
    mul-float/2addr p1, v0

    .line 15
    float-to-double v0, p1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 27
    .line 28
    add-double/2addr v0, v2

    .line 29
    double-to-int p1, v0

    .line 30
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v2, v1, [F

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    .line 38
    aput v4, v2, v3

    .line 39
    .line 40
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 45
    .line 46
    .line 47
    int-to-long v5, p1

    .line 48
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    sget-object p1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v7, 0x50

    .line 57
    .line 58
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 62
    .line 63
    new-array v9, v1, [F

    .line 64
    .line 65
    aput v4, v9, v3

    .line 66
    .line 67
    invoke-static {p0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 81
    .line 82
    .line 83
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    .line 84
    .line 85
    new-array v6, v1, [F

    .line 86
    .line 87
    aput v4, v6, v3

    .line 88
    .line 89
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v4, 0x78

    .line 97
    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 105
    .line 106
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    .line 119
    .line 120
    return-object p1
.end method

.method public createSoftwareExit()Landroid/animation/Animator;
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x320

    .line 9
    .line 10
    const/16 v1, 0x12c

    .line 11
    .line 12
    const/16 v2, 0x190

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    move v1, v0

    .line 24
    :goto_0
    sget-object v3, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    new-array v5, v4, [F

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/high16 v7, 0x3f800000    # 1.0f

    .line 31
    .line 32
    aput v7, v5, v6

    .line 33
    .line 34
    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 39
    .line 40
    .line 41
    int-to-long v8, v0

    .line 42
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    .line 49
    .line 50
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 51
    .line 52
    new-array v8, v4, [F

    .line 53
    .line 54
    aput v7, v8, v6

    .line 55
    .line 56
    invoke-static {p0, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 61
    .line 62
    .line 63
    int-to-long v7, v1

    .line 64
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    .line 71
    .line 72
    new-array v1, v4, [F

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    aput v7, v1, v6

    .line 76
    .line 77
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 82
    .line 83
    .line 84
    int-to-long v1, v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    .line 88
    sget-object v1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    .line 113
    .line 114
    return-object v1
.end method

.method public drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    const/4 p1, 0x1

    return p1
.end method

.method public drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 7
    .line 8
    mul-float/2addr v1, v2

    .line 9
    const/high16 v2, 0x3f000000    # 0.5f

    .line 10
    .line 11
    add-float/2addr v1, v2

    .line 12
    float-to-int v1, v1

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    cmpl-float v3, v2, v3

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 5
    .line 6
    float-to-int v1, v1

    .line 7
    iget v2, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 8
    .line 9
    float-to-int v2, v2

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    sub-int v3, v0, v2

    .line 13
    .line 14
    sub-int v4, v1, v2

    .line 15
    .line 16
    add-int/2addr v0, v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public hasFinishedExit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return v0
.end method

.method public jumpValuesToExit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    .line 7
    .line 8
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    .line 9
    .line 10
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    .line 11
    .line 12
    return-void
.end method

.method public move(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 2
    .line 3
    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onTargetRadiusChanged(F)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    return-void
.end method
