.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    if-eqz p2, :cond_0

    .line 9
    sget-object p1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/BaseInterpolator;->setChangingConfiguration(I)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 8

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    .line 14
    move-object v0, v7

    .line 15
    move v1, p1

    .line 16
    move v2, p2

    .line 17
    move v3, p3

    .line 18
    move v4, p4

    .line 19
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v7}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 8

    .line 1
    const v0, 0x3b03126f    # 0.002f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    array-length v0, p1

    .line 9
    div-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    cmpl-float v2, v2, v3

    .line 16
    .line 17
    if-nez v2, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aget v4, p1, v2

    .line 21
    .line 22
    cmpl-float v4, v4, v3

    .line 23
    .line 24
    if-nez v4, :cond_4

    .line 25
    .line 26
    array-length v4, p1

    .line 27
    sub-int/2addr v4, v2

    .line 28
    aget v2, p1, v4

    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpl-float v2, v2, v4

    .line 33
    .line 34
    if-nez v2, :cond_4

    .line 35
    .line 36
    array-length v2, p1

    .line 37
    sub-int/2addr v2, v1

    .line 38
    aget v1, p1, v2

    .line 39
    .line 40
    cmpl-float v1, v1, v4

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    new-array v1, v0, [F

    .line 45
    .line 46
    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 47
    .line 48
    new-array v1, v0, [F

    .line 49
    .line 50
    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    move v2, v1

    .line 54
    move v4, v3

    .line 55
    :goto_0
    if-ge v1, v0, :cond_3

    .line 56
    .line 57
    add-int/lit8 v5, v2, 0x1

    .line 58
    .line 59
    aget v2, p1, v2

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    .line 63
    aget v5, p1, v5

    .line 64
    .line 65
    add-int/lit8 v7, v6, 0x1

    .line 66
    .line 67
    aget v6, p1, v6

    .line 68
    .line 69
    cmpl-float v3, v2, v3

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    cmpl-float v3, v5, v4

    .line 74
    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "The Path cannot have discontinuity in the X axis."

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    :goto_1
    cmpg-float v3, v5, v4

    .line 87
    .line 88
    if-ltz v3, :cond_2

    .line 89
    .line 90
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 91
    .line 92
    aput v5, v3, v1

    .line 93
    .line 94
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 95
    .line 96
    aput v6, v3, v1

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    move v3, v2

    .line 101
    move v4, v5

    .line 102
    move v2, v7

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string v0, "The Path cannot loop back on itself."

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    return-void

    .line 113
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    const-string v0, "The Path must start at (0,0) and end at (1,1)"

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method private initQuad(FF)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroid/view/InflateException;

    .line 23
    .line 24
    const-string v1, "The path is null, which is created from "

    .line 25
    .line 26
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ne v4, v6, :cond_3

    .line 68
    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    invoke-direct {p0, v0, v1}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-direct {p0, v0, v1, v3, p1}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_3
    new-instance p1, Landroid/view/InflateException;

    .line 88
    .line 89
    const-string v0, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    .line 90
    .line 91
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_4
    new-instance p1, Landroid/view/InflateException;

    .line 96
    .line 97
    const-string v0, "pathInterpolator requires the controlY1 attribute"

    .line 98
    .line 99
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    new-instance p1, Landroid/view/InflateException;

    .line 104
    .line 105
    const-string v0, "pathInterpolator requires the controlX1 attribute"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    invoke-static {v0, v1}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createPathInterpolator([F[F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gtz v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v2, p1, v1

    .line 10
    .line 11
    if-ltz v2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    sub-int v4, v1, v3

    .line 21
    .line 22
    if-le v4, v2, :cond_3

    .line 23
    .line 24
    add-int v4, v3, v1

    .line 25
    .line 26
    div-int/lit8 v4, v4, 0x2

    .line 27
    .line 28
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 29
    .line 30
    aget v5, v5, v4

    .line 31
    .line 32
    cmpg-float v5, p1, v5

    .line 33
    .line 34
    if-gez v5, :cond_2

    .line 35
    .line 36
    move v1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v3, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 41
    .line 42
    aget v4, v2, v1

    .line 43
    .line 44
    aget v2, v2, v3

    .line 45
    .line 46
    sub-float/2addr v4, v2

    .line 47
    cmpl-float v0, v4, v0

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 52
    .line 53
    aget p1, p1, v3

    .line 54
    .line 55
    return p1

    .line 56
    :cond_4
    sub-float/2addr p1, v2

    .line 57
    div-float/2addr p1, v4

    .line 58
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 59
    .line 60
    aget v2, v0, v3

    .line 61
    .line 62
    aget v0, v0, v1

    .line 63
    .line 64
    invoke-static {v0, v2, p1, v2}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1
.end method
