.class public abstract Landroid/graphics/ColorSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Renderer;,
        Landroid/graphics/ColorSpace$Connector;,
        Landroid/graphics/ColorSpace$Rgb;,
        Landroid/graphics/ColorSpace$Lab;,
        Landroid/graphics/ColorSpace$Xyz;,
        Landroid/graphics/ColorSpace$Model;,
        Landroid/graphics/ColorSpace$Adaptation;,
        Landroid/graphics/ColorSpace$RenderIntent;,
        Landroid/graphics/ColorSpace$Named;
    }
.end annotation


# static fields
.field public static final ILLUMINANT_A:[F

.field public static final ILLUMINANT_B:[F

.field public static final ILLUMINANT_C:[F

.field public static final ILLUMINANT_D50:[F

.field private static final ILLUMINANT_D50_XYZ:[F

.field public static final ILLUMINANT_D55:[F

.field public static final ILLUMINANT_D60:[F

.field public static final ILLUMINANT_D65:[F

.field public static final ILLUMINANT_D75:[F

.field public static final ILLUMINANT_E:[F

.field public static final MAX_ID:I = 0x3f

.field public static final MIN_ID:I = -0x1

.field private static final NTSC_1953_PRIMARIES:[F

.field private static final SRGB_PRIMARIES:[F

.field private static final sNamedColorSpaces:[Landroid/graphics/ColorSpace;


# instance fields
.field private final mId:I

.field private final mModel:Landroid/graphics/ColorSpace$Model;

.field private final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_A:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_B:[F

    .line 15
    .line 16
    new-array v5, v0, [F

    .line 17
    .line 18
    fill-array-data v5, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    .line 22
    .line 23
    new-array v9, v0, [F

    .line 24
    .line 25
    fill-array-data v9, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v9, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 29
    .line 30
    new-array v1, v0, [F

    .line 31
    .line 32
    fill-array-data v1, :array_4

    .line 33
    .line 34
    .line 35
    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D55:[F

    .line 36
    .line 37
    new-array v1, v0, [F

    .line 38
    .line 39
    fill-array-data v1, :array_5

    .line 40
    .line 41
    .line 42
    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 43
    .line 44
    new-array v8, v0, [F

    .line 45
    .line 46
    fill-array-data v8, :array_6

    .line 47
    .line 48
    .line 49
    sput-object v8, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 50
    .line 51
    new-array v2, v0, [F

    .line 52
    .line 53
    fill-array-data v2, :array_7

    .line 54
    .line 55
    .line 56
    sput-object v2, Landroid/graphics/ColorSpace;->ILLUMINANT_D75:[F

    .line 57
    .line 58
    new-array v2, v0, [F

    .line 59
    .line 60
    fill-array-data v2, :array_8

    .line 61
    .line 62
    .line 63
    sput-object v2, Landroid/graphics/ColorSpace;->ILLUMINANT_E:[F

    .line 64
    .line 65
    const/4 v7, 0x6

    .line 66
    new-array v2, v7, [F

    .line 67
    .line 68
    fill-array-data v2, :array_9

    .line 69
    .line 70
    .line 71
    sput-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 72
    .line 73
    new-array v4, v7, [F

    .line 74
    .line 75
    fill-array-data v4, :array_a

    .line 76
    .line 77
    .line 78
    sput-object v4, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    .line 79
    .line 80
    const/4 v3, 0x3

    .line 81
    new-array v3, v3, [F

    .line 82
    .line 83
    fill-array-data v3, :array_b

    .line 84
    .line 85
    .line 86
    sput-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    .line 87
    .line 88
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    array-length v3, v3

    .line 93
    new-array v6, v3, [Landroid/graphics/ColorSpace;

    .line 94
    .line 95
    sput-object v6, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    .line 96
    .line 97
    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    new-instance v18, Landroid/graphics/ColorSpace$Rgb;

    .line 104
    .line 105
    const-string/jumbo v11, "sRGB IEC61966-2.1"

    .line 106
    .line 107
    .line 108
    new-instance v14, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 109
    .line 110
    const-wide v20, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    const-wide v22, 0x3faab1232f514a03L    # 0.05213270142180095

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const-wide v24, 0x3fb3d0722149b580L    # 0.07739938080495357

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    const-wide v26, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    const-wide v28, 0x4003333333333333L    # 2.4

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    move-object/from16 v19, v14

    .line 136
    .line 137
    invoke-direct/range {v19 .. v29}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    move-object/from16 v10, v18

    .line 147
    .line 148
    move-object v12, v2

    .line 149
    move-object v13, v8

    .line 150
    invoke-direct/range {v10 .. v16}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 151
    .line 152
    .line 153
    aput-object v18, v6, v17

    .line 154
    .line 155
    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 158
    .line 159
    .line 160
    move-result v20

    .line 161
    new-instance v21, Landroid/graphics/ColorSpace$Rgb;

    .line 162
    .line 163
    const-string/jumbo v11, "sRGB IEC61966-2.1 (Linear)"

    .line 164
    .line 165
    .line 166
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const/high16 v17, 0x3f800000    # 1.0f

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 173
    .line 174
    .line 175
    move-result v18

    .line 176
    const/16 v19, 0x0

    .line 177
    .line 178
    move-object/from16 v10, v21

    .line 179
    .line 180
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 181
    .line 182
    .line 183
    aput-object v21, v6, v20

    .line 184
    .line 185
    sget-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 188
    .line 189
    .line 190
    move-result v20

    .line 191
    new-instance v21, Landroid/graphics/ColorSpace$Rgb;

    .line 192
    .line 193
    const-string/jumbo v11, "scRGB-nl IEC 61966-2-2:2003"

    .line 194
    .line 195
    .line 196
    new-instance v14, Landroid/graphics/a;

    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    invoke-direct {v14, v10}, Landroid/graphics/a;-><init>(I)V

    .line 200
    .line 201
    .line 202
    new-instance v15, Landroid/graphics/a;

    .line 203
    .line 204
    const/4 v10, 0x1

    .line 205
    invoke-direct {v15, v10}, Landroid/graphics/a;-><init>(I)V

    .line 206
    .line 207
    .line 208
    const v16, -0x40b374bc    # -0.799f

    .line 209
    .line 210
    .line 211
    const v17, 0x40198937    # 2.399f

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result v18

    .line 218
    move-object/from16 v10, v21

    .line 219
    .line 220
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$1;)V

    .line 221
    .line 222
    .line 223
    aput-object v21, v6, v20

    .line 224
    .line 225
    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 228
    .line 229
    .line 230
    move-result v20

    .line 231
    new-instance v21, Landroid/graphics/ColorSpace$Rgb;

    .line 232
    .line 233
    const-string/jumbo v11, "scRGB IEC 61966-2-2:2003"

    .line 234
    .line 235
    .line 236
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 237
    .line 238
    const/high16 v16, -0x41000000    # -0.5f

    .line 239
    .line 240
    const v17, 0x40eff7cf    # 7.499f

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 244
    .line 245
    .line 246
    move-result v18

    .line 247
    move-object/from16 v10, v21

    .line 248
    .line 249
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 250
    .line 251
    .line 252
    aput-object v21, v6, v20

    .line 253
    .line 254
    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    new-instance v17, Landroid/graphics/ColorSpace$Rgb;

    .line 261
    .line 262
    const-string v11, "Rec. ITU-R BT.709-5"

    .line 263
    .line 264
    new-array v12, v7, [F

    .line 265
    .line 266
    fill-array-data v12, :array_c

    .line 267
    .line 268
    .line 269
    new-instance v14, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 270
    .line 271
    const-wide v19, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    const-wide v21, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    const-wide v23, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const-wide v25, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    const-wide v27, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    move-object/from16 v18, v14

    .line 297
    .line 298
    invoke-direct/range {v18 .. v28}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    const/16 v16, 0x0

    .line 306
    .line 307
    move-object/from16 v10, v17

    .line 308
    .line 309
    invoke-direct/range {v10 .. v16}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 310
    .line 311
    .line 312
    aput-object v17, v6, v3

    .line 313
    .line 314
    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    new-instance v17, Landroid/graphics/ColorSpace$Rgb;

    .line 321
    .line 322
    const-string v11, "Rec. ITU-R BT.2020-1"

    .line 323
    .line 324
    new-array v12, v7, [F

    .line 325
    .line 326
    fill-array-data v12, :array_d

    .line 327
    .line 328
    .line 329
    new-instance v14, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 330
    .line 331
    const-wide v19, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    const-wide v21, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    const-wide v25, 0x3fb4d9e83e425aeeL    # 0.08145

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    move-object/from16 v18, v14

    .line 347
    .line 348
    invoke-direct/range {v18 .. v28}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    move-object/from16 v10, v17

    .line 356
    .line 357
    invoke-direct/range {v10 .. v16}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 358
    .line 359
    .line 360
    aput-object v17, v6, v3

    .line 361
    .line 362
    sget-object v2, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    new-instance v20, Landroid/graphics/ColorSpace$Rgb;

    .line 369
    .line 370
    const-string v11, "SMPTE RP 431-2-2007 DCI (P3)"

    .line 371
    .line 372
    new-array v12, v7, [F

    .line 373
    .line 374
    fill-array-data v12, :array_e

    .line 375
    .line 376
    .line 377
    new-array v13, v0, [F

    .line 378
    .line 379
    fill-array-data v13, :array_f

    .line 380
    .line 381
    .line 382
    const-wide v14, 0x4004cccccccccccdL    # 2.6

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    const/16 v16, 0x0

    .line 388
    .line 389
    const/high16 v17, 0x3f800000    # 1.0f

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 392
    .line 393
    .line 394
    move-result v18

    .line 395
    const/16 v19, 0x0

    .line 396
    .line 397
    move-object/from16 v10, v20

    .line 398
    .line 399
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 400
    .line 401
    .line 402
    aput-object v20, v6, v3

    .line 403
    .line 404
    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    .line 411
    .line 412
    const-string v11, "Display P3"

    .line 413
    .line 414
    new-array v12, v7, [F

    .line 415
    .line 416
    fill-array-data v12, :array_10

    .line 417
    .line 418
    .line 419
    new-instance v24, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 420
    .line 421
    const-wide v14, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    const-wide v16, 0x3faab1232f514a03L    # 0.05213270142180095

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    const-wide v18, 0x3fb3d0722149b580L    # 0.07739938080495357

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    const-wide v20, 0x3fa3f7ced916872bL    # 0.039

    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    const-wide v22, 0x4003333333333333L    # 2.4

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    move-object/from16 v13, v24

    .line 447
    .line 448
    invoke-direct/range {v13 .. v23}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    const/16 v16, 0x0

    .line 456
    .line 457
    move-object v10, v3

    .line 458
    move-object v13, v8

    .line 459
    move-object/from16 v14, v24

    .line 460
    .line 461
    invoke-direct/range {v10 .. v16}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 462
    .line 463
    .line 464
    aput-object v3, v6, v2

    .line 465
    .line 466
    sget-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    new-instance v11, Landroid/graphics/ColorSpace$Rgb;

    .line 473
    .line 474
    const-string v3, "NTSC (1953)"

    .line 475
    .line 476
    new-instance v23, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 477
    .line 478
    const-wide v13, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    const-wide v15, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    const-wide v17, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    const-wide v19, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    const-wide v21, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    move-object/from16 v12, v23

    .line 504
    .line 505
    invoke-direct/range {v12 .. v22}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    const/4 v12, 0x0

    .line 513
    move-object v2, v11

    .line 514
    move-object/from16 v20, v6

    .line 515
    .line 516
    move-object/from16 v6, v23

    .line 517
    .line 518
    move v15, v7

    .line 519
    move v7, v0

    .line 520
    move-object v0, v8

    .line 521
    move-object v8, v12

    .line 522
    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 523
    .line 524
    .line 525
    aput-object v11, v20, v10

    .line 526
    .line 527
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    .line 528
    .line 529
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    .line 534
    .line 535
    const-string v11, "SMPTE-C RGB"

    .line 536
    .line 537
    new-array v12, v15, [F

    .line 538
    .line 539
    fill-array-data v12, :array_11

    .line 540
    .line 541
    .line 542
    new-instance v14, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 543
    .line 544
    const-wide v22, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    const-wide v24, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    const-wide v26, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    const-wide v28, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    const-wide v30, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    move-object/from16 v21, v14

    .line 570
    .line 571
    invoke-direct/range {v21 .. v31}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    const/16 v16, 0x0

    .line 579
    .line 580
    move-object v10, v4

    .line 581
    move-object v13, v0

    .line 582
    move v5, v15

    .line 583
    move v15, v2

    .line 584
    invoke-direct/range {v10 .. v16}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 585
    .line 586
    .line 587
    aput-object v4, v20, v3

    .line 588
    .line 589
    sget-object v2, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    .line 590
    .line 591
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    .line 596
    .line 597
    const-string v11, "Adobe RGB (1998)"

    .line 598
    .line 599
    new-array v12, v5, [F

    .line 600
    .line 601
    fill-array-data v12, :array_12

    .line 602
    .line 603
    .line 604
    const-wide v14, 0x400199999999999aL    # 2.2

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    const/16 v16, 0x0

    .line 610
    .line 611
    const/high16 v17, 0x3f800000    # 1.0f

    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 614
    .line 615
    .line 616
    move-result v18

    .line 617
    const/16 v19, 0x0

    .line 618
    .line 619
    move-object v10, v4

    .line 620
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 621
    .line 622
    .line 623
    aput-object v4, v20, v3

    .line 624
    .line 625
    sget-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    .line 632
    .line 633
    const-string v7, "ROMM RGB ISO 22028-2:2013"

    .line 634
    .line 635
    new-array v8, v5, [F

    .line 636
    .line 637
    fill-array-data v8, :array_13

    .line 638
    .line 639
    .line 640
    new-instance v10, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 641
    .line 642
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 643
    .line 644
    const-wide/16 v24, 0x0

    .line 645
    .line 646
    const-wide/high16 v26, 0x3fb0000000000000L    # 0.0625

    .line 647
    .line 648
    const-wide v28, 0x3f9fff79c842fa51L    # 0.031248

    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    const-wide v30, 0x3ffccccccccccccdL    # 1.8

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    move-object/from16 v21, v10

    .line 659
    .line 660
    invoke-direct/range {v21 .. v31}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    const/4 v12, 0x0

    .line 668
    move-object v6, v3

    .line 669
    invoke-direct/range {v6 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V

    .line 670
    .line 671
    .line 672
    aput-object v3, v20, v2

    .line 673
    .line 674
    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    .line 681
    .line 682
    const-string v11, "SMPTE ST 2065-1:2012 ACES"

    .line 683
    .line 684
    new-array v12, v5, [F

    .line 685
    .line 686
    fill-array-data v12, :array_14

    .line 687
    .line 688
    .line 689
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 690
    .line 691
    const v16, -0x38802000    # -65504.0f

    .line 692
    .line 693
    .line 694
    const v17, 0x477fe000    # 65504.0f

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 698
    .line 699
    .line 700
    move-result v18

    .line 701
    move-object v10, v3

    .line 702
    move-object v13, v1

    .line 703
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 704
    .line 705
    .line 706
    aput-object v3, v20, v2

    .line 707
    .line 708
    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    .line 715
    .line 716
    const-string v11, "Academy S-2014-004 ACEScg"

    .line 717
    .line 718
    new-array v12, v5, [F

    .line 719
    .line 720
    fill-array-data v12, :array_15

    .line 721
    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 724
    .line 725
    .line 726
    move-result v18

    .line 727
    move-object v10, v3

    .line 728
    invoke-direct/range {v10 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V

    .line 729
    .line 730
    .line 731
    aput-object v3, v20, v2

    .line 732
    .line 733
    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    new-instance v2, Landroid/graphics/ColorSpace$Xyz;

    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    const-string v3, "Generic XYZ"

    .line 746
    .line 747
    const/4 v4, 0x0

    .line 748
    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V

    .line 749
    .line 750
    .line 751
    aput-object v2, v20, v1

    .line 752
    .line 753
    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 754
    .line 755
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    new-instance v2, Landroid/graphics/ColorSpace$Lab;

    .line 760
    .line 761
    const-string v3, "Generic L*a*b*"

    .line 762
    .line 763
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V

    .line 768
    .line 769
    .line 770
    aput-object v2, v20, v1

    .line 771
    .line 772
    return-void

    .line 773
    :array_0
    .array-data 4
        0x3ee527e5    # 0.44757f
        0x3ed09d49    # 0.40745f
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_1
    .array-data 4
        0x3eb2641b    # 0.34842f
        0x3eb4063a    # 0.35161f
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_2
    .array-data 4
        0x3e9ec02f    # 0.31006f
        0x3ea1dfb9    # 0.31616f
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_3
    .array-data 4
        0x3eb0fba9
        0x3eb78d50    # 0.3585f
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_4
    .array-data 4
        0x3eaa32f4    # 0.33242f
        0x3eb1e258    # 0.34743f
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :array_5
    .array-data 4
        0x3ea4b33e    # 0.32168f
        0x3eace315    # 0.33767f
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_6
    .array-data 4
        0x3ea01b86
        0x3ea8754f    # 0.32902f
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_7
    .array-data 4
        0x3e991926    # 0.29902f
        0x3ea13405    # 0.31485f
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_8
    .array-data 4
        0x3eaaaa3b    # 0.33333f
        0x3eaaaa3b    # 0.33333f
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_9
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_a
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :array_b
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :array_c
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_d
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    :array_e
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_f
    .array-data 4
        0x3ea0c49c    # 0.314f
        0x3eb3b646    # 0.351f
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :array_10
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_11
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_12
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :array_13
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    :array_14
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :array_15
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_0

    .line 4
    iput-object p1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 6
    iput p3, p0, Landroid/graphics/ColorSpace;->mId:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The id must be between -1 and 63"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A color space must have a model"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method public static synthetic a(D)D
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->lambda$static$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static absRcpResponse(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static absResponse(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1100()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    return-object v0
.end method

.method public static synthetic access$1200([F)[F
    .locals 0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300([F[F)[F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    return-object v0
.end method

.method public static synthetic access$1500([F[F)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    return-object v0
.end method

.method public static synthetic access$1700(DDDDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->response(DDDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1800(DDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1900(DDDDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$2000(DDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$2100([F)[F
    .locals 0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600([F[F)[F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2700([F[F[F)[F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800([F[F)[F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900([F)V
    .locals 0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToUv([F)V

    return-void
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_2

    .line 3
    move-object v0, p0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 4
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 5
    :cond_0
    array-length p0, p1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 6
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object p0

    .line 7
    :goto_0
    iget-object p2, p2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 8
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v1

    .line 9
    invoke-static {p2, v1, p0}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object p0

    .line 10
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object p2

    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object p0

    .line 11
    new-instance p2, Landroid/graphics/ColorSpace$Rgb;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$1;)V

    return-object p2

    :cond_2
    return-object p0
.end method

.method public static synthetic b(D)D
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->lambda$static$1(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static chromaticAdaptation([F[F[F)[F
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v2, p2, v1

    .line 14
    .line 15
    aget v3, p1, v1

    .line 16
    .line 17
    div-float/2addr v2, v3

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    aget v2, p2, v1

    .line 22
    .line 23
    aget v3, p1, v1

    .line 24
    .line 25
    div-float/2addr v2, v3

    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    aget p2, p2, v1

    .line 30
    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    div-float/2addr p2, p1

    .line 34
    aput p2, v0, v1

    .line 35
    .line 36
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p0}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p1, p0}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private static compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1
    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v3, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    sub-double/2addr v1, v3

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    sub-double/2addr v1, v5

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    sub-double/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    sub-double/2addr v1, v5

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    sub-double/2addr v1, v5

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    sub-double/2addr v1, v5

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide p0, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    sub-double/2addr v1, p0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static compare([F[F)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 9
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 10
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1

    .line 6
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p0

    return-object p0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 9
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p0

    return-object p0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static createRenderer()Landroid/graphics/ColorSpace$Renderer;
    .locals 2

    new-instance v0, Landroid/graphics/ColorSpace$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/ColorSpace$Renderer;-><init>(Landroid/graphics/ColorSpace$1;)V

    return-object v0
.end method

.method public static get(I)Landroid/graphics/ColorSpace;
    .locals 3

    if-ltz p0, :cond_0

    .line 1
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    aget-object p0, v0, p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid ID, must be in the range [0.."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    const-string v2, "]"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;
    .locals 1

    .line 10
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static inverse3x3([F)[F
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    aget v4, v0, v3

    .line 8
    .line 9
    const/4 v5, 0x6

    .line 10
    aget v6, v0, v5

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    aget v8, v0, v7

    .line 14
    .line 15
    const/4 v9, 0x4

    .line 16
    aget v10, v0, v9

    .line 17
    .line 18
    const/4 v11, 0x7

    .line 19
    aget v12, v0, v11

    .line 20
    .line 21
    const/4 v13, 0x2

    .line 22
    aget v14, v0, v13

    .line 23
    .line 24
    const/4 v15, 0x5

    .line 25
    aget v16, v0, v15

    .line 26
    .line 27
    const/16 v17, 0x8

    .line 28
    .line 29
    aget v18, v0, v17

    .line 30
    .line 31
    mul-float v19, v10, v18

    .line 32
    .line 33
    mul-float v20, v12, v16

    .line 34
    .line 35
    sub-float v19, v19, v20

    .line 36
    .line 37
    mul-float v20, v12, v14

    .line 38
    .line 39
    mul-float v21, v8, v18

    .line 40
    .line 41
    sub-float v20, v20, v21

    .line 42
    .line 43
    mul-float v21, v8, v16

    .line 44
    .line 45
    mul-float v22, v10, v14

    .line 46
    .line 47
    sub-float v21, v21, v22

    .line 48
    .line 49
    mul-float v22, v2, v19

    .line 50
    .line 51
    mul-float v23, v4, v20

    .line 52
    .line 53
    add-float v23, v23, v22

    .line 54
    .line 55
    mul-float v22, v6, v21

    .line 56
    .line 57
    add-float v22, v22, v23

    .line 58
    .line 59
    array-length v0, v0

    .line 60
    new-array v0, v0, [F

    .line 61
    .line 62
    div-float v19, v19, v22

    .line 63
    .line 64
    aput v19, v0, v1

    .line 65
    .line 66
    div-float v20, v20, v22

    .line 67
    .line 68
    aput v20, v0, v7

    .line 69
    .line 70
    div-float v21, v21, v22

    .line 71
    .line 72
    aput v21, v0, v13

    .line 73
    .line 74
    mul-float v1, v6, v16

    .line 75
    .line 76
    mul-float v7, v4, v18

    .line 77
    .line 78
    sub-float/2addr v1, v7

    .line 79
    div-float v1, v1, v22

    .line 80
    .line 81
    aput v1, v0, v3

    .line 82
    .line 83
    mul-float v18, v18, v2

    .line 84
    .line 85
    mul-float v1, v6, v14

    .line 86
    .line 87
    sub-float v18, v18, v1

    .line 88
    .line 89
    div-float v18, v18, v22

    .line 90
    .line 91
    aput v18, v0, v9

    .line 92
    .line 93
    mul-float/2addr v14, v4

    .line 94
    mul-float v16, v16, v2

    .line 95
    .line 96
    sub-float v14, v14, v16

    .line 97
    .line 98
    div-float v14, v14, v22

    .line 99
    .line 100
    aput v14, v0, v15

    .line 101
    .line 102
    mul-float v1, v4, v12

    .line 103
    .line 104
    mul-float v3, v6, v10

    .line 105
    .line 106
    sub-float/2addr v1, v3

    .line 107
    div-float v1, v1, v22

    .line 108
    .line 109
    aput v1, v0, v5

    .line 110
    .line 111
    mul-float/2addr v6, v8

    .line 112
    mul-float/2addr v12, v2

    .line 113
    sub-float/2addr v6, v12

    .line 114
    div-float v6, v6, v22

    .line 115
    .line 116
    aput v6, v0, v11

    .line 117
    .line 118
    mul-float/2addr v2, v10

    .line 119
    mul-float/2addr v4, v8

    .line 120
    sub-float/2addr v2, v4

    .line 121
    div-float v2, v2, v22

    .line 122
    .line 123
    aput v2, v0, v17

    .line 124
    .line 125
    return-object v0
.end method

.method private static synthetic lambda$static$0(D)D
    .locals 12

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absRcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$static$1(D)D
    .locals 12

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;
    .locals 6

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    sget-object v4, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    .line 18
    .line 19
    invoke-static {v3, v4}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/graphics/ColorSpace$Rgb;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p0, v5}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-static {v4}, Landroid/graphics/ColorSpace$Rgb;->access$300(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {p1, v4}, Landroid/graphics/ColorSpace;->compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method private static mul3x3([F[F)[F
    .locals 19

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v2, p0, v1

    .line 7
    .line 8
    aget v3, p1, v1

    .line 9
    .line 10
    mul-float/2addr v2, v3

    .line 11
    const/4 v3, 0x3

    .line 12
    aget v4, p0, v3

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    aget v6, p1, v5

    .line 16
    .line 17
    mul-float v7, v4, v6

    .line 18
    .line 19
    add-float/2addr v7, v2

    .line 20
    const/4 v2, 0x6

    .line 21
    aget v8, p0, v2

    .line 22
    .line 23
    const/4 v9, 0x2

    .line 24
    aget v10, p1, v9

    .line 25
    .line 26
    mul-float v11, v8, v10

    .line 27
    .line 28
    add-float/2addr v11, v7

    .line 29
    aput v11, v0, v1

    .line 30
    .line 31
    aget v7, p0, v5

    .line 32
    .line 33
    aget v11, p1, v1

    .line 34
    .line 35
    mul-float/2addr v7, v11

    .line 36
    const/4 v12, 0x4

    .line 37
    aget v13, p0, v12

    .line 38
    .line 39
    mul-float/2addr v6, v13

    .line 40
    add-float/2addr v6, v7

    .line 41
    const/4 v7, 0x7

    .line 42
    aget v14, p0, v7

    .line 43
    .line 44
    mul-float v15, v14, v10

    .line 45
    .line 46
    add-float/2addr v15, v6

    .line 47
    aput v15, v0, v5

    .line 48
    .line 49
    aget v6, p0, v9

    .line 50
    .line 51
    mul-float/2addr v6, v11

    .line 52
    const/4 v11, 0x5

    .line 53
    aget v15, p0, v11

    .line 54
    .line 55
    aget v16, p1, v5

    .line 56
    .line 57
    mul-float v16, v16, v15

    .line 58
    .line 59
    add-float v16, v16, v6

    .line 60
    .line 61
    const/16 v6, 0x8

    .line 62
    .line 63
    aget v17, p0, v6

    .line 64
    .line 65
    mul-float v10, v10, v17

    .line 66
    .line 67
    add-float v10, v10, v16

    .line 68
    .line 69
    aput v10, v0, v9

    .line 70
    .line 71
    aget v1, p0, v1

    .line 72
    .line 73
    aget v10, p1, v3

    .line 74
    .line 75
    mul-float/2addr v10, v1

    .line 76
    aget v16, p1, v12

    .line 77
    .line 78
    mul-float v4, v4, v16

    .line 79
    .line 80
    add-float/2addr v4, v10

    .line 81
    aget v10, p1, v11

    .line 82
    .line 83
    mul-float v18, v8, v10

    .line 84
    .line 85
    add-float v18, v18, v4

    .line 86
    .line 87
    aput v18, v0, v3

    .line 88
    .line 89
    aget v4, p0, v5

    .line 90
    .line 91
    aget v5, p1, v3

    .line 92
    .line 93
    mul-float v18, v4, v5

    .line 94
    .line 95
    mul-float v13, v13, v16

    .line 96
    .line 97
    add-float v13, v13, v18

    .line 98
    .line 99
    mul-float v16, v14, v10

    .line 100
    .line 101
    add-float v16, v16, v13

    .line 102
    .line 103
    aput v16, v0, v12

    .line 104
    .line 105
    aget v9, p0, v9

    .line 106
    .line 107
    mul-float/2addr v5, v9

    .line 108
    aget v13, p1, v12

    .line 109
    .line 110
    mul-float/2addr v15, v13

    .line 111
    add-float/2addr v15, v5

    .line 112
    mul-float v10, v10, v17

    .line 113
    .line 114
    add-float/2addr v10, v15

    .line 115
    aput v10, v0, v11

    .line 116
    .line 117
    aget v5, p1, v2

    .line 118
    .line 119
    mul-float/2addr v1, v5

    .line 120
    aget v3, p0, v3

    .line 121
    .line 122
    aget v5, p1, v7

    .line 123
    .line 124
    mul-float/2addr v3, v5

    .line 125
    add-float/2addr v3, v1

    .line 126
    aget v1, p1, v6

    .line 127
    .line 128
    mul-float/2addr v8, v1

    .line 129
    add-float/2addr v8, v3

    .line 130
    aput v8, v0, v2

    .line 131
    .line 132
    aget v2, p1, v2

    .line 133
    .line 134
    mul-float/2addr v4, v2

    .line 135
    aget v3, p0, v12

    .line 136
    .line 137
    mul-float/2addr v3, v5

    .line 138
    add-float/2addr v3, v4

    .line 139
    mul-float/2addr v14, v1

    .line 140
    add-float/2addr v14, v3

    .line 141
    aput v14, v0, v7

    .line 142
    .line 143
    mul-float/2addr v9, v2

    .line 144
    aget v2, p0, v11

    .line 145
    .line 146
    aget v3, p1, v7

    .line 147
    .line 148
    mul-float/2addr v2, v3

    .line 149
    add-float/2addr v2, v9

    .line 150
    mul-float v17, v17, v1

    .line 151
    .line 152
    add-float v17, v17, v2

    .line 153
    .line 154
    aput v17, v0, v6

    .line 155
    .line 156
    return-object v0
.end method

.method private static mul3x3Diag([F[F)[F
    .locals 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v2, p0, v1

    .line 7
    .line 8
    aget v3, p1, v1

    .line 9
    .line 10
    mul-float/2addr v2, v3

    .line 11
    aput v2, v0, v1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aget v3, p0, v2

    .line 15
    .line 16
    aget v4, p1, v2

    .line 17
    .line 18
    mul-float/2addr v3, v4

    .line 19
    aput v3, v0, v2

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    aget v4, p0, v3

    .line 23
    .line 24
    aget v5, p1, v3

    .line 25
    .line 26
    mul-float/2addr v4, v5

    .line 27
    aput v4, v0, v3

    .line 28
    .line 29
    aget v1, p0, v1

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    aget v5, p1, v4

    .line 33
    .line 34
    mul-float/2addr v5, v1

    .line 35
    aput v5, v0, v4

    .line 36
    .line 37
    aget v2, p0, v2

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    aget v5, p1, v4

    .line 41
    .line 42
    mul-float/2addr v5, v2

    .line 43
    aput v5, v0, v4

    .line 44
    .line 45
    aget p0, p0, v3

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    aget v4, p1, v3

    .line 49
    .line 50
    mul-float/2addr v4, p0

    .line 51
    aput v4, v0, v3

    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    aget v4, p1, v3

    .line 55
    .line 56
    mul-float/2addr v1, v4

    .line 57
    aput v1, v0, v3

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    aget v3, p1, v1

    .line 61
    .line 62
    mul-float/2addr v2, v3

    .line 63
    aput v2, v0, v1

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    aget p1, p1, v1

    .line 68
    .line 69
    mul-float/2addr p0, p1

    .line 70
    aput p0, v0, v1

    .line 71
    .line 72
    return-object v0
.end method

.method private static mul3x3Float3([F[F)[F
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p1, v4

    .line 9
    .line 10
    aget v6, p0, v0

    .line 11
    .line 12
    mul-float/2addr v6, v1

    .line 13
    const/4 v7, 0x3

    .line 14
    aget v7, p0, v7

    .line 15
    .line 16
    mul-float/2addr v7, v3

    .line 17
    add-float/2addr v7, v6

    .line 18
    const/4 v6, 0x6

    .line 19
    aget v6, p0, v6

    .line 20
    .line 21
    mul-float/2addr v6, v5

    .line 22
    add-float/2addr v6, v7

    .line 23
    aput v6, p1, v0

    .line 24
    .line 25
    aget v0, p0, v2

    .line 26
    .line 27
    mul-float/2addr v0, v1

    .line 28
    const/4 v6, 0x4

    .line 29
    aget v6, p0, v6

    .line 30
    .line 31
    mul-float/2addr v6, v3

    .line 32
    add-float/2addr v6, v0

    .line 33
    const/4 v0, 0x7

    .line 34
    aget v0, p0, v0

    .line 35
    .line 36
    mul-float/2addr v0, v5

    .line 37
    add-float/2addr v0, v6

    .line 38
    aput v0, p1, v2

    .line 39
    .line 40
    aget v0, p0, v4

    .line 41
    .line 42
    mul-float/2addr v0, v1

    .line 43
    const/4 v1, 0x5

    .line 44
    aget v1, p0, v1

    .line 45
    .line 46
    mul-float/2addr v1, v3

    .line 47
    add-float/2addr v1, v0

    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    aget p0, p0, v0

    .line 51
    .line 52
    mul-float/2addr p0, v5

    .line 53
    add-float/2addr p0, v1

    .line 54
    aput p0, p1, v4

    .line 55
    .line 56
    return-object p1
.end method

.method private static rcpResponse(DDDDDD)D
    .locals 0

    mul-double/2addr p8, p6

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    div-double/2addr p6, p10

    .line 1
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    div-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method private static rcpResponse(DDDDDDDD)D
    .locals 0

    mul-double/2addr p8, p6

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    sub-double/2addr p0, p10

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    div-double/2addr p6, p14

    .line 2
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-double/2addr p0, p12

    div-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method private static response(DDDDDD)D
    .locals 0

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    mul-double/2addr p2, p0

    add-double/2addr p2, p4

    .line 1
    invoke-static {p2, p3, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    mul-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method private static response(DDDDDDDD)D
    .locals 0

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    mul-double/2addr p2, p0

    add-double/2addr p2, p4

    .line 2
    invoke-static {p2, p3, p14, p15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, p10

    goto :goto_0

    :cond_0
    mul-double/2addr p6, p0

    add-double p0, p6, p12

    :goto_0
    return-wide p0
.end method

.method private static xyYToUv([F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget v1, p0, v0

    .line 6
    .line 7
    add-int/lit8 v2, v0, 0x1

    .line 8
    .line 9
    aget v3, p0, v2

    .line 10
    .line 11
    const/high16 v4, -0x40000000    # -2.0f

    .line 12
    .line 13
    mul-float/2addr v4, v1

    .line 14
    const/high16 v5, 0x41400000    # 12.0f

    .line 15
    .line 16
    mul-float/2addr v5, v3

    .line 17
    add-float/2addr v5, v4

    .line 18
    const/high16 v4, 0x40400000    # 3.0f

    .line 19
    .line 20
    add-float/2addr v5, v4

    .line 21
    const/high16 v4, 0x40800000    # 4.0f

    .line 22
    .line 23
    mul-float/2addr v1, v4

    .line 24
    div-float/2addr v1, v5

    .line 25
    const/high16 v4, 0x41100000    # 9.0f

    .line 26
    .line 27
    mul-float/2addr v3, v4

    .line 28
    div-float/2addr v3, v5

    .line 29
    aput v1, p0, v0

    .line 30
    .line 31
    aput v3, p0, v2

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private static xyYToXyz([F)[F
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aget v4, p0, v3

    .line 9
    .line 10
    div-float/2addr v2, v4

    .line 11
    aput v2, v0, v1

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    aput v2, v0, v3

    .line 16
    .line 17
    aget v1, p0, v1

    .line 18
    .line 19
    sub-float/2addr v2, v1

    .line 20
    aget p0, p0, v3

    .line 21
    .line 22
    sub-float/2addr v2, p0

    .line 23
    div-float/2addr v2, p0

    .line 24
    const/4 p0, 0x2

    .line 25
    aput v2, v0, p0

    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Landroid/graphics/ColorSpace;

    .line 20
    .line 21
    iget v2, p0, Landroid/graphics/ColorSpace;->mId:I

    .line 22
    .line 23
    iget v3, p1, Landroid/graphics/ColorSpace;->mId:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-object v2, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    iget-object v2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 42
    .line 43
    if-ne v2, p1, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_5
    :goto_1
    return v1
.end method

.method public fromXyz(FFF)[F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 3
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 4
    aput p3, v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object p1

    return-object p1
.end method

.method public abstract fromXyz([F)[F
.end method

.method public getComponentCount()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    return v0
.end method

.method public abstract getMaxValue(I)F
.end method

.method public abstract getMinValue(I)F
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1
.end method

.method public isSrgb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isWideGamut()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/ColorSpace;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXyz(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object p1

    return-object p1
.end method

.method public abstract toXyz([F)[F
.end method
