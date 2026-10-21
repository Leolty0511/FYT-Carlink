.class public Landroid/transition/PatternPathMotion;
.super Landroid/transition/PathMotion;
.source "SourceFile"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 9
    sget-object v0, Lcom/android/internal/R$styleable;->PatternPathMotion:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 14
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "pathData must be supplied for patternPathMotion"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {p0, p1}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 4

    .line 1
    sub-float/2addr p3, p1

    .line 2
    float-to-double v0, p3

    .line 3
    sub-float/2addr p4, p2

    .line 4
    float-to-double p3, p4

    .line 5
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    double-to-float v2, v2

    .line 10
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 11
    .line 12
    .line 13
    move-result-wide p3

    .line 14
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide p3

    .line 25
    double-to-float p3, p3

    .line 26
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroid/graphics/Path;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 40
    .line 41
    iget-object p3, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 42
    .line 43
    invoke-virtual {p2, p3, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [F

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 16
    .line 17
    .line 18
    aget v2, v3, v1

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    aget v6, v3, v5

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v0, v7, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 25
    .line 26
    .line 27
    aget v0, v3, v1

    .line 28
    .line 29
    aget v1, v3, v5

    .line 30
    .line 31
    cmpl-float v3, v0, v2

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    cmpl-float v3, v1, v6

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "pattern must not end at the starting point"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 49
    .line 50
    neg-float v4, v0

    .line 51
    neg-float v5, v1

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 53
    .line 54
    .line 55
    sub-float/2addr v2, v0

    .line 56
    sub-float/2addr v6, v1

    .line 57
    float-to-double v0, v2

    .line 58
    float-to-double v2, v6

    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    double-to-float v4, v4

    .line 64
    const/high16 v5, 0x3f800000    # 1.0f

    .line 65
    .line 66
    div-float/2addr v5, v4

    .line 67
    iget-object v4, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 68
    .line 69
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iget-object v2, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 77
    .line 78
    neg-double v0, v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    double-to-float v0, v0

    .line 84
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 88
    .line 89
    iget-object v1, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 95
    .line 96
    return-void
.end method
