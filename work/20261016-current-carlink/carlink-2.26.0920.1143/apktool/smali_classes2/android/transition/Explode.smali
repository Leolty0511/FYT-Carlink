.class public Landroid/transition/Explode;
.super Landroid/transition/Visibility;
.source "SourceFile"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 3
    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 6
    new-instance p1, Landroid/transition/CircularPropagation;

    invoke-direct {p1}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr p0, p2

    .line 15
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-double p1, p1

    .line 20
    int-to-double v0, p0

    .line 21
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/transition/Explode;->mTempLoc:[I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Landroid/transition/Explode;->mTempLoc:[I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aget v4, v2, v3

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    aget v2, v2, v5

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    div-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v4

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    add-int/2addr v7, v6

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    div-int/lit8 v6, v6, 0x2

    .line 45
    .line 46
    add-int/2addr v6, v2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    add-int/2addr v8, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    sub-int/2addr v6, v7

    .line 74
    int-to-double v10, v6

    .line 75
    sub-int/2addr v9, v8

    .line 76
    int-to-double v12, v9

    .line 77
    const-wide/16 v14, 0x0

    .line 78
    .line 79
    cmpl-double v6, v10, v14

    .line 80
    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    cmpl-double v6, v12, v14

    .line 84
    .line 85
    if-nez v6, :cond_1

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 92
    .line 93
    mul-double/2addr v9, v11

    .line 94
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 95
    .line 96
    sub-double/2addr v9, v13

    .line 97
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    mul-double/2addr v15, v11

    .line 102
    sub-double v12, v15, v13

    .line 103
    .line 104
    move-wide v10, v9

    .line 105
    :cond_1
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 106
    .line 107
    .line 108
    move-result-wide v14

    .line 109
    div-double/2addr v10, v14

    .line 110
    div-double/2addr v12, v14

    .line 111
    sub-int/2addr v7, v4

    .line 112
    sub-int/2addr v8, v2

    .line 113
    invoke-static {v1, v7, v8}, Landroid/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)D

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    mul-double/2addr v10, v1

    .line 118
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    long-to-int v4, v6

    .line 123
    aput v4, p3, v3

    .line 124
    .line 125
    mul-double/2addr v1, v12

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    long-to-int v1, v1

    .line 131
    aput v1, p3, v5

    .line 132
    .line 133
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aget v1, v1, v3

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, v2

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v1

    .line 26
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v4, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    const-string v0, "android:explode:screenBounds"

    .line 34
    .line 35
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

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
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p3, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 24
    .line 25
    invoke-direct {p0, p1, p3, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aget v0, p1, v0

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    add-float v4, v6, v0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aget p1, p1, v0

    .line 38
    .line 39
    int-to-float p1, p1

    .line 40
    add-float v5, v7, p1

    .line 41
    .line 42
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    sget-object v8, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 47
    .line 48
    move-object v0, p2

    .line 49
    move-object v1, p4

    .line 50
    move-object v9, p0

    .line 51
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v3, p4, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 28
    .line 29
    const v1, 0x1020458

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    aget v7, v0, v6

    .line 43
    .line 44
    iget v8, p4, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    sub-int v8, v7, v8

    .line 47
    .line 48
    int-to-float v8, v8

    .line 49
    add-float/2addr v8, v4

    .line 50
    aget v0, v0, v1

    .line 51
    .line 52
    iget v9, p4, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    sub-int v9, v0, v9

    .line 55
    .line 56
    int-to-float v9, v9

    .line 57
    add-float/2addr v9, v5

    .line 58
    invoke-virtual {p4, v7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v8, v4

    .line 63
    move v9, v5

    .line 64
    :goto_0
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 65
    .line 66
    invoke-direct {p0, p1, p4, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 70
    .line 71
    aget p4, p1, v6

    .line 72
    .line 73
    int-to-float p4, p4

    .line 74
    add-float v6, v8, p4

    .line 75
    .line 76
    aget p1, p1, v1

    .line 77
    .line 78
    int-to-float p1, p1

    .line 79
    add-float v7, v9, p1

    .line 80
    .line 81
    sget-object v8, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 82
    .line 83
    move-object v0, p2

    .line 84
    move-object v1, p3

    .line 85
    move-object v9, p0

    .line 86
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method
