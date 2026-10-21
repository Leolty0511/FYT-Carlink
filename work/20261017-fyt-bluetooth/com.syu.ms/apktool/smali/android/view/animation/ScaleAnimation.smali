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

    .line 77
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 78
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 80
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 82
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 83
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 84
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 85
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 86
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 87
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 88
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 89
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 90
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 93
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 94
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 95
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 96
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 97
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 98
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 99
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 100
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 101
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 103
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 105
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 106
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 107
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 108
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 109
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 110
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 111
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 112
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 113
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
    sget-object v2, Li/a;->ScaleAnimation:[I

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

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    move-result v0

    .line 2
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    .line 4
    :goto_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_2

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_3

    .line 5
    :cond_2
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    .line 6
    :cond_3
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr p2, v0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v0, v3

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 3
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v1, p0

    move v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 4
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 5
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    invoke-virtual/range {v1 .. v6}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 6
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 7
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget p3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public resolveScale(FIIII)F
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    int-to-float p1, p4

    int-to-float p2, p5

    .line 1
    invoke-static {p3, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p5, 0x5

    if-ne p2, p5, :cond_2

    .line 2
    iget-object p1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    :goto_0
    if-nez p4, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_1
    int-to-float p2, p4

    div-float/2addr p1, p2

    :cond_2
    return p1
.end method
