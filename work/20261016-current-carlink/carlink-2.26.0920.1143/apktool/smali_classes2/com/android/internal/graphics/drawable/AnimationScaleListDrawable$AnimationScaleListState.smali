.class Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationScaleListState"
.end annotation


# instance fields
.field mAnimatableDrawableIndex:I

.field mStaticDrawableIndex:I

.field mThemeAttrs:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 6
    .line 7
    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 9
    .line 10
    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 17
    .line 18
    iget p2, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 19
    .line 20
    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 21
    .line 22
    iget p1, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 23
    .line 24
    iput p1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public addDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getCurrentDrawableIndexBasedOnScale()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 14
    .line 15
    return v0
.end method

.method public mutate()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$1;)V

    return-object v0
.end method
