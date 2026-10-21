.class public final Le/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/syu/carlink/CarLinkService;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lz/l;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;IILjava/lang/String;Lz/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k;->a:Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    iput p2, p0, Le/k;->b:I

    .line 4
    .line 5
    iput p3, p0, Le/k;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Le/k;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Le/k;->e:Lz/l;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lh/c;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "carplay"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "LinkManager ============>>> CarPlay Server Linked!!"

    .line 11
    .line 12
    const-string v3, "HDL"

    .line 13
    .line 14
    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, v1, Le/k;->a:Lcom/syu/carlink/CarLinkService;

    .line 18
    .line 19
    iget-object v0, v4, Lcom/syu/carlink/CarLinkService;->E:Lz/a;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lz/a;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/util/Size;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v5

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v6, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget v0, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 49
    .line 50
    :goto_2
    if-lez v6, :cond_4

    .line 51
    .line 52
    if-lez v0, :cond_4

    .line 53
    .line 54
    iget v7, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 55
    .line 56
    if-ne v6, v7, :cond_3

    .line 57
    .line 58
    iget v7, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 59
    .line 60
    if-eq v0, v7, :cond_4

    .line 61
    .line 62
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v8, "setup onStart correct display size: "

    .line 65
    .line 66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v8, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v8, 0x78

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v9, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 80
    .line 81
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v9, " -> "

    .line 85
    .line 86
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v3, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput v6, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 106
    .line 107
    iput v0, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 108
    .line 109
    :cond_4
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 110
    .line 111
    const-string v8, "me"

    .line 112
    .line 113
    if-eqz v7, :cond_10

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/syu/carlink/CarLink;->u()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iget-object v9, v1, Le/k;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v2, v6, v0}, Lh/c;->b(II)Landroid/util/Size;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    iput v11, v2, Lh/c;->b:I

    .line 130
    .line 131
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    iput v11, v2, Lh/c;->d:I

    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    iput v11, v2, Lh/c;->c:I

    .line 142
    .line 143
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    iput v10, v2, Lh/c;->e:I

    .line 148
    .line 149
    iget v10, v1, Le/k;->b:I

    .line 150
    .line 151
    iput v10, v2, Lh/c;->h:I

    .line 152
    .line 153
    int-to-float v11, v0

    .line 154
    int-to-float v12, v6

    .line 155
    div-float/2addr v11, v12

    .line 156
    iget v12, v2, Lh/c;->f:I

    .line 157
    .line 158
    int-to-float v13, v12

    .line 159
    mul-float/2addr v11, v13

    .line 160
    const/high16 v13, 0x3f000000    # 0.5f

    .line 161
    .line 162
    add-float/2addr v11, v13

    .line 163
    float-to-int v11, v11

    .line 164
    iput v11, v2, Lh/c;->g:I

    .line 165
    .line 166
    const-string v11, " =================>>>>>>>   width: "

    .line 167
    .line 168
    const-string v13, " height: "

    .line 169
    .line 170
    const-string v14, " displayW : "

    .line 171
    .line 172
    invoke-static {v11, v6, v13, v0, v14}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget v6, v2, Lh/c;->b:I

    .line 177
    .line 178
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, "  displayH :  "

    .line 182
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v6, v2, Lh/c;->c:I

    .line 187
    .line 188
    const-string v11, "   FPS:"

    .line 189
    .line 190
    const-string v13, " phyW: "

    .line 191
    .line 192
    invoke-static {v0, v6, v11, v10, v13}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v6, "   phyH: "

    .line 199
    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v6, v2, Lh/c;->g:I

    .line 204
    .line 205
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v6, "  driveMode: "

    .line 209
    .line 210
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v6, v1, Le/k;->c:I

    .line 214
    .line 215
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/16 v0, 0xb

    .line 226
    .line 227
    new-array v0, v0, [I

    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    aput v11, v0, v11

    .line 231
    .line 232
    const/4 v13, 0x1

    .line 233
    aput v11, v0, v13

    .line 234
    .line 235
    iget v14, v2, Lh/c;->b:I

    .line 236
    .line 237
    const/4 v15, 0x2

    .line 238
    aput v14, v0, v15

    .line 239
    .line 240
    iget v14, v2, Lh/c;->c:I

    .line 241
    .line 242
    const/4 v15, 0x3

    .line 243
    aput v14, v0, v15

    .line 244
    .line 245
    iget v14, v2, Lh/c;->d:I

    .line 246
    .line 247
    const/4 v15, 0x4

    .line 248
    aput v14, v0, v15

    .line 249
    .line 250
    iget v14, v2, Lh/c;->e:I

    .line 251
    .line 252
    const/16 v16, 0x5

    .line 253
    .line 254
    aput v14, v0, v16

    .line 255
    .line 256
    const/4 v14, 0x6

    .line 257
    aput v12, v0, v14

    .line 258
    .line 259
    iget v12, v2, Lh/c;->g:I

    .line 260
    .line 261
    const/4 v14, 0x7

    .line 262
    aput v12, v0, v14

    .line 263
    .line 264
    const/16 v12, 0x8

    .line 265
    .line 266
    aput v11, v0, v12

    .line 267
    .line 268
    const/16 v12, 0x9

    .line 269
    .line 270
    const v17, 0x53667073

    .line 271
    .line 272
    .line 273
    aput v17, v0, v12

    .line 274
    .line 275
    const/16 v12, 0xa

    .line 276
    .line 277
    aput v10, v0, v12

    .line 278
    .line 279
    const/16 v10, 0xda

    .line 280
    .line 281
    invoke-virtual {v2, v10, v5, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 282
    .line 283
    .line 284
    const-string v0, "/sdcard/carlink/logo/car_log.png"

    .line 285
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    :try_start_0
    const-string v14, "CarplayServer.ICarplayService"

    .line 295
    .line 296
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const/16 v0, 0xb4

    .line 306
    .line 307
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    .line 312
    .line 313
    const-string v0, "outparam"

    .line 314
    .line 315
    invoke-static {v12, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/16 v0, 0xd5

    .line 319
    .line 320
    invoke-virtual {v2, v0, v10, v12}, Lh/c;->d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_5

    .line 325
    .line 326
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    goto/16 :goto_6

    .line 332
    .line 333
    :catch_0
    move-exception v0

    .line 334
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .line 336
    .line 337
    :cond_5
    :goto_3
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 341
    .line 342
    .line 343
    new-array v0, v13, [I

    .line 344
    .line 345
    aput v6, v0, v11

    .line 346
    .line 347
    const/16 v9, 0xd6

    .line 348
    .line 349
    invoke-virtual {v2, v9, v5, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 350
    .line 351
    .line 352
    new-array v0, v11, [I

    .line 353
    .line 354
    const/16 v9, 0xdb

    .line 355
    .line 356
    invoke-virtual {v2, v9, v5, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 357
    .line 358
    .line 359
    new-array v0, v13, [I

    .line 360
    .line 361
    aput v7, v0, v11

    .line 362
    .line 363
    const/16 v7, 0xdf

    .line 364
    .line 365
    invoke-virtual {v2, v7, v5, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 366
    .line 367
    .line 368
    iget-boolean v0, v2, Lh/c;->p:Z

    .line 369
    .line 370
    if-nez v0, :cond_6

    .line 371
    .line 372
    iput-boolean v13, v2, Lh/c;->p:Z

    .line 373
    .line 374
    :cond_6
    new-array v0, v11, [I

    .line 375
    .line 376
    const/16 v7, 0xd7

    .line 377
    .line 378
    invoke-virtual {v2, v7, v0}, Lh/c;->f(I[I)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v7, "===================>>   CarPlayerServer GET >>> state: "

    .line 385
    .line 386
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v3, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    if-eqz v0, :cond_a

    .line 400
    .line 401
    if-eq v0, v13, :cond_b

    .line 402
    .line 403
    const/4 v2, 0x2

    .line 404
    if-eq v0, v2, :cond_9

    .line 405
    .line 406
    const/4 v2, 0x3

    .line 407
    if-eq v0, v2, :cond_8

    .line 408
    .line 409
    if-eq v0, v15, :cond_7

    .line 410
    .line 411
    move v15, v2

    .line 412
    goto :goto_4

    .line 413
    :cond_7
    move/from16 v15, v16

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_8
    const/4 v15, 0x7

    .line 417
    goto :goto_4

    .line 418
    :cond_9
    const/4 v15, 0x6

    .line 419
    goto :goto_4

    .line 420
    :cond_a
    const/4 v0, 0x3

    .line 421
    move v15, v0

    .line 422
    :cond_b
    :goto_4
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 423
    .line 424
    if-eqz v0, :cond_f

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    const/4 v2, 0x2

    .line 431
    if-eq v0, v2, :cond_d

    .line 432
    .line 433
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 434
    .line 435
    if-eqz v0, :cond_c

    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 442
    .line 443
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_c
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v5

    .line 455
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v2, "LinkManager ============>>> CarPlay Start "

    .line 458
    .line 459
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget v2, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 463
    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v2, " x "

    .line 468
    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    iget v2, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 473
    .line 474
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v2, "  driveMode:"

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v1, Le/k;->e:Lz/l;

    .line 493
    .line 494
    if-eqz v0, :cond_e

    .line 495
    .line 496
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 497
    .line 498
    invoke-interface {v0, v2}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    :cond_e
    return-void

    .line 502
    :cond_f
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v5

    .line 506
    :goto_6
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_10
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v5
.end method
