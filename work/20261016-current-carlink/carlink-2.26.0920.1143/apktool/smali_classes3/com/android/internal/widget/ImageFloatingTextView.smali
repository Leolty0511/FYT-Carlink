.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mBlockLayouts:Z

.field private mFirstMeasure:Z

.field private mIndentLines:I

.field private mLayoutMaxLines:I

.field private mMaxLinesForHeight:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 6
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mFirstMeasure:Z

    .line 8
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    return-void
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p7

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p7, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p7

    .line 15
    :cond_0
    if-nez p7, :cond_1

    .line 16
    .line 17
    const-string p7, ""

    .line 18
    .line 19
    :cond_1
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p7, v1, p2, v0, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    invoke-virtual {p1, p2, p4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 p4, 0x2

    .line 70
    invoke-virtual {p1, p4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget p4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 75
    .line 76
    if-lez p4, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    if-ltz p4, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const p4, 0x7fffffff

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p1, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 94
    .line 95
    .line 96
    iput p4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 97
    .line 98
    if-eqz p5, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-virtual {p4, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    const p4, 0x1050107

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    iget p4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 123
    .line 124
    const/4 p5, 0x0

    .line 125
    if-lez p4, :cond_5

    .line 126
    .line 127
    add-int/2addr p4, p2

    .line 128
    new-array p4, p4, [I

    .line 129
    .line 130
    :goto_1
    iget p6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 131
    .line 132
    if-ge v1, p6, :cond_6

    .line 133
    .line 134
    aput p3, p4, v1

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    move-object p4, p5

    .line 140
    :cond_6
    iget p3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 141
    .line 142
    if-ne p3, p2, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1, p4, p5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    invoke-virtual {p1, p5, p4}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-int/2addr v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 36
    .line 37
    if-eq v0, v2, :cond_1

    .line 38
    .line 39
    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 48
    .line 49
    iget v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 50
    .line 51
    if-eq v0, v2, :cond_1

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    .line 64
    .line 65
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 15
    .line 16
    iget p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setHasImage(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    return-void
.end method

.method public setNumIndentLines(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
