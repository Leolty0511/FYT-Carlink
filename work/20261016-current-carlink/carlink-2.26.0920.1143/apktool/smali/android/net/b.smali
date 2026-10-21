.class public final synthetic Landroid/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroid/net/b;->b:I

    iput-object p1, p0, Landroid/net/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Landroid/net/b;->b:I

    .line 2
    .line 3
    const-string v1, "HDL"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string/jumbo v3, "me"

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    const-string/jumbo v8, "this$0"

    .line 14
    .line 15
    .line 16
    iget-object v9, p0, Landroid/net/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :pswitch_0
    check-cast v9, Lcom/syu/carlink/ui/a;

    .line 24
    .line 25
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, v9, Lcom/syu/carlink/ui/a;->f:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, v9, Lcom/syu/carlink/ui/a;->f:I

    .line 32
    .line 33
    invoke-virtual {v9, v0}, Lcom/syu/carlink/ui/a;->b(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast v9, Landroid/widget/ImageView;

    .line 38
    .line 39
    sget v0, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 40
    .line 41
    const-string v0, "$this_run"

    .line 42
    .line 43
    invoke-static {v9, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/io/FileInputStream;

    .line 47
    .line 48
    const-string v1, "/sdcard/carlink/logo/car_log.png"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    check-cast v9, Lcom/syu/carlink/fragment/CarplayFragment;

    .line 62
    .line 63
    sget v0, Lcom/syu/carlink/fragment/CarplayFragment;->m:I

    .line 64
    .line 65
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    iget-object v2, v9, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 79
    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move v2, v4

    .line 88
    :goto_0
    iget-object v3, v9, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 89
    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v3, v4

    .line 98
    :goto_1
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 99
    .line 100
    if-eqz v5, :cond_2

    .line 101
    .line 102
    iget v7, v5, Lh/c;->d:I

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move v7, v4

    .line 106
    :goto_2
    if-eqz v5, :cond_3

    .line 107
    .line 108
    iget v5, v5, Lh/c;->e:I

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move v5, v4

    .line 112
    :goto_3
    if-lez v2, :cond_7

    .line 113
    .line 114
    if-lez v3, :cond_7

    .line 115
    .line 116
    if-ne v7, v2, :cond_4

    .line 117
    .line 118
    if-eq v5, v3, :cond_7

    .line 119
    .line 120
    :cond_4
    if-lez v7, :cond_5

    .line 121
    .line 122
    if-lez v5, :cond_5

    .line 123
    .line 124
    int-to-float v8, v7

    .line 125
    int-to-float v10, v5

    .line 126
    div-float/2addr v8, v10

    .line 127
    int-to-float v10, v2

    .line 128
    int-to-float v11, v3

    .line 129
    div-float/2addr v10, v11

    .line 130
    sub-float/2addr v8, v10

    .line 131
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    div-float/2addr v8, v10

    .line 136
    const v10, 0x3ca3d70a    # 0.02f

    .line 137
    .line 138
    .line 139
    cmpl-float v8, v8, v10

    .line 140
    .line 141
    if-lez v8, :cond_5

    .line 142
    .line 143
    const-string v8, "Carplay onResume aspect mismatch, negotiated: "

    .line 144
    .line 145
    const-string v10, " x "

    .line 146
    .line 147
    const-string v11, ", actual: "

    .line 148
    .line 149
    invoke-static {v8, v7, v10, v5, v11}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-static {v1, v8}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v8, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 170
    .line 171
    invoke-static {v8}, Lt/b;->e(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v2, v3}, Lh/c;->b(II)Landroid/util/Size;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v0, v8}, Lcom/syu/carlink/CarLinkService;->k(Landroid/util/Size;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 182
    .line 183
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v7, v5, v2, v3}, Lh/c;->c(IIII)[I

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    aget v4, v0, v4

    .line 191
    .line 192
    if-ne v4, v2, :cond_6

    .line 193
    .line 194
    aget v0, v0, v6

    .line 195
    .line 196
    if-eq v0, v3, :cond_7

    .line 197
    .line 198
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v4, "Carplay onResume updateSurfaceViewLayout("

    .line 201
    .line 202
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, ", "

    .line 209
    .line 210
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const/16 v4, 0x29

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v2, v3, v6}, Lcom/syu/carlink/fragment/CarplayFragment;->b(IIZ)V

    .line 229
    .line 230
    .line 231
    :cond_7
    return-void

    .line 232
    :cond_8
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v7

    .line 236
    :pswitch_3
    check-cast v9, Lcom/syu/carlink/carplay/a;

    .line 237
    .line 238
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget v0, v9, Lcom/syu/carlink/carplay/a;->d:I

    .line 242
    .line 243
    if-ltz v0, :cond_9

    .line 244
    .line 245
    iget v1, v9, Lcom/syu/carlink/carplay/a;->c:I

    .line 246
    .line 247
    if-lt v1, v0, :cond_9

    .line 248
    .line 249
    iget-object v0, v9, Lcom/syu/carlink/carplay/a;->e:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v4, v0}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v9, Lcom/syu/carlink/carplay/a;->f:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v6, v0}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v9, Lcom/syu/carlink/carplay/a;->g:Ljava/lang/String;

    .line 260
    .line 261
    const/4 v1, 0x2

    .line 262
    invoke-static {v1, v0}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-array v0, v1, [I

    .line 266
    .line 267
    aput v5, v0, v4

    .line 268
    .line 269
    iget v2, v9, Lcom/syu/carlink/carplay/a;->i:I

    .line 270
    .line 271
    aput v2, v0, v6

    .line 272
    .line 273
    invoke-static {v0}, Lcom/syu/carlink/carplay/a;->b([I)V

    .line 274
    .line 275
    .line 276
    new-array v0, v5, [I

    .line 277
    .line 278
    const/4 v2, 0x5

    .line 279
    aput v2, v0, v4

    .line 280
    .line 281
    iget v2, v9, Lcom/syu/carlink/carplay/a;->d:I

    .line 282
    .line 283
    aput v2, v0, v6

    .line 284
    .line 285
    iget v2, v9, Lcom/syu/carlink/carplay/a;->c:I

    .line 286
    .line 287
    aput v2, v0, v1

    .line 288
    .line 289
    invoke-static {v0}, Lcom/syu/carlink/carplay/a;->b([I)V

    .line 290
    .line 291
    .line 292
    new-array v0, v1, [I

    .line 293
    .line 294
    const/4 v2, 0x6

    .line 295
    aput v2, v0, v4

    .line 296
    .line 297
    iget v2, v9, Lcom/syu/carlink/carplay/a;->j:I

    .line 298
    .line 299
    aput v2, v0, v6

    .line 300
    .line 301
    invoke-static {v0}, Lcom/syu/carlink/carplay/a;->b([I)V

    .line 302
    .line 303
    .line 304
    new-array v0, v1, [I

    .line 305
    .line 306
    const/4 v1, 0x7

    .line 307
    aput v1, v0, v4

    .line 308
    .line 309
    iget v1, v9, Lcom/syu/carlink/carplay/a;->k:I

    .line 310
    .line 311
    aput v1, v0, v6

    .line 312
    .line 313
    invoke-static {v0}, Lcom/syu/carlink/carplay/a;->b([I)V

    .line 314
    .line 315
    .line 316
    const/16 v0, 0xb

    .line 317
    .line 318
    iget-object v1, v9, Lcom/syu/carlink/carplay/a;->h:Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v0, v1}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    return-void

    .line 324
    :pswitch_4
    check-cast v9, Lh/b;

    .line 325
    .line 326
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    if-eqz v0, :cond_a

    .line 338
    .line 339
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 340
    .line 341
    if-eqz v0, :cond_a

    .line 342
    .line 343
    invoke-virtual {v0, v9, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    :cond_a
    iput v2, v9, Lh/b;->a:I

    .line 348
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v3, "===========================>>>>  onAudioFocusChange  hashAudioFocus:"

    .line 352
    .line 353
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget v3, v9, Lh/b;->a:I

    .line 357
    .line 358
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v3, "  isShowing: "

    .line 362
    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    iget-boolean v3, v3, Lcom/syu/carlink/CarLink;->d:Z

    .line 371
    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    if-ne v2, v6, :cond_c

    .line 383
    .line 384
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v3, "============>>>>02  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 3 noMix: "

    .line 394
    .line 395
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v3, "  isMediaAudio: "

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->t()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    if-eqz v0, :cond_b

    .line 425
    .line 426
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    if-eqz v0, :cond_c

    .line 435
    .line 436
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 437
    .line 438
    if-eqz v0, :cond_c

    .line 439
    .line 440
    invoke-virtual {v0, v6}, Lh/c;->j(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_4

    .line 444
    :cond_b
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_c

    .line 453
    .line 454
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    if-eqz v0, :cond_c

    .line 463
    .line 464
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 465
    .line 466
    if-eqz v0, :cond_c

    .line 467
    .line 468
    invoke-virtual {v0, v6}, Lh/c;->j(Z)V

    .line 469
    .line 470
    .line 471
    :cond_c
    :goto_4
    return-void

    .line 472
    :pswitch_5
    check-cast v9, Lcom/syu/carlink/UsbScanner;

    .line 473
    .line 474
    sget-object v0, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 475
    .line 476
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object v0, v9, Lcom/syu/carlink/UsbScanner;->f:Landroid/hardware/usb/UsbDevice;

    .line 480
    .line 481
    if-nez v0, :cond_d

    .line 482
    .line 483
    goto/16 :goto_7

    .line 484
    .line 485
    :cond_d
    iput-object v7, v9, Lcom/syu/carlink/UsbScanner;->f:Landroid/hardware/usb/UsbDevice;

    .line 486
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string/jumbo v2, "recheckAttach  linkState: "

    .line 490
    .line 491
    .line 492
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 496
    .line 497
    if-eqz v2, :cond_16

    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const-string v2, "Usb"

    .line 511
    .line 512
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 516
    .line 517
    if-eqz v1, :cond_15

    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eq v1, v5, :cond_e

    .line 524
    .line 525
    const-string/jumbo v0, "recheckAttach  link still active, drop"

    .line 526
    .line 527
    .line 528
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_e
    iget-object v1, v9, Lcom/syu/carlink/UsbScanner;->a:Landroid/hardware/usb/UsbManager;

    .line 533
    .line 534
    if-eqz v1, :cond_14

    .line 535
    .line 536
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    if-eqz v1, :cond_12

    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    if-eqz v1, :cond_12

    .line 547
    .line 548
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-eqz v3, :cond_f

    .line 553
    .line 554
    goto :goto_6

    .line 555
    :cond_f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-eqz v3, :cond_12

    .line 564
    .line 565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 570
    .line 571
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-static {v5, v7}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_11

    .line 584
    .line 585
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 590
    .line 591
    .line 592
    move-result v7

    .line 593
    if-ne v5, v7, :cond_11

    .line 594
    .line 595
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-ne v3, v5, :cond_11

    .line 604
    .line 605
    move v3, v6

    .line 606
    goto :goto_5

    .line 607
    :cond_11
    move v3, v4

    .line 608
    :goto_5
    if-eqz v3, :cond_10

    .line 609
    .line 610
    move v4, v6

    .line 611
    :cond_12
    :goto_6
    if-nez v4, :cond_13

    .line 612
    .line 613
    const-string/jumbo v0, "recheckAttach  device already gone, drop"

    .line 614
    .line 615
    .line 616
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    goto :goto_7

    .line 620
    :cond_13
    invoke-virtual {v9}, Lcom/syu/carlink/UsbScanner;->b()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v9, v0, v1}, Lcom/syu/carlink/UsbScanner;->d(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    .line 625
    .line 626
    .line 627
    :goto_7
    return-void

    .line 628
    :cond_14
    const-string/jumbo v0, "usbManager"

    .line 629
    .line 630
    .line 631
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v7

    .line 635
    :cond_15
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw v7

    .line 639
    :cond_16
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    throw v7

    .line 643
    :pswitch_6
    check-cast v9, Lcom/android/internal/os/FuseAppLoop;

    .line 644
    .line 645
    invoke-static {v9}, Lcom/android/internal/os/FuseAppLoop;->a(Lcom/android/internal/os/FuseAppLoop;)V

    .line 646
    .line 647
    .line 648
    return-void

    .line 649
    :pswitch_7
    check-cast v9, Landroidx/constraintlayout/helper/widget/Carousel;

    .line 650
    .line 651
    invoke-static {v9}, Landroidx/constraintlayout/helper/widget/Carousel;->c(Landroidx/constraintlayout/helper/widget/Carousel;)V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :pswitch_8
    check-cast v9, Landroidx/activity/OnBackPressedDispatcher;

    .line 656
    .line 657
    invoke-virtual {v9}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :pswitch_9
    check-cast v9, Landroidx/activity/ComponentDialog;

    .line 662
    .line 663
    invoke-static {v9}, Landroidx/activity/ComponentDialog;->b(Landroidx/activity/ComponentDialog;)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :pswitch_a
    check-cast v9, Landroidx/activity/ComponentActivity;

    .line 668
    .line 669
    invoke-virtual {v9}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :pswitch_b
    check-cast v9, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 674
    .line 675
    invoke-virtual {v9}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyColorsChanged()V

    .line 676
    .line 677
    .line 678
    return-void

    .line 679
    :pswitch_c
    check-cast v9, Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 680
    .line 681
    invoke-interface {v9}, Landroid/print/PrintManager$PrintServicesChangeListener;->onPrintServicesChanged()V

    .line 682
    .line 683
    .line 684
    return-void

    .line 685
    :pswitch_d
    check-cast v9, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 686
    .line 687
    invoke-interface {v9}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;->onPrintServiceRecommendationsChanged()V

    .line 688
    .line 689
    .line 690
    return-void

    .line 691
    :pswitch_e
    check-cast v9, Landroid/net/NetworkFactory;

    .line 692
    .line 693
    invoke-static {v9}, Landroid/net/NetworkFactory;->a(Landroid/net/NetworkFactory;)V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :goto_8
    check-cast v9, Lo/e;

    .line 698
    .line 699
    invoke-static {v9, v8}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    const-string v1, " bind <<===>> "

    .line 705
    .line 706
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    iget-object v1, v9, Lo/e;->d:Ljava/lang/String;

    .line 710
    .line 711
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v1, "  "

    .line 715
    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    sget-boolean v2, Lo/e;->i:Z

    .line 720
    .line 721
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    iget-object v1, v9, Lo/e;->e:Lcom/syu/ipc/IRemoteToolkit;

    .line 728
    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    const-string/jumbo v1, "remote"

    .line 737
    .line 738
    .line 739
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    sget-boolean v0, Lo/e;->i:Z

    .line 743
    .line 744
    if-eqz v0, :cond_17

    .line 745
    .line 746
    iget-object v0, v9, Lo/e;->e:Lcom/syu/ipc/IRemoteToolkit;

    .line 747
    .line 748
    if-nez v0, :cond_17

    .line 749
    .line 750
    invoke-virtual {v9}, Lo/e;->a()V

    .line 751
    .line 752
    .line 753
    :cond_17
    return-void

    .line 754
    nop

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
