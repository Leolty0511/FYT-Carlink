.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 10
    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const-string p3, ""

    const/16 p4, 0xf

    :goto_0
    if-ge v0, p2, :cond_4

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/16 v2, 0x35

    if-eq v1, v2, :cond_1

    const/16 v2, 0x36

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105016c

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    const p2, 0x105016d

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    const p2, 0x105016f

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const p2, 0x105016e

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 22
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 23
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p4

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    return-void
.end method

.method private computeMeasurements(I)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 12
    .line 13
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 17
    .line 18
    mul-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    add-int/2addr v2, v0

    .line 21
    sub-int v6, p1, v2

    .line 22
    .line 23
    if-gtz v6, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 28
    .line 29
    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 30
    .line 31
    new-instance p1, Landroid/text/StaticLayout;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    iget v8, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 40
    .line 41
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 42
    .line 43
    const/4 v10, 0x1

    .line 44
    move-object v3, p1

    .line 45
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 49
    .line 50
    return v1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 11
    .line 12
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 13
    .line 14
    add-int/2addr v3, v2

    .line 15
    int-to-float v3, v3

    .line 16
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 17
    .line 18
    int-to-float v4, v4

    .line 19
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 31
    .line 32
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 33
    .line 34
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x0

    .line 39
    if-lez v7, :cond_1

    .line 40
    .line 41
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 42
    .line 43
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    int-to-float v9, v9

    .line 48
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 49
    .line 50
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 54
    .line 55
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    .line 57
    .line 58
    move v10, v8

    .line 59
    :goto_0
    if-ge v10, v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineLeft(I)F

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    int-to-float v12, v2

    .line 66
    sub-float/2addr v11, v12

    .line 67
    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 68
    .line 69
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineRight(I)F

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    add-float/2addr v11, v12

    .line 74
    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    int-to-float v9, v9

    .line 83
    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 84
    .line 85
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    if-ne v2, v5, :cond_2

    .line 95
    .line 96
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 99
    .line 100
    .line 101
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    .line 105
    .line 106
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 107
    .line 108
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 112
    .line 113
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    .line 115
    .line 116
    move v2, v8

    .line 117
    :goto_1
    if-ge v2, v3, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0, p1, v2, v2}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v6, 0x2

    .line 126
    if-ne v2, v6, :cond_3

    .line 127
    .line 128
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 129
    .line 130
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 131
    .line 132
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 133
    .line 134
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 135
    .line 136
    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_3
    const/4 v6, 0x3

    .line 141
    if-eq v2, v6, :cond_4

    .line 142
    .line 143
    const/4 v7, 0x4

    .line 144
    if-ne v2, v7, :cond_9

    .line 145
    .line 146
    :cond_4
    if-ne v2, v6, :cond_5

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    move v5, v8

    .line 150
    :goto_2
    const/4 v2, -0x1

    .line 151
    if-eqz v5, :cond_6

    .line 152
    .line 153
    move v6, v2

    .line 154
    goto :goto_3

    .line 155
    :cond_6
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 156
    .line 157
    :goto_3
    if-eqz v5, :cond_7

    .line 158
    .line 159
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 160
    .line 161
    :cond_7
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 162
    .line 163
    const/high16 v7, 0x40000000    # 2.0f

    .line 164
    .line 165
    div-float/2addr v5, v7

    .line 166
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 167
    .line 168
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    .line 170
    .line 171
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 172
    .line 173
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    .line 175
    .line 176
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 177
    .line 178
    neg-float v9, v5

    .line 179
    invoke-virtual {v4, v7, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 180
    .line 181
    .line 182
    move v6, v8

    .line 183
    :goto_4
    if-ge v6, v3, :cond_8

    .line 184
    .line 185
    invoke-virtual {v0, p1, v6, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_8
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 192
    .line 193
    invoke-virtual {v4, v6, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_5
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 197
    .line 198
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    .line 200
    .line 201
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 202
    .line 203
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    .line 205
    .line 206
    move v2, v8

    .line 207
    :goto_6
    if-ge v2, v3, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0, p1, v2, v2}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_a
    const/4 v0, 0x0

    .line 216
    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    invoke-direct {p0, p4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 12
    .line 13
    iget p2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 14
    .line 15
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 16
    .line 17
    add-int/2addr p2, v0

    .line 18
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 19
    .line 20
    mul-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    add-int/2addr v0, p2

    .line 23
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    add-int/2addr p2, v0

    .line 28
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 33
    .line 34
    add-int/2addr p1, v0

    .line 35
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 36
    .line 37
    add-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/high16 p1, 0x1000000

    .line 43
    .line 44
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStyle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 16
    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    :goto_0
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 31
    .line 32
    :goto_1
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 44
    .line 45
    :goto_2
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 57
    .line 58
    :goto_3
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 70
    .line 71
    :goto_4
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    const/high16 v0, 0x3e000000    # 0.125f

    .line 17
    .line 18
    mul-float/2addr p1, v0

    .line 19
    const/high16 v0, 0x3f000000    # 0.5f

    .line 20
    .line 21
    add-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
