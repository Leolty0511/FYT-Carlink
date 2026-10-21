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

    const v0, 0x111009c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
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

    const/4 p3, 0x3

    .line 7
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    const/4 p3, 0x1

    .line 9
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    const/4 p3, 0x2

    .line 10
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    instance-of v4, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-boolean v4, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    .line 44
    .line 45
    sub-int/2addr v0, v4

    .line 46
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    .line 47
    .line 48
    sub-int/2addr v1, v4

    .line 49
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    .line 50
    .line 51
    sub-int/2addr v2, v4

    .line 52
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 53
    .line 54
    sub-int/2addr v3, v4

    .line 55
    const/4 v4, 0x0

    .line 56
    iput-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    .line 64
    .line 65
    add-int/2addr v0, v4

    .line 66
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    .line 67
    .line 68
    add-int/2addr v1, v4

    .line 69
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    .line 70
    .line 71
    add-int/2addr v2, v4

    .line 72
    iget v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    const/4 v4, 0x1

    .line 76
    iput-boolean v4, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 77
    .line 78
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-ne v4, v0, :cond_3

    .line 95
    .line 96
    if-ne v5, v1, :cond_3

    .line 97
    .line 98
    if-ne v6, v2, :cond_3

    .line 99
    .line 100
    if-eq v7, v3, :cond_4

    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
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
