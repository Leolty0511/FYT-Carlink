.class Landroid/graphics/drawable/RippleDrawable$RippleState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleState"
.end annotation


# instance fields
.field mColor:Landroid/content/res/ColorStateList;

.field mMaxRadius:I

.field mTouchThemeAttrs:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    const p2, -0xff01

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    instance-of p2, p1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 24
    .line 25
    iget-object p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 26
    .line 27
    iput-object p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 28
    .line 29
    iget-object p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    iput-object p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    iget p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 34
    .line 35
    iput p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 36
    .line 37
    iget p2, p2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 38
    .line 39
    iget p3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 40
    .line 41
    if-eq p2, p3, :cond_0

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 44
    .line 45
    invoke-direct {p0, p1, p3}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    or-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V

    return-object v0
.end method

.method public onDensityChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
