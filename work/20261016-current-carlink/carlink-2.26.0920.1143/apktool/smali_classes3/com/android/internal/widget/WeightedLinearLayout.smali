.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mMajorWeightMax:F

.field private mMajorWeightMin:F

.field private mMinorWeightMax:F

.field private mMinorWeightMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    const/4 p2, 0x2

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ge v1, v0, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 47
    .line 48
    :goto_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget v0, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 54
    .line 55
    :goto_2
    const/high16 v8, -0x80000000

    .line 56
    .line 57
    if-ne v4, v8, :cond_4

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    mul-float/2addr v1, v7

    .line 61
    float-to-int v1, v1

    .line 62
    const/4 v4, 0x0

    .line 63
    cmpl-float v7, v7, v4

    .line 64
    .line 65
    if-lez v7, :cond_3

    .line 66
    .line 67
    if-ge p1, v1, :cond_3

    .line 68
    .line 69
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    :goto_3
    move v2, v3

    .line 74
    goto :goto_4

    .line 75
    :cond_3
    cmpl-float v0, v0, v4

    .line 76
    .line 77
    if-lez v0, :cond_4

    .line 78
    .line 79
    if-le p1, v1, :cond_4

    .line 80
    .line 81
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 87
    .line 88
    invoke-super {p0, v6, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method
