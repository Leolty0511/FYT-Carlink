.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 26
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 27
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 28
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 30
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 31
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 32
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 35
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 36
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 37
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 38
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 39
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 40
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 41
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
    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

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
    .line 3
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 4
    .line 5
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 6
    .line 7
    cmpl-float v3, v0, v2

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v0, p1, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 16
    .line 17
    cmpl-float v3, v1, v2

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-static {v2, v1, p1, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 5
    .line 6
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 13
    .line 14
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 15
    .line 16
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 23
    .line 24
    iget p1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 25
    .line 26
    iget p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 27
    .line 28
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 33
    .line 34
    iget p1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 35
    .line 36
    iget p3, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 37
    .line 38
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 43
    .line 44
    return-void
.end method
