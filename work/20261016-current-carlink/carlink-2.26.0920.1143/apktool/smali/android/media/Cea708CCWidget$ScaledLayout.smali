.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    if-eq v5, v6, :cond_1

    .line 27
    .line 28
    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 29
    .line 30
    array-length v6, v5

    .line 31
    if-lt v3, v6, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    aget-object v5, v5, v3

    .line 35
    .line 36
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    add-int/2addr v6, v0

    .line 39
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    add-int/2addr v5, v1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    int-to-float v6, v6

    .line 47
    int-to-float v5, v5

    .line 48
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 p4, 0x0

    .line 14
    :goto_0
    if-ge p4, p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 29
    .line 30
    aget-object v0, v0, p4

    .line 31
    .line 32
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    add-int/2addr v1, p1

    .line 35
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    add-int/2addr v2, p2

    .line 38
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    add-int/2addr v3, p1

    .line 41
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    add-int/2addr v0, p2

    .line 44
    invoke-virtual {p5, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int v3, v1, v3

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sub-int v4, v2, v4

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v4, v5

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    new-array v6, v5, [Landroid/graphics/Rect;

    .line 38
    .line 39
    iput-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    :goto_0
    if-ge v7, v5, :cond_7

    .line 43
    .line 44
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    instance-of v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 53
    .line 54
    if-eqz v10, :cond_6

    .line 55
    .line 56
    check-cast v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 57
    .line 58
    iget v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 59
    .line 60
    iget v11, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 61
    .line 62
    iget v12, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 63
    .line 64
    iget v9, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    cmpg-float v14, v10, v13

    .line 68
    .line 69
    if-ltz v14, :cond_5

    .line 70
    .line 71
    const/high16 v14, 0x3f800000    # 1.0f

    .line 72
    .line 73
    cmpl-float v15, v10, v14

    .line 74
    .line 75
    if-gtz v15, :cond_5

    .line 76
    .line 77
    cmpg-float v16, v11, v10

    .line 78
    .line 79
    if-ltz v16, :cond_4

    .line 80
    .line 81
    if-gtz v15, :cond_4

    .line 82
    .line 83
    cmpg-float v13, v9, v13

    .line 84
    .line 85
    if-ltz v13, :cond_3

    .line 86
    .line 87
    cmpl-float v13, v9, v14

    .line 88
    .line 89
    if-gtz v13, :cond_3

    .line 90
    .line 91
    cmpg-float v14, v9, v12

    .line 92
    .line 93
    if-ltz v14, :cond_2

    .line 94
    .line 95
    if-gtz v13, :cond_2

    .line 96
    .line 97
    iget-object v13, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 98
    .line 99
    new-instance v14, Landroid/graphics/Rect;

    .line 100
    .line 101
    int-to-float v15, v3

    .line 102
    mul-float v6, v12, v15

    .line 103
    .line 104
    float-to-int v6, v6

    .line 105
    move/from16 p2, v3

    .line 106
    .line 107
    int-to-float v3, v4

    .line 108
    move/from16 v16, v1

    .line 109
    .line 110
    mul-float v1, v10, v3

    .line 111
    .line 112
    float-to-int v1, v1

    .line 113
    move/from16 v17, v2

    .line 114
    .line 115
    mul-float v2, v9, v15

    .line 116
    .line 117
    float-to-int v2, v2

    .line 118
    move/from16 v18, v5

    .line 119
    .line 120
    mul-float v5, v11, v3

    .line 121
    .line 122
    float-to-int v5, v5

    .line 123
    invoke-direct {v14, v6, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    .line 125
    .line 126
    aput-object v14, v13, v7

    .line 127
    .line 128
    sub-float/2addr v9, v12

    .line 129
    mul-float/2addr v9, v15

    .line 130
    float-to-int v1, v9

    .line 131
    const/high16 v2, 0x40000000    # 2.0f

    .line 132
    .line 133
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-virtual {v8, v1, v6}, Landroid/view/View;->measure(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    iget-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 150
    .line 151
    aget-object v6, v6, v7

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-le v5, v6, :cond_1

    .line 158
    .line 159
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    iget-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 164
    .line 165
    aget-object v6, v6, v7

    .line 166
    .line 167
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    sub-int/2addr v5, v6

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    div-int/lit8 v5, v5, 0x2

    .line 175
    .line 176
    iget-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 177
    .line 178
    aget-object v6, v6, v7

    .line 179
    .line 180
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 181
    .line 182
    add-int/2addr v9, v5

    .line 183
    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    iget v12, v6, Landroid/graphics/Rect;->top:I

    .line 186
    .line 187
    sub-int/2addr v12, v5

    .line 188
    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    if-gez v12, :cond_0

    .line 191
    .line 192
    sub-int/2addr v9, v12

    .line 193
    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 194
    .line 195
    const/4 v5, 0x0

    .line 196
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 197
    .line 198
    :cond_0
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 199
    .line 200
    if-le v5, v4, :cond_1

    .line 201
    .line 202
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    sub-int/2addr v5, v4

    .line 205
    sub-int/2addr v9, v5

    .line 206
    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 209
    .line 210
    :cond_1
    sub-float/2addr v11, v10

    .line 211
    mul-float/2addr v11, v3

    .line 212
    float-to-int v3, v11

    .line 213
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v7, v7, 0x1

    .line 221
    .line 222
    move/from16 v3, p2

    .line 223
    .line 224
    move/from16 v1, v16

    .line 225
    .line 226
    move/from16 v2, v17

    .line 227
    .line 228
    move/from16 v5, v18

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 233
    .line 234
    const-string v2, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    .line 235
    .line 236
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v1

    .line 240
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 241
    .line 242
    const-string v2, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    .line 243
    .line 244
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v1

    .line 248
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 249
    .line 250
    const-string v2, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    .line 251
    .line 252
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v1

    .line 256
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 257
    .line 258
    const-string v2, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    .line 265
    .line 266
    const-string v2, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    .line 267
    .line 268
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v1

    .line 272
    :cond_7
    move/from16 v16, v1

    .line 273
    .line 274
    move/from16 v17, v2

    .line 275
    .line 276
    move v1, v5

    .line 277
    new-array v2, v1, [I

    .line 278
    .line 279
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 280
    .line 281
    const/4 v5, 0x0

    .line 282
    const/4 v6, 0x0

    .line 283
    :goto_1
    if-ge v5, v1, :cond_9

    .line 284
    .line 285
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-nez v7, :cond_8

    .line 294
    .line 295
    aput v6, v2, v6

    .line 296
    .line 297
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 298
    .line 299
    aget-object v7, v7, v5

    .line 300
    .line 301
    aput-object v7, v3, v6

    .line 302
    .line 303
    add-int/lit8 v6, v6, 0x1

    .line 304
    .line 305
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_9
    sget-object v1, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    invoke-static {v3, v5, v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 312
    .line 313
    .line 314
    move v1, v5

    .line 315
    :goto_2
    add-int/lit8 v7, v6, -0x1

    .line 316
    .line 317
    if-ge v1, v7, :cond_c

    .line 318
    .line 319
    add-int/lit8 v7, v1, 0x1

    .line 320
    .line 321
    move v8, v7

    .line 322
    :goto_3
    if-ge v8, v6, :cond_b

    .line 323
    .line 324
    aget-object v9, v3, v1

    .line 325
    .line 326
    aget-object v10, v3, v8

    .line 327
    .line 328
    invoke-static {v9, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-eqz v9, :cond_a

    .line 333
    .line 334
    aget v9, v2, v1

    .line 335
    .line 336
    aput v9, v2, v8

    .line 337
    .line 338
    aget-object v9, v3, v8

    .line 339
    .line 340
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 341
    .line 342
    aget-object v11, v3, v1

    .line 343
    .line 344
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 345
    .line 346
    iget v12, v9, Landroid/graphics/Rect;->right:I

    .line 347
    .line 348
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    add-int/2addr v13, v11

    .line 353
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    .line 355
    .line 356
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_b
    move v1, v7

    .line 360
    goto :goto_2

    .line 361
    :cond_c
    :goto_4
    if-ltz v7, :cond_f

    .line 362
    .line 363
    aget-object v1, v3, v7

    .line 364
    .line 365
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 366
    .line 367
    if-le v1, v4, :cond_e

    .line 368
    .line 369
    sub-int/2addr v1, v4

    .line 370
    move v6, v5

    .line 371
    :goto_5
    if-gt v6, v7, :cond_e

    .line 372
    .line 373
    aget v8, v2, v7

    .line 374
    .line 375
    aget v9, v2, v6

    .line 376
    .line 377
    if-ne v8, v9, :cond_d

    .line 378
    .line 379
    aget-object v8, v3, v6

    .line 380
    .line 381
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 382
    .line 383
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 384
    .line 385
    sub-int/2addr v10, v1

    .line 386
    iget v11, v8, Landroid/graphics/Rect;->right:I

    .line 387
    .line 388
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    .line 389
    .line 390
    sub-int/2addr v12, v1

    .line 391
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 392
    .line 393
    .line 394
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_e
    add-int/lit8 v7, v7, -0x1

    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_f
    move/from16 v1, v16

    .line 401
    .line 402
    move/from16 v6, v17

    .line 403
    .line 404
    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 405
    .line 406
    .line 407
    return-void
.end method
