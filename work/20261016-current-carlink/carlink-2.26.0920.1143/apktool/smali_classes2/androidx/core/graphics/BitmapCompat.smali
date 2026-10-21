.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api31Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api19Impl;,
        Landroidx/core/graphics/BitmapCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 21
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-lez v1, :cond_23

    .line 10
    .line 11
    if-lez v2, :cond_23

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    if-ltz v4, :cond_0

    .line 24
    .line 25
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gt v4, v5, :cond_0

    .line 32
    .line 33
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gt v4, v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string/jumbo v1, "srcRect must be contained by srcBm!"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v5, 0x1b

    .line 58
    .line 59
    if-lt v4, v5, :cond_2

    .line 60
    .line 61
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v6, v0

    .line 67
    :goto_1
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    :goto_2
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    :goto_3
    int-to-float v9, v1

    .line 90
    int-to-float v10, v7

    .line 91
    div-float/2addr v9, v10

    .line 92
    int-to-float v10, v2

    .line 93
    int-to-float v11, v8

    .line 94
    div-float/2addr v10, v11

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    iget v12, v3, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    const/4 v12, 0x0

    .line 101
    :goto_4
    if-eqz v3, :cond_6

    .line 102
    .line 103
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    const/4 v3, 0x0

    .line 107
    :goto_5
    const/4 v13, 0x1

    .line 108
    if-nez v12, :cond_8

    .line 109
    .line 110
    if-nez v3, :cond_8

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-ne v1, v14, :cond_8

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-ne v2, v14, :cond_8

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    if-ne v0, v6, :cond_7

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_7
    return-object v6

    .line 142
    :cond_8
    new-instance v14, Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 148
    .line 149
    .line 150
    const/16 v15, 0x1d

    .line 151
    .line 152
    if-lt v4, v15, :cond_9

    .line 153
    .line 154
    invoke-static {v14}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    .line 159
    .line 160
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 161
    .line 162
    invoke-direct {v15, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    .line 167
    .line 168
    :goto_6
    if-ne v7, v1, :cond_a

    .line 169
    .line 170
    if-ne v8, v2, :cond_a

    .line 171
    .line 172
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Landroid/graphics/Canvas;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .line 184
    .line 185
    neg-int v2, v12

    .line 186
    int-to-float v2, v2

    .line 187
    neg-int v3, v3

    .line 188
    int-to-float v3, v3

    .line 189
    invoke-virtual {v1, v6, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_a
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 194
    .line 195
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    .line 196
    .line 197
    .line 198
    move-result-wide v16

    .line 199
    const/high16 v11, 0x3f800000    # 1.0f

    .line 200
    .line 201
    cmpl-float v15, v9, v11

    .line 202
    .line 203
    if-lez v15, :cond_b

    .line 204
    .line 205
    move-object/from16 p3, v14

    .line 206
    .line 207
    float-to-double v13, v9

    .line 208
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v13

    .line 212
    div-double v13, v13, v16

    .line 213
    .line 214
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    goto :goto_7

    .line 219
    :cond_b
    move-object/from16 p3, v14

    .line 220
    .line 221
    float-to-double v13, v9

    .line 222
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    .line 223
    .line 224
    .line 225
    move-result-wide v13

    .line 226
    div-double v13, v13, v16

    .line 227
    .line 228
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 229
    .line 230
    .line 231
    move-result-wide v13

    .line 232
    :goto_7
    double-to-int v9, v13

    .line 233
    cmpl-float v11, v10, v11

    .line 234
    .line 235
    if-lez v11, :cond_c

    .line 236
    .line 237
    float-to-double v10, v10

    .line 238
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v10

    .line 242
    div-double v10, v10, v16

    .line 243
    .line 244
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v10

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    float-to-double v10, v10

    .line 250
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 251
    .line 252
    .line 253
    move-result-wide v10

    .line 254
    div-double v10, v10, v16

    .line 255
    .line 256
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 257
    .line 258
    .line 259
    move-result-wide v10

    .line 260
    :goto_8
    double-to-int v10, v10

    .line 261
    if-eqz p4, :cond_f

    .line 262
    .line 263
    if-lt v4, v5, :cond_f

    .line 264
    .line 265
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_f

    .line 270
    .line 271
    const/4 v4, 0x1

    .line 272
    if-lez v9, :cond_d

    .line 273
    .line 274
    invoke-static {v7, v1, v4, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    goto :goto_9

    .line 279
    :cond_d
    move v11, v7

    .line 280
    :goto_9
    if-lez v10, :cond_e

    .line 281
    .line 282
    invoke-static {v8, v2, v4, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    goto :goto_a

    .line 287
    :cond_e
    move v13, v8

    .line 288
    :goto_a
    invoke-static {v11, v13, v0, v4}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    new-instance v13, Landroid/graphics/Canvas;

    .line 293
    .line 294
    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .line 296
    .line 297
    neg-int v12, v12

    .line 298
    int-to-float v12, v12

    .line 299
    neg-int v3, v3

    .line 300
    int-to-float v3, v3

    .line 301
    move-object/from16 v14, p3

    .line 302
    .line 303
    invoke-virtual {v13, v6, v12, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    move v13, v4

    .line 307
    const/4 v3, 0x0

    .line 308
    const/4 v12, 0x0

    .line 309
    move-object/from16 v20, v11

    .line 310
    .line 311
    move-object v11, v6

    .line 312
    move-object/from16 v6, v20

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_f
    move-object/from16 v14, p3

    .line 316
    .line 317
    const/4 v4, 0x1

    .line 318
    const/4 v11, 0x0

    .line 319
    const/4 v13, 0x0

    .line 320
    :goto_b
    new-instance v15, Landroid/graphics/Rect;

    .line 321
    .line 322
    invoke-direct {v15, v12, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    .line 324
    .line 325
    new-instance v3, Landroid/graphics/Rect;

    .line 326
    .line 327
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 328
    .line 329
    .line 330
    move v12, v9

    .line 331
    move/from16 v16, v10

    .line 332
    .line 333
    :goto_c
    if-nez v12, :cond_12

    .line 334
    .line 335
    if-eqz v16, :cond_10

    .line 336
    .line 337
    goto :goto_d

    .line 338
    :cond_10
    if-eq v11, v0, :cond_11

    .line 339
    .line 340
    if-eqz v11, :cond_11

    .line 341
    .line 342
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    .line 344
    .line 345
    :cond_11
    return-object v6

    .line 346
    :cond_12
    :goto_d
    if-gez v12, :cond_13

    .line 347
    .line 348
    add-int/lit8 v12, v12, 0x1

    .line 349
    .line 350
    goto :goto_e

    .line 351
    :cond_13
    if-lez v12, :cond_14

    .line 352
    .line 353
    add-int/lit8 v12, v12, -0x1

    .line 354
    .line 355
    :cond_14
    :goto_e
    if-gez v16, :cond_15

    .line 356
    .line 357
    add-int/lit8 v16, v16, 0x1

    .line 358
    .line 359
    goto :goto_f

    .line 360
    :cond_15
    if-lez v16, :cond_16

    .line 361
    .line 362
    add-int/lit8 v16, v16, -0x1

    .line 363
    .line 364
    :cond_16
    :goto_f
    move/from16 v4, v16

    .line 365
    .line 366
    invoke-static {v7, v1, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    move-object/from16 p3, v14

    .line 371
    .line 372
    invoke-static {v8, v2, v4, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 373
    .line 374
    .line 375
    move-result v14

    .line 376
    move-object/from16 v18, v15

    .line 377
    .line 378
    const/4 v15, 0x0

    .line 379
    invoke-virtual {v3, v15, v15, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 380
    .line 381
    .line 382
    if-nez v12, :cond_17

    .line 383
    .line 384
    if-nez v4, :cond_17

    .line 385
    .line 386
    const/4 v5, 0x1

    .line 387
    goto :goto_10

    .line 388
    :cond_17
    move v5, v15

    .line 389
    :goto_10
    if-eqz v11, :cond_18

    .line 390
    .line 391
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 392
    .line 393
    .line 394
    move-result v14

    .line 395
    if-ne v14, v1, :cond_18

    .line 396
    .line 397
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 398
    .line 399
    .line 400
    move-result v14

    .line 401
    if-ne v14, v2, :cond_18

    .line 402
    .line 403
    const/4 v14, 0x1

    .line 404
    goto :goto_11

    .line 405
    :cond_18
    move v14, v15

    .line 406
    :goto_11
    if-eqz v11, :cond_1c

    .line 407
    .line 408
    if-eq v11, v0, :cond_1c

    .line 409
    .line 410
    if-eqz p4, :cond_19

    .line 411
    .line 412
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 413
    .line 414
    move-object/from16 v19, v3

    .line 415
    .line 416
    const/16 v3, 0x1b

    .line 417
    .line 418
    if-lt v15, v3, :cond_1a

    .line 419
    .line 420
    invoke-static {v11}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_1d

    .line 425
    .line 426
    goto :goto_12

    .line 427
    :cond_19
    move-object/from16 v19, v3

    .line 428
    .line 429
    :cond_1a
    :goto_12
    if-eqz v5, :cond_1b

    .line 430
    .line 431
    if-eqz v14, :cond_1d

    .line 432
    .line 433
    if-eqz v13, :cond_1b

    .line 434
    .line 435
    goto :goto_13

    .line 436
    :cond_1b
    move-object v3, v11

    .line 437
    const/16 v15, 0x1b

    .line 438
    .line 439
    goto :goto_17

    .line 440
    :cond_1c
    move-object/from16 v19, v3

    .line 441
    .line 442
    :cond_1d
    :goto_13
    if-eq v11, v0, :cond_1e

    .line 443
    .line 444
    if-eqz v11, :cond_1e

    .line 445
    .line 446
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    .line 448
    .line 449
    :cond_1e
    if-lez v12, :cond_1f

    .line 450
    .line 451
    move v3, v13

    .line 452
    goto :goto_14

    .line 453
    :cond_1f
    move v3, v12

    .line 454
    :goto_14
    invoke-static {v7, v1, v3, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-lez v4, :cond_20

    .line 459
    .line 460
    move v11, v13

    .line 461
    goto :goto_15

    .line 462
    :cond_20
    move v11, v4

    .line 463
    :goto_15
    invoke-static {v8, v2, v11, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 468
    .line 469
    const/16 v15, 0x1b

    .line 470
    .line 471
    if-lt v14, v15, :cond_22

    .line 472
    .line 473
    if-eqz p4, :cond_21

    .line 474
    .line 475
    if-nez v5, :cond_21

    .line 476
    .line 477
    const/4 v5, 0x1

    .line 478
    goto :goto_16

    .line 479
    :cond_21
    const/4 v5, 0x0

    .line 480
    :goto_16
    invoke-static {v3, v11, v0, v5}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    goto :goto_17

    .line 485
    :cond_22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-static {v3, v11, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    :goto_17
    new-instance v5, Landroid/graphics/Canvas;

    .line 494
    .line 495
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v11, p3

    .line 499
    .line 500
    move-object/from16 v14, v18

    .line 501
    .line 502
    move-object/from16 v15, v19

    .line 503
    .line 504
    invoke-virtual {v5, v6, v14, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 508
    .line 509
    .line 510
    move/from16 v16, v4

    .line 511
    .line 512
    const/4 v4, 0x1

    .line 513
    const/16 v5, 0x1b

    .line 514
    .line 515
    move-object/from16 v20, v6

    .line 516
    .line 517
    move-object v6, v3

    .line 518
    move-object v3, v15

    .line 519
    move-object v15, v14

    .line 520
    move-object v14, v11

    .line 521
    move-object/from16 v11, v20

    .line 522
    .line 523
    goto/16 :goto_c

    .line 524
    .line 525
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 526
    .line 527
    const-string v1, "dstW and dstH must be > 0!"

    .line 528
    .line 529
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api19Impl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
