.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "\""

    .line 4
    .line 5
    const-string v3, " on View \""

    .line 6
    .line 7
    const-string v4, "CustomSupport"

    .line 8
    .line 9
    const-string/jumbo v0, "unable to interpolate strings "

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v7, "set"

    .line 19
    .line 20
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    :try_start_0
    sget-object v7, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    aget v7, v7, v8

    .line 45
    .line 46
    const/4 v8, 0x3

    .line 47
    const/4 v9, 0x2

    .line 48
    const-wide v10, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/high16 v12, 0x437f0000    # 255.0f

    .line 54
    .line 55
    const/4 v13, 0x1

    .line 56
    const/4 v14, 0x0

    .line 57
    packed-switch v7, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :pswitch_0
    new-array v0, v13, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v7, v0, v14

    .line 67
    .line 68
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-array v5, v13, [Ljava/lang/Object;

    .line 73
    .line 74
    aget v7, p2, v14

    .line 75
    .line 76
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    aput-object v7, v5, v14

    .line 81
    .line 82
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :pswitch_1
    new-array v0, v13, [Ljava/lang/Class;

    .line 88
    .line 89
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    aput-object v7, v0, v14

    .line 92
    .line 93
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-array v5, v13, [Ljava/lang/Object;

    .line 98
    .line 99
    aget v7, p2, v14

    .line 100
    .line 101
    const/high16 v8, 0x3f000000    # 0.5f

    .line 102
    .line 103
    cmpl-float v7, v7, v8

    .line 104
    .line 105
    if-lez v7, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move v13, v14

    .line 109
    :goto_0
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    aput-object v7, v5, v14

    .line 114
    .line 115
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :pswitch_2
    new-instance v5, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v5

    .line 142
    :pswitch_3
    new-array v0, v13, [Ljava/lang/Class;

    .line 143
    .line 144
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 145
    .line 146
    aput-object v7, v0, v14

    .line 147
    .line 148
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    aget v5, p2, v14

    .line 153
    .line 154
    float-to-double v14, v5

    .line 155
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 156
    .line 157
    .line 158
    move-result-wide v14

    .line 159
    double-to-float v5, v14

    .line 160
    mul-float/2addr v5, v12

    .line 161
    float-to-int v5, v5

    .line 162
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    aget v7, p2, v13

    .line 167
    .line 168
    float-to-double v13, v7

    .line 169
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 170
    .line 171
    .line 172
    move-result-wide v13

    .line 173
    double-to-float v7, v13

    .line 174
    mul-float/2addr v7, v12

    .line 175
    float-to-int v7, v7

    .line 176
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    aget v9, p2, v9

    .line 181
    .line 182
    float-to-double v13, v9

    .line 183
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    double-to-float v9, v9

    .line 188
    mul-float/2addr v9, v12

    .line 189
    float-to-int v9, v9

    .line 190
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    aget v8, p2, v8

    .line 195
    .line 196
    mul-float/2addr v8, v12

    .line 197
    float-to-int v8, v8

    .line 198
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    shl-int/lit8 v8, v8, 0x18

    .line 203
    .line 204
    shl-int/lit8 v5, v5, 0x10

    .line 205
    .line 206
    or-int/2addr v5, v8

    .line 207
    shl-int/lit8 v7, v7, 0x8

    .line 208
    .line 209
    or-int/2addr v5, v7

    .line 210
    or-int/2addr v5, v9

    .line 211
    const/4 v7, 0x1

    .line 212
    new-array v7, v7, [Ljava/lang/Object;

    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    const/4 v8, 0x0

    .line 219
    aput-object v5, v7, v8

    .line 220
    .line 221
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_4
    new-array v0, v13, [Ljava/lang/Class;

    .line 227
    .line 228
    const-class v7, Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    aput-object v7, v0, v8

    .line 232
    .line 233
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    aget v5, p2, v8

    .line 238
    .line 239
    float-to-double v7, v5

    .line 240
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 241
    .line 242
    .line 243
    move-result-wide v7

    .line 244
    double-to-float v5, v7

    .line 245
    mul-float/2addr v5, v12

    .line 246
    float-to-int v5, v5

    .line 247
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    const/4 v7, 0x1

    .line 252
    aget v7, p2, v7

    .line 253
    .line 254
    float-to-double v7, v7

    .line 255
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 256
    .line 257
    .line 258
    move-result-wide v7

    .line 259
    double-to-float v7, v7

    .line 260
    mul-float/2addr v7, v12

    .line 261
    float-to-int v7, v7

    .line 262
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    aget v8, p2, v9

    .line 267
    .line 268
    float-to-double v8, v8

    .line 269
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v8

    .line 273
    double-to-float v8, v8

    .line 274
    mul-float/2addr v8, v12

    .line 275
    float-to-int v8, v8

    .line 276
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    const/4 v9, 0x3

    .line 281
    aget v9, p2, v9

    .line 282
    .line 283
    mul-float/2addr v9, v12

    .line 284
    float-to-int v9, v9

    .line 285
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    shl-int/lit8 v9, v9, 0x18

    .line 290
    .line 291
    shl-int/lit8 v5, v5, 0x10

    .line 292
    .line 293
    or-int/2addr v5, v9

    .line 294
    shl-int/lit8 v7, v7, 0x8

    .line 295
    .line 296
    or-int/2addr v5, v7

    .line 297
    or-int/2addr v5, v8

    .line 298
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 299
    .line 300
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 304
    .line 305
    .line 306
    const/4 v5, 0x1

    .line 307
    new-array v5, v5, [Ljava/lang/Object;

    .line 308
    .line 309
    const/4 v8, 0x0

    .line 310
    aput-object v7, v5, v8

    .line 311
    .line 312
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    goto :goto_1

    .line 316
    :pswitch_5
    new-array v0, v13, [Ljava/lang/Class;

    .line 317
    .line 318
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 319
    .line 320
    const/4 v8, 0x0

    .line 321
    aput-object v7, v0, v8

    .line 322
    .line 323
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    new-array v5, v13, [Ljava/lang/Object;

    .line 328
    .line 329
    aget v7, p2, v8

    .line 330
    .line 331
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    aput-object v7, v5, v8

    .line 336
    .line 337
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :pswitch_6
    new-array v0, v13, [Ljava/lang/Class;

    .line 342
    .line 343
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 344
    .line 345
    const/4 v8, 0x0

    .line 346
    aput-object v7, v0, v8

    .line 347
    .line 348
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    new-array v5, v13, [Ljava/lang/Object;

    .line 353
    .line 354
    aget v7, p2, v8

    .line 355
    .line 356
    float-to-int v7, v7

    .line 357
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    aput-object v7, v5, v8

    .line 362
    .line 363
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :catch_1
    move-exception v0

    .line 373
    const-string v5, "cannot access method "

    .line 374
    .line 375
    invoke-static {v5, v6, v3}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 397
    .line 398
    .line 399
    goto :goto_1

    .line 400
    :catch_2
    move-exception v0

    .line 401
    const-string v5, "no method "

    .line 402
    .line 403
    invoke-static {v5, v6, v3}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    :goto_1
    return-void

    .line 428
    nop

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
