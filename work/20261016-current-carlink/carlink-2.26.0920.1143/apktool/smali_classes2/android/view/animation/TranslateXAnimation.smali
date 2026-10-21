.class public Landroid/view/animation/TranslateXAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"


# instance fields
.field mTmpValues:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    return-void
.end method

.method public constructor <init>(IFIF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 11
    .line 12
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 13
    .line 14
    invoke-static {v1, v0, p1, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    aget v0, v0, v1

    .line 26
    .line 27
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
