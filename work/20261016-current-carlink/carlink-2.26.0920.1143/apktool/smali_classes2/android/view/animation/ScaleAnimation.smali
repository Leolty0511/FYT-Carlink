.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 52
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 53
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 54
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 55
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 56
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 57
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 58
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 60
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 62
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 63
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 64
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 65
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 66
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 67
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 70
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 71
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 72
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 73
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 74
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 75
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 76
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 78
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 79
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 80
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 81
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 82
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 83
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 84
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 85
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 86
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 89
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 90
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 91
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 92
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 93
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 94
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 95
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 97
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 98
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 99
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 100
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 101
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 102
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 103
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 104
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 105
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 3
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 4
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 5
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 6
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 7
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 8
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 9
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 10
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 11
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 13
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 15
    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 17
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    .line 18
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    goto :goto_0

    .line 20
    :cond_0
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 21
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    :cond_1
    :goto_0
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 23
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    if-eqz p2, :cond_3

    .line 24
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_2

    .line 25
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    goto :goto_1

    .line 26
    :cond_2
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 27
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 29
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    if-eqz p2, :cond_5

    .line 30
    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-ne v3, v2, :cond_4

    .line 31
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    goto :goto_2

    .line 32
    :cond_4
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 33
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    :cond_5
    :goto_2
    const/4 p2, 0x5

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 35
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    if-eqz p2, :cond_7

    .line 36
    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-ne v1, v2, :cond_6

    .line 37
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    goto :goto_3

    .line 38
    :cond_6
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 39
    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 40
    :cond_7
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 41
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 42
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 44
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 45
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 6
    .line 7
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 14
    .line 15
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v3, v1, v2

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 14
    .line 15
    cmpl-float v3, v3, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 23
    .line 24
    invoke-static {v3, v1, p1, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 29
    .line 30
    cmpl-float v4, v3, v2

    .line 31
    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 35
    .line 36
    cmpl-float v4, v4, v2

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :cond_2
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 41
    .line 42
    invoke-static {v2, v3, p1, v3}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :cond_3
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    cmpl-float p1, p1, v3

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 54
    .line 55
    cmpl-float p1, p1, v3

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 72
    .line 73
    mul-float/2addr p2, v0

    .line 74
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 75
    .line 76
    mul-float/2addr v0, v3

    .line 77
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    .line 3
    .line 4
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 5
    .line 6
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 7
    .line 8
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v4, p1

    .line 12
    move v5, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 18
    .line 19
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 20
    .line 21
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 22
    .line 23
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    move v5, p1

    .line 27
    move v6, p3

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 33
    .line 34
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 35
    .line 36
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 37
    .line 38
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 39
    .line 40
    move v5, p2

    .line 41
    move v6, p4

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 47
    .line 48
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 49
    .line 50
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 51
    .line 52
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 53
    .line 54
    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 59
    .line 60
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 61
    .line 62
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 69
    .line 70
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 71
    .line 72
    iget p3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 73
    .line 74
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 79
    .line 80
    return-void
.end method

.method public resolveScale(FIIII)F
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    int-to-float p1, p4

    .line 5
    int-to-float p2, p5

    .line 6
    invoke-static {p3, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p5, 0x5

    .line 12
    if-ne p2, p5, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p3, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    if-nez p4, :cond_1

    .line 25
    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    int-to-float p2, p4

    .line 30
    div-float/2addr p1, p2

    .line 31
    :cond_2
    return p1
.end method
