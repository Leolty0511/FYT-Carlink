.class public final synthetic Lcom/syu/carlink/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/CarLinkService;I)V
    .locals 0

    iput p2, p0, Lcom/syu/carlink/a;->b:I

    iput-object p1, p0, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/syu/carlink/a;->b:I

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const-wide/16 v5, 0x64

    .line 9
    .line 10
    const-string v7, "me"

    .line 11
    .line 12
    const-string v8, "HDL"

    .line 13
    .line 14
    const/4 v9, 0x2

    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    const-string v12, "this$0"

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_16

    .line 24
    .line 25
    :pswitch_0
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 28
    .line 29
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->D:Le/g;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const-string v2, "Auto"

    .line 37
    .line 38
    const-string v3, "----------------act onBluetoothConnected"

    .line 39
    .line 40
    invoke-static {v2, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lf/k;->y:Lf/k;

    .line 44
    .line 45
    invoke-virtual {v2, v9}, Lf/k;->m(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v2, Lf/k;->y:Lf/k;

    .line 49
    .line 50
    invoke-virtual {v2}, Lf/k;->h()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v11}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :pswitch_1
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 63
    .line 64
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v5, v6}, Lcom/syu/carlink/CarLinkService;->d(J)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_2
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 74
    .line 75
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->t()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 89
    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Lh/c;->m()V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v13

    .line 105
    :pswitch_3
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 108
    .line 109
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-boolean v2, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    iput-boolean v11, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 117
    .line 118
    :cond_4
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->v()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_13

    .line 131
    .line 132
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->c()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_13

    .line 141
    .line 142
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->B()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eq v5, v4, :cond_5

    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :cond_5
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->J()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_6

    .line 163
    .line 164
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->z()Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_7

    .line 173
    .line 174
    :cond_6
    iget-boolean v5, v2, Lcom/syu/carlink/CarLink;->d:Z

    .line 175
    .line 176
    if-eqz v5, :cond_13

    .line 177
    .line 178
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v6, "syncBluetoothInfo ===>>> localMac: "

    .line 181
    .line 182
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->D()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v6, "   localBtName: "

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->E()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v6, "   linkState: "

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->B()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v6, "  "

    .line 221
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    sget-object v6, Lf/k;->y:Lf/k;

    .line 226
    .line 227
    invoke-virtual {v6}, Lf/k;->h()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    xor-int/2addr v6, v10

    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v8, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sget-object v5, Lf/k;->y:Lf/k;

    .line 243
    .line 244
    invoke-virtual {v5}, Lf/k;->h()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_12

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->q()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    const/16 v5, 0xe2

    .line 255
    .line 256
    if-nez v4, :cond_b

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->D()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_8

    .line 267
    .line 268
    move v3, v10

    .line 269
    goto :goto_0

    .line 270
    :cond_8
    move v3, v11

    .line 271
    :goto_0
    if-nez v3, :cond_13

    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->E()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-nez v3, :cond_9

    .line 282
    .line 283
    move v3, v10

    .line 284
    goto :goto_1

    .line 285
    :cond_9
    move v3, v11

    .line 286
    :goto_1
    if-eqz v3, :cond_a

    .line 287
    .line 288
    goto/16 :goto_6

    .line 289
    .line 290
    :cond_a
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 291
    .line 292
    if-eqz v0, :cond_13

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->E()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->D()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    new-array v4, v11, [I

    .line 303
    .line 304
    new-array v6, v9, [Ljava/lang/String;

    .line 305
    .line 306
    aput-object v3, v6, v11

    .line 307
    .line 308
    aput-object v2, v6, v10

    .line 309
    .line 310
    invoke-virtual {v0, v5, v6, v4}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 311
    .line 312
    .line 313
    goto/16 :goto_6

    .line 314
    .line 315
    :cond_b
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    const-string v6, "syncBluetoothInfo ===>>> bluetoothMac(): "

    .line 320
    .line 321
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v8, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-nez v4, :cond_c

    .line 337
    .line 338
    move v4, v10

    .line 339
    goto :goto_2

    .line 340
    :cond_c
    move v4, v11

    .line 341
    :goto_2
    if-nez v4, :cond_13

    .line 342
    .line 343
    iget-object v4, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 344
    .line 345
    if-nez v4, :cond_d

    .line 346
    .line 347
    new-instance v4, Ll/b;

    .line 348
    .line 349
    invoke-direct {v4}, Ll/b;-><init>()V

    .line 350
    .line 351
    .line 352
    iput-object v4, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 353
    .line 354
    :cond_d
    iget-object v4, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 355
    .line 356
    if-eqz v4, :cond_e

    .line 357
    .line 358
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->E()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->D()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    new-array v12, v11, [I

    .line 367
    .line 368
    new-array v9, v9, [Ljava/lang/String;

    .line 369
    .line 370
    aput-object v6, v9, v11

    .line 371
    .line 372
    aput-object v7, v9, v10

    .line 373
    .line 374
    invoke-virtual {v4, v5, v9, v12}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 375
    .line 376
    .line 377
    :cond_e
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 378
    .line 379
    if-eqz v0, :cond_13

    .line 380
    .line 381
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iget-object v0, v0, Ll/b;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v5, "syncBluetoothInfo inner Bt ===>>> bondedDevs size: "

    .line 394
    .line 395
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v8, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_13

    .line 421
    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 427
    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v6, "connect carplay Service ==>>> mac: "

    .line 431
    .line 432
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v6, " -- "

    .line 443
    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v6, "  checkUuid(it.uuids): "

    .line 451
    .line 452
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-static {v6}, Ll/b;->b([Landroid/os/ParcelUuid;)Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-static {v8, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-static {v5, v2}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    if-eqz v5, :cond_f

    .line 482
    .line 483
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-static {v5}, Ll/b;->b([Landroid/os/ParcelUuid;)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-eqz v5, :cond_f

    .line 492
    .line 493
    const-string v5, "BluetoothUtils"

    .line 494
    .line 495
    const-string v6, "=======>>> btConnected()"

    .line 496
    .line 497
    invoke-static {v5, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string v6, "IB"

    .line 501
    .line 502
    invoke-static {v6}, Ll/b;->a(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    const-string v6, "uuids"

    .line 510
    .line 511
    invoke-static {v4, v6}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    array-length v6, v4

    .line 515
    if-nez v6, :cond_10

    .line 516
    .line 517
    move v6, v10

    .line 518
    goto :goto_4

    .line 519
    :cond_10
    move v6, v11

    .line 520
    :goto_4
    xor-int/2addr v6, v10

    .line 521
    if-eqz v6, :cond_f

    .line 522
    .line 523
    const-string v6, "US"

    .line 524
    .line 525
    invoke-static {v6}, Ll/b;->a(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    array-length v6, v4

    .line 529
    move v7, v11

    .line 530
    :goto_5
    if-ge v7, v6, :cond_11

    .line 531
    .line 532
    aget-object v9, v4, v7

    .line 533
    .line 534
    new-instance v12, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v13, "=======>>> uuid2Service()  uuid: "

    .line 537
    .line 538
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 542
    .line 543
    .line 544
    move-result-object v13

    .line 545
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v12

    .line 552
    invoke-static {v5, v12}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    const-string v12, "it.uuid.toString()"

    .line 564
    .line 565
    invoke-static {v9, v12}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const-string v12, "-"

    .line 569
    .line 570
    invoke-static {v9, v12, v3}, Lf0/g;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    const-string v12, "this as java.lang.String).toUpperCase()"

    .line 579
    .line 580
    invoke-static {v9, v12}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    const-string v12, "UU"

    .line 584
    .line 585
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v9

    .line 589
    invoke-static {v9}, Ll/b;->a(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    add-int/lit8 v7, v7, 0x1

    .line 593
    .line 594
    goto :goto_5

    .line 595
    :cond_11
    const-string v4, "UE"

    .line 596
    .line 597
    invoke-static {v4}, Ll/b;->a(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_3

    .line 601
    .line 602
    :cond_12
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    if-ne v2, v4, :cond_13

    .line 611
    .line 612
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 613
    .line 614
    new-instance v3, Lcom/syu/carlink/a;

    .line 615
    .line 616
    const/16 v4, 0x9

    .line 617
    .line 618
    invoke-direct {v3, v0, v4}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 619
    .line 620
    .line 621
    const-wide/16 v4, 0x14

    .line 622
    .line 623
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    .line 625
    .line 626
    :cond_13
    :goto_6
    return-void

    .line 627
    :pswitch_4
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 628
    .line 629
    sget-object v3, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v6, "MainActivity handlePhoneState ============>>>lastType : "

    .line 645
    .line 646
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget v6, v0, Lcom/syu/carlink/CarLinkService;->G:I

    .line 650
    .line 651
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v6, "  linkType:"

    .line 655
    .line 656
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->C()I

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v6, "  state : "

    .line 671
    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-static {v8, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->C()I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    const/4 v6, 0x5

    .line 694
    const/4 v12, -0x1

    .line 695
    if-ne v5, v10, :cond_14

    .line 696
    .line 697
    if-eq v3, v6, :cond_15

    .line 698
    .line 699
    :cond_14
    if-nez v5, :cond_20

    .line 700
    .line 701
    iget v14, v0, Lcom/syu/carlink/CarLinkService;->G:I

    .line 702
    .line 703
    if-ne v14, v10, :cond_20

    .line 704
    .line 705
    if-ne v3, v4, :cond_20

    .line 706
    .line 707
    :cond_15
    if-eq v3, v4, :cond_16

    .line 708
    .line 709
    sget-object v14, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 710
    .line 711
    invoke-virtual {v14}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 712
    .line 713
    .line 714
    move-result-object v15

    .line 715
    iget-object v14, v14, Lcom/syu/carlink/UsbScanner;->e:Landroid/os/b;

    .line 716
    .line 717
    invoke-virtual {v15, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 718
    .line 719
    .line 720
    :cond_16
    new-instance v14, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    const-string v15, "=== > BT C_LINK_CUT ============>>> 0 lastPhoneState : "

    .line 723
    .line 724
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 728
    .line 729
    .line 730
    move-result-object v15

    .line 731
    invoke-virtual {v15}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 732
    .line 733
    .line 734
    move-result-object v15

    .line 735
    if-eqz v15, :cond_17

    .line 736
    .line 737
    iget v15, v15, Lcom/syu/carlink/CarLinkService;->n:I

    .line 738
    .line 739
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object v15

    .line 743
    goto :goto_7

    .line 744
    :cond_17
    move-object v15, v13

    .line 745
    :goto_7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    const-string v15, "   bt state : "

    .line 749
    .line 750
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 754
    .line 755
    .line 756
    move-result-object v15

    .line 757
    invoke-virtual {v15}, Lcom/syu/carlink/CarLink;->c()I

    .line 758
    .line 759
    .line 760
    move-result v15

    .line 761
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v14

    .line 768
    invoke-static {v8, v14}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    if-eq v3, v4, :cond_19

    .line 772
    .line 773
    if-eq v3, v6, :cond_18

    .line 774
    .line 775
    goto :goto_9

    .line 776
    :cond_18
    invoke-virtual {v0, v10}, Lcom/syu/carlink/CarLinkService;->b(Z)V

    .line 777
    .line 778
    .line 779
    goto :goto_9

    .line 780
    :cond_19
    invoke-virtual {v0, v11}, Lcom/syu/carlink/CarLinkService;->b(Z)V

    .line 781
    .line 782
    .line 783
    iget-object v14, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 784
    .line 785
    if-eqz v14, :cond_1e

    .line 786
    .line 787
    new-instance v15, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    const-string v2, "===========================>>>>  releaseAudioFocus  type:: "

    .line 790
    .line 791
    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 795
    .line 796
    if-eqz v2, :cond_1d

    .line 797
    .line 798
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->C()I

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-static {v8, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-boolean v2, v14, Lh/c;->o:Z

    .line 813
    .line 814
    if-nez v2, :cond_1a

    .line 815
    .line 816
    goto :goto_8

    .line 817
    :cond_1a
    iput-boolean v11, v14, Lh/c;->o:Z

    .line 818
    .line 819
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 820
    .line 821
    if-eqz v2, :cond_1c

    .line 822
    .line 823
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    iget-object v7, v14, Lh/c;->u:Lh/b;

    .line 828
    .line 829
    if-eqz v2, :cond_1b

    .line 830
    .line 831
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 832
    .line 833
    if-eqz v2, :cond_1b

    .line 834
    .line 835
    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 836
    .line 837
    .line 838
    :cond_1b
    iput v12, v7, Lh/b;->a:I

    .line 839
    .line 840
    goto :goto_8

    .line 841
    :cond_1c
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    throw v13

    .line 845
    :cond_1d
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    throw v13

    .line 849
    :cond_1e
    :goto_8
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 850
    .line 851
    if-eqz v2, :cond_1f

    .line 852
    .line 853
    invoke-virtual {v2}, Lh/c;->k()V

    .line 854
    .line 855
    .line 856
    :cond_1f
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 857
    .line 858
    if-eqz v2, :cond_20

    .line 859
    .line 860
    invoke-virtual {v2}, Lh/c;->l()V

    .line 861
    .line 862
    .line 863
    :cond_20
    :goto_9
    const-wide/16 v13, 0xc8

    .line 864
    .line 865
    if-ne v3, v4, :cond_21

    .line 866
    .line 867
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 868
    .line 869
    iget-object v7, v0, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 870
    .line 871
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 872
    .line 873
    .line 874
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 875
    .line 876
    iget-object v7, v0, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 877
    .line 878
    invoke-virtual {v2, v7, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->e()V

    .line 882
    .line 883
    .line 884
    :cond_21
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 885
    .line 886
    .line 887
    move-result-object v16

    .line 888
    const/16 v17, 0x0

    .line 889
    .line 890
    const/16 v18, 0xb6

    .line 891
    .line 892
    new-array v2, v9, [I

    .line 893
    .line 894
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 895
    .line 896
    .line 897
    move-result-object v7

    .line 898
    invoke-virtual {v7}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 899
    .line 900
    .line 901
    move-result-object v7

    .line 902
    iget-object v7, v7, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 903
    .line 904
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v7

    .line 908
    check-cast v7, Ljava/lang/Integer;

    .line 909
    .line 910
    if-nez v7, :cond_22

    .line 911
    .line 912
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 913
    .line 914
    .line 915
    move-result-object v7

    .line 916
    :cond_22
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 917
    .line 918
    .line 919
    move-result v7

    .line 920
    aput v7, v2, v11

    .line 921
    .line 922
    aput v3, v2, v10

    .line 923
    .line 924
    const/16 v20, 0x0

    .line 925
    .line 926
    const/16 v21, 0x18

    .line 927
    .line 928
    move-object/from16 v19, v2

    .line 929
    .line 930
    invoke-static/range {v16 .. v21}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 931
    .line 932
    .line 933
    const/16 v2, 0x18

    .line 934
    .line 935
    const/4 v7, 0x4

    .line 936
    if-eq v3, v4, :cond_26

    .line 937
    .line 938
    if-eq v3, v7, :cond_26

    .line 939
    .line 940
    if-eq v3, v6, :cond_23

    .line 941
    .line 942
    const/4 v6, 0x6

    .line 943
    if-eq v3, v6, :cond_26

    .line 944
    .line 945
    goto/16 :goto_b

    .line 946
    .line 947
    :cond_23
    if-ne v5, v10, :cond_25

    .line 948
    .line 949
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    const-string v4, "value"

    .line 954
    .line 955
    invoke-static {v3, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    const-string v4, "sys.carlink.type"

    .line 959
    .line 960
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 964
    .line 965
    if-lt v3, v2, :cond_24

    .line 966
    .line 967
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->F:Ls/a;

    .line 968
    .line 969
    invoke-interface {v2}, Ls/a;->getValue()Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    check-cast v2, Landroid/location/LocationManager;

    .line 974
    .line 975
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->H:Le/c;

    .line 976
    .line 977
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z

    .line 978
    .line 979
    .line 980
    goto :goto_a

    .line 981
    :cond_24
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->F:Ls/a;

    .line 982
    .line 983
    invoke-interface {v2}, Ls/a;->getValue()Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v2

    .line 987
    check-cast v2, Landroid/location/LocationManager;

    .line 988
    .line 989
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->I:Le/c;

    .line 990
    .line 991
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 992
    .line 993
    .line 994
    :goto_a
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 995
    .line 996
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 997
    .line 998
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 1002
    .line 1003
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 1004
    .line 1005
    invoke-virtual {v2, v3, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    .line 1007
    .line 1008
    :cond_25
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    iget-boolean v2, v2, Lcom/syu/carlink/CarLink;->d:Z

    .line 1013
    .line 1014
    if-nez v2, :cond_2b

    .line 1015
    .line 1016
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 1017
    .line 1018
    new-instance v3, Landroid/os/b;

    .line 1019
    .line 1020
    invoke-direct {v3, v7}, Landroid/os/b;-><init>(I)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v2, v3, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1024
    .line 1025
    .line 1026
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 1027
    .line 1028
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->m0:Lcom/syu/carlink/b;

    .line 1029
    .line 1030
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 1034
    .line 1035
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->m0:Lcom/syu/carlink/b;

    .line 1036
    .line 1037
    const-wide/16 v3, 0x12c

    .line 1038
    .line 1039
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1040
    .line 1041
    .line 1042
    goto :goto_b

    .line 1043
    :cond_26
    if-ne v5, v10, :cond_2b

    .line 1044
    .line 1045
    if-eq v3, v4, :cond_29

    .line 1046
    .line 1047
    if-eq v3, v7, :cond_27

    .line 1048
    .line 1049
    goto :goto_b

    .line 1050
    :cond_27
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1051
    .line 1052
    if-eqz v2, :cond_28

    .line 1053
    .line 1054
    const-string v3, "==============>>>>  cleanDelay"

    .line 1055
    .line 1056
    invoke-static {v8, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    const-wide/16 v3, 0x0

    .line 1060
    .line 1061
    iput-wide v3, v2, Lh/c;->m:J

    .line 1062
    .line 1063
    iput-wide v3, v2, Lh/c;->n:J

    .line 1064
    .line 1065
    :cond_28
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->r()V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_b

    .line 1069
    :cond_29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1070
    .line 1071
    if-lt v3, v2, :cond_2a

    .line 1072
    .line 1073
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->F:Ls/a;

    .line 1074
    .line 1075
    invoke-interface {v2}, Ls/a;->getValue()Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v2

    .line 1079
    check-cast v2, Landroid/location/LocationManager;

    .line 1080
    .line 1081
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->H:Le/c;

    .line 1082
    .line 1083
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_b

    .line 1087
    :cond_2a
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->F:Ls/a;

    .line 1088
    .line 1089
    invoke-interface {v2}, Ls/a;->getValue()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    check-cast v2, Landroid/location/LocationManager;

    .line 1094
    .line 1095
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->I:Le/c;

    .line 1096
    .line 1097
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_2b
    :goto_b
    return-void

    .line 1101
    :pswitch_5
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1102
    .line 1103
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1104
    .line 1105
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->e()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v2

    .line 1116
    if-nez v2, :cond_2c

    .line 1117
    .line 1118
    goto :goto_d

    .line 1119
    :cond_2c
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->J()Z

    .line 1124
    .line 1125
    .line 1126
    move-result v2

    .line 1127
    if-nez v2, :cond_2d

    .line 1128
    .line 1129
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v2

    .line 1133
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->z()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    if-nez v2, :cond_2e

    .line 1138
    .line 1139
    :cond_2d
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    iget-boolean v2, v2, Lcom/syu/carlink/CarLink;->d:Z

    .line 1144
    .line 1145
    if-nez v2, :cond_2e

    .line 1146
    .line 1147
    goto :goto_d

    .line 1148
    :cond_2e
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1149
    .line 1150
    .line 1151
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    if-eqz v2, :cond_2f

    .line 1156
    .line 1157
    const/16 v2, 0xa

    .line 1158
    .line 1159
    invoke-virtual {v0, v2, v10}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 1160
    .line 1161
    .line 1162
    :cond_2f
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v2

    .line 1166
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->c()I

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    if-eqz v3, :cond_30

    .line 1171
    .line 1172
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->c()I

    .line 1173
    .line 1174
    .line 1175
    move-result v3

    .line 1176
    const/4 v4, 0x6

    .line 1177
    if-eq v3, v4, :cond_30

    .line 1178
    .line 1179
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->c()I

    .line 1180
    .line 1181
    .line 1182
    move-result v2

    .line 1183
    if-eq v2, v10, :cond_30

    .line 1184
    .line 1185
    goto :goto_c

    .line 1186
    :cond_30
    move v10, v11

    .line 1187
    :goto_c
    iput-boolean v10, v0, Lcom/syu/carlink/CarLinkService;->m:Z

    .line 1188
    .line 1189
    sget-object v2, Lcom/syu/carlink/CarLinkService$linkWireless$1$2;->INSTANCE:Lcom/syu/carlink/CarLinkService$linkWireless$1$2;

    .line 1190
    .line 1191
    new-instance v3, Lcom/syu/carlink/CarLinkService$linkWireless$1$3;

    .line 1192
    .line 1193
    invoke-direct {v3, v0}, Lcom/syu/carlink/CarLinkService$linkWireless$1$3;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v0, v2, v3}, Lcom/syu/carlink/CarLinkService;->x(Lz/a;Lz/a;)V

    .line 1197
    .line 1198
    .line 1199
    :goto_d
    return-void

    .line 1200
    :pswitch_6
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1201
    .line 1202
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1203
    .line 1204
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    const-string v3, "===================>>  exitUi exit appid: "

    .line 1210
    .line 1211
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1215
    .line 1216
    if-eqz v3, :cond_37

    .line 1217
    .line 1218
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->a()I

    .line 1219
    .line 1220
    .line 1221
    move-result v3

    .line 1222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    const-string v3, "  State: "

    .line 1226
    .line 1227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1231
    .line 1232
    if-eqz v3, :cond_36

    .line 1233
    .line 1234
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 1235
    .line 1236
    .line 1237
    move-result v3

    .line 1238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    invoke-static {v8, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1249
    .line 1250
    if-eqz v2, :cond_35

    .line 1251
    .line 1252
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v2

    .line 1256
    invoke-virtual {v2}, Lg/b;->c()Z

    .line 1257
    .line 1258
    .line 1259
    move-result v2

    .line 1260
    if-eqz v2, :cond_32

    .line 1261
    .line 1262
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1263
    .line 1264
    if-eqz v0, :cond_31

    .line 1265
    .line 1266
    invoke-static {v0}, Lh/c;->i(Lh/c;)V

    .line 1267
    .line 1268
    .line 1269
    :cond_31
    sget-object v0, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 1270
    .line 1271
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    new-instance v9, Lg/a;

    .line 1276
    .line 1277
    const/4 v3, 0x1

    .line 1278
    const/4 v4, 0x0

    .line 1279
    const/4 v5, 0x2

    .line 1280
    const/4 v6, 0x0

    .line 1281
    const/4 v7, 0x0

    .line 1282
    const/16 v8, 0x18

    .line 1283
    .line 1284
    move-object v2, v9

    .line 1285
    invoke-direct/range {v2 .. v8}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v0, v9}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 1289
    .line 1290
    .line 1291
    goto :goto_e

    .line 1292
    :cond_32
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1293
    .line 1294
    if-eqz v0, :cond_34

    .line 1295
    .line 1296
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->l()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v0

    .line 1300
    if-eqz v0, :cond_33

    .line 1301
    .line 1302
    sget-object v0, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 1303
    .line 1304
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    new-instance v9, Lg/a;

    .line 1309
    .line 1310
    const/4 v3, 0x2

    .line 1311
    const/4 v4, 0x0

    .line 1312
    const/4 v5, 0x2

    .line 1313
    const/4 v6, 0x0

    .line 1314
    const/4 v7, 0x0

    .line 1315
    const/16 v8, 0x18

    .line 1316
    .line 1317
    move-object v2, v9

    .line 1318
    invoke-direct/range {v2 .. v8}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v0, v9}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 1322
    .line 1323
    .line 1324
    :cond_33
    :goto_e
    return-void

    .line 1325
    :cond_34
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    throw v13

    .line 1329
    :cond_35
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    throw v13

    .line 1333
    :cond_36
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    throw v13

    .line 1337
    :cond_37
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    throw v13

    .line 1341
    :pswitch_7
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1342
    .line 1343
    iget-object v2, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1344
    .line 1345
    invoke-static {v2, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1349
    .line 1350
    if-eqz v0, :cond_3a

    .line 1351
    .line 1352
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v0

    .line 1356
    if-eqz v0, :cond_38

    .line 1357
    .line 1358
    invoke-virtual {v2, v11}, Lcom/syu/carlink/CarLinkService;->b(Z)V

    .line 1359
    .line 1360
    .line 1361
    :cond_38
    invoke-virtual {v2}, Lcom/syu/carlink/CarLinkService;->e()V

    .line 1362
    .line 1363
    .line 1364
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .line 1366
    .line 1367
    goto :goto_f

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    move-object v3, v0

    .line 1370
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1371
    .line 1372
    .line 1373
    :goto_f
    :try_start_1
    invoke-virtual {v2}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    sput-boolean v11, Lo/e;->i:Z

    .line 1378
    .line 1379
    iget-boolean v2, v0, Lo/e;->g:Z

    .line 1380
    .line 1381
    if-eqz v2, :cond_39

    .line 1382
    .line 1383
    iget-object v2, v0, Lo/e;->b:Landroid/content/Context;

    .line 1384
    .line 1385
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1386
    .line 1387
    .line 1388
    :catch_1
    :cond_39
    return-void

    .line 1389
    :cond_3a
    invoke-static {v7}, Lt/b;->B(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    throw v13

    .line 1393
    :pswitch_8
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1394
    .line 1395
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1396
    .line 1397
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1401
    .line 1402
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1406
    .line 1407
    .line 1408
    move-result v2

    .line 1409
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1410
    .line 1411
    if-eqz v3, :cond_3b

    .line 1412
    .line 1413
    goto :goto_10

    .line 1414
    :cond_3b
    move v10, v11

    .line 1415
    :goto_10
    invoke-virtual {v0, v2, v10}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 1416
    .line 1417
    .line 1418
    return-void

    .line 1419
    :pswitch_9
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 1420
    .line 1421
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1422
    .line 1423
    invoke-static {v0, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    new-array v2, v9, [Ljava/lang/Object;

    .line 1427
    .line 1428
    const-string v4, "persist.lsec.cp.logo_md5"

    .line 1429
    .line 1430
    aput-object v4, v2, v11

    .line 1431
    .line 1432
    aput-object v3, v2, v10

    .line 1433
    .line 1434
    const-string v3, "get"

    .line 1435
    .line 1436
    const-string v5, "android.os.SystemProperties"

    .line 1437
    .line 1438
    invoke-static {v5, v13, v3, v2}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    const-string v3, "invoke(\"android.os.Syste\u2026erties\", \"get\", key, def)"

    .line 1443
    .line 1444
    invoke-static {v2, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    .line 1446
    .line 1447
    check-cast v2, Ljava/lang/String;

    .line 1448
    .line 1449
    new-instance v3, Ljava/io/File;

    .line 1450
    .line 1451
    const-string v5, "/sdcard/carlink/logo/car_log.png"

    .line 1452
    .line 1453
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1457
    .line 1458
    .line 1459
    move-result v3

    .line 1460
    if-eqz v3, :cond_3c

    .line 1461
    .line 1462
    new-instance v3, Ljava/io/FileInputStream;

    .line 1463
    .line 1464
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-static {v3}, Lt/b;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    invoke-static {v2, v3}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v2

    .line 1475
    if-nez v2, :cond_43

    .line 1476
    .line 1477
    :cond_3c
    new-instance v2, Ljava/io/File;

    .line 1478
    .line 1479
    const-string v3, "/sdcard/carlink/logo"

    .line 1480
    .line 1481
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1485
    .line 1486
    .line 1487
    move-result v2

    .line 1488
    if-nez v2, :cond_3e

    .line 1489
    .line 1490
    new-instance v2, Ljava/io/File;

    .line 1491
    .line 1492
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v2

    .line 1499
    if-eqz v2, :cond_3d

    .line 1500
    .line 1501
    goto :goto_11

    .line 1502
    :cond_3d
    new-instance v2, Ljava/io/File;

    .line 1503
    .line 1504
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1508
    .line 1509
    .line 1510
    :cond_3e
    :goto_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1511
    .line 1512
    const/16 v3, 0x1f

    .line 1513
    .line 1514
    if-lt v2, v3, :cond_3f

    .line 1515
    .line 1516
    const-string v2, "/odm"

    .line 1517
    .line 1518
    goto :goto_12

    .line 1519
    :cond_3f
    const-string v2, "/oem"

    .line 1520
    .line 1521
    :goto_12
    const-string v3, "/oem/carlink_logo.png"

    .line 1522
    .line 1523
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v2

    .line 1527
    new-instance v3, Ljava/io/File;

    .line 1528
    .line 1529
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v3

    .line 1536
    if-eqz v3, :cond_42

    .line 1537
    .line 1538
    const-string v0, "src"

    .line 1539
    .line 1540
    invoke-static {v2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    new-instance v0, Ljava/io/FileInputStream;

    .line 1544
    .line 1545
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    invoke-static {v0}, Lt/b;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 1553
    .line 1554
    new-instance v6, Ljava/io/FileInputStream;

    .line 1555
    .line 1556
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1560
    .line 1561
    .line 1562
    new-instance v2, Ljava/io/FileOutputStream;

    .line 1563
    .line 1564
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1565
    .line 1566
    .line 1567
    const-string v6, "copyFile  srcMd5: "

    .line 1568
    .line 1569
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v6

    .line 1573
    invoke-static {v8, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    .line 1575
    .line 1576
    const/16 v6, 0x400

    .line 1577
    .line 1578
    :try_start_2
    new-array v6, v6, [B

    .line 1579
    .line 1580
    :goto_13
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    .line 1581
    .line 1582
    .line 1583
    move-result v7

    .line 1584
    if-lez v7, :cond_40

    .line 1585
    .line 1586
    move v9, v10

    .line 1587
    goto :goto_14

    .line 1588
    :cond_40
    move v9, v11

    .line 1589
    :goto_14
    if-eqz v9, :cond_41

    .line 1590
    .line 1591
    invoke-virtual {v2, v6, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1592
    .line 1593
    .line 1594
    goto :goto_13

    .line 1595
    :cond_41
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1596
    .line 1597
    .line 1598
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1599
    .line 1600
    .line 1601
    :catch_2
    invoke-static {v3, v13}, Lt/b;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1602
    .line 1603
    .line 1604
    new-instance v2, Ljava/io/FileInputStream;

    .line 1605
    .line 1606
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    invoke-static {v2}, Lt/b;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    const-string v3, "copyFile  dstMd5: "

    .line 1614
    .line 1615
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v3

    .line 1619
    invoke-static {v8, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    invoke-static {v0, v2}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v2

    .line 1626
    if-eqz v2, :cond_43

    .line 1627
    .line 1628
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    goto :goto_15

    .line 1632
    :catchall_0
    move-exception v0

    .line 1633
    move-object v2, v0

    .line 1634
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1635
    :catchall_1
    move-exception v0

    .line 1636
    move-object v4, v0

    .line 1637
    invoke-static {v3, v2}, Lt/b;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1638
    .line 1639
    .line 1640
    throw v4

    .line 1641
    :cond_42
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v0

    .line 1645
    sget v2, Le/u;->icon_carlink:I

    .line 1646
    .line 1647
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    const-string v2, "resources.openRawResource(R.drawable.icon_carlink)"

    .line 1652
    .line 1653
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-static {v0}, Lt/b;->l(Ljava/io/InputStream;)V

    .line 1657
    .line 1658
    .line 1659
    :cond_43
    :goto_15
    return-void

    .line 1660
    :goto_16
    iget-object v0, v1, Lcom/syu/carlink/a;->c:Lcom/syu/carlink/CarLinkService;

    .line 1661
    .line 1662
    const-string v2, "$it"

    .line 1663
    .line 1664
    invoke-static {v0, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1668
    .line 1669
    if-eqz v0, :cond_44

    .line 1670
    .line 1671
    invoke-virtual {v0}, Lh/c;->q()V

    .line 1672
    .line 1673
    .line 1674
    :cond_44
    return-void

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
