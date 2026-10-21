.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Hyphenator$HyphenationData;
    }
.end annotation


# static fields
.field private static final AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

.field private static final DEFAULT_MIN_PREFIX:I = 0x2

.field private static final DEFAULT_MIN_SUFFIX:I = 0x2

.field private static final INDIC_MIN_PREFIX:I = 0x2

.field private static final INDIC_MIN_SUFFIX:I = 0x2

.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "Hyphenator"

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mNativePtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Landroid/text/Hyphenator;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-static {v1, v2, v3, v3}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;III)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {v0, v4, v5, v1}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 28
    .line 29
    const/16 v0, 0x11

    .line 30
    .line 31
    new-array v1, v0, [[Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "en-AS"

    .line 34
    .line 35
    const-string v5, "en-US"

    .line 36
    .line 37
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v1, v2

    .line 42
    .line 43
    const-string v4, "en-GU"

    .line 44
    .line 45
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x1

    .line 50
    aput-object v4, v1, v6

    .line 51
    .line 52
    const-string v4, "en-MH"

    .line 53
    .line 54
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v1, v3

    .line 59
    .line 60
    const-string v4, "en-MP"

    .line 61
    .line 62
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v7, 0x3

    .line 67
    aput-object v4, v1, v7

    .line 68
    .line 69
    const-string v4, "en-PR"

    .line 70
    .line 71
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v8, 0x4

    .line 76
    aput-object v4, v1, v8

    .line 77
    .line 78
    const-string v4, "en-UM"

    .line 79
    .line 80
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const/4 v9, 0x5

    .line 85
    aput-object v4, v1, v9

    .line 86
    .line 87
    const-string v4, "en-VI"

    .line 88
    .line 89
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/4 v10, 0x6

    .line 94
    aput-object v4, v1, v10

    .line 95
    .line 96
    const-string v4, "en"

    .line 97
    .line 98
    const-string v11, "en-GB"

    .line 99
    .line 100
    filled-new-array {v4, v11}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/4 v12, 0x7

    .line 105
    aput-object v4, v1, v12

    .line 106
    .line 107
    const-string v4, "de"

    .line 108
    .line 109
    const-string v13, "de-1996"

    .line 110
    .line 111
    filled-new-array {v4, v13}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const/16 v14, 0x8

    .line 116
    .line 117
    aput-object v4, v1, v14

    .line 118
    .line 119
    const-string v4, "de-LI-1901"

    .line 120
    .line 121
    const-string v15, "de-CH-1901"

    .line 122
    .line 123
    filled-new-array {v4, v15}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const/16 v16, 0x9

    .line 128
    .line 129
    aput-object v4, v1, v16

    .line 130
    .line 131
    const-string v4, "no"

    .line 132
    .line 133
    const-string v0, "nb"

    .line 134
    .line 135
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const/16 v17, 0xa

    .line 140
    .line 141
    aput-object v4, v1, v17

    .line 142
    .line 143
    const-string v4, "mn"

    .line 144
    .line 145
    const-string v14, "mn-Cyrl"

    .line 146
    .line 147
    filled-new-array {v4, v14}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/16 v18, 0xb

    .line 152
    .line 153
    aput-object v4, v1, v18

    .line 154
    .line 155
    const-string v4, "am"

    .line 156
    .line 157
    const-string/jumbo v12, "und-Ethi"

    .line 158
    .line 159
    .line 160
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const/16 v19, 0xc

    .line 165
    .line 166
    aput-object v4, v1, v19

    .line 167
    .line 168
    const-string v4, "byn"

    .line 169
    .line 170
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const/16 v20, 0xd

    .line 175
    .line 176
    aput-object v4, v1, v20

    .line 177
    .line 178
    const-string v4, "gez"

    .line 179
    .line 180
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    const/16 v20, 0xe

    .line 185
    .line 186
    aput-object v4, v1, v20

    .line 187
    .line 188
    const-string/jumbo v4, "ti"

    .line 189
    .line 190
    .line 191
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    const/16 v20, 0xf

    .line 196
    .line 197
    aput-object v4, v1, v20

    .line 198
    .line 199
    const-string/jumbo v4, "wal"

    .line 200
    .line 201
    .line 202
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    const/16 v20, 0x10

    .line 207
    .line 208
    aput-object v4, v1, v20

    .line 209
    .line 210
    sput-object v1, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    .line 211
    .line 212
    const/16 v1, 0x23

    .line 213
    .line 214
    new-array v1, v1, [Landroid/text/Hyphenator$HyphenationData;

    .line 215
    .line 216
    new-instance v4, Landroid/text/Hyphenator$HyphenationData;

    .line 217
    .line 218
    const-string v10, "as"

    .line 219
    .line 220
    invoke-direct {v4, v10, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 221
    .line 222
    .line 223
    aput-object v4, v1, v2

    .line 224
    .line 225
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 226
    .line 227
    const-string v4, "bg"

    .line 228
    .line 229
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 230
    .line 231
    .line 232
    aput-object v2, v1, v6

    .line 233
    .line 234
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 235
    .line 236
    const-string v4, "bn"

    .line 237
    .line 238
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 239
    .line 240
    .line 241
    aput-object v2, v1, v3

    .line 242
    .line 243
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 244
    .line 245
    const-string v4, "cu"

    .line 246
    .line 247
    invoke-direct {v2, v4, v6, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 248
    .line 249
    .line 250
    aput-object v2, v1, v7

    .line 251
    .line 252
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 253
    .line 254
    const-string v4, "cy"

    .line 255
    .line 256
    invoke-direct {v2, v4, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 257
    .line 258
    .line 259
    aput-object v2, v1, v8

    .line 260
    .line 261
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 262
    .line 263
    const-string v4, "da"

    .line 264
    .line 265
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 266
    .line 267
    .line 268
    aput-object v2, v1, v9

    .line 269
    .line 270
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 271
    .line 272
    const-string v4, "de-1901"

    .line 273
    .line 274
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    const/4 v4, 0x6

    .line 278
    aput-object v2, v1, v4

    .line 279
    .line 280
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 281
    .line 282
    invoke-direct {v2, v13, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 283
    .line 284
    .line 285
    const/4 v4, 0x7

    .line 286
    aput-object v2, v1, v4

    .line 287
    .line 288
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 289
    .line 290
    invoke-direct {v2, v15, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 291
    .line 292
    .line 293
    const/16 v4, 0x8

    .line 294
    .line 295
    aput-object v2, v1, v4

    .line 296
    .line 297
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 298
    .line 299
    invoke-direct {v2, v11, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 300
    .line 301
    .line 302
    aput-object v2, v1, v16

    .line 303
    .line 304
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 305
    .line 306
    invoke-direct {v2, v5, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 307
    .line 308
    .line 309
    aput-object v2, v1, v17

    .line 310
    .line 311
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 312
    .line 313
    const-string v4, "es"

    .line 314
    .line 315
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 316
    .line 317
    .line 318
    aput-object v2, v1, v18

    .line 319
    .line 320
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 321
    .line 322
    const-string v4, "et"

    .line 323
    .line 324
    invoke-direct {v2, v4, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 325
    .line 326
    .line 327
    aput-object v2, v1, v19

    .line 328
    .line 329
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 330
    .line 331
    const-string v4, "eu"

    .line 332
    .line 333
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 334
    .line 335
    .line 336
    const/16 v4, 0xd

    .line 337
    .line 338
    aput-object v2, v1, v4

    .line 339
    .line 340
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 341
    .line 342
    const-string v4, "fr"

    .line 343
    .line 344
    invoke-direct {v2, v4, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 345
    .line 346
    .line 347
    const/16 v4, 0xe

    .line 348
    .line 349
    aput-object v2, v1, v4

    .line 350
    .line 351
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 352
    .line 353
    const-string v4, "ga"

    .line 354
    .line 355
    invoke-direct {v2, v4, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 356
    .line 357
    .line 358
    const/16 v4, 0xf

    .line 359
    .line 360
    aput-object v2, v1, v4

    .line 361
    .line 362
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 363
    .line 364
    const-string v4, "gu"

    .line 365
    .line 366
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 367
    .line 368
    .line 369
    const/16 v4, 0x10

    .line 370
    .line 371
    aput-object v2, v1, v4

    .line 372
    .line 373
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 374
    .line 375
    const-string v4, "hi"

    .line 376
    .line 377
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 378
    .line 379
    .line 380
    const/16 v4, 0x11

    .line 381
    .line 382
    aput-object v2, v1, v4

    .line 383
    .line 384
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 385
    .line 386
    const-string v4, "hr"

    .line 387
    .line 388
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 389
    .line 390
    .line 391
    const/16 v4, 0x12

    .line 392
    .line 393
    aput-object v2, v1, v4

    .line 394
    .line 395
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 396
    .line 397
    const-string v4, "hu"

    .line 398
    .line 399
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 400
    .line 401
    .line 402
    const/16 v4, 0x13

    .line 403
    .line 404
    aput-object v2, v1, v4

    .line 405
    .line 406
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 407
    .line 408
    const-string v4, "hy"

    .line 409
    .line 410
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 411
    .line 412
    .line 413
    const/16 v4, 0x14

    .line 414
    .line 415
    aput-object v2, v1, v4

    .line 416
    .line 417
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 418
    .line 419
    const-string v4, "kn"

    .line 420
    .line 421
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 422
    .line 423
    .line 424
    const/16 v4, 0x15

    .line 425
    .line 426
    aput-object v2, v1, v4

    .line 427
    .line 428
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 429
    .line 430
    const-string v4, "ml"

    .line 431
    .line 432
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 433
    .line 434
    .line 435
    const/16 v4, 0x16

    .line 436
    .line 437
    aput-object v2, v1, v4

    .line 438
    .line 439
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 440
    .line 441
    invoke-direct {v2, v14, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 442
    .line 443
    .line 444
    const/16 v4, 0x17

    .line 445
    .line 446
    aput-object v2, v1, v4

    .line 447
    .line 448
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 449
    .line 450
    const-string v4, "mr"

    .line 451
    .line 452
    invoke-direct {v2, v4, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 453
    .line 454
    .line 455
    const/16 v4, 0x18

    .line 456
    .line 457
    aput-object v2, v1, v4

    .line 458
    .line 459
    new-instance v2, Landroid/text/Hyphenator$HyphenationData;

    .line 460
    .line 461
    invoke-direct {v2, v0, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 462
    .line 463
    .line 464
    const/16 v0, 0x19

    .line 465
    .line 466
    aput-object v2, v1, v0

    .line 467
    .line 468
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 469
    .line 470
    const-string v2, "nn"

    .line 471
    .line 472
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 473
    .line 474
    .line 475
    const/16 v2, 0x1a

    .line 476
    .line 477
    aput-object v0, v1, v2

    .line 478
    .line 479
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 480
    .line 481
    const-string v2, "or"

    .line 482
    .line 483
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 484
    .line 485
    .line 486
    const/16 v2, 0x1b

    .line 487
    .line 488
    aput-object v0, v1, v2

    .line 489
    .line 490
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 491
    .line 492
    const-string v2, "pa"

    .line 493
    .line 494
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 495
    .line 496
    .line 497
    const/16 v2, 0x1c

    .line 498
    .line 499
    aput-object v0, v1, v2

    .line 500
    .line 501
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 502
    .line 503
    const-string v2, "pt"

    .line 504
    .line 505
    invoke-direct {v0, v2, v3, v7}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 506
    .line 507
    .line 508
    const/16 v2, 0x1d

    .line 509
    .line 510
    aput-object v0, v1, v2

    .line 511
    .line 512
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 513
    .line 514
    const-string/jumbo v2, "sl"

    .line 515
    .line 516
    .line 517
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 518
    .line 519
    .line 520
    const/16 v2, 0x1e

    .line 521
    .line 522
    aput-object v0, v1, v2

    .line 523
    .line 524
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 525
    .line 526
    const-string/jumbo v2, "ta"

    .line 527
    .line 528
    .line 529
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 530
    .line 531
    .line 532
    const/16 v2, 0x1f

    .line 533
    .line 534
    aput-object v0, v1, v2

    .line 535
    .line 536
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 537
    .line 538
    const-string/jumbo v2, "te"

    .line 539
    .line 540
    .line 541
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 542
    .line 543
    .line 544
    const/16 v2, 0x20

    .line 545
    .line 546
    aput-object v0, v1, v2

    .line 547
    .line 548
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 549
    .line 550
    const-string/jumbo v2, "tk"

    .line 551
    .line 552
    .line 553
    invoke-direct {v0, v2, v3, v3}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 554
    .line 555
    .line 556
    const/16 v2, 0x21

    .line 557
    .line 558
    aput-object v0, v1, v2

    .line 559
    .line 560
    new-instance v0, Landroid/text/Hyphenator$HyphenationData;

    .line 561
    .line 562
    invoke-direct {v0, v12, v6, v6}, Landroid/text/Hyphenator$HyphenationData;-><init>(Ljava/lang/String;II)V

    .line 563
    .line 564
    .line 565
    const/16 v2, 0x22

    .line 566
    .line 567
    aput-object v0, v1, v2

    .line 568
    .line 569
    sput-object v1, Landroid/text/Hyphenator;->AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

    .line 570
    .line 571
    return-void
.end method

.method private constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    .line 5
    .line 6
    iput-object p3, p0, Landroid/text/Hyphenator;->mBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    return-void
.end method

.method public static get(Ljava/util/Locale;)Landroid/text/Hyphenator;
    .locals 6

    .line 1
    sget-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroid/text/Hyphenator;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    new-instance v3, Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, ""

    .line 33
    .line 34
    invoke-direct {v3, v4, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/text/Hyphenator;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v2

    .line 50
    :cond_1
    new-instance v2, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/text/Hyphenator;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object v2

    .line 72
    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, ""

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    new-instance v3, Ljava/util/Locale$Builder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "und"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Landroid/text/Hyphenator;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    monitor-exit v0

    .line 116
    return-object v2

    .line 117
    :cond_3
    sget-object v2, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 118
    .line 119
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    monitor-exit v0

    .line 123
    return-object v2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/hyphen-data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 5

    .line 1
    sget-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    sget-object v2, Landroid/text/Hyphenator;->AVAILABLE_LANGUAGES:[Landroid/text/Hyphenator$HyphenationData;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    aget-object v2, v2, v1

    .line 15
    .line 16
    invoke-static {v2}, Landroid/text/Hyphenator;->loadHyphenator(Landroid/text/Hyphenator$HyphenationData;)Landroid/text/Hyphenator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v0

    .line 37
    :goto_1
    sget-object v2, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    .line 38
    .line 39
    array-length v3, v2

    .line 40
    if-ge v1, v3, :cond_2

    .line 41
    .line 42
    aget-object v2, v2, v1

    .line 43
    .line 44
    aget-object v3, v2, v0

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    aget-object v2, v2, v4

    .line 48
    .line 49
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Landroid/text/Hyphenator$HyphenationData;)Landroid/text/Hyphenator;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "hyph-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ".hyb"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object p0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "hyphenation patterns for "

    .line 49
    .line 50
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " not found or unreadable"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 70
    .line 71
    const-string v3, "r"

    .line 72
    .line 73
    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 81
    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget v4, p0, Landroid/text/Hyphenator$HyphenationData;->mMinPrefix:I

    .line 93
    .line 94
    iget p0, p0, Landroid/text/Hyphenator$HyphenationData;->mMinSuffix:I

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static {v3, v5, v4, p0}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;III)J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    new-instance p0, Landroid/text/Hyphenator;

    .line 102
    .line 103
    invoke-direct {p0, v4, v5, v3}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 112
    .line 113
    .line 114
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    sget-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v4, "error loading hyphenation "

    .line 121
    .line 122
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    return-object v2
.end method


# virtual methods
.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/text/Hyphenator;->mNativePtr:J

    return-wide v0
.end method
