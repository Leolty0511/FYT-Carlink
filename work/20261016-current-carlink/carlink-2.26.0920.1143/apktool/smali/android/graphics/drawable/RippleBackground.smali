.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_ENTER_DURATION:I = 0x258

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final OPACITY_EXIT_DURATION:I = 0x1e0


# instance fields
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    .line 9
    .line 10
    const-string/jumbo v1, "opacity"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 6
    .line 7
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/RippleBackground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/RippleBackground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p1
.end method


# virtual methods
.method public createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    mul-float/2addr v2, v1

    .line 14
    const/high16 v3, 0x3f000000    # 0.5f

    .line 15
    .line 16
    add-float/2addr v2, v3

    .line 17
    float-to-int v2, v2

    .line 18
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 26
    .line 27
    iget p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 28
    .line 29
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 47
    .line 48
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 55
    .line 56
    sub-float/2addr v2, v3

    .line 57
    const/high16 v3, 0x42f00000    # 120.0f

    .line 58
    .line 59
    mul-float/2addr v2, v3

    .line 60
    float-to-int v2, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    new-instance v3, Landroid/view/RenderNodeAnimator;

    .line 64
    .line 65
    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    invoke-direct {v3, v4, v5, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 72
    .line 73
    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v6, 0x1e0

    .line 77
    .line 78
    invoke-virtual {v3, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 79
    .line 80
    .line 81
    if-lez v2, :cond_1

    .line 82
    .line 83
    int-to-long v6, v2

    .line 84
    invoke-virtual {v3, v6, v7}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 91
    .line 92
    .line 93
    if-lez v2, :cond_2

    .line 94
    .line 95
    new-instance v3, Landroid/view/RenderNodeAnimator;

    .line 96
    .line 97
    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 98
    .line 99
    invoke-direct {v3, v4, v5, v1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    .line 104
    .line 105
    int-to-long v1, v2

    .line 106
    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-object v0
.end method

.method public createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x78

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x258

    .line 7
    .line 8
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float v0, v1, v0

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    mul-float/2addr v0, p1

    .line 16
    float-to-int p1, v0

    .line 17
    sget-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v3, v2, [F

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput v1, v3, v4

    .line 24
    .line 25
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 30
    .line 31
    .line 32
    int-to-long v1, p1

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    sget-object p1, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public createSoftwareExit()Landroid/animation/Animator;
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [F

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    aput v4, v3, v5

    .line 14
    .line 15
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v6, 0x1e0

    .line 25
    .line 26
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    .line 37
    .line 38
    const/high16 v7, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 43
    .line 44
    sub-float v6, v7, v6

    .line 45
    .line 46
    const/high16 v8, 0x42f00000    # 120.0f

    .line 47
    .line 48
    mul-float/2addr v6, v8

    .line 49
    float-to-int v6, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v6, v5

    .line 52
    :goto_0
    if-lez v6, :cond_1

    .line 53
    .line 54
    new-array v8, v2, [F

    .line 55
    .line 56
    aput v7, v8, v5

    .line 57
    .line 58
    invoke-static {p0, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    .line 64
    .line 65
    int-to-long v4, v6

    .line 66
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 73
    .line 74
    .line 75
    :cond_1
    return-object v0
.end method

.method public drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    const/4 p1, 0x1

    return p1
.end method

.method public drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

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
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->isHardwareAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public jumpValuesToExit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return-void
.end method
