.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "SourceFile"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 22

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
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v10, 0x0

    .line 12
    const/high16 v11, 0x40000000    # 2.0f

    .line 13
    .line 14
    if-ne v0, v11, :cond_1

    .line 15
    .line 16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v11, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v12, v10

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v12, 0x1

    .line 26
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    move v4, v10

    .line 31
    move v5, v4

    .line 32
    move v14, v5

    .line 33
    move v15, v14

    .line 34
    :goto_2
    const/4 v0, -0x1

    .line 35
    if-ge v14, v13, :cond_a

    .line 36
    .line 37
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    if-eq v1, v2, :cond_9

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v2, v1

    .line 60
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    if-ne v1, v0, :cond_3

    .line 65
    .line 66
    const/16 v16, 0x1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move/from16 v16, v10

    .line 70
    .line 71
    :goto_3
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    .line 73
    if-ne v1, v0, :cond_4

    .line 74
    .line 75
    const/16 v17, 0x1

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move/from16 v17, v10

    .line 79
    .line 80
    :goto_4
    if-eqz v12, :cond_6

    .line 81
    .line 82
    if-nez v16, :cond_5

    .line 83
    .line 84
    if-eqz v17, :cond_6

    .line 85
    .line 86
    :cond_5
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_6
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    move-object/from16 v0, p0

    .line 96
    .line 97
    move-object v1, v3

    .line 98
    move-object v9, v2

    .line 99
    move/from16 v2, p1

    .line 100
    .line 101
    move-object/from16 v20, v3

    .line 102
    .line 103
    move/from16 v3, v18

    .line 104
    .line 105
    move v11, v4

    .line 106
    move/from16 v4, p2

    .line 107
    .line 108
    move/from16 v21, v5

    .line 109
    .line 110
    move/from16 v5, v19

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 113
    .line 114
    .line 115
    if-eqz v12, :cond_7

    .line 116
    .line 117
    if-nez v16, :cond_7

    .line 118
    .line 119
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 124
    .line 125
    add-int/2addr v0, v1

    .line 126
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    add-int/2addr v0, v1

    .line 129
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const/high16 v2, -0x1000000

    .line 138
    .line 139
    and-int/2addr v1, v2

    .line 140
    or-int/2addr v1, v10

    .line 141
    move v15, v0

    .line 142
    goto :goto_5

    .line 143
    :cond_7
    move v1, v10

    .line 144
    :goto_5
    if-eqz v12, :cond_8

    .line 145
    .line 146
    if-nez v17, :cond_8

    .line 147
    .line 148
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    .line 154
    add-int/2addr v0, v2

    .line 155
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    .line 157
    add-int/2addr v0, v2

    .line 158
    move/from16 v2, v21

    .line 159
    .line 160
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeightAndState()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    shr-int/lit8 v2, v2, 0x10

    .line 169
    .line 170
    and-int/lit16 v2, v2, -0x100

    .line 171
    .line 172
    or-int/2addr v1, v2

    .line 173
    move v5, v0

    .line 174
    goto :goto_6

    .line 175
    :cond_8
    move/from16 v2, v21

    .line 176
    .line 177
    move v5, v2

    .line 178
    :goto_6
    invoke-static {v11, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 183
    .line 184
    const/high16 v11, 0x40000000    # 2.0f

    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_a
    move v11, v4

    .line 189
    move v2, v5

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    add-int/2addr v3, v1

    .line 199
    add-int/2addr v3, v15

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    add-int/2addr v4, v1

    .line 209
    add-int/2addr v4, v2

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eqz v3, :cond_b

    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    :cond_b
    invoke-static {v2, v7, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    shl-int/lit8 v3, v11, 0x10

    .line 253
    .line 254
    invoke-static {v1, v8, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    :goto_7
    if-ge v10, v1, :cond_e

    .line 268
    .line 269
    iget-object v2, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 282
    .line 283
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    .line 285
    if-ne v4, v0, :cond_c

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    sub-int/2addr v4, v5

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    sub-int/2addr v4, v5

    .line 301
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 302
    .line 303
    sub-int/2addr v4, v5

    .line 304
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 305
    .line 306
    sub-int/2addr v4, v5

    .line 307
    const/high16 v5, 0x40000000    # 2.0f

    .line 308
    .line 309
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    goto :goto_8

    .line 314
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    add-int/2addr v5, v4

    .line 323
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 324
    .line 325
    add-int/2addr v5, v4

    .line 326
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 327
    .line 328
    add-int/2addr v5, v4

    .line 329
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    .line 331
    invoke-static {v7, v5, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    :goto_8
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    .line 337
    if-ne v5, v0, :cond_d

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    sub-int/2addr v5, v9

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    sub-int/2addr v5, v9

    .line 353
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 354
    .line 355
    sub-int/2addr v5, v9

    .line 356
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 357
    .line 358
    sub-int/2addr v5, v3

    .line 359
    const/high16 v9, 0x40000000    # 2.0f

    .line 360
    .line 361
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    goto :goto_9

    .line 366
    :cond_d
    const/high16 v9, 0x40000000    # 2.0f

    .line 367
    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    add-int/2addr v11, v5

    .line 377
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 378
    .line 379
    add-int/2addr v11, v5

    .line 380
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 381
    .line 382
    add-int/2addr v11, v5

    .line 383
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    .line 385
    invoke-static {v8, v11, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    :goto_9
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    .line 399
    .line 400
    return-void
.end method
