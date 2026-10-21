.class public Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
    }
.end annotation


# static fields
.field private static final CENTRALIZED_CIRCLE_1:F = -2.0f

.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final GRADIENT_RADIUS:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "GradientDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mMainColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondaryColor:I

.field private final mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    .line 19
    .line 20
    new-instance p1, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 21
    .line 22
    const/high16 v0, 0x43f00000    # 480.0f

    .line 23
    .line 24
    const/high16 v1, -0x40000000    # -2.0f

    .line 25
    .line 26
    const/high16 v2, 0x3f000000    # 0.5f

    .line 27
    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-direct {p1, v2, v3, v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic a(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->lambda$setColors$0(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private buildPaints()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iget-object v2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 21
    .line 22
    iget v3, v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    .line 23
    .line 24
    mul-float v5, v3, v1

    .line 25
    .line 26
    iget v1, v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    .line 27
    .line 28
    mul-float v6, v1, v0

    .line 29
    .line 30
    iget v0, v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    .line 31
    .line 32
    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    .line 33
    .line 34
    mul-float v7, v0, v1

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 37
    .line 38
    iget v8, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 39
    .line 40
    iget v9, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 41
    .line 42
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 43
    .line 44
    move-object v4, v0

    .line 45
    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private synthetic lambda$setColors$0(IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    check-cast p5, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    invoke-static {p1, p2, p5}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 16
    .line 17
    invoke-static {p3, p4, p5}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    iget-object v2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 20
    .line 21
    iget v3, v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    .line 22
    .line 23
    mul-float/2addr v3, v1

    .line 24
    iget v2, v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    .line 25
    .line 26
    mul-float/2addr v2, v0

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-float v5, v3, v0

    .line 32
    .line 33
    sub-float v6, v2, v0

    .line 34
    .line 35
    add-float v7, v3, v0

    .line 36
    .line 37
    add-float v8, v2, v0

    .line 38
    .line 39
    iget-object v9, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object v4, p1

    .line 42
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "You need to call setScreenSize before drawing."

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(IIZ)V
    .locals 7

    .line 3
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    if-ne p2, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    iget v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 7
    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 8
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x7d0

    .line 9
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v0, Lcom/android/internal/colorextraction/drawable/a;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/colorextraction/drawable/a;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIII)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance p1, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;

    invoke-direct {p1, p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    iput-object p3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 15
    :cond_2
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 16
    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 17
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
