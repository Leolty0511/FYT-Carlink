.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private mFromAlpha:F

.field private mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 9
    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 2
    .line 3
    iget v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 4
    .line 5
    sub-float/2addr v1, v0

    .line 6
    mul-float/2addr v1, p1

    .line 7
    add-float/2addr v1, v0

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
