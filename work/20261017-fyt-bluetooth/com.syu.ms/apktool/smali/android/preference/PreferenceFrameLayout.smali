.class public Landroid/preference/PreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101041e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Li/a;->PreferenceFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 p3, 0x0

    mul-float/2addr p1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 6
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    const/4 p3, 0x2

    .line 8
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    const/4 p3, 0x3

    .line 9
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6
    instance-of v4, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 7
    iget-boolean v4, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v4, :cond_1

    .line 8
    iget-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v4, :cond_2

    .line 9
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v0, v4

    .line 10
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v1, v4

    .line 11
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v2, v4

    .line 12
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 13
    iput-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_1

    .line 14
    :cond_1
    iget-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v4, :cond_2

    .line 15
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v0, v4

    .line 16
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v1, v4

    .line 17
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v2, v4

    .line 18
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    .line 19
    iput-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    if-ne v4, v0, :cond_3

    if-ne v5, v1, :cond_3

    if-ne v6, v2, :cond_3

    if-eq v7, v3, :cond_4

    .line 24
    :cond_3
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
