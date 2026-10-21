.class public Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    }
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 3
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 4
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget-object v0, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    :goto_1
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2

    .line 15
    :cond_2
    sget-object p1, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 16
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    .line 28
    const-string v3, "android:epicenterReveal:bounds"

    .line 29
    .line 30
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "android:epicenterReveal:translateX"

    .line 44
    .line 45
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "android:epicenterReveal:translateY"

    .line 59
    .line 60
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "android:epicenterReveal:translateZ"

    .line 74
    .line 75
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "android:epicenterReveal:z"

    .line 89
    .line 90
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 98
    .line 99
    const-string v1, "android:epicenterReveal:clip"

    .line 100
    .line 101
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private static createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;)V

    .line 2
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput p6, v3, p3

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    if-eqz p10, :cond_0

    .line 3
    invoke-virtual {p6, p10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    :cond_0
    new-instance p10, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v1, 0x78

    invoke-direct {p10, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    new-array v1, v2, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p1, v1, v4

    aput-object p4, v1, p3

    .line 5
    invoke-static {p0, p10, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p8, :cond_1

    .line 6
    invoke-virtual {p1, p8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    :cond_1
    new-instance p4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 p8, 0x79

    invoke-direct {p4, p8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    new-array p8, v2, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p2, p8, v4

    aput-object p5, p8, p3

    .line 8
    invoke-static {p0, p4, v0, p8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p9, :cond_2

    .line 9
    invoke-virtual {p2, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    :cond_2
    iget-object p4, p7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p5, "android:epicenterReveal:clip"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 11
    new-instance p5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    invoke-direct {p5, p0, p4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p1, p4, v4

    aput-object p2, p4, p3

    aput-object p6, p4, v2

    .line 13
    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14
    invoke-virtual {p0, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "android:epicenterReveal:clip"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    .line 15
    const-string v0, "android:epicenterReveal:bounds"

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/graphics/Rect;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    return-object v0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v1, v0, p1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    if-nez v8, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    return-object v1

    .line 10
    :cond_0
    iget-object v2, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 11
    .line 12
    const-string v3, "android:epicenterReveal:bounds"

    .line 13
    .line 14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v4, v5

    .line 33
    int-to-float v4, v4

    .line 34
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v3, v2

    .line 43
    int-to-float v2, v3

    .line 44
    iget-object v3, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 45
    .line 46
    const-string v5, "android:epicenterReveal:z"

    .line 47
    .line 48
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Float;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v5, 0x0

    .line 59
    sub-float/2addr v5, v3

    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 70
    .line 71
    const-string v6, "android:epicenterReveal:translateX"

    .line 72
    .line 73
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Float;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v6, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 84
    .line 85
    const-string v7, "android:epicenterReveal:translateY"

    .line 86
    .line 87
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/Float;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    iget-object v7, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 98
    .line 99
    const-string v9, "android:epicenterReveal:translateZ"

    .line 100
    .line 101
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Ljava/lang/Float;

    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-direct {p0, v8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-direct {p0, v9}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v1, v10}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 120
    .line 121
    .line 122
    new-instance v11, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 123
    .line 124
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    iget v13, v10, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    invoke-direct {v11, v12, v13, v4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 129
    .line 130
    .line 131
    new-instance v12, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 132
    .line 133
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 134
    .line 135
    iget v13, v9, Landroid/graphics/Rect;->right:I

    .line 136
    .line 137
    invoke-direct {v12, v4, v13, v3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 141
    .line 142
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 143
    .line 144
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 145
    .line 146
    invoke-direct {v3, v4, v10, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 147
    .line 148
    .line 149
    new-instance v10, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 150
    .line 151
    iget v2, v9, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    invoke-direct {v10, v2, v4, v6}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 156
    .line 157
    .line 158
    iget-object v9, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 159
    .line 160
    iget-object v13, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 161
    .line 162
    iget-object v14, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 163
    .line 164
    move-object/from16 v1, p2

    .line 165
    .line 166
    move-object v2, v11

    .line 167
    move v4, v5

    .line 168
    move-object v5, v12

    .line 169
    move-object v6, v10

    .line 170
    move-object/from16 v8, p4

    .line 171
    .line 172
    move-object v10, v13

    .line 173
    move-object v11, v14

    .line 174
    invoke-static/range {v1 .. v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v2, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 12
    .line 13
    const-string v3, "android:epicenterReveal:bounds"

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    sub-int/2addr v4, v5

    .line 34
    int-to-float v4, v4

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v3, v2

    .line 44
    int-to-float v2, v3

    .line 45
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 46
    .line 47
    const-string v5, "android:epicenterReveal:z"

    .line 48
    .line 49
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Float;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v5, 0x0

    .line 60
    sub-float v7, v5, v3

    .line 61
    .line 62
    iget-object v3, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 63
    .line 64
    const-string v5, "android:epicenterReveal:translateX"

    .line 65
    .line 66
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Float;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v5, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 77
    .line 78
    const-string v6, "android:epicenterReveal:translateY"

    .line 79
    .line 80
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/Float;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget-object v6, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 91
    .line 92
    const-string v9, "android:epicenterReveal:translateZ"

    .line 93
    .line 94
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    move-object/from16 v10, p2

    .line 113
    .line 114
    invoke-virtual {v10, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 118
    .line 119
    iget v12, v1, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    iget v13, v1, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    invoke-direct {v11, v12, v13, v3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 124
    .line 125
    .line 126
    new-instance v12, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 127
    .line 128
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    iget v13, v9, Landroid/graphics/Rect;->right:I

    .line 131
    .line 132
    invoke-direct {v12, v3, v13, v4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 133
    .line 134
    .line 135
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 136
    .line 137
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 140
    .line 141
    invoke-direct {v3, v4, v1, v5}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 142
    .line 143
    .line 144
    new-instance v13, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 145
    .line 146
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 147
    .line 148
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 149
    .line 150
    invoke-direct {v13, v1, v4, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 151
    .line 152
    .line 153
    iget-object v9, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 154
    .line 155
    iget-object v14, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 156
    .line 157
    iget-object v15, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 158
    .line 159
    move-object/from16 v1, p2

    .line 160
    .line 161
    move-object v2, v11

    .line 162
    move v4, v6

    .line 163
    move-object v5, v12

    .line 164
    move-object v6, v13

    .line 165
    move-object/from16 v8, p4

    .line 166
    .line 167
    move-object v10, v14

    .line 168
    move-object v11, v15

    .line 169
    invoke-static/range {v1 .. v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    return-object v1
.end method
