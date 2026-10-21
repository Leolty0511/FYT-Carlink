.class public final synthetic Le/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Le/n;->a:I

    iput-object p1, p0, Le/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le/n;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    const-string v7, "HDL"

    .line 11
    .line 12
    const-string v8, "this$0"

    .line 13
    .line 14
    iget-object v9, v0, Le/n;->b:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v10, 0x5

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :pswitch_0
    check-cast v9, Lcom/syu/carlink/MainActivity;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v8, "linkstate"

    .line 32
    .line 33
    invoke-static {v1, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v11, "MainActivity handlePhoneState ============>>> linkType:"

    .line 43
    .line 44
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-virtual {v11}, Lcom/syu/carlink/CarLink;->C()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v11, "  state : "

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {v7, v8}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8}, Lcom/syu/carlink/CarLink;->C()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    packed-switch v1, :pswitch_data_1

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_1
    if-eq v8, v5, :cond_1

    .line 87
    .line 88
    if-eq v8, v6, :cond_0

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_0
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_1
    invoke-virtual {v9}, Lcom/syu/carlink/MainActivity;->k()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_2
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-boolean v4, v4, Lcom/syu/carlink/CarLink;->d:Z

    .line 107
    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Lcom/syu/carlink/CarLinkService;->f(Z)V

    .line 117
    .line 118
    .line 119
    :cond_2
    if-eq v8, v5, :cond_4

    .line 120
    .line 121
    if-eq v8, v6, :cond_3

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_3
    invoke-virtual {v9}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v9, v1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v6, "handlePhoneState ============>>> linkType:"

    .line 137
    .line 138
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->C()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, "  show carplayFragment"

    .line 159
    .line 160
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v7, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v9, v1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    .line 183
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    new-array v4, v5, [I

    .line 188
    .line 189
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->u()Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    aput v5, v4, v3

    .line 198
    .line 199
    const/16 v3, 0xdf

    .line 200
    .line 201
    invoke-virtual {v1, v3, v2, v4}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :pswitch_3
    if-ne v1, v4, :cond_5

    .line 206
    .line 207
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 212
    .line 213
    if-eqz v1, :cond_5

    .line 214
    .line 215
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_5

    .line 220
    .line 221
    invoke-virtual {v1, v5}, Lcom/syu/carlink/CarLinkService;->f(Z)V

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-virtual {v9}, Lcom/syu/carlink/MainActivity;->k()V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :pswitch_4
    if-eq v8, v5, :cond_7

    .line 229
    .line 230
    if-eq v8, v6, :cond_6

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {v9}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Lcom/syu/carlink/e;

    .line 238
    .line 239
    invoke-direct {v2, v9, v10}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 240
    .line 241
    .line 242
    const-wide/16 v3, 0x1f4

    .line 243
    .line 244
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_7
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 249
    .line 250
    .line 251
    :cond_8
    :goto_0
    return-void

    .line 252
    :goto_1
    check-cast v9, Lcom/syu/carlink/fragment/LogoFragment;

    .line 253
    .line 254
    move-object/from16 v1, p1

    .line 255
    .line 256
    check-cast v1, Ljava/lang/Integer;

    .line 257
    .line 258
    sget v11, Lcom/syu/carlink/fragment/LogoFragment;->g:I

    .line 259
    .line 260
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v8, "it"

    .line 264
    .line 265
    invoke-static {v1, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    const/4 v8, 0x6

    .line 273
    const/16 v11, 0x9

    .line 274
    .line 275
    const-string v13, "getBoolean"

    .line 276
    .line 277
    const-string v14, "android.os.SystemProperties"

    .line 278
    .line 279
    const-class v15, Ljava/lang/String;

    .line 280
    .line 281
    const-string v16, "sys.carlink.universal_skin"

    .line 282
    .line 283
    const/4 v12, 0x4

    .line 284
    if-eq v1, v4, :cond_12

    .line 285
    .line 286
    if-eq v1, v12, :cond_9

    .line 287
    .line 288
    if-eq v1, v10, :cond_12

    .line 289
    .line 290
    if-eq v1, v8, :cond_9

    .line 291
    .line 292
    const/4 v8, 0x7

    .line 293
    if-eq v1, v8, :cond_9

    .line 294
    .line 295
    if-eq v1, v11, :cond_12

    .line 296
    .line 297
    const/16 v8, 0xfe

    .line 298
    .line 299
    if-eq v1, v8, :cond_9

    .line 300
    .line 301
    goto/16 :goto_9

    .line 302
    .line 303
    :cond_9
    iget-object v8, v9, Lcom/syu/carlink/fragment/LogoFragment;->d:Landroid/widget/ImageView;

    .line 304
    .line 305
    if-eqz v8, :cond_1a

    .line 306
    .line 307
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 312
    .line 313
    if-eqz v11, :cond_a

    .line 314
    .line 315
    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_a
    move-object v10, v2

    .line 319
    :goto_2
    if-nez v10, :cond_11

    .line 320
    .line 321
    new-array v10, v6, [Ljava/lang/Class;

    .line 322
    .line 323
    aput-object v15, v10, v3

    .line 324
    .line 325
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    aput-object v11, v10, v5

    .line 331
    .line 332
    new-array v11, v6, [Ljava/lang/Object;

    .line 333
    .line 334
    aput-object v16, v11, v3

    .line 335
    .line 336
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 337
    .line 338
    aput-object v15, v11, v5

    .line 339
    .line 340
    invoke-static {v14, v2, v13, v10, v11}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    check-cast v10, Ljava/lang/Boolean;

    .line 345
    .line 346
    if-eqz v10, :cond_b

    .line 347
    .line 348
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    goto :goto_3

    .line 353
    :cond_b
    move v10, v3

    .line 354
    :goto_3
    if-eqz v10, :cond_c

    .line 355
    .line 356
    sget v6, Le/u;->connectting_anim:I

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_c
    new-array v10, v5, [I

    .line 360
    .line 361
    const/16 v11, 0x83

    .line 362
    .line 363
    aput v11, v10, v3

    .line 364
    .line 365
    iget v11, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 366
    .line 367
    invoke-static {v10, v11}, Lt/c;->H([II)Z

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    if-eqz v10, :cond_d

    .line 372
    .line 373
    sget v6, Le/u;->connectting_anim_dd:I

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_d
    new-array v6, v6, [I

    .line 377
    .line 378
    fill-array-data v6, :array_0

    .line 379
    .line 380
    .line 381
    iget v10, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 382
    .line 383
    invoke-static {v6, v10}, Lt/c;->H([II)Z

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-eqz v6, :cond_e

    .line 388
    .line 389
    sget v6, Le/u;->connectting_anim_yuf:I

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_e
    new-array v6, v5, [I

    .line 393
    .line 394
    const/16 v10, 0x5f

    .line 395
    .line 396
    aput v10, v6, v3

    .line 397
    .line 398
    iget v10, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 399
    .line 400
    invoke-static {v6, v10}, Lt/c;->H([II)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-eqz v6, :cond_f

    .line 405
    .line 406
    sget v6, Le/u;->connectting_anim_tzy2:I

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_f
    sget v6, Le/u;->connectting_anim:I

    .line 410
    .line 411
    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    .line 419
    .line 420
    if-eqz v8, :cond_10

    .line 421
    .line 422
    move-object v10, v6

    .line 423
    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_10
    move-object v10, v2

    .line 427
    :cond_11
    :goto_5
    if-eqz v10, :cond_1a

    .line 428
    .line 429
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-nez v6, :cond_1a

    .line 434
    .line 435
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_9

    .line 439
    .line 440
    :cond_12
    iget-object v8, v9, Lcom/syu/carlink/fragment/LogoFragment;->d:Landroid/widget/ImageView;

    .line 441
    .line 442
    if-eqz v8, :cond_1a

    .line 443
    .line 444
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 449
    .line 450
    if-eqz v11, :cond_13

    .line 451
    .line 452
    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_13
    move-object v10, v2

    .line 456
    :goto_6
    if-eqz v10, :cond_14

    .line 457
    .line 458
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 459
    .line 460
    .line 461
    move-result v11

    .line 462
    if-eqz v11, :cond_14

    .line 463
    .line 464
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 465
    .line 466
    .line 467
    :cond_14
    new-array v10, v6, [Ljava/lang/Class;

    .line 468
    .line 469
    aput-object v15, v10, v3

    .line 470
    .line 471
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 472
    .line 473
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    aput-object v11, v10, v5

    .line 477
    .line 478
    new-array v11, v6, [Ljava/lang/Object;

    .line 479
    .line 480
    aput-object v16, v11, v3

    .line 481
    .line 482
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 483
    .line 484
    aput-object v15, v11, v5

    .line 485
    .line 486
    invoke-static {v14, v2, v13, v10, v11}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    check-cast v10, Ljava/lang/Boolean;

    .line 491
    .line 492
    if-eqz v10, :cond_15

    .line 493
    .line 494
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    goto :goto_7

    .line 499
    :cond_15
    move v10, v3

    .line 500
    :goto_7
    if-eqz v10, :cond_16

    .line 501
    .line 502
    sget v6, Le/u;->connectting_07:I

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_16
    new-array v10, v5, [I

    .line 506
    .line 507
    const/16 v11, 0x83

    .line 508
    .line 509
    aput v11, v10, v3

    .line 510
    .line 511
    iget v11, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 512
    .line 513
    invoke-static {v10, v11}, Lt/c;->H([II)Z

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    if-eqz v10, :cond_17

    .line 518
    .line 519
    sget v6, Le/u;->connectting_dd_00:I

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_17
    new-array v6, v6, [I

    .line 523
    .line 524
    fill-array-data v6, :array_1

    .line 525
    .line 526
    .line 527
    iget v10, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 528
    .line 529
    invoke-static {v6, v10}, Lt/c;->H([II)Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    if-eqz v6, :cond_18

    .line 534
    .line 535
    sget v6, Le/u;->wait_connect_yf:I

    .line 536
    .line 537
    goto :goto_8

    .line 538
    :cond_18
    new-array v6, v5, [I

    .line 539
    .line 540
    const/16 v10, 0x5f

    .line 541
    .line 542
    aput v10, v6, v3

    .line 543
    .line 544
    iget v10, v9, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 545
    .line 546
    invoke-static {v6, v10}, Lt/c;->H([II)Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_19

    .line 551
    .line 552
    sget v6, Le/u;->connectting_tzy_00142:I

    .line 553
    .line 554
    goto :goto_8

    .line 555
    :cond_19
    sget v6, Le/u;->connectting_07:I

    .line 556
    .line 557
    :goto_8
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    .line 559
    .line 560
    :cond_1a
    :goto_9
    if-eq v1, v4, :cond_23

    .line 561
    .line 562
    if-eq v1, v12, :cond_21

    .line 563
    .line 564
    const/4 v4, 0x5

    .line 565
    if-eq v1, v4, :cond_20

    .line 566
    .line 567
    const/4 v4, 0x6

    .line 568
    if-eq v1, v4, :cond_1f

    .line 569
    .line 570
    const/16 v4, 0x9

    .line 571
    .line 572
    if-eq v1, v4, :cond_1b

    .line 573
    .line 574
    goto/16 :goto_b

    .line 575
    .line 576
    :cond_1b
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    if-eqz v4, :cond_1c

    .line 581
    .line 582
    sget v2, Le/v;->no_support_carplay_tv:I

    .line 583
    .line 584
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    :cond_1c
    if-eqz v2, :cond_1d

    .line 589
    .line 590
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-nez v4, :cond_1d

    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_1d
    move v5, v3

    .line 598
    :goto_a
    if-nez v5, :cond_24

    .line 599
    .line 600
    if-nez v2, :cond_1e

    .line 601
    .line 602
    goto :goto_b

    .line 603
    :cond_1e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_1f
    invoke-virtual {v9}, Lcom/syu/carlink/fragment/LogoFragment;->a()Landroid/widget/TextView;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    sget v3, Le/x;->link_authenticated:I

    .line 612
    .line 613
    invoke-virtual {v9, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_20
    invoke-virtual {v9}, Lcom/syu/carlink/fragment/LogoFragment;->a()Landroid/widget/TextView;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    sget v3, Le/x;->link_connected:I

    .line 626
    .line 627
    invoke-virtual {v9, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .line 633
    .line 634
    goto :goto_b

    .line 635
    :cond_21
    iget-object v2, v9, Lcom/syu/carlink/fragment/LogoFragment;->b:Landroid/view/View;

    .line 636
    .line 637
    if-eqz v2, :cond_22

    .line 638
    .line 639
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    if-nez v3, :cond_22

    .line 644
    .line 645
    const/16 v3, 0x8

    .line 646
    .line 647
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 648
    .line 649
    .line 650
    :cond_22
    sget v2, Le/x;->link_loading:I

    .line 651
    .line 652
    invoke-virtual {v9, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    const-string v3, "getString(R.string.link_loading)"

    .line 657
    .line 658
    invoke-static {v2, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v9}, Lcom/syu/carlink/fragment/LogoFragment;->a()Landroid/widget/TextView;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    goto :goto_b

    .line 669
    :cond_23
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    const-string v3, "value"

    .line 674
    .line 675
    invoke-static {v2, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    const-string v3, "sys.carlink.type"

    .line 679
    .line 680
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v9}, Lcom/syu/carlink/fragment/LogoFragment;->a()Landroid/widget/TextView;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    sget v3, Le/x;->link_waitting:I

    .line 688
    .line 689
    invoke-virtual {v9, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    .line 695
    .line 696
    :cond_24
    :goto_b
    const-string v2, "=============>>>>LogoFragment handleLinkState  state: "

    .line 697
    .line 698
    const-string v3, " getString: "

    .line 699
    .line 700
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    sget v2, Le/x;->link_loading:I

    .line 705
    .line 706
    invoke-virtual {v9, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-static {v7, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :array_0
    .array-data 4
        0x70
        0x8c
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_1
    .array-data 4
        0x70
        0x8c
    .end array-data
.end method
