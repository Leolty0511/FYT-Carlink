.class public final Lcom/syu/carlink/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/CarLinkService;I)V
    .locals 0

    iput p2, p0, Lcom/syu/carlink/c;->a:I

    iput-object p1, p0, Lcom/syu/carlink/c;->b:Lcom/syu/carlink/CarLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/a;)V
    .locals 12

    .line 1
    iget v0, p1, Lg/a;->c:I

    .line 2
    .line 3
    iget v1, p1, Lg/a;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/syu/carlink/c;->a:I

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lcom/syu/carlink/c;->b:Lcom/syu/carlink/CarLinkService;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :pswitch_0
    const/4 v2, 0x7

    .line 20
    if-ne v1, v2, :cond_9

    .line 21
    .line 22
    if-ne v0, v7, :cond_9

    .line 23
    .line 24
    iget p1, p1, Lg/a;->a:I

    .line 25
    .line 26
    if-ne p1, v7, :cond_9

    .line 27
    .line 28
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->J()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->y()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 53
    .line 54
    if-eqz p1, :cond_9

    .line 55
    .line 56
    :cond_1
    iget-object p1, v6, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget-wide v8, p1, Lh/c;->m:J

    .line 65
    .line 66
    sub-long v8, v0, v8

    .line 67
    .line 68
    const-wide/16 v10, 0x2328

    .line 69
    .line 70
    cmp-long v2, v8, v10

    .line 71
    .line 72
    if-ltz v2, :cond_2

    .line 73
    .line 74
    iput-wide v0, p1, Lh/c;->m:J

    .line 75
    .line 76
    move p1, v7

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move p1, v5

    .line 79
    :goto_0
    if-ne p1, v7, :cond_3

    .line 80
    .line 81
    move p1, v7

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move p1, v5

    .line 84
    :goto_1
    if-nez p1, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->B()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v4, :cond_9

    .line 96
    .line 97
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/syu/carlink/CarLink;->H()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 105
    .line 106
    const/16 v1, 0x81

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    new-array v2, v7, [I

    .line 111
    .line 112
    aput v5, v2, v5

    .line 113
    .line 114
    const/16 v4, 0xe3

    .line 115
    .line 116
    invoke-virtual {v0, v4, v2}, Lh/c;->f(I[I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    move v0, v1

    .line 122
    :goto_2
    const/16 v2, 0x80

    .line 123
    .line 124
    if-ge v0, v2, :cond_6

    .line 125
    .line 126
    move v0, v1

    .line 127
    :cond_6
    if-eqz p1, :cond_8

    .line 128
    .line 129
    if-ne v0, v1, :cond_8

    .line 130
    .line 131
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v6, v3, v7}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 141
    .line 142
    .line 143
    :cond_7
    sget-object p1, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$1;->INSTANCE:Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$1;

    .line 144
    .line 145
    new-instance v0, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;

    .line 146
    .line 147
    invoke-direct {v0, v6}, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, p1, v0}, Lcom/syu/carlink/CarLinkService;->x(Lz/a;Lz/a;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    sget-object p1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 155
    .line 156
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v7, Lg/a;

    .line 161
    .line 162
    const/4 v1, 0x1

    .line 163
    const/4 v2, 0x0

    .line 164
    const/16 v3, 0x9

    .line 165
    .line 166
    const/4 v4, 0x0

    .line 167
    const/4 v5, 0x0

    .line 168
    const/16 v6, 0x18

    .line 169
    .line 170
    move-object v0, v7

    .line 171
    invoke-direct/range {v0 .. v6}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v7}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    :goto_3
    return-void

    .line 178
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "MainActivity handleLinkState  state: "

    .line 181
    .line 182
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, "  state.type : "

    .line 189
    .line 190
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/16 v2, 0x20

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v2, "HDL"

    .line 206
    .line 207
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p1, 0x4

    .line 211
    if-ne v1, p1, :cond_15

    .line 212
    .line 213
    const/16 p1, 0x8

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    const-string v8, "me"

    .line 217
    .line 218
    packed-switch v0, :pswitch_data_1

    .line 219
    .line 220
    .line 221
    :pswitch_1
    goto/16 :goto_7

    .line 222
    .line 223
    :pswitch_2
    const-string p1, "----- ActionEvent.ACTION_WIFI_AP_CLOSE"

    .line 224
    .line 225
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object p1, Ll/e;->d:Ll/e;

    .line 229
    .line 230
    invoke-static {v6}, Le/b;->c(Lcom/syu/carlink/CarLinkService;)Ll/e;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object v0, p1, Ll/e;->a:Landroid/net/wifi/WifiManager;

    .line 235
    .line 236
    const-string v1, "====================>>>> AP stopTethering  2222"

    .line 237
    .line 238
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :try_start_0
    invoke-virtual {p1}, Ll/e;->d()Z

    .line 242
    .line 243
    .line 244
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    if-eqz v1, :cond_15

    .line 246
    .line 247
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const-string v3, "stopSoftAp"

    .line 252
    .line 253
    new-array v4, v5, [Ljava/lang/Class;

    .line 254
    .line 255
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    new-array v3, v5, [Ljava/lang/Object;

    .line 260
    .line 261
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .line 263
    .line 264
    goto/16 :goto_7

    .line 265
    .line 266
    :catch_0
    move-exception p1

    .line 267
    :try_start_2
    const-string v0, "Failed to stopSoftAp 2222 "

    .line 268
    .line 269
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 273
    .line 274
    .line 275
    goto/16 :goto_7

    .line 276
    .line 277
    :catch_1
    :try_start_3
    iget-object p1, p1, Ll/e;->b:Landroid/content/Context;

    .line 278
    .line 279
    const-string v0, "connectivity"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 286
    .line 287
    invoke-static {p1, v0}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v1, "stopTethering"

    .line 297
    .line 298
    new-array v3, v7, [Ljava/lang/Class;

    .line 299
    .line 300
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 301
    .line 302
    aput-object v4, v3, v5

    .line 303
    .line 304
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-array v1, v7, [Ljava/lang/Object;

    .line 309
    .line 310
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    aput-object v3, v1, v5

    .line 315
    .line 316
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 317
    .line 318
    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :catch_2
    move-exception p1

    .line 322
    :try_start_4
    const-string v0, "Failed to disable AP mode 2222 "

    .line 323
    .line 324
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 325
    .line 326
    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :pswitch_3
    const-string p1, "----- ActionEvent.ACTION_WIFI_AP_OPEN"

    .line 330
    .line 331
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    sget-object p1, Ll/e;->d:Ll/e;

    .line 335
    .line 336
    invoke-static {v6}, Le/b;->c(Lcom/syu/carlink/CarLinkService;)Ll/e;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 341
    .line 342
    if-eqz v0, :cond_b

    .line 343
    .line 344
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 345
    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v4, "openAp ---->   wifiManager : "

    .line 349
    .line 350
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v4, p1, Ll/e;->a:Landroid/net/wifi/WifiManager;

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Ll/e;->d()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_a

    .line 370
    .line 371
    goto/16 :goto_7

    .line 372
    .line 373
    :cond_a
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    new-array v3, v5, [Ljava/lang/Object;

    .line 380
    .line 381
    const-string v5, "getWifiApConfiguration"

    .line 382
    .line 383
    invoke-static {v2, v4, v5, v1, v3}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 388
    .line 389
    iput-object v2, p1, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 390
    .line 391
    invoke-virtual {p1, v0}, Ll/e;->a(Ljava/lang/Boolean;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, v0, v1}, Ll/e;->f(Ljava/lang/Boolean;Lz/p;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_7

    .line 398
    .line 399
    :cond_b
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v1

    .line 403
    :pswitch_4
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 404
    .line 405
    if-eqz p1, :cond_f

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->p()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_e

    .line 412
    .line 413
    iget-boolean v0, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 414
    .line 415
    if-eqz v0, :cond_e

    .line 416
    .line 417
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 418
    .line 419
    if-eqz v0, :cond_d

    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_e

    .line 426
    .line 427
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 428
    .line 429
    if-eqz v0, :cond_c

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->a()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eq v0, v3, :cond_e

    .line 436
    .line 437
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 438
    .line 439
    invoke-virtual {v6, v3, p1}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_c
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v1

    .line 447
    :cond_d
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v1

    .line 451
    :cond_e
    :goto_5
    iget-object p1, v6, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 452
    .line 453
    new-instance v0, Landroid/os/b;

    .line 454
    .line 455
    const/4 v1, 0x6

    .line 456
    invoke-direct {v0, v1}, Landroid/os/b;-><init>(I)V

    .line 457
    .line 458
    .line 459
    const-wide/16 v1, 0x64

    .line 460
    .line 461
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    .line 463
    .line 464
    goto/16 :goto_7

    .line 465
    .line 466
    :cond_f
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v1

    .line 470
    :pswitch_5
    iget-object p1, v6, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 471
    .line 472
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    .line 473
    .line 474
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v6, v7}, Lcom/syu/carlink/CarLinkService;->b(Z)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_7

    .line 481
    .line 482
    :pswitch_6
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 483
    .line 484
    iget-object v2, v6, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    .line 485
    .line 486
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 490
    .line 491
    if-eqz v0, :cond_15

    .line 492
    .line 493
    iget-object v2, v0, Ll/b;->a:Ll/a;

    .line 494
    .line 495
    if-eqz v2, :cond_10

    .line 496
    .line 497
    new-instance v3, Landroid/accessibilityservice/a;

    .line 498
    .line 499
    iget-object v4, v2, Ll/a;->e:Ll/b;

    .line 500
    .line 501
    invoke-direct {v3, v2, v4, p1}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 502
    .line 503
    .line 504
    iget-object p1, v2, Ll/a;->b:Landroid/os/Handler;

    .line 505
    .line 506
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    .line 508
    .line 509
    :cond_10
    iput-object v1, v0, Ll/b;->a:Ll/a;

    .line 510
    .line 511
    goto/16 :goto_7

    .line 512
    .line 513
    :pswitch_7
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 514
    .line 515
    iget-object v2, v6, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    .line 516
    .line 517
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    .line 519
    .line 520
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 521
    .line 522
    if-eqz v0, :cond_14

    .line 523
    .line 524
    iget-object v2, v6, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 525
    .line 526
    if-eqz v2, :cond_15

    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    iget-object v3, v2, Ll/b;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 533
    .line 534
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    const-string v4, "bondedDevs"

    .line 539
    .line 540
    invoke-static {v3, v4}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    move-object v4, v1

    .line 548
    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    if-eqz v5, :cond_12

    .line 553
    .line 554
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 559
    .line 560
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    invoke-static {v6, v0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-eqz v6, :cond_11

    .line 569
    .line 570
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    invoke-static {v6}, Ll/b;->b([Landroid/os/ParcelUuid;)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-eqz v6, :cond_11

    .line 579
    .line 580
    move-object v4, v5

    .line 581
    goto :goto_6

    .line 582
    :cond_12
    iget-object v0, v2, Ll/b;->a:Ll/a;

    .line 583
    .line 584
    if-eqz v0, :cond_13

    .line 585
    .line 586
    new-instance v3, Landroid/accessibilityservice/a;

    .line 587
    .line 588
    iget-object v5, v0, Ll/a;->e:Ll/b;

    .line 589
    .line 590
    invoke-direct {v3, v0, v5, p1}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 591
    .line 592
    .line 593
    iget-object p1, v0, Ll/a;->b:Landroid/os/Handler;

    .line 594
    .line 595
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    .line 597
    .line 598
    :cond_13
    iput-object v1, v2, Ll/b;->a:Ll/a;

    .line 599
    .line 600
    new-instance p1, Ll/a;

    .line 601
    .line 602
    invoke-static {v4}, Lt/b;->e(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    iget-object v0, v2, Ll/b;->c:Landroid/os/Handler;

    .line 606
    .line 607
    invoke-direct {p1, v2, v4, v0}, Ll/a;-><init>(Ll/b;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 608
    .line 609
    .line 610
    iput-object p1, v2, Ll/b;->a:Ll/a;

    .line 611
    .line 612
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 613
    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_14
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw v1

    .line 620
    :pswitch_8
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    const/4 v6, 0x0

    .line 625
    const/16 v0, 0x85

    .line 626
    .line 627
    new-array v8, v7, [I

    .line 628
    .line 629
    aput v4, v8, v5

    .line 630
    .line 631
    const/4 v9, 0x0

    .line 632
    const/16 v10, 0x18

    .line 633
    .line 634
    move-object v5, p1

    .line 635
    move v7, v0

    .line 636
    invoke-static/range {v5 .. v10}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 637
    .line 638
    .line 639
    :catch_3
    :cond_15
    :goto_7
    return-void

    .line 640
    nop

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
