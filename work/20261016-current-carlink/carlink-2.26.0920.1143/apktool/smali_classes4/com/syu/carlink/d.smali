.class public final Lcom/syu/carlink/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/c;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/syu/carlink/d;->a:Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lg/a;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 4
    .line 5
    const-string v2, "me"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1b

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->J()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v3

    .line 31
    :cond_1
    :goto_0
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 32
    .line 33
    if-eqz v1, :cond_1a

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 41
    .line 42
    if-eqz v1, :cond_19

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_18

    .line 49
    .line 50
    iget v1, v0, Lg/a;->a:I

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    if-ne v1, v4, :cond_18

    .line 54
    .line 55
    iget v1, v0, Lg/a;->b:I

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    if-ne v1, v5, :cond_18

    .line 59
    .line 60
    iget v0, v0, Lg/a;->c:I

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    move-object/from16 v6, p0

    .line 64
    .line 65
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    move v0, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v0, v1

    .line 70
    :goto_1
    iget-object v7, v6, Lcom/syu/carlink/d;->a:Lcom/syu/carlink/CarLinkService;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v9, " handleWireless : "

    .line 82
    .line 83
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 87
    .line 88
    if-eqz v9, :cond_17

    .line 89
    .line 90
    iget-boolean v9, v9, Lcom/syu/carlink/CarLink;->d:Z

    .line 91
    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v9, "  state: "

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v8, "HDL"

    .line 108
    .line 109
    invoke-static {v8, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v12, "==============>>>>  lastWirelessedTime: "

    .line 123
    .line 124
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-wide v12, v0, Lh/c;->n:J

    .line 128
    .line 129
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-static {v8, v11}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-wide v11, v0, Lh/c;->n:J

    .line 140
    .line 141
    sub-long v11, v9, v11

    .line 142
    .line 143
    const-wide/16 v13, 0x2710

    .line 144
    .line 145
    cmp-long v11, v11, v13

    .line 146
    .line 147
    if-ltz v11, :cond_5

    .line 148
    .line 149
    iput-wide v9, v0, Lh/c;->n:J

    .line 150
    .line 151
    move v0, v4

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v0, v1

    .line 154
    :goto_2
    if-ne v0, v4, :cond_6

    .line 155
    .line 156
    move v0, v4

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move v0, v1

    .line 159
    :goto_3
    if-nez v0, :cond_7

    .line 160
    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :cond_7
    sget-object v0, Ll/e;->d:Ll/e;

    .line 164
    .line 165
    invoke-static {v7}, Le/b;->c(Lcom/syu/carlink/CarLinkService;)Ll/e;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 170
    .line 171
    if-eqz v0, :cond_16

    .line 172
    .line 173
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    new-instance v11, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;

    .line 176
    .line 177
    invoke-direct {v11, v9, v7}, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;-><init>(Ll/e;Lcom/syu/carlink/CarLinkService;)V

    .line 178
    .line 179
    .line 180
    const-string v7, "  is5GhzBandSupported(): "

    .line 181
    .line 182
    const-string v12, "last "

    .line 183
    .line 184
    const-string v13, "=====>>>>>  last band  "

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v14, "\u5f00\u542f\u662f\u5426\u6210\u529f:createWiFiAp  wifiManager : "

    .line 189
    .line 190
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v14, v9, Ll/e;->a:Landroid/net/wifi/WifiManager;

    .line 194
    .line 195
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v15, " wifiOn: "

    .line 199
    .line 200
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const/16 v15, 0x20

    .line 207
    .line 208
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-array v15, v1, [Ljava/lang/Object;

    .line 225
    .line 226
    const-string v5, "getWifiApConfiguration"

    .line 227
    .line 228
    invoke-static {v0, v14, v5, v3, v15}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 233
    .line 234
    iput-object v0, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 235
    .line 236
    invoke-virtual {v9}, Ll/e;->d()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    iget-object v5, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 241
    .line 242
    if-eqz v5, :cond_8

    .line 243
    .line 244
    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 245
    .line 246
    if-eqz v5, :cond_8

    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-ne v5, v4, :cond_8

    .line 253
    .line 254
    move v5, v4

    .line 255
    goto :goto_4

    .line 256
    :cond_8
    move v5, v1

    .line 257
    :goto_4
    if-eqz v0, :cond_a

    .line 258
    .line 259
    if-eqz v5, :cond_a

    .line 260
    .line 261
    sget-object v0, Lf/k;->y:Lf/k;

    .line 262
    .line 263
    iget-object v0, v0, Lf/k;->m:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 264
    .line 265
    if-eqz v0, :cond_9

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->teardown()V

    .line 268
    .line 269
    .line 270
    :cond_9
    const-wide/16 v16, 0x320

    .line 271
    .line 272
    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :catch_0
    move-exception v0

    .line 277
    move-object v5, v0

    .line 278
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :goto_5
    move v5, v1

    .line 282
    goto :goto_6

    .line 283
    :cond_a
    move v5, v0

    .line 284
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v15, " createWiFiAp  wifiManager : "

    .line 287
    .line 288
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v14, " apstate : "

    .line 295
    .line 296
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :try_start_1
    const-string v0, "persist.lsec.carlink.apband"

    .line 310
    .line 311
    sget-object v14, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 312
    .line 313
    if-eqz v14, :cond_13

    .line 314
    .line 315
    invoke-static {}, Lcom/syu/carlink/CarLink;->i()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_b

    .line 320
    .line 321
    move v2, v4

    .line 322
    goto :goto_7

    .line 323
    :cond_b
    move v2, v1

    .line 324
    :goto_7
    invoke-static {v2, v0}, Lt/b;->p(ILjava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_c

    .line 329
    .line 330
    move v0, v4

    .line 331
    goto :goto_8

    .line 332
    :cond_c
    move v0, v1

    .line 333
    :goto_8
    const-string v2, "syu.wifi.apChannel"

    .line 334
    .line 335
    const/4 v3, -0x1

    .line 336
    invoke-static {v3, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 337
    .line 338
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 345
    .line 346
    invoke-static {v3}, Ll/e;->b(Landroid/net/wifi/WifiConfiguration;)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, "  to band5G: "

    .line 354
    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9}, Ll/e;->c()Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v3, " apstate: "

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v8, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    if-nez v5, :cond_f

    .line 387
    .line 388
    iget-object v2, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 389
    .line 390
    if-eqz v2, :cond_12

    .line 391
    .line 392
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 393
    .line 394
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_d

    .line 399
    .line 400
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 403
    .line 404
    .line 405
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 406
    .line 407
    const/4 v7, 0x4

    .line 408
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 409
    .line 410
    .line 411
    :cond_d
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 412
    .line 413
    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 414
    .line 415
    .line 416
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 419
    .line 420
    .line 421
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 422
    .line 423
    const/4 v7, 0x2

    .line 424
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 425
    .line 426
    .line 427
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 428
    .line 429
    const/4 v3, 0x3

    .line 430
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 431
    .line 432
    .line 433
    iget-object v2, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 434
    .line 435
    if-eqz v0, :cond_e

    .line 436
    .line 437
    invoke-virtual {v9}, Ll/e;->c()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_e

    .line 442
    .line 443
    move v1, v4

    .line 444
    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {v2, v0}, Lp/a;->f(Landroid/net/wifi/WifiConfiguration;Ljava/lang/Integer;)V

    .line 449
    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v3, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 458
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v3, " to band5G: "

    .line 463
    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9}, Ll/e;->c()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-static {v8, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget-object v2, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 488
    .line 489
    if-eqz v2, :cond_11

    .line 490
    .line 491
    invoke-static {v2}, Ll/e;->b(Landroid/net/wifi/WifiConfiguration;)I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-ne v3, v4, :cond_10

    .line 496
    .line 497
    if-nez v0, :cond_10

    .line 498
    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v2, v0}, Lp/a;->f(Landroid/net/wifi/WifiConfiguration;Ljava/lang/Integer;)V

    .line 504
    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_10
    invoke-static {v2}, Ll/e;->b(Landroid/net/wifi/WifiConfiguration;)I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    if-nez v3, :cond_11

    .line 512
    .line 513
    if-eqz v0, :cond_11

    .line 514
    .line 515
    invoke-virtual {v9}, Ll/e;->c()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_11

    .line 520
    .line 521
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v2, v0}, Lp/a;->f(Landroid/net/wifi/WifiConfiguration;Ljava/lang/Integer;)V

    .line 526
    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_11
    move v4, v1

    .line 530
    :cond_12
    :goto_9
    if-eqz v4, :cond_14

    .line 531
    .line 532
    iget-object v0, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 533
    .line 534
    if-eqz v0, :cond_14

    .line 535
    .line 536
    invoke-virtual {v9, v0}, Ll/e;->e(Landroid/net/wifi/WifiConfiguration;)V

    .line 537
    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_13
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    :catch_1
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    .line 547
    .line 548
    :cond_14
    :goto_a
    invoke-virtual {v9, v10}, Ll/e;->a(Ljava/lang/Boolean;)V

    .line 549
    .line 550
    .line 551
    if-nez v5, :cond_15

    .line 552
    .line 553
    invoke-virtual {v9, v10, v11}, Ll/e;->f(Ljava/lang/Boolean;Lz/p;)V

    .line 554
    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 558
    .line 559
    iget-object v1, v9, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 560
    .line 561
    invoke-interface {v11, v0, v1}, Lz/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_16
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw v3

    .line 569
    :cond_17
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v3

    .line 573
    :cond_18
    move-object/from16 v6, p0

    .line 574
    .line 575
    :goto_b
    return-void

    .line 576
    :cond_19
    move-object/from16 v6, p0

    .line 577
    .line 578
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v3

    .line 582
    :cond_1a
    move-object/from16 v6, p0

    .line 583
    .line 584
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v3

    .line 588
    :cond_1b
    move-object/from16 v6, p0

    .line 589
    .line 590
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v3
.end method
