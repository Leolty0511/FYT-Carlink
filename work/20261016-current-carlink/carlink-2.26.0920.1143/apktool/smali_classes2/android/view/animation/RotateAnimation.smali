.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 19
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 21
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 22
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 23
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 24
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 25
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 27
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 28
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 30
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 31
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 32
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 33
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 36
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 37
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 39
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 40
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 41
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 3
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 5
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 6
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    const/4 p2, 0x2

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 10
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 11
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    const/4 p2, 0x3

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 13
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 14
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 6
    .line 7
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 14
    .line 15
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 2
    .line 3
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 4
    .line 5
    invoke-static {v1, v0, p1, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    cmpl-float v1, v1, v2

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 21
    .line 22
    cmpl-float v1, v1, v2

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 39
    .line 40
    mul-float/2addr v1, v0

    .line 41
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 42
    .line 43
    mul-float/2addr v2, v0

    .line 44
    invoke-virtual {p2, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 5
    .line 6
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 13
    .line 14
    iget p1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 15
    .line 16
    iget p3, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 23
    .line 24
    return-void
.end method
