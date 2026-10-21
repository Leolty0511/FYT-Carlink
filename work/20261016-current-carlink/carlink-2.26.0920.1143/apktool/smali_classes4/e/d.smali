.class public final synthetic Le/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/CarLinkService;I)V
    .locals 0

    iput p2, p0, Le/d;->a:I

    iput-object p1, p0, Le/d;->b:Lcom/syu/carlink/CarLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v7, v0, Le/d;->a:I

    .line 4
    .line 5
    const-string v8, "  "

    .line 6
    .line 7
    const-wide/16 v9, 0xc8

    .line 8
    .line 9
    const/4 v11, 0x2

    .line 10
    const-string v12, "sys.carlink.type"

    .line 11
    .line 12
    const-string v13, "value"

    .line 13
    .line 14
    const-string v14, "it"

    .line 15
    .line 16
    const/4 v15, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "HDL"

    .line 19
    .line 20
    const-string v3, "me"

    .line 21
    .line 22
    iget-object v4, v0, Le/d;->b:Lcom/syu/carlink/CarLinkService;

    .line 23
    .line 24
    const-string v6, "this$0"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    packed-switch v7, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_11

    .line 31
    .line 32
    :pswitch_0
    move-object/from16 v2, p1

    .line 33
    .line 34
    check-cast v2, Ljava/lang/Boolean;

    .line 35
    .line 36
    sget-object v7, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 42
    .line 43
    if-eqz v6, :cond_5

    .line 44
    .line 45
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const-string v7, "calling"

    .line 50
    .line 51
    if-nez v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const/4 v9, 0x0

    .line 58
    const/16 v10, 0x9f

    .line 59
    .line 60
    new-array v11, v1, [I

    .line 61
    .line 62
    invoke-static {v2, v7}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    aput v6, v11, v15

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    const/16 v13, 0x18

    .line 73
    .line 74
    invoke-static/range {v8 .. v13}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-static {v2, v7}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 87
    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    iget-boolean v6, v6, Lcom/syu/carlink/CarLink;->d:Z

    .line 91
    .line 92
    if-nez v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v5

    .line 102
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    iget-boolean v2, v2, Lcom/syu/carlink/CarLink;->d:Z

    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {v4, v1}, Lcom/syu/carlink/CarLinkService;->f(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v5

    .line 124
    :cond_4
    :goto_0
    return-void

    .line 125
    :cond_5
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v5

    .line 129
    :pswitch_1
    move-object/from16 v7, p1

    .line 130
    .line 131
    check-cast v7, Ljava/lang/Boolean;

    .line 132
    .line 133
    sget-object v9, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v6, "voice"

    .line 139
    .line 140
    invoke-static {v7, v6}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_b

    .line 148
    .line 149
    iget-object v6, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 150
    .line 151
    if-eqz v6, :cond_c

    .line 152
    .line 153
    iget v9, v6, Lh/c;->s:I

    .line 154
    .line 155
    if-ne v9, v11, :cond_6

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 159
    .line 160
    if-eqz v9, :cond_a

    .line 161
    .line 162
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->C()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-ne v9, v1, :cond_c

    .line 167
    .line 168
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 169
    .line 170
    if-eqz v9, :cond_9

    .line 171
    .line 172
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    if-eqz v9, :cond_7

    .line 177
    .line 178
    iget-object v9, v9, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 179
    .line 180
    if-eqz v9, :cond_7

    .line 181
    .line 182
    iget-object v10, v6, Lh/c;->t:Lh/a;

    .line 183
    .line 184
    invoke-virtual {v9, v10, v15, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    goto :goto_1

    .line 189
    :cond_7
    const/4 v9, -0x1

    .line 190
    :goto_1
    iput v9, v6, Lh/c;->s:I

    .line 191
    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v10, "===========================>>>>  requestVoiceFocus  type:: "

    .line 195
    .line 196
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v10, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 200
    .line 201
    if-eqz v10, :cond_8

    .line 202
    .line 203
    invoke-virtual {v10}, Lcom/syu/carlink/CarLink;->C()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v5

    .line 228
    :cond_9
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v5

    .line 232
    :cond_a
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v5

    .line 236
    :cond_b
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 237
    .line 238
    if-eqz v2, :cond_c

    .line 239
    .line 240
    invoke-virtual {v2}, Lh/c;->l()V

    .line 241
    .line 242
    .line 243
    :cond_c
    :goto_2
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 244
    .line 245
    if-eqz v2, :cond_10

    .line 246
    .line 247
    iget-boolean v2, v2, Lcom/syu/carlink/CarLink;->d:Z

    .line 248
    .line 249
    if-nez v2, :cond_d

    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_d

    .line 256
    .line 257
    invoke-virtual {v4, v1}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 258
    .line 259
    .line 260
    :cond_d
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 261
    .line 262
    if-eqz v2, :cond_f

    .line 263
    .line 264
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_e

    .line 269
    .line 270
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const/4 v9, 0x0

    .line 275
    const/16 v10, 0x9c

    .line 276
    .line 277
    new-array v11, v1, [I

    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    aput v1, v11, v15

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    const/16 v13, 0x18

    .line 287
    .line 288
    invoke-static/range {v8 .. v13}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    :cond_e
    return-void

    .line 292
    :cond_f
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v5

    .line 296
    :cond_10
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v5

    .line 300
    :pswitch_2
    move-object/from16 v7, p1

    .line 301
    .line 302
    check-cast v7, Ljava/lang/Integer;

    .line 303
    .line 304
    sget-object v8, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v6, v4, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 310
    .line 311
    iget-object v8, v4, Lcom/syu/carlink/CarLinkService;->M:Lcom/syu/carlink/a;

    .line 312
    .line 313
    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    .line 318
    .line 319
    if-nez v7, :cond_11

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    const/16 v9, 0xfe

    .line 327
    .line 328
    if-eq v8, v9, :cond_13

    .line 329
    .line 330
    :goto_3
    const-string v8, "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)"

    .line 331
    .line 332
    invoke-static {v2, v8}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    .line 336
    .line 337
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    .line 339
    .line 340
    if-nez v7, :cond_12

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    const/4 v6, 0x5

    .line 348
    if-ne v2, v6, :cond_13

    .line 349
    .line 350
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->i()V

    .line 351
    .line 352
    .line 353
    :cond_13
    :goto_4
    if-nez v7, :cond_14

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    const/4 v6, 0x3

    .line 361
    if-ne v2, v6, :cond_16

    .line 362
    .line 363
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 364
    .line 365
    if-eqz v2, :cond_16

    .line 366
    .line 367
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    iget-object v6, v4, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 372
    .line 373
    invoke-static {v6}, Lt/b;->e(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 381
    .line 382
    if-eqz v7, :cond_15

    .line 383
    .line 384
    invoke-virtual {v7}, Lcom/syu/carlink/CarLink;->s()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    xor-int/2addr v1, v3

    .line 389
    invoke-virtual {v4, v2, v6, v1}, Lcom/syu/carlink/CarLinkService;->v(III)V

    .line 390
    .line 391
    .line 392
    iput-object v5, v4, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_15
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v5

    .line 399
    :cond_16
    :goto_5
    return-void

    .line 400
    :pswitch_3
    move-object/from16 v1, p1

    .line 401
    .line 402
    check-cast v1, Ljava/lang/Boolean;

    .line 403
    .line 404
    sget-object v1, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v4, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 410
    .line 411
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 412
    .line 413
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :pswitch_4
    move-object/from16 v1, p1

    .line 421
    .line 422
    check-cast v1, Ljava/lang/Integer;

    .line 423
    .line 424
    sget-object v3, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v1, v14}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-gez v1, :cond_17

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string v3, "=================>>>initRunner  "

    .line 442
    .line 443
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget v3, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 447
    .line 448
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const/16 v3, 0x20

    .line 452
    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget v5, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 457
    .line 458
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget v1, v4, Lcom/syu/carlink/CarLinkService;->q:I

    .line 472
    .line 473
    if-eqz v1, :cond_19

    .line 474
    .line 475
    iget v1, v4, Lcom/syu/carlink/CarLinkService;->r:I

    .line 476
    .line 477
    if-nez v1, :cond_18

    .line 478
    .line 479
    goto :goto_6

    .line 480
    :cond_18
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->h0:Lcom/syu/carlink/b;

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const-wide/16 v3, 0x7d0

    .line 494
    .line 495
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    .line 497
    .line 498
    :cond_19
    :goto_6
    return-void

    .line 499
    :pswitch_5
    move-object/from16 v7, p1

    .line 500
    .line 501
    check-cast v7, Ljava/lang/Integer;

    .line 502
    .line 503
    sget-object v8, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v8, "===================>>  phoneStateHandler CarLink.me.isCarplay():: "

    .line 511
    .line 512
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 516
    .line 517
    if-eqz v8, :cond_21

    .line 518
    .line 519
    invoke-virtual {v8}, Lcom/syu/carlink/CarLink;->p()Z

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v8, " LinkType: "

    .line 527
    .line 528
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 532
    .line 533
    if-eqz v8, :cond_20

    .line 534
    .line 535
    invoke-virtual {v8}, Lcom/syu/carlink/CarLink;->C()I

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string v8, "  LinkState: "

    .line 543
    .line 544
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 548
    .line 549
    if-eqz v8, :cond_1f

    .line 550
    .line 551
    invoke-virtual {v8}, Lcom/syu/carlink/CarLink;->B()I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 566
    .line 567
    if-eqz v6, :cond_1e

    .line 568
    .line 569
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->p()Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-eqz v3, :cond_1d

    .line 574
    .line 575
    if-nez v7, :cond_1a

    .line 576
    .line 577
    goto :goto_7

    .line 578
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_1d

    .line 583
    .line 584
    :goto_7
    if-nez v7, :cond_1b

    .line 585
    .line 586
    goto :goto_8

    .line 587
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    const/4 v5, 0x6

    .line 592
    if-eq v3, v5, :cond_1d

    .line 593
    .line 594
    :goto_8
    if-nez v7, :cond_1c

    .line 595
    .line 596
    goto :goto_9

    .line 597
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eq v3, v1, :cond_1d

    .line 602
    .line 603
    :goto_9
    const-string v3, "===================>>  C_LINK_CUT : 1"

    .line 604
    .line 605
    invoke-static {v2, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    const/4 v6, 0x2

    .line 613
    const/16 v7, 0xd

    .line 614
    .line 615
    new-array v8, v1, [I

    .line 616
    .line 617
    aput v1, v8, v15

    .line 618
    .line 619
    const/4 v9, 0x0

    .line 620
    const/16 v10, 0x18

    .line 621
    .line 622
    invoke-static/range {v5 .. v10}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 623
    .line 624
    .line 625
    :cond_1d
    return-void

    .line 626
    :cond_1e
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    throw v5

    .line 630
    :cond_1f
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v5

    .line 634
    :cond_20
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v5

    .line 638
    :cond_21
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    throw v5

    .line 642
    :pswitch_6
    move-object/from16 v7, p1

    .line 643
    .line 644
    check-cast v7, Ljava/lang/Boolean;

    .line 645
    .line 646
    sget-object v8, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 647
    .line 648
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 652
    .line 653
    if-eqz v6, :cond_25

    .line 654
    .line 655
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->l()Z

    .line 656
    .line 657
    .line 658
    move-result v6

    .line 659
    if-eqz v6, :cond_22

    .line 660
    .line 661
    sget-object v1, Lf/k;->y:Lf/k;

    .line 662
    .line 663
    iget-object v1, v1, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 664
    .line 665
    if-eqz v1, :cond_23

    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/syu/carlink/auto/AutoFragment;->h()V

    .line 668
    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_22
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 672
    .line 673
    if-eqz v6, :cond_24

    .line 674
    .line 675
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->p()Z

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-eqz v3, :cond_23

    .line 680
    .line 681
    const-string v3, "night"

    .line 682
    .line 683
    invoke-static {v7, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    new-instance v6, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v7, "CARPLAY_C2S_NIGHTMODE state: "

    .line 693
    .line 694
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 708
    .line 709
    if-eqz v2, :cond_23

    .line 710
    .line 711
    new-array v1, v1, [I

    .line 712
    .line 713
    aput v3, v1, v15

    .line 714
    .line 715
    const/16 v3, 0xdf

    .line 716
    .line 717
    invoke-virtual {v2, v3, v5, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 718
    .line 719
    .line 720
    :cond_23
    :goto_a
    return-void

    .line 721
    :cond_24
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v5

    .line 725
    :cond_25
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    throw v5

    .line 729
    :pswitch_7
    move-object/from16 v7, p1

    .line 730
    .line 731
    check-cast v7, Ljava/lang/Boolean;

    .line 732
    .line 733
    sget-object v8, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v8, "handleActivation -------- xxxxxxx  ---- activated: "

    .line 741
    .line 742
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v6

    .line 752
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const-string v2, "activated"

    .line 756
    .line 757
    invoke-static {v7, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    iget-object v6, v4, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 765
    .line 766
    if-eqz v2, :cond_2b

    .line 767
    .line 768
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 769
    .line 770
    if-eqz v2, :cond_2a

    .line 771
    .line 772
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->p()Z

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    if-eqz v2, :cond_26

    .line 777
    .line 778
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-static {v1, v13}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    goto :goto_b

    .line 789
    :cond_26
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 790
    .line 791
    if-eqz v1, :cond_29

    .line 792
    .line 793
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->l()Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-eqz v1, :cond_27

    .line 798
    .line 799
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-static {v1, v13}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    :cond_27
    :goto_b
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 810
    .line 811
    if-eqz v1, :cond_28

    .line 812
    .line 813
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->n()Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    if-eqz v1, :cond_2b

    .line 818
    .line 819
    new-instance v1, Landroid/os/b;

    .line 820
    .line 821
    const/4 v2, 0x3

    .line 822
    invoke-direct {v1, v2}, Landroid/os/b;-><init>(I)V

    .line 823
    .line 824
    .line 825
    const-wide/16 v8, 0x3e8

    .line 826
    .line 827
    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 828
    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_28
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v5

    .line 835
    :cond_29
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    throw v5

    .line 839
    :cond_2a
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    throw v5

    .line 843
    :cond_2b
    :goto_c
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 844
    .line 845
    .line 846
    move-result v1

    .line 847
    if-nez v1, :cond_2f

    .line 848
    .line 849
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 850
    .line 851
    if-eqz v1, :cond_2e

    .line 852
    .line 853
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->l()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-eqz v1, :cond_2c

    .line 858
    .line 859
    sget-object v1, Lf/k;->y:Lf/k;

    .line 860
    .line 861
    iget-object v1, v1, Lf/k;->k:Lf/g;

    .line 862
    .line 863
    if-eqz v1, :cond_34

    .line 864
    .line 865
    check-cast v1, Lcom/syu/carlink/MainActivity;

    .line 866
    .line 867
    invoke-virtual {v1}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {v1}, Lcom/syu/carlink/auto/AutoFragment;->g()V

    .line 872
    .line 873
    .line 874
    sget-object v1, Lf/k;->y:Lf/k;

    .line 875
    .line 876
    const-wide/16 v2, 0xa

    .line 877
    .line 878
    invoke-virtual {v1, v2, v3}, Lf/k;->e(J)V

    .line 879
    .line 880
    .line 881
    goto :goto_e

    .line 882
    :cond_2c
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 883
    .line 884
    if-eqz v1, :cond_2d

    .line 885
    .line 886
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->p()Z

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    if-eqz v1, :cond_34

    .line 891
    .line 892
    iget-object v1, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 893
    .line 894
    if-eqz v1, :cond_34

    .line 895
    .line 896
    invoke-static {v1}, Lh/c;->i(Lh/c;)V

    .line 897
    .line 898
    .line 899
    goto :goto_e

    .line 900
    :cond_2d
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    throw v5

    .line 904
    :cond_2e
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    throw v5

    .line 908
    :cond_2f
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 909
    .line 910
    if-eqz v1, :cond_35

    .line 911
    .line 912
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    const/4 v2, 0x3

    .line 917
    if-ne v1, v2, :cond_34

    .line 918
    .line 919
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 920
    .line 921
    if-eqz v1, :cond_33

    .line 922
    .line 923
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->J()Z

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    if-nez v1, :cond_34

    .line 928
    .line 929
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 930
    .line 931
    if-eqz v1, :cond_32

    .line 932
    .line 933
    iget-boolean v2, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 934
    .line 935
    if-nez v2, :cond_31

    .line 936
    .line 937
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->y()Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-nez v1, :cond_31

    .line 942
    .line 943
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 944
    .line 945
    if-eqz v1, :cond_30

    .line 946
    .line 947
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->z()Z

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    if-eqz v1, :cond_34

    .line 952
    .line 953
    goto :goto_d

    .line 954
    :cond_30
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    throw v5

    .line 958
    :cond_31
    :goto_d
    new-instance v1, Lcom/syu/carlink/a;

    .line 959
    .line 960
    const/16 v2, 0x8

    .line 961
    .line 962
    invoke-direct {v1, v4, v2}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 963
    .line 964
    .line 965
    const-wide/16 v2, 0x320

    .line 966
    .line 967
    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 968
    .line 969
    .line 970
    goto :goto_e

    .line 971
    :cond_32
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v5

    .line 975
    :cond_33
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    throw v5

    .line 979
    :cond_34
    :goto_e
    return-void

    .line 980
    :cond_35
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    throw v5

    .line 984
    :pswitch_8
    move-object/from16 v1, p1

    .line 985
    .line 986
    check-cast v1, Ljava/lang/Boolean;

    .line 987
    .line 988
    sget-object v7, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    new-instance v6, Ljava/lang/StringBuilder;

    .line 994
    .line 995
    const-string v7, "handleBtOn ------------ bt: "

    .line 996
    .line 997
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v7, " CarLink.me.isPowerOn() : "

    .line 1004
    .line 1005
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1009
    .line 1010
    if-eqz v7, :cond_38

    .line 1011
    .line 1012
    invoke-virtual {v7}, Lcom/syu/carlink/CarLink;->v()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v7

    .line 1016
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    const-string v2, "btOn"

    .line 1027
    .line 1028
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    if-eqz v1, :cond_37

    .line 1036
    .line 1037
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1038
    .line 1039
    if-eqz v1, :cond_36

    .line 1040
    .line 1041
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->v()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v1

    .line 1045
    if-eqz v1, :cond_37

    .line 1046
    .line 1047
    iget-object v1, v4, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 1048
    .line 1049
    new-instance v2, Landroid/os/b;

    .line 1050
    .line 1051
    const/4 v3, 0x5

    .line 1052
    invoke-direct {v2, v3}, Landroid/os/b;-><init>(I)V

    .line 1053
    .line 1054
    .line 1055
    const-wide/16 v3, 0x3e8

    .line 1056
    .line 1057
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1058
    .line 1059
    .line 1060
    goto :goto_f

    .line 1061
    :cond_36
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    throw v5

    .line 1065
    :cond_37
    :goto_f
    return-void

    .line 1066
    :cond_38
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    throw v5

    .line 1070
    :pswitch_9
    move-object/from16 v7, p1

    .line 1071
    .line 1072
    check-cast v7, Ljava/lang/Boolean;

    .line 1073
    .line 1074
    sget-object v8, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1075
    .line 1076
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string v8, "mediaPlaying ----------------->>CarLink.me.appId(): "

    .line 1082
    .line 1083
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1087
    .line 1088
    if-eqz v8, :cond_3d

    .line 1089
    .line 1090
    invoke-virtual {v8}, Lcom/syu/carlink/CarLink;->a()I

    .line 1091
    .line 1092
    .line 1093
    move-result v8

    .line 1094
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    const-string v8, " isMediaPlaying  : "

    .line 1098
    .line 1099
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    const-string v8, "  isUIShowing: "

    .line 1106
    .line 1107
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1111
    .line 1112
    if-eqz v8, :cond_3c

    .line 1113
    .line 1114
    iget-boolean v8, v8, Lcom/syu/carlink/CarLink;->d:Z

    .line 1115
    .line 1116
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    const/16 v8, 0x20

    .line 1120
    .line 1121
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v6

    .line 1128
    invoke-static {v2, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-static {v7, v14}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1135
    .line 1136
    .line 1137
    move-result v2

    .line 1138
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    invoke-static {v2, v13}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    const-string v6, "sys.carlink.7731_cp_media"

    .line 1146
    .line 1147
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v2

    .line 1154
    if-eqz v2, :cond_3b

    .line 1155
    .line 1156
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1157
    .line 1158
    if-eqz v2, :cond_3a

    .line 1159
    .line 1160
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 1161
    .line 1162
    .line 1163
    move-result v2

    .line 1164
    const/4 v3, 0x5

    .line 1165
    if-eq v2, v3, :cond_39

    .line 1166
    .line 1167
    goto :goto_10

    .line 1168
    :cond_39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    invoke-static {v1, v13}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->i()V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_10

    .line 1182
    :cond_3a
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    throw v5

    .line 1186
    :cond_3b
    :goto_10
    return-void

    .line 1187
    :cond_3c
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    throw v5

    .line 1191
    :cond_3d
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    throw v5

    .line 1195
    :goto_11
    move-object/from16 v7, p1

    .line 1196
    .line 1197
    check-cast v7, Ljava/lang/Boolean;

    .line 1198
    .line 1199
    sget-object v9, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1200
    .line 1201
    invoke-static {v4, v6}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    const-string v6, "navi"

    .line 1205
    .line 1206
    invoke-static {v7, v6}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1210
    .line 1211
    .line 1212
    move-result v6

    .line 1213
    if-eqz v6, :cond_43

    .line 1214
    .line 1215
    iget-object v6, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1216
    .line 1217
    if-eqz v6, :cond_44

    .line 1218
    .line 1219
    iget v9, v6, Lh/c;->q:I

    .line 1220
    .line 1221
    const/4 v10, 0x3

    .line 1222
    if-ne v9, v10, :cond_3e

    .line 1223
    .line 1224
    goto :goto_13

    .line 1225
    :cond_3e
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1226
    .line 1227
    if-eqz v9, :cond_42

    .line 1228
    .line 1229
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->C()I

    .line 1230
    .line 1231
    .line 1232
    move-result v9

    .line 1233
    if-ne v9, v1, :cond_44

    .line 1234
    .line 1235
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1236
    .line 1237
    if-eqz v9, :cond_41

    .line 1238
    .line 1239
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v9

    .line 1243
    if-eqz v9, :cond_3f

    .line 1244
    .line 1245
    iget-object v9, v9, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 1246
    .line 1247
    if-eqz v9, :cond_3f

    .line 1248
    .line 1249
    iget-object v10, v6, Lh/c;->r:Lh/a;

    .line 1250
    .line 1251
    const/4 v11, 0x3

    .line 1252
    invoke-virtual {v9, v10, v1, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1253
    .line 1254
    .line 1255
    move-result v1

    .line 1256
    goto :goto_12

    .line 1257
    :cond_3f
    const/4 v1, -0x1

    .line 1258
    :goto_12
    iput v1, v6, Lh/c;->q:I

    .line 1259
    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    const-string v9, "===========================>>>>  requestNaviFocus  type:: "

    .line 1263
    .line 1264
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1268
    .line 1269
    if-eqz v9, :cond_40

    .line 1270
    .line 1271
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->C()I

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v1

    .line 1288
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    goto :goto_13

    .line 1292
    :cond_40
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    throw v5

    .line 1296
    :cond_41
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    throw v5

    .line 1300
    :cond_42
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    throw v5

    .line 1304
    :cond_43
    iget-object v1, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1305
    .line 1306
    if-eqz v1, :cond_44

    .line 1307
    .line 1308
    invoke-virtual {v1}, Lh/c;->k()V

    .line 1309
    .line 1310
    .line 1311
    :cond_44
    :goto_13
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v1

    .line 1315
    iget-object v2, v4, Lcom/syu/carlink/CarLinkService;->R:Lcom/syu/carlink/b;

    .line 1316
    .line 1317
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    if-eqz v3, :cond_45

    .line 1329
    .line 1330
    const-wide/16 v3, 0x0

    .line 1331
    .line 1332
    goto :goto_14

    .line 1333
    :cond_45
    const-wide/16 v3, 0xbb8

    .line 1334
    .line 1335
    :goto_14
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1336
    .line 1337
    .line 1338
    return-void

    .line 1339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
