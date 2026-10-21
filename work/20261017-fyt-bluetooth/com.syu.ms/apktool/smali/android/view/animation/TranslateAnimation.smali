.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 26
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 27
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 28
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 30
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 31
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 32
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 33
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 34
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 35
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 36
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 38
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 40
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 43
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 44
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 45
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 47
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 48
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 49
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 50
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 51
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 52
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 53
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 54
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 55
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 56
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 57
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 3
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 4
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 5
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 7
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 8
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 9
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 10
    sget-object v1, Li/a;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 12
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 13
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 15
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 16
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    const/4 p2, 0x2

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 18
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 19
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    const/4 p2, 0x3

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-static {p2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object p2

    .line 21
    iget v0, p2, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 22
    iget p2, p2, Landroid/view/animation/Animation$Description;->value:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 2
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 3
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 4
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 3
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 4
    iget p1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 5
    iget p1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget p3, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    return-void
.end method
