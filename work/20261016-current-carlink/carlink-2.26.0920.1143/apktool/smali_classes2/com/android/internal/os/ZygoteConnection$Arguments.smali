.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field preloadDefault:Z

.field preloadPackage:Ljava/lang/String;

.field preloadPackageCacheKey:Ljava/lang/String;

.field preloadPackageLibs:Ljava/lang/String;

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p1

    .line 5
    if-ge v1, v3, :cond_28

    .line 6
    .line 7
    aget-object v3, p1, v1

    .line 8
    .line 9
    const-string v4, "--"

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    const-string v4, "--setuid="

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "Duplicate arg specified"

    .line 28
    .line 29
    const/16 v6, 0x3d

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 39
    .line 40
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v7

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    const-string v4, "--setgid="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 72
    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/2addr v4, v7

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_4
    const-string v4, "--target-sdk-version="

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 109
    .line 110
    if-nez v4, :cond_5

    .line 111
    .line 112
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 113
    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    add-int/2addr v4, v7

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v0, "Duplicate target-sdk-version specified"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_6
    const-string v4, "--enable-jdwp"

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_7

    .line 146
    .line 147
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 148
    .line 149
    or-int/2addr v3, v7

    .line 150
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :cond_7
    const-string v4, "--enable-safemode"

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 163
    .line 164
    or-int/lit8 v3, v3, 0x8

    .line 165
    .line 166
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_8
    const-string v4, "--enable-checkjni"

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    const/4 v8, 0x2

    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 180
    .line 181
    or-int/2addr v3, v8

    .line 182
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :cond_9
    const-string v4, "--generate-debug-info"

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_a

    .line 193
    .line 194
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 195
    .line 196
    or-int/lit8 v3, v3, 0x20

    .line 197
    .line 198
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_a
    const-string v4, "--always-jit"

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_b

    .line 209
    .line 210
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 211
    .line 212
    or-int/lit8 v3, v3, 0x40

    .line 213
    .line 214
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_b
    const-string v4, "--native-debuggable"

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_c

    .line 225
    .line 226
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 227
    .line 228
    or-int/lit16 v3, v3, 0x80

    .line 229
    .line 230
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_c
    const-string v4, "--java-debuggable"

    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_d

    .line 241
    .line 242
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 243
    .line 244
    or-int/lit16 v3, v3, 0x100

    .line 245
    .line 246
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 247
    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_d
    const-string v4, "--enable-jni-logging"

    .line 251
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_e

    .line 257
    .line 258
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 259
    .line 260
    or-int/lit8 v3, v3, 0x10

    .line 261
    .line 262
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_e
    const-string v4, "--enable-assert"

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_f

    .line 273
    .line 274
    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 275
    .line 276
    or-int/lit8 v3, v3, 0x4

    .line 277
    .line 278
    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_f
    const-string v4, "--runtime-args"

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_10

    .line 289
    .line 290
    move v2, v7

    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :cond_10
    const-string v4, "--seinfo="

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_12

    .line 300
    .line 301
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    .line 302
    .line 303
    if-nez v4, :cond_11

    .line 304
    .line 305
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    .line 306
    .line 307
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    add-int/2addr v4, v7

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    .line 317
    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 321
    .line 322
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_12
    const-string v4, "--capabilities="

    .line 327
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    const-string v9, ","

    .line 333
    .line 334
    if-eqz v4, :cond_15

    .line 335
    .line 336
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 337
    .line 338
    if-nez v4, :cond_14

    .line 339
    .line 340
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 341
    .line 342
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    add-int/2addr v4, v7

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    array-length v4, v3

    .line 356
    if-ne v4, v7, :cond_13

    .line 357
    .line 358
    aget-object v3, v3, v0

    .line 359
    .line 360
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 365
    .line 366
    .line 367
    move-result-wide v3

    .line 368
    iput-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 369
    .line 370
    iput-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :cond_13
    aget-object v4, v3, v0

    .line 375
    .line 376
    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    iput-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 385
    .line 386
    aget-object v3, v3, v7

    .line 387
    .line 388
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 393
    .line 394
    .line 395
    move-result-wide v3

    .line 396
    iput-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 401
    .line 402
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw p1

    .line 406
    :cond_15
    const-string v4, "--rlimit="

    .line 407
    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    const/4 v10, 0x3

    .line 413
    if-eqz v4, :cond_19

    .line 414
    .line 415
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    add-int/2addr v4, v7

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    array-length v4, v3

    .line 429
    if-ne v4, v10, :cond_18

    .line 430
    .line 431
    array-length v4, v3

    .line 432
    new-array v4, v4, [I

    .line 433
    .line 434
    move v5, v0

    .line 435
    :goto_1
    array-length v6, v3

    .line 436
    if-ge v5, v6, :cond_16

    .line 437
    .line 438
    aget-object v6, v3, v5

    .line 439
    .line 440
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    aput v6, v4, v5

    .line 445
    .line 446
    add-int/lit8 v5, v5, 0x1

    .line 447
    .line 448
    goto :goto_1

    .line 449
    :cond_16
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 450
    .line 451
    if-nez v3, :cond_17

    .line 452
    .line 453
    new-instance v3, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 459
    .line 460
    :cond_17
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    goto/16 :goto_3

    .line 466
    .line 467
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 468
    .line 469
    const-string v0, "--rlimit= should have 3 comma-delimited ints"

    .line 470
    .line 471
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw p1

    .line 475
    :cond_19
    const-string v4, "--setgroups="

    .line 476
    .line 477
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-eqz v4, :cond_1b

    .line 482
    .line 483
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 484
    .line 485
    if-nez v4, :cond_1a

    .line 486
    .line 487
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    add-int/2addr v4, v7

    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    array-length v4, v3

    .line 501
    new-array v4, v4, [I

    .line 502
    .line 503
    iput-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 504
    .line 505
    array-length v4, v3

    .line 506
    sub-int/2addr v4, v7

    .line 507
    :goto_2
    if-ltz v4, :cond_27

    .line 508
    .line 509
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 510
    .line 511
    aget-object v6, v3, v4

    .line 512
    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    aput v6, v5, v4

    .line 518
    .line 519
    add-int/lit8 v4, v4, -0x1

    .line 520
    .line 521
    goto :goto_2

    .line 522
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 523
    .line 524
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw p1

    .line 528
    :cond_1b
    const-string v4, "--invoke-with"

    .line 529
    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_1d

    .line 535
    .line 536
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 537
    .line 538
    if-nez v3, :cond_1c

    .line 539
    .line 540
    add-int/lit8 v1, v1, 0x1

    .line 541
    .line 542
    :try_start_0
    aget-object v3, p1, v1

    .line 543
    .line 544
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .line 546
    goto/16 :goto_3

    .line 547
    .line 548
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 549
    .line 550
    const-string v0, "--invoke-with requires argument"

    .line 551
    .line 552
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw p1

    .line 556
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 557
    .line 558
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p1

    .line 562
    :cond_1d
    const-string v4, "--nice-name="

    .line 563
    .line 564
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-eqz v4, :cond_1f

    .line 569
    .line 570
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 571
    .line 572
    if-nez v4, :cond_1e

    .line 573
    .line 574
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    add-int/2addr v4, v7

    .line 579
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    .line 584
    .line 585
    goto/16 :goto_3

    .line 586
    .line 587
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 588
    .line 589
    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw p1

    .line 593
    :cond_1f
    const-string v4, "--mount-external-default"

    .line 594
    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    if-eqz v4, :cond_20

    .line 600
    .line 601
    iput v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 602
    .line 603
    goto/16 :goto_3

    .line 604
    .line 605
    :cond_20
    const-string v4, "--mount-external-read"

    .line 606
    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    if-eqz v4, :cond_21

    .line 612
    .line 613
    iput v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 614
    .line 615
    goto :goto_3

    .line 616
    :cond_21
    const-string v4, "--mount-external-write"

    .line 617
    .line 618
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-eqz v4, :cond_22

    .line 623
    .line 624
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 625
    .line 626
    goto :goto_3

    .line 627
    :cond_22
    const-string v4, "--query-abi-list"

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    if-eqz v4, :cond_23

    .line 634
    .line 635
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    .line 636
    .line 637
    goto :goto_3

    .line 638
    :cond_23
    const-string v4, "--instruction-set="

    .line 639
    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-eqz v4, :cond_24

    .line 645
    .line 646
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    add-int/2addr v4, v7

    .line 651
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    .line 656
    .line 657
    goto :goto_3

    .line 658
    :cond_24
    const-string v4, "--app-data-dir="

    .line 659
    .line 660
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_25

    .line 665
    .line 666
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    add-int/2addr v4, v7

    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    .line 676
    .line 677
    goto :goto_3

    .line 678
    :cond_25
    const-string v4, "--preload-package"

    .line 679
    .line 680
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    if-eqz v4, :cond_26

    .line 685
    .line 686
    add-int/lit8 v1, v1, 0x1

    .line 687
    .line 688
    aget-object v3, p1, v1

    .line 689
    .line 690
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    .line 691
    .line 692
    add-int/2addr v1, v7

    .line 693
    aget-object v3, p1, v1

    .line 694
    .line 695
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    .line 696
    .line 697
    add-int/2addr v1, v7

    .line 698
    aget-object v3, p1, v1

    .line 699
    .line 700
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    .line 701
    .line 702
    goto :goto_3

    .line 703
    :cond_26
    const-string v4, "--preload-default"

    .line 704
    .line 705
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    if-eqz v3, :cond_28

    .line 710
    .line 711
    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    .line 712
    .line 713
    :cond_27
    :goto_3
    add-int/2addr v1, v7

    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_28
    :goto_4
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    .line 717
    .line 718
    if-eqz v3, :cond_2a

    .line 719
    .line 720
    array-length p1, p1

    .line 721
    sub-int/2addr p1, v1

    .line 722
    if-gtz p1, :cond_29

    .line 723
    .line 724
    goto :goto_5

    .line 725
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 726
    .line 727
    const-string v0, "Unexpected arguments after --query-abi-list."

    .line 728
    .line 729
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw p1

    .line 733
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    .line 734
    .line 735
    if-eqz v3, :cond_2c

    .line 736
    .line 737
    array-length p1, p1

    .line 738
    sub-int/2addr p1, v1

    .line 739
    if-gtz p1, :cond_2b

    .line 740
    .line 741
    goto :goto_5

    .line 742
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 743
    .line 744
    const-string v0, "Unexpected arguments after --preload-package."

    .line 745
    .line 746
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    throw p1

    .line 750
    :cond_2c
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    .line 751
    .line 752
    if-nez v3, :cond_2e

    .line 753
    .line 754
    if-eqz v2, :cond_2d

    .line 755
    .line 756
    array-length v2, p1

    .line 757
    sub-int/2addr v2, v1

    .line 758
    new-array v2, v2, [Ljava/lang/String;

    .line 759
    .line 760
    iput-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 761
    .line 762
    array-length v3, v2

    .line 763
    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    .line 765
    .line 766
    goto :goto_5

    .line 767
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 768
    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    const-string v3, "Unexpected argument : "

    .line 772
    .line 773
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    aget-object p1, p1, v1

    .line 777
    .line 778
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object p1

    .line 785
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    throw v0

    .line 789
    :cond_2e
    :goto_5
    return-void
.end method
