.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    if-eq v2, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v8, v2

    .line 31
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    .line 33
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-ne v2, v4, :cond_0

    .line 37
    .line 38
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p0

    .line 49
    move v4, v0

    .line 50
    move v6, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 52
    .line 53
    .line 54
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    return v1
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v6, v4

    .line 14
    move-object v7, v6

    .line 15
    move v8, v5

    .line 16
    :goto_0
    const/16 v9, 0x8

    .line 17
    .line 18
    if-ge v8, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    if-ne v11, v9, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    sparse-switch v9, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    return v5

    .line 39
    :sswitch_0
    move-object v4, v10

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    if-eqz v7, :cond_1

    .line 42
    .line 43
    return v5

    .line 44
    :cond_1
    move-object v7, v10

    .line 45
    goto :goto_1

    .line 46
    :sswitch_2
    move-object v6, v10

    .line 47
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    add-int/2addr v13, v12

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    add-int/2addr v13, v12

    .line 81
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v4, v5

    .line 91
    :goto_2
    if-eqz v6, :cond_4

    .line 92
    .line 93
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    sub-int/2addr v14, v12

    .line 105
    add-int/2addr v13, v12

    .line 106
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    invoke-static {v4, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move v12, v5

    .line 116
    move v14, v12

    .line 117
    :goto_3
    if-eqz v7, :cond_6

    .line 118
    .line 119
    if-nez v8, :cond_5

    .line 120
    .line 121
    move v15, v5

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    sub-int v15, v10, v13

    .line 124
    .line 125
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    :goto_4
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    add-int/2addr v13, v15

    .line 141
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    goto :goto_5

    .line 150
    :cond_6
    const/4 v15, 0x0

    .line 151
    :goto_5
    sub-int/2addr v10, v13

    .line 152
    const/high16 v5, 0x40000000    # 2.0f

    .line 153
    .line 154
    if-eqz v6, :cond_8

    .line 155
    .line 156
    sub-int/2addr v13, v12

    .line 157
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-lez v14, :cond_7

    .line 162
    .line 163
    sub-int/2addr v10, v14

    .line 164
    add-int/2addr v12, v14

    .line 165
    :cond_7
    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    invoke-virtual {v6, v1, v12}, Landroid/view/View;->measure(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    add-int/2addr v13, v12

    .line 177
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    :cond_8
    if-eqz v7, :cond_9

    .line 186
    .line 187
    if-lez v10, :cond_9

    .line 188
    .line 189
    sub-int/2addr v13, v15

    .line 190
    add-int/2addr v15, v10

    .line 191
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-virtual {v7, v1, v6}, Landroid/view/View;->measure(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    add-int/2addr v13, v6

    .line 203
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    :cond_9
    const/4 v6, 0x0

    .line 212
    const/4 v7, 0x0

    .line 213
    :goto_6
    if-ge v6, v3, :cond_b

    .line 214
    .line 215
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-eq v10, v9, :cond_a

    .line 224
    .line 225
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    add-int/2addr v8, v6

    .line 245
    add-int/2addr v8, v7

    .line 246
    invoke-static {v8, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-static {v13, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 256
    .line 257
    .line 258
    if-eq v11, v5, :cond_c

    .line 259
    .line 260
    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 261
    .line 262
    .line 263
    :cond_c
    const/4 v1, 0x1

    .line 264
    return v1

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x10201d7 -> :sswitch_2
        0x1020206 -> :sswitch_1
        0x102020d -> :sswitch_1
        0x1020451 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v7, v6, Landroid/view/View;->mPaddingLeft:I

    .line 4
    .line 5
    sub-int v0, p4, p2

    .line 6
    .line 7
    iget v1, v6, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    sub-int v8, v0, v1

    .line 10
    .line 11
    sub-int/2addr v0, v7

    .line 12
    sub-int v9, v0, v1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getGravity()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    and-int/lit8 v2, v1, 0x70

    .line 27
    .line 28
    const v3, 0x800007

    .line 29
    .line 30
    .line 31
    and-int v11, v1, v3

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    if-eq v2, v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x50

    .line 38
    .line 39
    if-eq v2, v1, :cond_0

    .line 40
    .line 41
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v1, v6, Landroid/view/View;->mPaddingTop:I

    .line 45
    .line 46
    add-int v1, v1, p5

    .line 47
    .line 48
    sub-int v1, v1, p3

    .line 49
    .line 50
    sub-int v0, v1, v0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget v1, v6, Landroid/view/View;->mPaddingTop:I

    .line 54
    .line 55
    sub-int v2, p5, p3

    .line 56
    .line 57
    sub-int/2addr v2, v0

    .line 58
    div-int/lit8 v2, v2, 0x2

    .line 59
    .line 60
    add-int v0, v2, v1

    .line 61
    .line 62
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    move v12, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    move v12, v1

    .line 76
    :goto_1
    move v13, v2

    .line 77
    :goto_2
    if-ge v13, v10, :cond_8

    .line 78
    .line 79
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/16 v3, 0x8

    .line 90
    .line 91
    if-eq v2, v3, :cond_7

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v15, v2

    .line 106
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .line 108
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    .line 110
    if-gez v2, :cond_3

    .line 111
    .line 112
    move v2, v11

    .line 113
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    and-int/lit8 v2, v2, 0x7

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    if-eq v2, v3, :cond_5

    .line 125
    .line 126
    const/4 v3, 0x5

    .line 127
    if-eq v2, v3, :cond_4

    .line 128
    .line 129
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 130
    .line 131
    add-int/2addr v2, v7

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    sub-int v2, v8, v4

    .line 134
    .line 135
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    const/4 v2, 0x2

    .line 139
    invoke-static {v9, v4, v2, v7}, Landroid/app/m;->b(IIII)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    .line 145
    add-int/2addr v2, v3

    .line 146
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 147
    .line 148
    :goto_3
    sub-int/2addr v2, v3

    .line 149
    :goto_4
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    add-int/2addr v0, v12

    .line 156
    :cond_6
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 157
    .line 158
    add-int v16, v0, v3

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move/from16 v3, v16

    .line 163
    .line 164
    move v5, v14

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 166
    .line 167
    .line 168
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 169
    .line 170
    add-int/2addr v14, v0

    .line 171
    add-int v14, v14, v16

    .line 172
    .line 173
    move v0, v14

    .line 174
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
