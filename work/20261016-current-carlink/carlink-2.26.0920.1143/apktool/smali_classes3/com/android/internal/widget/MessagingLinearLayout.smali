.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final NOT_MEASURED_BEFORE:I = -0x1


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mLastMeasuredWidth:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 6
    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    move v0, v1

    .line 19
    :goto_0
    if-ge v0, p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .line 4
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 5
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public getContractedChildId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 10

    .line 1
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2
    .line 3
    sub-int/2addr p4, p2

    .line 4
    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    .line 5
    .line 6
    sub-int/2addr p4, p2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget p5, p0, Landroid/view/View;->mPaddingTop:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v3, v0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v2, p3, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/16 v7, 0x8

    .line 38
    .line 39
    if-eq v6, v7, :cond_3

    .line 40
    .line 41
    iget-boolean v6, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ne p2, v0, :cond_1

    .line 55
    .line 56
    sub-int v8, p4, v6

    .line 57
    .line 58
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    .line 60
    sub-int/2addr v8, v9

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 63
    .line 64
    add-int/2addr v8, p1

    .line 65
    :goto_1
    if-nez v3, :cond_2

    .line 66
    .line 67
    iget v3, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 68
    .line 69
    add-int/2addr p5, v3

    .line 70
    :cond_2
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 71
    .line 72
    add-int/2addr p5, v3

    .line 73
    add-int/2addr v6, v8

    .line 74
    add-int v3, p5, v7

    .line 75
    .line 76
    invoke-virtual {v4, v8, p5, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 77
    .line 78
    .line 79
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    .line 81
    add-int/2addr v7, v3

    .line 82
    add-int/2addr v7, p5

    .line 83
    move v3, v1

    .line 84
    move p5, v7

    .line 85
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/4 p1, -0x1

    .line 89
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 90
    .line 91
    return-void
.end method

.method public onMeasure(II)V
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :goto_0
    move v9, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const v0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    const/4 v11, 0x1

    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v9, :cond_2

    .line 38
    .line 39
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 40
    .line 41
    if-eq v0, v10, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const/4 v13, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    :goto_2
    move v13, v11

    .line 47
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    if-eqz v13, :cond_9

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_4
    if-ge v0, v14, :cond_3

    .line 58
    .line 59
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 68
    .line 69
    iput-boolean v11, v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_3
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 75
    .line 76
    iget v1, v6, Landroid/view/View;->mPaddingBottom:I

    .line 77
    .line 78
    add-int/2addr v0, v1

    .line 79
    add-int/lit8 v1, v14, -0x1

    .line 80
    .line 81
    move v3, v0

    .line 82
    move v2, v1

    .line 83
    move v0, v11

    .line 84
    :goto_5
    if-ltz v2, :cond_9

    .line 85
    .line 86
    if-ge v3, v9, :cond_9

    .line 87
    .line 88
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ne v1, v5, :cond_4

    .line 97
    .line 98
    move/from16 v20, v2

    .line 99
    .line 100
    move/from16 v16, v10

    .line 101
    .line 102
    move v10, v5

    .line 103
    goto/16 :goto_9

    .line 104
    .line 105
    :cond_4
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v16

    .line 117
    move-object/from16 v11, v16

    .line 118
    .line 119
    check-cast v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 120
    .line 121
    instance-of v5, v1, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 122
    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    move-object v5, v1

    .line 126
    check-cast v5, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 127
    .line 128
    iget v15, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 129
    .line 130
    if-ne v15, v4, :cond_5

    .line 131
    .line 132
    const/4 v15, 0x3

    .line 133
    :cond_5
    invoke-virtual {v5, v15}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_6
    const/4 v5, 0x0

    .line 138
    :goto_6
    move-object v15, v5

    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 145
    .line 146
    move/from16 v17, v0

    .line 147
    .line 148
    :goto_7
    const/4 v5, 0x0

    .line 149
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 150
    .line 151
    sub-int v0, v3, v0

    .line 152
    .line 153
    iget v4, v6, Landroid/view/View;->mPaddingBottom:I

    .line 154
    .line 155
    sub-int/2addr v0, v4

    .line 156
    add-int v18, v0, v17

    .line 157
    .line 158
    move-object/from16 v0, p0

    .line 159
    .line 160
    move-object/from16 v19, v1

    .line 161
    .line 162
    move/from16 v20, v2

    .line 163
    .line 164
    move/from16 v2, p1

    .line 165
    .line 166
    move v4, v3

    .line 167
    move v3, v5

    .line 168
    move v5, v4

    .line 169
    move/from16 v4, p2

    .line 170
    .line 171
    move v12, v5

    .line 172
    move/from16 v16, v10

    .line 173
    .line 174
    const/16 v10, 0x8

    .line 175
    .line 176
    move/from16 v5, v18

    .line 177
    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int v3, v12, v0

    .line 186
    .line 187
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    .line 189
    add-int/2addr v3, v1

    .line 190
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 191
    .line 192
    add-int/2addr v3, v1

    .line 193
    add-int v3, v3, v17

    .line 194
    .line 195
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v15, :cond_8

    .line 200
    .line 201
    invoke-virtual {v15}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutHeight()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    add-int/2addr v3, v2

    .line 210
    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    add-int/2addr v2, v3

    .line 215
    if-ge v0, v2, :cond_8

    .line 216
    .line 217
    const/4 v0, 0x1

    .line 218
    goto :goto_8

    .line 219
    :cond_8
    const/4 v0, 0x0

    .line 220
    :goto_8
    if-gt v1, v9, :cond_a

    .line 221
    .line 222
    if-nez v0, :cond_a

    .line 223
    .line 224
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 226
    .line 227
    move v3, v1

    .line 228
    const/4 v0, 0x0

    .line 229
    :goto_9
    add-int/lit8 v2, v20, -0x1

    .line 230
    .line 231
    move v5, v10

    .line 232
    move/from16 v10, v16

    .line 233
    .line 234
    const/4 v4, 0x2

    .line 235
    const/4 v11, 0x1

    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :cond_9
    move/from16 v16, v10

    .line 239
    .line 240
    move v10, v5

    .line 241
    :cond_a
    iget v0, v6, Landroid/view/View;->mPaddingLeft:I

    .line 242
    .line 243
    iget v1, v6, Landroid/view/View;->mPaddingRight:I

    .line 244
    .line 245
    add-int/2addr v0, v1

    .line 246
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 247
    .line 248
    iget v2, v6, Landroid/view/View;->mPaddingTop:I

    .line 249
    .line 250
    iget v3, v6, Landroid/view/View;->mPaddingBottom:I

    .line 251
    .line 252
    add-int/2addr v2, v3

    .line 253
    move v3, v2

    .line 254
    const/4 v11, 0x1

    .line 255
    move v2, v1

    .line 256
    move v1, v0

    .line 257
    const/4 v0, 0x0

    .line 258
    :goto_a
    if-ge v0, v14, :cond_12

    .line 259
    .line 260
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 269
    .line 270
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    if-eq v12, v10, :cond_11

    .line 275
    .line 276
    iget-boolean v12, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 277
    .line 278
    if-eqz v12, :cond_b

    .line 279
    .line 280
    goto/16 :goto_f

    .line 281
    .line 282
    :cond_b
    instance-of v12, v4, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 283
    .line 284
    if-eqz v12, :cond_f

    .line 285
    .line 286
    move-object v12, v4

    .line 287
    check-cast v12, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 288
    .line 289
    const/4 v15, 0x2

    .line 290
    if-ne v2, v15, :cond_c

    .line 291
    .line 292
    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-le v10, v15, :cond_c

    .line 297
    .line 298
    const/4 v2, 0x3

    .line 299
    :cond_c
    const/4 v10, 0x0

    .line 300
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    invoke-virtual {v12, v15}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    .line 305
    .line 306
    .line 307
    move-result v15

    .line 308
    if-nez v15, :cond_e

    .line 309
    .line 310
    if-nez v13, :cond_d

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_d
    move/from16 v17, v9

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_e
    :goto_b
    iget v15, v6, Landroid/view/View;->mPaddingLeft:I

    .line 317
    .line 318
    iget v10, v6, Landroid/view/View;->mPaddingRight:I

    .line 319
    .line 320
    add-int/2addr v15, v10

    .line 321
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 322
    .line 323
    add-int/2addr v15, v10

    .line 324
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 325
    .line 326
    add-int/2addr v15, v10

    .line 327
    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 328
    .line 329
    invoke-static {v7, v15, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    sub-int v15, v9, v15

    .line 338
    .line 339
    move/from16 v17, v9

    .line 340
    .line 341
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 342
    .line 343
    invoke-static {v8, v15, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    invoke-virtual {v4, v10, v9}, Landroid/view/View;->measure(II)V

    .line 348
    .line 349
    .line 350
    :goto_c
    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    sub-int/2addr v2, v9

    .line 355
    goto :goto_d

    .line 356
    :cond_f
    move/from16 v17, v9

    .line 357
    .line 358
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 363
    .line 364
    add-int/2addr v9, v10

    .line 365
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 366
    .line 367
    add-int/2addr v9, v10

    .line 368
    iget v10, v6, Landroid/view/View;->mPaddingLeft:I

    .line 369
    .line 370
    add-int/2addr v9, v10

    .line 371
    iget v10, v6, Landroid/view/View;->mPaddingRight:I

    .line 372
    .line 373
    add-int/2addr v9, v10

    .line 374
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    add-int/2addr v4, v3

    .line 383
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 384
    .line 385
    add-int/2addr v4, v9

    .line 386
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 387
    .line 388
    add-int/2addr v4, v5

    .line 389
    if-eqz v11, :cond_10

    .line 390
    .line 391
    const/4 v5, 0x0

    .line 392
    goto :goto_e

    .line 393
    :cond_10
    iget v5, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 394
    .line 395
    :goto_e
    add-int/2addr v4, v5

    .line 396
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    const/4 v11, 0x0

    .line 401
    goto :goto_10

    .line 402
    :cond_11
    :goto_f
    move/from16 v17, v9

    .line 403
    .line 404
    :goto_10
    add-int/lit8 v0, v0, 0x1

    .line 405
    .line 406
    move/from16 v9, v17

    .line 407
    .line 408
    const/16 v10, 0x8

    .line 409
    .line 410
    goto/16 :goto_a

    .line 411
    .line 412
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {v0, v7}, Landroid/view/View;->resolveSize(II)I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    invoke-static {v1, v8}, Landroid/view/View;->resolveSize(II)I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 437
    .line 438
    .line 439
    move/from16 v0, v16

    .line 440
    .line 441
    iput v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 442
    .line 443
    return-void
.end method

.method public setContractedChildId(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return-void
.end method

.method public setNumIndentLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    return-void
.end method
