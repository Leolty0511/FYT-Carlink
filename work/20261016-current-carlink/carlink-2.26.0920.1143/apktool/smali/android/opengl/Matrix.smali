.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTemp:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    sput-object v0, Landroid/opengl/Matrix;->sTemp:[F

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 7

    .line 1
    cmpl-float v0, p2, p3

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    cmpl-float v0, p5, p4

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    cmpl-float v0, p6, p7

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    cmpg-float v1, p6, v0

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    cmpg-float v1, p7, v0

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    sub-float v1, p3, p2

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    div-float v1, v2, v1

    .line 27
    .line 28
    sub-float v3, p5, p4

    .line 29
    .line 30
    div-float v3, v2, v3

    .line 31
    .line 32
    sub-float v4, p6, p7

    .line 33
    .line 34
    div-float/2addr v2, v4

    .line 35
    mul-float v4, p6, v1

    .line 36
    .line 37
    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    .line 39
    mul-float/2addr v4, v5

    .line 40
    mul-float v6, p6, v3

    .line 41
    .line 42
    mul-float/2addr v6, v5

    .line 43
    add-float/2addr p3, p2

    .line 44
    mul-float/2addr p3, v1

    .line 45
    add-float/2addr p5, p4

    .line 46
    mul-float/2addr p5, v3

    .line 47
    add-float p2, p7, p6

    .line 48
    .line 49
    mul-float/2addr p2, v2

    .line 50
    mul-float/2addr p7, p6

    .line 51
    mul-float/2addr p7, v2

    .line 52
    mul-float/2addr p7, v5

    .line 53
    add-int/lit8 p4, p1, 0x0

    .line 54
    .line 55
    aput v4, p0, p4

    .line 56
    .line 57
    add-int/lit8 p4, p1, 0x5

    .line 58
    .line 59
    aput v6, p0, p4

    .line 60
    .line 61
    add-int/lit8 p4, p1, 0x8

    .line 62
    .line 63
    aput p3, p0, p4

    .line 64
    .line 65
    add-int/lit8 p3, p1, 0x9

    .line 66
    .line 67
    aput p5, p0, p3

    .line 68
    .line 69
    add-int/lit8 p3, p1, 0xa

    .line 70
    .line 71
    aput p2, p0, p3

    .line 72
    .line 73
    add-int/lit8 p2, p1, 0xe

    .line 74
    .line 75
    aput p7, p0, p2

    .line 76
    .line 77
    add-int/lit8 p2, p1, 0xb

    .line 78
    .line 79
    const/high16 p3, -0x40800000    # -1.0f

    .line 80
    .line 81
    aput p3, p0, p2

    .line 82
    .line 83
    add-int/lit8 p2, p1, 0x1

    .line 84
    .line 85
    aput v0, p0, p2

    .line 86
    .line 87
    add-int/lit8 p2, p1, 0x2

    .line 88
    .line 89
    aput v0, p0, p2

    .line 90
    .line 91
    add-int/lit8 p2, p1, 0x3

    .line 92
    .line 93
    aput v0, p0, p2

    .line 94
    .line 95
    add-int/lit8 p2, p1, 0x4

    .line 96
    .line 97
    aput v0, p0, p2

    .line 98
    .line 99
    add-int/lit8 p2, p1, 0x6

    .line 100
    .line 101
    aput v0, p0, p2

    .line 102
    .line 103
    add-int/lit8 p2, p1, 0x7

    .line 104
    .line 105
    aput v0, p0, p2

    .line 106
    .line 107
    add-int/lit8 p2, p1, 0xc

    .line 108
    .line 109
    aput v0, p0, p2

    .line 110
    .line 111
    add-int/lit8 p2, p1, 0xd

    .line 112
    .line 113
    aput v0, p0, p2

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0xf

    .line 116
    .line 117
    aput v0, p0, p1

    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    const-string p1, "far <= 0.0f"

    .line 123
    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string/jumbo p1, "near <= 0.0f"

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string/jumbo p1, "near == far"

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string/jumbo p1, "top == bottom"

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string/jumbo p1, "left == right"

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public static invertM([FI[FI)Z
    .locals 37

    .line 1
    add-int/lit8 v0, p3, 0x0

    .line 2
    .line 3
    aget v0, p2, v0

    .line 4
    .line 5
    add-int/lit8 v1, p3, 0x1

    .line 6
    .line 7
    aget v1, p2, v1

    .line 8
    .line 9
    add-int/lit8 v2, p3, 0x2

    .line 10
    .line 11
    aget v2, p2, v2

    .line 12
    .line 13
    add-int/lit8 v3, p3, 0x3

    .line 14
    .line 15
    aget v3, p2, v3

    .line 16
    .line 17
    add-int/lit8 v4, p3, 0x4

    .line 18
    .line 19
    aget v4, p2, v4

    .line 20
    .line 21
    add-int/lit8 v5, p3, 0x5

    .line 22
    .line 23
    aget v5, p2, v5

    .line 24
    .line 25
    add-int/lit8 v6, p3, 0x6

    .line 26
    .line 27
    aget v6, p2, v6

    .line 28
    .line 29
    add-int/lit8 v7, p3, 0x7

    .line 30
    .line 31
    aget v7, p2, v7

    .line 32
    .line 33
    add-int/lit8 v8, p3, 0x8

    .line 34
    .line 35
    aget v8, p2, v8

    .line 36
    .line 37
    add-int/lit8 v9, p3, 0x9

    .line 38
    .line 39
    aget v9, p2, v9

    .line 40
    .line 41
    add-int/lit8 v10, p3, 0xa

    .line 42
    .line 43
    aget v10, p2, v10

    .line 44
    .line 45
    add-int/lit8 v11, p3, 0xb

    .line 46
    .line 47
    aget v11, p2, v11

    .line 48
    .line 49
    add-int/lit8 v12, p3, 0xc

    .line 50
    .line 51
    aget v12, p2, v12

    .line 52
    .line 53
    add-int/lit8 v13, p3, 0xd

    .line 54
    .line 55
    aget v13, p2, v13

    .line 56
    .line 57
    add-int/lit8 v14, p3, 0xe

    .line 58
    .line 59
    aget v14, p2, v14

    .line 60
    .line 61
    add-int/lit8 v15, p3, 0xf

    .line 62
    .line 63
    aget v15, p2, v15

    .line 64
    .line 65
    mul-float v16, v10, v15

    .line 66
    .line 67
    mul-float v17, v14, v11

    .line 68
    .line 69
    mul-float v18, v6, v15

    .line 70
    .line 71
    mul-float v19, v14, v7

    .line 72
    .line 73
    mul-float v20, v6, v11

    .line 74
    .line 75
    mul-float v21, v10, v7

    .line 76
    .line 77
    mul-float v22, v2, v15

    .line 78
    .line 79
    mul-float v23, v14, v3

    .line 80
    .line 81
    mul-float v24, v2, v11

    .line 82
    .line 83
    mul-float v25, v10, v3

    .line 84
    .line 85
    mul-float v26, v2, v7

    .line 86
    .line 87
    mul-float v27, v6, v3

    .line 88
    .line 89
    mul-float v28, v16, v5

    .line 90
    .line 91
    mul-float v29, v19, v9

    .line 92
    .line 93
    add-float v29, v29, v28

    .line 94
    .line 95
    mul-float v28, v20, v13

    .line 96
    .line 97
    add-float v28, v28, v29

    .line 98
    .line 99
    mul-float v29, v17, v5

    .line 100
    .line 101
    mul-float v30, v18, v9

    .line 102
    .line 103
    add-float v30, v30, v29

    .line 104
    .line 105
    mul-float v29, v21, v13

    .line 106
    .line 107
    add-float v29, v29, v30

    .line 108
    .line 109
    sub-float v28, v28, v29

    .line 110
    .line 111
    mul-float v29, v17, v1

    .line 112
    .line 113
    mul-float v30, v22, v9

    .line 114
    .line 115
    add-float v30, v30, v29

    .line 116
    .line 117
    mul-float v29, v25, v13

    .line 118
    .line 119
    add-float v29, v29, v30

    .line 120
    .line 121
    mul-float v30, v16, v1

    .line 122
    .line 123
    mul-float v31, v23, v9

    .line 124
    .line 125
    add-float v31, v31, v30

    .line 126
    .line 127
    mul-float v30, v24, v13

    .line 128
    .line 129
    add-float v30, v30, v31

    .line 130
    .line 131
    sub-float v29, v29, v30

    .line 132
    .line 133
    mul-float v30, v18, v1

    .line 134
    .line 135
    mul-float v31, v23, v5

    .line 136
    .line 137
    add-float v31, v31, v30

    .line 138
    .line 139
    mul-float v30, v26, v13

    .line 140
    .line 141
    add-float v30, v30, v31

    .line 142
    .line 143
    mul-float v31, v19, v1

    .line 144
    .line 145
    mul-float v32, v22, v5

    .line 146
    .line 147
    add-float v32, v32, v31

    .line 148
    .line 149
    mul-float v31, v27, v13

    .line 150
    .line 151
    add-float v31, v31, v32

    .line 152
    .line 153
    sub-float v30, v30, v31

    .line 154
    .line 155
    mul-float v31, v21, v1

    .line 156
    .line 157
    mul-float v32, v24, v5

    .line 158
    .line 159
    add-float v32, v32, v31

    .line 160
    .line 161
    mul-float v31, v27, v9

    .line 162
    .line 163
    add-float v31, v31, v32

    .line 164
    .line 165
    mul-float v32, v20, v1

    .line 166
    .line 167
    mul-float v33, v25, v5

    .line 168
    .line 169
    add-float v33, v33, v32

    .line 170
    .line 171
    mul-float v32, v26, v9

    .line 172
    .line 173
    add-float v32, v32, v33

    .line 174
    .line 175
    sub-float v31, v31, v32

    .line 176
    .line 177
    mul-float v32, v17, v4

    .line 178
    .line 179
    mul-float v33, v18, v8

    .line 180
    .line 181
    add-float v33, v33, v32

    .line 182
    .line 183
    mul-float v32, v21, v12

    .line 184
    .line 185
    add-float v32, v32, v33

    .line 186
    .line 187
    mul-float v33, v16, v4

    .line 188
    .line 189
    mul-float v34, v19, v8

    .line 190
    .line 191
    add-float v34, v34, v33

    .line 192
    .line 193
    mul-float v33, v20, v12

    .line 194
    .line 195
    add-float v33, v33, v34

    .line 196
    .line 197
    sub-float v32, v32, v33

    .line 198
    .line 199
    mul-float v16, v16, v0

    .line 200
    .line 201
    mul-float v33, v23, v8

    .line 202
    .line 203
    add-float v33, v33, v16

    .line 204
    .line 205
    mul-float v16, v24, v12

    .line 206
    .line 207
    add-float v16, v16, v33

    .line 208
    .line 209
    mul-float v17, v17, v0

    .line 210
    .line 211
    mul-float v33, v22, v8

    .line 212
    .line 213
    add-float v33, v33, v17

    .line 214
    .line 215
    mul-float v17, v25, v12

    .line 216
    .line 217
    add-float v17, v17, v33

    .line 218
    .line 219
    sub-float v16, v16, v17

    .line 220
    .line 221
    mul-float v19, v19, v0

    .line 222
    .line 223
    mul-float v22, v22, v4

    .line 224
    .line 225
    add-float v22, v22, v19

    .line 226
    .line 227
    mul-float v17, v27, v12

    .line 228
    .line 229
    add-float v17, v17, v22

    .line 230
    .line 231
    mul-float v18, v18, v0

    .line 232
    .line 233
    mul-float v23, v23, v4

    .line 234
    .line 235
    add-float v23, v23, v18

    .line 236
    .line 237
    mul-float v18, v26, v12

    .line 238
    .line 239
    add-float v18, v18, v23

    .line 240
    .line 241
    sub-float v17, v17, v18

    .line 242
    .line 243
    mul-float v20, v20, v0

    .line 244
    .line 245
    mul-float v25, v25, v4

    .line 246
    .line 247
    add-float v25, v25, v20

    .line 248
    .line 249
    mul-float v26, v26, v8

    .line 250
    .line 251
    add-float v26, v26, v25

    .line 252
    .line 253
    mul-float v21, v21, v0

    .line 254
    .line 255
    mul-float v24, v24, v4

    .line 256
    .line 257
    add-float v24, v24, v21

    .line 258
    .line 259
    mul-float v27, v27, v8

    .line 260
    .line 261
    add-float v27, v27, v24

    .line 262
    .line 263
    sub-float v26, v26, v27

    .line 264
    .line 265
    mul-float v18, v8, v13

    .line 266
    .line 267
    mul-float v19, v12, v9

    .line 268
    .line 269
    mul-float v20, v4, v13

    .line 270
    .line 271
    mul-float v21, v12, v5

    .line 272
    .line 273
    mul-float v22, v4, v9

    .line 274
    .line 275
    mul-float v23, v8, v5

    .line 276
    .line 277
    mul-float/2addr v13, v0

    .line 278
    mul-float v24, v12, v1

    .line 279
    .line 280
    mul-float/2addr v9, v0

    .line 281
    mul-float v25, v8, v1

    .line 282
    .line 283
    mul-float/2addr v5, v0

    .line 284
    mul-float/2addr v1, v4

    .line 285
    mul-float v27, v18, v7

    .line 286
    .line 287
    mul-float v33, v21, v11

    .line 288
    .line 289
    add-float v33, v33, v27

    .line 290
    .line 291
    mul-float v27, v22, v15

    .line 292
    .line 293
    add-float v27, v27, v33

    .line 294
    .line 295
    mul-float v33, v19, v7

    .line 296
    .line 297
    mul-float v34, v20, v11

    .line 298
    .line 299
    add-float v34, v34, v33

    .line 300
    .line 301
    mul-float v33, v23, v15

    .line 302
    .line 303
    add-float v33, v33, v34

    .line 304
    .line 305
    sub-float v27, v27, v33

    .line 306
    .line 307
    mul-float v33, v19, v3

    .line 308
    .line 309
    mul-float v34, v13, v11

    .line 310
    .line 311
    add-float v34, v34, v33

    .line 312
    .line 313
    mul-float v33, v25, v15

    .line 314
    .line 315
    add-float v33, v33, v34

    .line 316
    .line 317
    mul-float v34, v18, v3

    .line 318
    .line 319
    mul-float v35, v24, v11

    .line 320
    .line 321
    add-float v35, v35, v34

    .line 322
    .line 323
    mul-float v34, v9, v15

    .line 324
    .line 325
    add-float v34, v34, v35

    .line 326
    .line 327
    sub-float v33, v33, v34

    .line 328
    .line 329
    mul-float v34, v20, v3

    .line 330
    .line 331
    mul-float v35, v24, v7

    .line 332
    .line 333
    add-float v35, v35, v34

    .line 334
    .line 335
    mul-float v34, v5, v15

    .line 336
    .line 337
    add-float v34, v34, v35

    .line 338
    .line 339
    mul-float v35, v21, v3

    .line 340
    .line 341
    mul-float v36, v13, v7

    .line 342
    .line 343
    add-float v36, v36, v35

    .line 344
    .line 345
    mul-float/2addr v15, v1

    .line 346
    add-float v15, v15, v36

    .line 347
    .line 348
    sub-float v34, v34, v15

    .line 349
    .line 350
    mul-float v15, v23, v3

    .line 351
    .line 352
    mul-float v35, v9, v7

    .line 353
    .line 354
    add-float v35, v35, v15

    .line 355
    .line 356
    mul-float v15, v1, v11

    .line 357
    .line 358
    add-float v15, v15, v35

    .line 359
    .line 360
    mul-float v3, v3, v22

    .line 361
    .line 362
    mul-float v7, v7, v25

    .line 363
    .line 364
    add-float/2addr v7, v3

    .line 365
    mul-float/2addr v11, v5

    .line 366
    add-float/2addr v11, v7

    .line 367
    sub-float/2addr v15, v11

    .line 368
    mul-float v3, v20, v10

    .line 369
    .line 370
    mul-float v7, v23, v14

    .line 371
    .line 372
    add-float/2addr v7, v3

    .line 373
    mul-float v3, v19, v6

    .line 374
    .line 375
    add-float/2addr v3, v7

    .line 376
    mul-float v7, v22, v14

    .line 377
    .line 378
    mul-float v11, v18, v6

    .line 379
    .line 380
    add-float/2addr v11, v7

    .line 381
    mul-float v7, v21, v10

    .line 382
    .line 383
    add-float/2addr v7, v11

    .line 384
    sub-float/2addr v3, v7

    .line 385
    mul-float v7, v9, v14

    .line 386
    .line 387
    mul-float v18, v18, v2

    .line 388
    .line 389
    add-float v18, v18, v7

    .line 390
    .line 391
    mul-float v7, v24, v10

    .line 392
    .line 393
    add-float v7, v7, v18

    .line 394
    .line 395
    mul-float v11, v13, v10

    .line 396
    .line 397
    mul-float v18, v25, v14

    .line 398
    .line 399
    add-float v18, v18, v11

    .line 400
    .line 401
    mul-float v19, v19, v2

    .line 402
    .line 403
    add-float v19, v19, v18

    .line 404
    .line 405
    sub-float v7, v7, v19

    .line 406
    .line 407
    mul-float/2addr v13, v6

    .line 408
    mul-float v11, v1, v14

    .line 409
    .line 410
    add-float/2addr v11, v13

    .line 411
    mul-float v21, v21, v2

    .line 412
    .line 413
    add-float v21, v21, v11

    .line 414
    .line 415
    mul-float/2addr v14, v5

    .line 416
    mul-float v20, v20, v2

    .line 417
    .line 418
    add-float v20, v20, v14

    .line 419
    .line 420
    mul-float v24, v24, v6

    .line 421
    .line 422
    add-float v24, v24, v20

    .line 423
    .line 424
    sub-float v21, v21, v24

    .line 425
    .line 426
    mul-float/2addr v5, v10

    .line 427
    mul-float v22, v22, v2

    .line 428
    .line 429
    add-float v22, v22, v5

    .line 430
    .line 431
    mul-float v25, v25, v6

    .line 432
    .line 433
    add-float v25, v25, v22

    .line 434
    .line 435
    mul-float/2addr v9, v6

    .line 436
    mul-float/2addr v1, v10

    .line 437
    add-float/2addr v1, v9

    .line 438
    mul-float v23, v23, v2

    .line 439
    .line 440
    add-float v23, v23, v1

    .line 441
    .line 442
    sub-float v25, v25, v23

    .line 443
    .line 444
    mul-float v0, v0, v28

    .line 445
    .line 446
    mul-float v4, v4, v29

    .line 447
    .line 448
    add-float/2addr v4, v0

    .line 449
    mul-float v8, v8, v30

    .line 450
    .line 451
    add-float/2addr v8, v4

    .line 452
    mul-float v12, v12, v31

    .line 453
    .line 454
    add-float/2addr v12, v8

    .line 455
    const/4 v0, 0x0

    .line 456
    cmpl-float v0, v12, v0

    .line 457
    .line 458
    if-nez v0, :cond_0

    .line 459
    .line 460
    const/4 v0, 0x0

    .line 461
    return v0

    .line 462
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 463
    .line 464
    div-float/2addr v0, v12

    .line 465
    mul-float v28, v28, v0

    .line 466
    .line 467
    aput v28, p0, p1

    .line 468
    .line 469
    add-int/lit8 v1, p1, 0x1

    .line 470
    .line 471
    mul-float v29, v29, v0

    .line 472
    .line 473
    aput v29, p0, v1

    .line 474
    .line 475
    add-int/lit8 v1, p1, 0x2

    .line 476
    .line 477
    mul-float v30, v30, v0

    .line 478
    .line 479
    aput v30, p0, v1

    .line 480
    .line 481
    add-int/lit8 v1, p1, 0x3

    .line 482
    .line 483
    mul-float v31, v31, v0

    .line 484
    .line 485
    aput v31, p0, v1

    .line 486
    .line 487
    add-int/lit8 v1, p1, 0x4

    .line 488
    .line 489
    mul-float v32, v32, v0

    .line 490
    .line 491
    aput v32, p0, v1

    .line 492
    .line 493
    add-int/lit8 v1, p1, 0x5

    .line 494
    .line 495
    mul-float v16, v16, v0

    .line 496
    .line 497
    aput v16, p0, v1

    .line 498
    .line 499
    add-int/lit8 v1, p1, 0x6

    .line 500
    .line 501
    mul-float v17, v17, v0

    .line 502
    .line 503
    aput v17, p0, v1

    .line 504
    .line 505
    add-int/lit8 v1, p1, 0x7

    .line 506
    .line 507
    mul-float v26, v26, v0

    .line 508
    .line 509
    aput v26, p0, v1

    .line 510
    .line 511
    add-int/lit8 v1, p1, 0x8

    .line 512
    .line 513
    mul-float v27, v27, v0

    .line 514
    .line 515
    aput v27, p0, v1

    .line 516
    .line 517
    add-int/lit8 v1, p1, 0x9

    .line 518
    .line 519
    mul-float v33, v33, v0

    .line 520
    .line 521
    aput v33, p0, v1

    .line 522
    .line 523
    add-int/lit8 v1, p1, 0xa

    .line 524
    .line 525
    mul-float v34, v34, v0

    .line 526
    .line 527
    aput v34, p0, v1

    .line 528
    .line 529
    add-int/lit8 v1, p1, 0xb

    .line 530
    .line 531
    mul-float/2addr v15, v0

    .line 532
    aput v15, p0, v1

    .line 533
    .line 534
    add-int/lit8 v1, p1, 0xc

    .line 535
    .line 536
    mul-float/2addr v3, v0

    .line 537
    aput v3, p0, v1

    .line 538
    .line 539
    add-int/lit8 v1, p1, 0xd

    .line 540
    .line 541
    mul-float/2addr v7, v0

    .line 542
    aput v7, p0, v1

    .line 543
    .line 544
    add-int/lit8 v1, p1, 0xe

    .line 545
    .line 546
    mul-float v21, v21, v0

    .line 547
    .line 548
    aput v21, p0, v1

    .line 549
    .line 550
    add-int/lit8 v1, p1, 0xf

    .line 551
    .line 552
    mul-float v25, v25, v0

    .line 553
    .line 554
    aput v25, p0, v1

    .line 555
    .line 556
    const/4 v0, 0x1

    .line 557
    return v0
.end method

.method public static length(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p1, p0

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 7

    .line 1
    cmpl-float v0, p2, p3

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    cmpl-float v0, p4, p5

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    cmpl-float v0, p6, p7

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sub-float v0, p3, p2

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    div-float v0, v1, v0

    .line 18
    .line 19
    sub-float v2, p5, p4

    .line 20
    .line 21
    div-float v2, v1, v2

    .line 22
    .line 23
    sub-float v3, p7, p6

    .line 24
    .line 25
    div-float v3, v1, v3

    .line 26
    .line 27
    const/high16 v4, 0x40000000    # 2.0f

    .line 28
    .line 29
    mul-float v5, v0, v4

    .line 30
    .line 31
    mul-float/2addr v4, v2

    .line 32
    const/high16 v6, -0x40000000    # -2.0f

    .line 33
    .line 34
    mul-float/2addr v6, v3

    .line 35
    add-float/2addr p3, p2

    .line 36
    neg-float p2, p3

    .line 37
    mul-float/2addr p2, v0

    .line 38
    add-float/2addr p5, p4

    .line 39
    neg-float p3, p5

    .line 40
    mul-float/2addr p3, v2

    .line 41
    add-float/2addr p7, p6

    .line 42
    neg-float p4, p7

    .line 43
    mul-float/2addr p4, v3

    .line 44
    add-int/lit8 p5, p1, 0x0

    .line 45
    .line 46
    aput v5, p0, p5

    .line 47
    .line 48
    add-int/lit8 p5, p1, 0x5

    .line 49
    .line 50
    aput v4, p0, p5

    .line 51
    .line 52
    add-int/lit8 p5, p1, 0xa

    .line 53
    .line 54
    aput v6, p0, p5

    .line 55
    .line 56
    add-int/lit8 p5, p1, 0xc

    .line 57
    .line 58
    aput p2, p0, p5

    .line 59
    .line 60
    add-int/lit8 p2, p1, 0xd

    .line 61
    .line 62
    aput p3, p0, p2

    .line 63
    .line 64
    add-int/lit8 p2, p1, 0xe

    .line 65
    .line 66
    aput p4, p0, p2

    .line 67
    .line 68
    add-int/lit8 p2, p1, 0xf

    .line 69
    .line 70
    aput v1, p0, p2

    .line 71
    .line 72
    add-int/lit8 p2, p1, 0x1

    .line 73
    .line 74
    const/4 p3, 0x0

    .line 75
    aput p3, p0, p2

    .line 76
    .line 77
    add-int/lit8 p2, p1, 0x2

    .line 78
    .line 79
    aput p3, p0, p2

    .line 80
    .line 81
    add-int/lit8 p2, p1, 0x3

    .line 82
    .line 83
    aput p3, p0, p2

    .line 84
    .line 85
    add-int/lit8 p2, p1, 0x4

    .line 86
    .line 87
    aput p3, p0, p2

    .line 88
    .line 89
    add-int/lit8 p2, p1, 0x6

    .line 90
    .line 91
    aput p3, p0, p2

    .line 92
    .line 93
    add-int/lit8 p2, p1, 0x7

    .line 94
    .line 95
    aput p3, p0, p2

    .line 96
    .line 97
    add-int/lit8 p2, p1, 0x8

    .line 98
    .line 99
    aput p3, p0, p2

    .line 100
    .line 101
    add-int/lit8 p2, p1, 0x9

    .line 102
    .line 103
    aput p3, p0, p2

    .line 104
    .line 105
    add-int/lit8 p1, p1, 0xb

    .line 106
    .line 107
    aput p3, p0, p1

    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    const-string/jumbo p1, "near == far"

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p1, "bottom == top"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string/jumbo p1, "left == right"

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public static perspectiveM([FIFFFF)V
    .locals 4

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    double-to-float p2, v0

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    div-float p2, v0, p2

    .line 16
    .line 17
    sub-float v1, p4, p5

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    add-int/lit8 v1, p1, 0x0

    .line 21
    .line 22
    div-float p3, p2, p3

    .line 23
    .line 24
    aput p3, p0, v1

    .line 25
    .line 26
    add-int/lit8 p3, p1, 0x1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput v1, p0, p3

    .line 30
    .line 31
    add-int/lit8 p3, p1, 0x2

    .line 32
    .line 33
    aput v1, p0, p3

    .line 34
    .line 35
    add-int/lit8 p3, p1, 0x3

    .line 36
    .line 37
    aput v1, p0, p3

    .line 38
    .line 39
    add-int/lit8 p3, p1, 0x4

    .line 40
    .line 41
    aput v1, p0, p3

    .line 42
    .line 43
    add-int/lit8 p3, p1, 0x5

    .line 44
    .line 45
    aput p2, p0, p3

    .line 46
    .line 47
    add-int/lit8 p2, p1, 0x6

    .line 48
    .line 49
    aput v1, p0, p2

    .line 50
    .line 51
    add-int/lit8 p2, p1, 0x7

    .line 52
    .line 53
    aput v1, p0, p2

    .line 54
    .line 55
    add-int/lit8 p2, p1, 0x8

    .line 56
    .line 57
    aput v1, p0, p2

    .line 58
    .line 59
    add-int/lit8 p2, p1, 0x9

    .line 60
    .line 61
    aput v1, p0, p2

    .line 62
    .line 63
    add-int/lit8 p2, p1, 0xa

    .line 64
    .line 65
    add-float p3, p5, p4

    .line 66
    .line 67
    mul-float/2addr p3, v0

    .line 68
    aput p3, p0, p2

    .line 69
    .line 70
    add-int/lit8 p2, p1, 0xb

    .line 71
    .line 72
    const/high16 p3, -0x40800000    # -1.0f

    .line 73
    .line 74
    aput p3, p0, p2

    .line 75
    .line 76
    add-int/lit8 p2, p1, 0xc

    .line 77
    .line 78
    aput v1, p0, p2

    .line 79
    .line 80
    add-int/lit8 p2, p1, 0xd

    .line 81
    .line 82
    aput v1, p0, p2

    .line 83
    .line 84
    add-int/lit8 p2, p1, 0xe

    .line 85
    .line 86
    const/high16 p3, 0x40000000    # 2.0f

    .line 87
    .line 88
    mul-float/2addr p5, p3

    .line 89
    mul-float/2addr p5, p4

    .line 90
    mul-float/2addr p5, v0

    .line 91
    aput p5, p0, p2

    .line 92
    .line 93
    add-int/lit8 p1, p1, 0xf

    .line 94
    .line 95
    aput v1, p0, p1

    .line 96
    .line 97
    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 7

    .line 5
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v6

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 6
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/16 v1, 0x10

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, v6

    .line 7
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p2, 0x10

    .line 8
    invoke-static {v6, p2, p0, p1, p2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 9
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 7

    .line 1
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v6

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 2
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v6

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static scaleM([FIFFF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    .line 5
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    .line 6
    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x8

    .line 7
    aget v2, p0, v1

    mul-float/2addr v2, p4

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    .line 1
    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    .line 2
    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    .line 3
    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, 0xc

    .line 4
    aget v2, p2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x10

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    add-int v2, p1, v1

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput v3, p0, v2

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    add-int v1, p1, v0

    .line 18
    .line 19
    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    aput v3, p0, v1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x5

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 5

    .line 1
    sub-float/2addr p5, p2

    .line 2
    sub-float/2addr p6, p3

    .line 3
    sub-float/2addr p7, p4

    .line 4
    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    div-float v0, v1, v0

    .line 11
    .line 12
    mul-float/2addr p5, v0

    .line 13
    mul-float/2addr p6, v0

    .line 14
    mul-float/2addr p7, v0

    .line 15
    mul-float v0, p6, p10

    .line 16
    .line 17
    mul-float v2, p7, p9

    .line 18
    .line 19
    sub-float/2addr v0, v2

    .line 20
    mul-float v2, p7, p8

    .line 21
    .line 22
    mul-float/2addr p10, p5

    .line 23
    sub-float/2addr v2, p10

    .line 24
    mul-float/2addr p9, p5

    .line 25
    mul-float/2addr p8, p6

    .line 26
    sub-float/2addr p9, p8

    .line 27
    invoke-static {v0, v2, p9}, Landroid/opengl/Matrix;->length(FFF)F

    .line 28
    .line 29
    .line 30
    move-result p8

    .line 31
    div-float p8, v1, p8

    .line 32
    .line 33
    mul-float/2addr v0, p8

    .line 34
    mul-float/2addr v2, p8

    .line 35
    mul-float/2addr p9, p8

    .line 36
    mul-float p8, v2, p7

    .line 37
    .line 38
    mul-float p10, p9, p6

    .line 39
    .line 40
    sub-float/2addr p8, p10

    .line 41
    mul-float p10, p9, p5

    .line 42
    .line 43
    mul-float v3, v0, p7

    .line 44
    .line 45
    sub-float/2addr p10, v3

    .line 46
    mul-float v3, v0, p6

    .line 47
    .line 48
    mul-float v4, v2, p5

    .line 49
    .line 50
    sub-float/2addr v3, v4

    .line 51
    add-int/lit8 v4, p1, 0x0

    .line 52
    .line 53
    aput v0, p0, v4

    .line 54
    .line 55
    add-int/lit8 v0, p1, 0x1

    .line 56
    .line 57
    aput p8, p0, v0

    .line 58
    .line 59
    add-int/lit8 p8, p1, 0x2

    .line 60
    .line 61
    neg-float p5, p5

    .line 62
    aput p5, p0, p8

    .line 63
    .line 64
    add-int/lit8 p5, p1, 0x3

    .line 65
    .line 66
    const/4 p8, 0x0

    .line 67
    aput p8, p0, p5

    .line 68
    .line 69
    add-int/lit8 p5, p1, 0x4

    .line 70
    .line 71
    aput v2, p0, p5

    .line 72
    .line 73
    add-int/lit8 p5, p1, 0x5

    .line 74
    .line 75
    aput p10, p0, p5

    .line 76
    .line 77
    add-int/lit8 p5, p1, 0x6

    .line 78
    .line 79
    neg-float p6, p6

    .line 80
    aput p6, p0, p5

    .line 81
    .line 82
    add-int/lit8 p5, p1, 0x7

    .line 83
    .line 84
    aput p8, p0, p5

    .line 85
    .line 86
    add-int/lit8 p5, p1, 0x8

    .line 87
    .line 88
    aput p9, p0, p5

    .line 89
    .line 90
    add-int/lit8 p5, p1, 0x9

    .line 91
    .line 92
    aput v3, p0, p5

    .line 93
    .line 94
    add-int/lit8 p5, p1, 0xa

    .line 95
    .line 96
    neg-float p6, p7

    .line 97
    aput p6, p0, p5

    .line 98
    .line 99
    add-int/lit8 p5, p1, 0xb

    .line 100
    .line 101
    aput p8, p0, p5

    .line 102
    .line 103
    add-int/lit8 p5, p1, 0xc

    .line 104
    .line 105
    aput p8, p0, p5

    .line 106
    .line 107
    add-int/lit8 p5, p1, 0xd

    .line 108
    .line 109
    aput p8, p0, p5

    .line 110
    .line 111
    add-int/lit8 p5, p1, 0xe

    .line 112
    .line 113
    aput p8, p0, p5

    .line 114
    .line 115
    add-int/lit8 p5, p1, 0xf

    .line 116
    .line 117
    aput v1, p0, p5

    .line 118
    .line 119
    neg-float p2, p2

    .line 120
    neg-float p3, p3

    .line 121
    neg-float p4, p4

    .line 122
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 8

    .line 1
    const v0, 0x3c8efa35

    .line 2
    .line 3
    .line 4
    mul-float/2addr p2, v0

    .line 5
    mul-float/2addr p3, v0

    .line 6
    mul-float/2addr p4, v0

    .line 7
    float-to-double v0, p2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    double-to-float p2, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    float-to-double v1, p3

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    double-to-float p3, v3

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float v1, v1

    .line 29
    float-to-double v2, p4

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    double-to-float p4, v4

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float v3, p2, v1

    .line 41
    .line 42
    mul-float v4, v0, v1

    .line 43
    .line 44
    add-int/lit8 v5, p1, 0x0

    .line 45
    .line 46
    mul-float v6, p3, p4

    .line 47
    .line 48
    aput v6, p0, v5

    .line 49
    .line 50
    add-int/lit8 v5, p1, 0x1

    .line 51
    .line 52
    neg-float v6, p3

    .line 53
    mul-float/2addr v6, v2

    .line 54
    aput v6, p0, v5

    .line 55
    .line 56
    add-int/lit8 v5, p1, 0x2

    .line 57
    .line 58
    aput v1, p0, v5

    .line 59
    .line 60
    add-int/lit8 v1, p1, 0x3

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput v5, p0, v1

    .line 64
    .line 65
    add-int/lit8 v1, p1, 0x4

    .line 66
    .line 67
    mul-float v6, v3, p4

    .line 68
    .line 69
    mul-float v7, p2, v2

    .line 70
    .line 71
    add-float/2addr v7, v6

    .line 72
    aput v7, p0, v1

    .line 73
    .line 74
    add-int/lit8 v1, p1, 0x5

    .line 75
    .line 76
    neg-float v3, v3

    .line 77
    mul-float/2addr v3, v2

    .line 78
    mul-float v6, p2, p4

    .line 79
    .line 80
    add-float/2addr v6, v3

    .line 81
    aput v6, p0, v1

    .line 82
    .line 83
    add-int/lit8 v1, p1, 0x6

    .line 84
    .line 85
    neg-float v3, v0

    .line 86
    mul-float/2addr v3, p3

    .line 87
    aput v3, p0, v1

    .line 88
    .line 89
    add-int/lit8 v1, p1, 0x7

    .line 90
    .line 91
    aput v5, p0, v1

    .line 92
    .line 93
    add-int/lit8 v1, p1, 0x8

    .line 94
    .line 95
    neg-float v3, v4

    .line 96
    mul-float/2addr v3, p4

    .line 97
    mul-float v6, v0, v2

    .line 98
    .line 99
    add-float/2addr v6, v3

    .line 100
    aput v6, p0, v1

    .line 101
    .line 102
    add-int/lit8 v1, p1, 0x9

    .line 103
    .line 104
    mul-float/2addr v4, v2

    .line 105
    mul-float/2addr v0, p4

    .line 106
    add-float/2addr v0, v4

    .line 107
    aput v0, p0, v1

    .line 108
    .line 109
    add-int/lit8 p4, p1, 0xa

    .line 110
    .line 111
    mul-float/2addr p2, p3

    .line 112
    aput p2, p0, p4

    .line 113
    .line 114
    add-int/lit8 p2, p1, 0xb

    .line 115
    .line 116
    aput v5, p0, p2

    .line 117
    .line 118
    add-int/lit8 p2, p1, 0xc

    .line 119
    .line 120
    aput v5, p0, p2

    .line 121
    .line 122
    add-int/lit8 p2, p1, 0xd

    .line 123
    .line 124
    aput v5, p0, p2

    .line 125
    .line 126
    add-int/lit8 p2, p1, 0xe

    .line 127
    .line 128
    aput v5, p0, p2

    .line 129
    .line 130
    add-int/lit8 p1, p1, 0xf

    .line 131
    .line 132
    const/high16 p2, 0x3f800000    # 1.0f

    .line 133
    .line 134
    aput p2, p0, p1

    .line 135
    .line 136
    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 8

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v1, p0, v0

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x7

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    .line 10
    add-int/lit8 v0, p1, 0xb

    .line 11
    .line 12
    aput v1, p0, v0

    .line 13
    .line 14
    add-int/lit8 v0, p1, 0xc

    .line 15
    .line 16
    aput v1, p0, v0

    .line 17
    .line 18
    add-int/lit8 v0, p1, 0xd

    .line 19
    .line 20
    aput v1, p0, v0

    .line 21
    .line 22
    add-int/lit8 v0, p1, 0xe

    .line 23
    .line 24
    aput v1, p0, v0

    .line 25
    .line 26
    add-int/lit8 v0, p1, 0xf

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    aput v2, p0, v0

    .line 31
    .line 32
    const v0, 0x3c8efa35

    .line 33
    .line 34
    .line 35
    mul-float/2addr p2, v0

    .line 36
    float-to-double v3, p2

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    double-to-float p2, v5

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    double-to-float v0, v3

    .line 47
    cmpl-float v3, v2, p3

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    cmpl-float v3, v1, p4

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    cmpl-float v3, v1, p5

    .line 56
    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    add-int/lit8 p3, p1, 0x5

    .line 60
    .line 61
    aput v0, p0, p3

    .line 62
    .line 63
    add-int/lit8 p3, p1, 0xa

    .line 64
    .line 65
    aput v0, p0, p3

    .line 66
    .line 67
    add-int/lit8 p3, p1, 0x6

    .line 68
    .line 69
    aput p2, p0, p3

    .line 70
    .line 71
    add-int/lit8 p3, p1, 0x9

    .line 72
    .line 73
    neg-float p2, p2

    .line 74
    aput p2, p0, p3

    .line 75
    .line 76
    add-int/lit8 p2, p1, 0x1

    .line 77
    .line 78
    aput v1, p0, p2

    .line 79
    .line 80
    add-int/lit8 p2, p1, 0x2

    .line 81
    .line 82
    aput v1, p0, p2

    .line 83
    .line 84
    add-int/lit8 p2, p1, 0x4

    .line 85
    .line 86
    aput v1, p0, p2

    .line 87
    .line 88
    add-int/lit8 p2, p1, 0x8

    .line 89
    .line 90
    aput v1, p0, p2

    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x0

    .line 93
    .line 94
    aput v2, p0, p1

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_0
    cmpl-float v3, v1, p3

    .line 99
    .line 100
    if-nez v3, :cond_1

    .line 101
    .line 102
    cmpl-float v4, v2, p4

    .line 103
    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    cmpl-float v4, v1, p5

    .line 107
    .line 108
    if-nez v4, :cond_1

    .line 109
    .line 110
    add-int/lit8 p3, p1, 0x0

    .line 111
    .line 112
    aput v0, p0, p3

    .line 113
    .line 114
    add-int/lit8 p3, p1, 0xa

    .line 115
    .line 116
    aput v0, p0, p3

    .line 117
    .line 118
    add-int/lit8 p3, p1, 0x8

    .line 119
    .line 120
    aput p2, p0, p3

    .line 121
    .line 122
    add-int/lit8 p3, p1, 0x2

    .line 123
    .line 124
    neg-float p2, p2

    .line 125
    aput p2, p0, p3

    .line 126
    .line 127
    add-int/lit8 p2, p1, 0x1

    .line 128
    .line 129
    aput v1, p0, p2

    .line 130
    .line 131
    add-int/lit8 p2, p1, 0x4

    .line 132
    .line 133
    aput v1, p0, p2

    .line 134
    .line 135
    add-int/lit8 p2, p1, 0x6

    .line 136
    .line 137
    aput v1, p0, p2

    .line 138
    .line 139
    add-int/lit8 p2, p1, 0x9

    .line 140
    .line 141
    aput v1, p0, p2

    .line 142
    .line 143
    add-int/lit8 p1, p1, 0x5

    .line 144
    .line 145
    aput v2, p0, p1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_1
    if-nez v3, :cond_2

    .line 150
    .line 151
    cmpl-float v3, v1, p4

    .line 152
    .line 153
    if-nez v3, :cond_2

    .line 154
    .line 155
    cmpl-float v3, v2, p5

    .line 156
    .line 157
    if-nez v3, :cond_2

    .line 158
    .line 159
    add-int/lit8 p3, p1, 0x0

    .line 160
    .line 161
    aput v0, p0, p3

    .line 162
    .line 163
    add-int/lit8 p3, p1, 0x5

    .line 164
    .line 165
    aput v0, p0, p3

    .line 166
    .line 167
    add-int/lit8 p3, p1, 0x1

    .line 168
    .line 169
    aput p2, p0, p3

    .line 170
    .line 171
    add-int/lit8 p3, p1, 0x4

    .line 172
    .line 173
    neg-float p2, p2

    .line 174
    aput p2, p0, p3

    .line 175
    .line 176
    add-int/lit8 p2, p1, 0x2

    .line 177
    .line 178
    aput v1, p0, p2

    .line 179
    .line 180
    add-int/lit8 p2, p1, 0x6

    .line 181
    .line 182
    aput v1, p0, p2

    .line 183
    .line 184
    add-int/lit8 p2, p1, 0x8

    .line 185
    .line 186
    aput v1, p0, p2

    .line 187
    .line 188
    add-int/lit8 p2, p1, 0x9

    .line 189
    .line 190
    aput v1, p0, p2

    .line 191
    .line 192
    add-int/lit8 p1, p1, 0xa

    .line 193
    .line 194
    aput v2, p0, p1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_2
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    cmpl-float v3, v2, v1

    .line 202
    .line 203
    if-eqz v3, :cond_3

    .line 204
    .line 205
    div-float v1, v2, v1

    .line 206
    .line 207
    mul-float/2addr p3, v1

    .line 208
    mul-float/2addr p4, v1

    .line 209
    mul-float/2addr p5, v1

    .line 210
    :cond_3
    sub-float/2addr v2, v0

    .line 211
    mul-float v1, p3, p4

    .line 212
    .line 213
    mul-float v3, p4, p5

    .line 214
    .line 215
    mul-float v4, p5, p3

    .line 216
    .line 217
    mul-float v5, p3, p2

    .line 218
    .line 219
    mul-float v6, p4, p2

    .line 220
    .line 221
    mul-float/2addr p2, p5

    .line 222
    add-int/lit8 v7, p1, 0x0

    .line 223
    .line 224
    mul-float/2addr p3, p3

    .line 225
    mul-float/2addr p3, v2

    .line 226
    add-float/2addr p3, v0

    .line 227
    aput p3, p0, v7

    .line 228
    .line 229
    add-int/lit8 p3, p1, 0x4

    .line 230
    .line 231
    mul-float/2addr v1, v2

    .line 232
    sub-float v7, v1, p2

    .line 233
    .line 234
    aput v7, p0, p3

    .line 235
    .line 236
    add-int/lit8 p3, p1, 0x8

    .line 237
    .line 238
    mul-float/2addr v4, v2

    .line 239
    add-float v7, v4, v6

    .line 240
    .line 241
    aput v7, p0, p3

    .line 242
    .line 243
    add-int/lit8 p3, p1, 0x1

    .line 244
    .line 245
    add-float/2addr v1, p2

    .line 246
    aput v1, p0, p3

    .line 247
    .line 248
    add-int/lit8 p2, p1, 0x5

    .line 249
    .line 250
    mul-float/2addr p4, p4

    .line 251
    mul-float/2addr p4, v2

    .line 252
    add-float/2addr p4, v0

    .line 253
    aput p4, p0, p2

    .line 254
    .line 255
    add-int/lit8 p2, p1, 0x9

    .line 256
    .line 257
    mul-float/2addr v3, v2

    .line 258
    sub-float p3, v3, v5

    .line 259
    .line 260
    aput p3, p0, p2

    .line 261
    .line 262
    add-int/lit8 p2, p1, 0x2

    .line 263
    .line 264
    sub-float/2addr v4, v6

    .line 265
    aput v4, p0, p2

    .line 266
    .line 267
    add-int/lit8 p2, p1, 0x6

    .line 268
    .line 269
    add-float/2addr v3, v5

    .line 270
    aput v3, p0, p2

    .line 271
    .line 272
    add-int/lit8 p1, p1, 0xa

    .line 273
    .line 274
    mul-float/2addr p5, p5

    .line 275
    mul-float/2addr p5, v2

    .line 276
    add-float/2addr p5, v0

    .line 277
    aput p5, p0, p1

    .line 278
    .line 279
    :goto_0
    return-void
.end method

.method public static translateM([FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v2, v1, 0xc

    .line 3
    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v5, v4

    add-int/lit8 v1, v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    add-int v3, p3, v1

    .line 1
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int v3, p3, v0

    add-int/2addr v1, v2

    .line 2
    aget v4, p2, v3

    mul-float/2addr v4, p4

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v5, v4

    add-int/lit8 v4, v3, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    add-float/2addr v4, v5

    add-int/2addr v3, v2

    aget v3, p2, v3

    add-float/2addr v4, v3

    aput v4, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    mul-int/lit8 v1, v0, 0x4

    .line 6
    .line 7
    add-int/2addr v1, p3

    .line 8
    add-int v2, v0, p1

    .line 9
    .line 10
    aget v3, p2, v1

    .line 11
    .line 12
    aput v3, p0, v2

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x4

    .line 15
    .line 16
    add-int/2addr v2, p1

    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 18
    .line 19
    aget v3, p2, v3

    .line 20
    .line 21
    aput v3, p0, v2

    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x8

    .line 24
    .line 25
    add-int/2addr v2, p1

    .line 26
    add-int/lit8 v3, v1, 0x2

    .line 27
    .line 28
    aget v3, p2, v3

    .line 29
    .line 30
    aput v3, p0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v0, 0xc

    .line 33
    .line 34
    add-int/2addr v2, p1

    .line 35
    add-int/lit8 v1, v1, 0x3

    .line 36
    .line 37
    aget v1, p2, v1

    .line 38
    .line 39
    aput v1, p0, v2

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method
