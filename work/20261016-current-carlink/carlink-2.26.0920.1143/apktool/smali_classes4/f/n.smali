.class public final Lf/n;
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

    iput p2, p0, Lf/n;->b:I

    iput-object p1, p0, Lf/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lf/n;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lf/n;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lf/o;

    .line 12
    .line 13
    iget-object v0, v0, Lf/o;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->h()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    iget-object v0, v1, Lf/n;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lf/u;

    .line 22
    .line 23
    iget-object v0, v0, Lf/u;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 26
    .line 27
    if-nez v2, :cond_16

    .line 28
    .line 29
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_15

    .line 40
    .line 41
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto/16 :goto_c

    .line 46
    .line 47
    :cond_1
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    const/4 v4, 0x5

    .line 51
    const/4 v5, 0x3

    .line 52
    const/4 v6, 0x1

    .line 53
    const/4 v7, 0x2

    .line 54
    const/4 v8, 0x0

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isGpsTabletEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v9, "AHU.MAIN_ACTIVITY"

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    const-string v2, "Start in GPS mode"

    .line 69
    .line 70
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isGpsSimulationEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    const-string v2, "Start in simulation mode"

    .line 83
    .line 84
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    new-instance v2, Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 88
    .line 89
    invoke-direct {v2}, Lcom/google/android/projection/sink/sensors/SensorManager;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 93
    .line 94
    new-instance v2, Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-direct {v2, v9}, Lcom/google/android/projection/sink/sensors/TabletSensors;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->l:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 106
    .line 107
    new-array v4, v4, [Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 108
    .line 109
    new-instance v9, Lcom/google/android/projection/sink/sensors/FakeSensors;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-direct {v9, v10}, Lcom/google/android/projection/sink/sensors/FakeSensors;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    aput-object v9, v4, v8

    .line 119
    .line 120
    new-instance v9, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    iget-object v11, v0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 127
    .line 128
    invoke-direct {v9, v10, v11}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V

    .line 129
    .line 130
    .line 131
    aput-object v9, v4, v6

    .line 132
    .line 133
    new-instance v9, Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    iget-object v11, v0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 140
    .line 141
    invoke-direct {v9, v10, v11}, Lcom/google/android/projection/sink/sensors/LocationSensors;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V

    .line 142
    .line 143
    .line 144
    aput-object v9, v4, v7

    .line 145
    .line 146
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->l:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 147
    .line 148
    aput-object v7, v4, v5

    .line 149
    .line 150
    new-instance v5, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-direct {v5, v7}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    aput-object v5, v4, v3

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Lcom/google/android/projection/sink/sensors/SensorManager;->init([Lcom/google/android/projection/sink/sensors/SensorCollectorBase;)V

    .line 162
    .line 163
    .line 164
    :goto_2
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->j:Landroid/view/View;

    .line 165
    .line 166
    const/16 v3, 0x8

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    sget v3, Lcom/google/android/projection/sink/R$id;->fps:I

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    move-object v11, v2

    .line 182
    check-cast v11, Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 185
    .line 186
    iget-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->J:Lf/x;

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 214
    .line 215
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 216
    .line 217
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 218
    .line 219
    const-string v10, " height : "

    .line 220
    .line 221
    const-string v12, "HDL"

    .line 222
    .line 223
    if-eqz v9, :cond_5

    .line 224
    .line 225
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-lez v9, :cond_5

    .line 230
    .line 231
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 232
    .line 233
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-lez v9, :cond_5

    .line 238
    .line 239
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 240
    .line 241
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 250
    .line 251
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v13, " checkDisplay  gmSurfaceView width : "

    .line 262
    .line 263
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v13, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 267
    .line 268
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v13, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 279
    .line 280
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v13, " display : "

    .line 288
    .line 289
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget v13, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 293
    .line 294
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v13, " "

    .line 298
    .line 299
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 303
    .line 304
    invoke-static {v9, v4, v12}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_5
    invoke-virtual {v3}, Lg/b;->a()Landroid/util/Size;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v4, " \ndef: "

    .line 312
    .line 313
    const-string v9, "target: "

    .line 314
    .line 315
    if-lt v7, v5, :cond_6

    .line 316
    .line 317
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    invoke-virtual {v0, v7, v5, v13, v14}, Lcom/syu/carlink/auto/AutoFragment;->b(IIII)[I

    .line 326
    .line 327
    .line 328
    move-result-object v13

    .line 329
    aget v14, v13, v8

    .line 330
    .line 331
    int-to-float v14, v14

    .line 332
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 333
    .line 334
    .line 335
    move-result v15

    .line 336
    int-to-float v15, v15

    .line 337
    div-float/2addr v14, v15

    .line 338
    aget v8, v13, v8

    .line 339
    .line 340
    aget v15, v13, v6

    .line 341
    .line 342
    invoke-static {v8, v15, v14}, Lt/b;->d(IIF)Ll/c;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {v15, v3, v14}, Lt/b;->d(IIF)Ll/c;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    new-instance v14, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    iget v3, v3, Ll/c;->g:F

    .line 380
    .line 381
    float-to-int v3, v3

    .line 382
    const/4 v4, 0x2

    .line 383
    aput v3, v13, v4

    .line 384
    .line 385
    goto :goto_3

    .line 386
    :cond_6
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    invoke-virtual {v0, v7, v5, v8, v13}, Lcom/syu/carlink/auto/AutoFragment;->b(IIII)[I

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    aget v8, v13, v6

    .line 399
    .line 400
    int-to-float v8, v8

    .line 401
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    int-to-float v14, v14

    .line 406
    div-float/2addr v8, v14

    .line 407
    const/4 v14, 0x0

    .line 408
    aget v14, v13, v14

    .line 409
    .line 410
    aget v15, v13, v6

    .line 411
    .line 412
    invoke-static {v14, v15, v8}, Lt/b;->d(IIF)Ll/c;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 417
    .line 418
    .line 419
    move-result v15

    .line 420
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-static {v15, v3, v8}, Lt/b;->d(IIF)Ll/c;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    new-instance v8, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    iget v3, v3, Ll/c;->g:F

    .line 450
    .line 451
    float-to-int v3, v3

    .line 452
    const/4 v4, 0x2

    .line 453
    aput v3, v13, v4

    .line 454
    .line 455
    :goto_3
    const-string v3, " checkDisplay   width : "

    .line 456
    .line 457
    const-string v4, " to display: "

    .line 458
    .line 459
    invoke-static {v3, v7, v10, v5, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    const/4 v3, 0x0

    .line 474
    aget v3, v13, v3

    .line 475
    .line 476
    aget v4, v13, v6

    .line 477
    .line 478
    const/4 v5, 0x2

    .line 479
    aget v5, v13, v5

    .line 480
    .line 481
    int-to-float v5, v5

    .line 482
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 483
    .line 484
    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 485
    .line 486
    add-float/2addr v7, v2

    .line 487
    const/high16 v2, 0x40000000    # 2.0f

    .line 488
    .line 489
    div-float v16, v7, v2

    .line 490
    .line 491
    if-eqz v3, :cond_8

    .line 492
    .line 493
    if-eqz v4, :cond_8

    .line 494
    .line 495
    const/4 v2, 0x0

    .line 496
    cmpl-float v2, v5, v2

    .line 497
    .line 498
    if-nez v2, :cond_7

    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_7
    move v13, v3

    .line 502
    move v14, v4

    .line 503
    move v15, v5

    .line 504
    goto :goto_5

    .line 505
    :cond_8
    :goto_4
    const/4 v3, 0x0

    .line 506
    const/4 v4, 0x0

    .line 507
    move v13, v3

    .line 508
    move v14, v4

    .line 509
    move/from16 v15, v16

    .line 510
    .line 511
    :goto_5
    const-string v2, "HDL"

    .line 512
    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    const-string v4, "emulatedWidth : %d, emulatedHeight : %d,\nemulatedDpi: %f, realDpi: %f, scaleToScreen: "

    .line 519
    .line 520
    const/4 v5, 0x4

    .line 521
    new-array v5, v5, [Ljava/lang/Object;

    .line 522
    .line 523
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    const/4 v8, 0x0

    .line 528
    aput-object v7, v5, v8

    .line 529
    .line 530
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    aput-object v7, v5, v6

    .line 535
    .line 536
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    const/4 v9, 0x2

    .line 541
    aput-object v7, v5, v9

    .line 542
    .line 543
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    const/4 v9, 0x3

    .line 548
    aput-object v7, v5, v9

    .line 549
    .line 550
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    new-instance v2, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 568
    .line 569
    const/16 v17, 0x0

    .line 570
    .line 571
    move-object v12, v2

    .line 572
    invoke-direct/range {v12 .. v17}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;-><init>(IIFFZ)V

    .line 573
    .line 574
    .line 575
    iput-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->n:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 576
    .line 577
    new-instance v3, Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 578
    .line 579
    iget-object v10, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 580
    .line 581
    iget-object v12, v0, Lcom/syu/carlink/auto/AutoFragment;->B:Lf/o;

    .line 582
    .line 583
    iget-object v14, v0, Lcom/syu/carlink/auto/AutoFragment;->z:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 584
    .line 585
    iget-object v15, v0, Lcom/syu/carlink/auto/AutoFragment;->A:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 586
    .line 587
    move-object v9, v3

    .line 588
    move-object v13, v2

    .line 589
    invoke-direct/range {v9 .. v15}, Lcom/google/android/projection/sink/video/ProjectionRenderer;-><init>(Landroid/view/SurfaceView;Landroid/widget/TextView;Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;Lcom/google/android/projection/sink/video/VideoLatencyChecker;Lcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 590
    .line 591
    .line 592
    iput-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 593
    .line 594
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 598
    .line 599
    .line 600
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 601
    .line 602
    invoke-virtual {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->getRenderFrame()Landroid/graphics/Rect;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 607
    .line 608
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 609
    .line 610
    const-string v4, "AHU.MAIN_ACTIVITY"

    .line 611
    .line 612
    const-string v5, "----------------->>>>> startGAL width :"

    .line 613
    .line 614
    const-string v7, " height : "

    .line 615
    .line 616
    const-string v8, " mGal: "

    .line 617
    .line 618
    invoke-static {v5, v3, v7, v2, v8}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 623
    .line 624
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    iget-object v4, v0, Lcom/syu/carlink/auto/AutoFragment;->b:Ljava/lang/Object;

    .line 635
    .line 636
    monitor-enter v4

    .line 637
    :try_start_0
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 638
    .line 639
    if-eqz v5, :cond_9

    .line 640
    .line 641
    monitor-exit v4

    .line 642
    goto/16 :goto_e

    .line 643
    .line 644
    :cond_9
    sget-object v5, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 645
    .line 646
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    invoke-static {}, Lcom/syu/carlink/CarLink;->m()Z

    .line 650
    .line 651
    .line 652
    move-result v5

    .line 653
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 654
    .line 655
    if-nez v7, :cond_a

    .line 656
    .line 657
    new-instance v7, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 658
    .line 659
    invoke-direct {v7}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;-><init>()V

    .line 660
    .line 661
    .line 662
    iput-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 663
    .line 664
    :cond_a
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->n:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 665
    .line 666
    invoke-static {v3, v2, v7}, Lcom/google/android/projection/sink/video/DimensionUtils;->makeRequestedVideoSize(IILcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    new-instance v8, Lcom/google/android/projection/sink/GalIntegration;

    .line 671
    .line 672
    invoke-direct {v8}, Lcom/google/android/projection/sink/GalIntegration;-><init>()V

    .line 673
    .line 674
    .line 675
    iput-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 676
    .line 677
    new-array v8, v6, [Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    .line 678
    .line 679
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 680
    .line 681
    const/4 v10, 0x0

    .line 682
    aput-object v9, v8, v10

    .line 683
    .line 684
    if-nez v5, :cond_b

    .line 685
    .line 686
    const/4 v5, 0x3

    .line 687
    new-array v8, v5, [Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    .line 688
    .line 689
    new-instance v5, Lf/l;

    .line 690
    .line 691
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 692
    .line 693
    invoke-direct {v5, v0, v9}, Lf/l;-><init>(Lcom/syu/carlink/auto/AutoFragment;Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    .line 694
    .line 695
    .line 696
    const/4 v9, 0x0

    .line 697
    aput-object v5, v8, v9

    .line 698
    .line 699
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 700
    .line 701
    aput-object v5, v8, v6

    .line 702
    .line 703
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 704
    .line 705
    const/4 v9, 0x2

    .line 706
    aput-object v5, v8, v9

    .line 707
    .line 708
    :cond_b
    move-object/from16 v17, v8

    .line 709
    .line 710
    new-instance v5, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 711
    .line 712
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 713
    .line 714
    invoke-direct {v5, v8}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;-><init>(Lcom/google/android/projection/sink/GalIntegration;)V

    .line 715
    .line 716
    .line 717
    iput-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->g:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 718
    .line 719
    new-instance v5, Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 720
    .line 721
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 722
    .line 723
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 724
    .line 725
    invoke-virtual {v9}, Lcom/google/android/projection/sink/settings/Settings;->isRestrictedAudioFocusUsed()Z

    .line 726
    .line 727
    .line 728
    move-result v9

    .line 729
    invoke-direct {v5, v8, v9}, Lcom/google/android/projection/sink/audio/AudioFocusManager;-><init>(Lcom/google/android/projection/sink/GalIntegration;Z)V

    .line 730
    .line 731
    .line 732
    iput-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 733
    .line 734
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 735
    .line 736
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 737
    .line 738
    .line 739
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 740
    .line 741
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 742
    .line 743
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 744
    .line 745
    .line 746
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 747
    .line 748
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 749
    .line 750
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 751
    .line 752
    .line 753
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 754
    .line 755
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 756
    .line 757
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 758
    .line 759
    .line 760
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 761
    .line 762
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 763
    .line 764
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 765
    .line 766
    .line 767
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 768
    .line 769
    new-instance v8, Lf/i0;

    .line 770
    .line 771
    invoke-direct {v8, v0}, Lf/i0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;->setCallback(Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;)V

    .line 775
    .line 776
    .line 777
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 778
    .line 779
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 780
    .line 781
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 782
    .line 783
    .line 784
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 785
    .line 786
    new-instance v8, Lf/j0;

    .line 787
    .line 788
    invoke-direct {v8}, Lf/j0;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5, v8}, Lcom/google/android/projection/sink/audio/AudioPlayer;->setCallback(Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;)V

    .line 792
    .line 793
    .line 794
    new-instance v5, Lf/l0;

    .line 795
    .line 796
    invoke-direct {v5, v0}, Lf/l0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 797
    .line 798
    .line 799
    new-instance v8, Lf/m0;

    .line 800
    .line 801
    invoke-direct {v8, v0}, Lf/m0;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 802
    .line 803
    .line 804
    const-string v30, "Google"

    .line 805
    .line 806
    const-string v21, "2014"

    .line 807
    .line 808
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 809
    .line 810
    .line 811
    move-result-object v9

    .line 812
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 813
    .line 814
    .line 815
    move-result-object v9

    .line 816
    const-string v10, "android_id"

    .line 817
    .line 818
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v22

    .line 822
    sget-object v9, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 823
    .line 824
    invoke-virtual {v9}, Lcom/syu/carlink/CarLink;->s()Z

    .line 825
    .line 826
    .line 827
    move-result v9

    .line 828
    if-eqz v9, :cond_c

    .line 829
    .line 830
    const/4 v6, 0x0

    .line 831
    :cond_c
    move/from16 v23, v6

    .line 832
    .line 833
    const-string v24, "AHU"

    .line 834
    .line 835
    const-string v26, ""

    .line 836
    .line 837
    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .line 839
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 840
    .line 841
    .line 842
    move-result-object v9

    .line 843
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 844
    .line 845
    .line 846
    move-result-object v9

    .line 847
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 848
    .line 849
    .line 850
    move-result-object v10

    .line 851
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v10

    .line 855
    const/4 v11, 0x0

    .line 856
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 857
    .line 858
    .line 859
    move-result-object v9

    .line 860
    iget-object v6, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    .line 862
    :catch_0
    move-object/from16 v27, v6

    .line 863
    .line 864
    const/16 v28, 0x0

    .line 865
    .line 866
    :try_start_2
    const-string v20, "GalReceiver"

    .line 867
    .line 868
    const-string v25, "Projected"

    .line 869
    .line 870
    const/16 v29, 0x0

    .line 871
    .line 872
    const-string v6, "AHU.MAIN_ACTIVITY"

    .line 873
    .line 874
    const-string v9, "======================>> startGAL mLocalMode:false model: GalReceiver huModel : Projected"

    .line 875
    .line 876
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    new-instance v6, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;

    .line 880
    .line 881
    move-object/from16 v18, v6

    .line 882
    .line 883
    move-object/from16 v19, v30

    .line 884
    .line 885
    invoke-direct/range {v18 .. v30}, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 886
    .line 887
    .line 888
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 889
    .line 890
    invoke-virtual {v9}, Lcom/google/android/projection/sink/sensors/SensorManager;->getSupportedSensors()Ljava/util/List;

    .line 891
    .line 892
    .line 893
    move-result-object v9

    .line 894
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 895
    .line 896
    .line 897
    move-result v10

    .line 898
    new-array v13, v10, [I

    .line 899
    .line 900
    const/4 v10, 0x0

    .line 901
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 902
    .line 903
    .line 904
    move-result v11

    .line 905
    if-ge v10, v11, :cond_d

    .line 906
    .line 907
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v11

    .line 911
    check-cast v11, Ljava/lang/Integer;

    .line 912
    .line 913
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 914
    .line 915
    .line 916
    move-result v11

    .line 917
    aput v11, v13, v10

    .line 918
    .line 919
    add-int/lit8 v10, v10, 0x1

    .line 920
    .line 921
    goto :goto_6

    .line 922
    :cond_d
    iget-object v10, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 923
    .line 924
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 925
    .line 926
    invoke-virtual {v9}, Lcom/google/android/projection/sink/settings/Settings;->getCarBluetoothAddress()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v11

    .line 930
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 931
    .line 932
    invoke-virtual {v9}, Lcom/google/android/projection/sink/settings/Settings;->getSupportedBluetoothPairingMethods()[I

    .line 933
    .line 934
    .line 935
    move-result-object v12

    .line 936
    iget-object v14, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 937
    .line 938
    iget-object v15, v0, Lcom/syu/carlink/auto/AutoFragment;->C:Lf/t;

    .line 939
    .line 940
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 941
    .line 942
    invoke-virtual {v9}, Lcom/google/android/projection/sink/settings/Settings;->grantFocusOnStart()Z

    .line 943
    .line 944
    .line 945
    move-result v16

    .line 946
    iget-object v9, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 947
    .line 948
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->K:Lf/y;

    .line 949
    .line 950
    move/from16 v35, v2

    .line 951
    .line 952
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->L:Lf/z;

    .line 953
    .line 954
    move/from16 v36, v3

    .line 955
    .line 956
    iget-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->M:Lf/b0;

    .line 957
    .line 958
    move-object/from16 v37, v7

    .line 959
    .line 960
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->N:Lf/c0;

    .line 961
    .line 962
    move-object/from16 v27, v6

    .line 963
    .line 964
    iget-object v6, v0, Lcom/syu/carlink/auto/AutoFragment;->O:Lf/d0;

    .line 965
    .line 966
    move-object/from16 v25, v8

    .line 967
    .line 968
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 969
    .line 970
    const/16 v28, 0x0

    .line 971
    .line 972
    new-instance v29, Lcom/google/android/projection/protocol/CarWifiStub;

    .line 973
    .line 974
    invoke-direct/range {v29 .. v29}, Lcom/google/android/projection/protocol/CarWifiStub;-><init>()V

    .line 975
    .line 976
    .line 977
    move-object/from16 v26, v8

    .line 978
    .line 979
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 980
    .line 981
    move-object/from16 v30, v8

    .line 982
    .line 983
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->p:Le/b;

    .line 984
    .line 985
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    const-string v31, "-----BEGIN CERTIFICATE-----\nMIIDiTCCAnGgAwIBAgIJAMFO56WkVE1CMA0GCSqGSIb3DQEBBQUAMFsxCzAJBgNV\nBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBW\naWV3MR8wHQYDVQQKDBZHb29nbGUgQXV0b21vdGl2ZSBMaW5rMB4XDTE0MDYwNjE4\nMjgxOVoXDTQ0MDYwNTE4MjgxOVowWzELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNh\nbGlmb3JuaWExFjAUBgNVBAcMDU1vdW50YWluIFZpZXcxHzAdBgNVBAoMFkdvb2ds\nZSBBdXRvbW90aXZlIExpbmswggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB\nAQDUH+iIbwwVb74NdI5eBv/ACFmh4ml/NOW7gUVWdYX50n8uQQsHHLCNIhk5VV2H\nhanvAZ/XXHPuVAPadE2HpnNqePKF/RDo4eJo/+rOief8gBYq/Z+OQTZeLdNm+GoI\nHBrEjU4Ms8IdLuFW0jF8LlIRgekjLHpc7duUl3QpwBlmAWQK40T/SZjprlmhyqfJ\ng1rxFdnGbrSibmCsTmb3m6WZyZUyrcwmd7t6q3pHbMABO+o02asPG/YPj/SJo4+i\nfb5/Nk56f3hH9pBiPKQXJnVUdVLKMXSRgydDBsGSBol4C0JL77MNDrMR5jdafJ4j\nmWmsa2+mnzoAv9AxEL9T0LiNAgMBAAGjUDBOMB0GA1UdDgQWBBS5dqvv8DPQiwrM\nfgn8xKR91k7wgjAfBgNVHSMEGDAWgBS5dqvv8DPQiwrMfgn8xKR91k7wgjAMBgNV\nHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IBAQDKcnBsrbB0Jbz2VGJKP2lwYB6P\ndCTCCpQu7dVp61UQOX+zWfd2hnNMnLs/r1xPO+eyN0vmw7sD05phaIhbXVauKWZi\n9WqWHTaR+9s6CTyBOc1Mye0DMj+4vHt+WLmf0lYjkYUVYvR1EImX8ktXzkVmOqn+\ne30siqlZ8pQpsOgegIKfJ+pNQM8c3eXVv3KFMUgjZW33SziZL8IMsLvSO+1LtH37\nKqbTEMP6XUwVuZopgGvaHU74eT/WSRGlL7vX4OL5/UXXP4qsGH2Zp7uQlErv4H9j\nkMs37UL1vGb4M8RM7Eyu9/RulepSmqZUF+3i+3eby8iGq/3OWk9wgJf7AXnx\n-----END CERTIFICATE-----\n"

    .line 989
    .line 990
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->p:Le/b;

    .line 991
    .line 992
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    .line 994
    .line 995
    const-string v32, "-----BEGIN CERTIFICATE-----\nMIIDJTCCAg0CAnZTMA0GCSqGSIb3DQEBCwUAMFsxCzAJBgNVBAYTAlVTMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBWaWV3MR8wHQYDVQQK\nDBZHb29nbGUgQXV0b21vdGl2ZSBMaW5rMB4XDTE0MDcwODIyNDkxOFoXDTQ0MDcw\nNzIyNDkxOFowVTELMAkGA1UEBhMCVVMxCzAJBgNVBAgMAkNBMRYwFAYDVQQHDA1N\nb3VudGFpbiBWaWV3MSEwHwYDVQQKDBhHb29nbGUtQW5kcm9pZC1SZWZlcmVuY2Uw\nggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCpqQmvoDW/XsREoj20dRcM\nqJGWh8RlUoHB8CpBpsoqV4nAuvNngkyrdpCf1yg0fVAp2Ugj5eOtzbiN6BxoNHpP\ngiZ64pc+JRlwjmyHpssDaHzP+zHZM7acwMcroNVyynSzpiydEDyx/KPtEz5AsKi7\nc7AYYEtnCmAnK/waN1RT5KdZ9f97D9NeF7Ljdk+IKFROJh7Nv/YGiv9GdPZh/ezS\nm2qhD3gzdh9PYs2cu0u+N17PYpSYB7vXPcYa/gmIVipIJ5RuMQVBWrCgtfzwKPqb\nnJQVykm8LnysK+8RCgmPLN3uhsZx6Whax2TVXb1q68DoiaFPhvMfPr2i/9IKaC69\nAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIpfjQriEtbpUyWLoOOfJsjFN04+ajq9\n1XALCPd+2ixWHZIBJiucrrf0H7OgY7eFnNbU0cRqiDZHI8BtvzFxNi/JgXqCmSHR\nrlaoIsITfqo8KHwcAMs4qWTeLQmkTXBZYz0M3HwC7N1vOGjAJJN5qENIm1Jq+/3c\nfxVg2zhHPKY8qtdgl73YIXb9Xx3WmPCBeRBCKJncj0Rq14uaOjWXRyBgbmdzMXJz\nFGPHx3wN04JqGyfPFlDazXExFQwuAryjoYBRdxPxGufeQCp3am4xxI2oxNIzR+4L\nnOcDhgU1B7sbkVzbKj5gjdOQAmxnKCfBtUNB63a7yzGPYGPIwlBsm54=\n-----END CERTIFICATE-----\n"

    .line 996
    .line 997
    iget-object v8, v0, Lcom/syu/carlink/auto/AutoFragment;->p:Le/b;

    .line 998
    .line 999
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    .line 1001
    .line 1002
    const-string v33, "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpqQmvoDW/XsRE\noj20dRcMqJGWh8RlUoHB8CpBpsoqV4nAuvNngkyrdpCf1yg0fVAp2Ugj5eOtzbiN\n6BxoNHpPgiZ64pc+JRlwjmyHpssDaHzP+zHZM7acwMcroNVyynSzpiydEDyx/KPt\nEz5AsKi7c7AYYEtnCmAnK/waN1RT5KdZ9f97D9NeF7Ljdk+IKFROJh7Nv/YGiv9G\ndPZh/ezSm2qhD3gzdh9PYs2cu0u+N17PYpSYB7vXPcYa/gmIVipIJ5RuMQVBWrCg\ntfzwKPqbnJQVykm8LnysK+8RCgmPLN3uhsZx6Whax2TVXb1q68DoiaFPhvMfPr2i\n/9IKaC69AgMBAAECggEAbBoW3963IG6jpA+0PW11+EzYJw/u5ZiCsS3z3s0Fd6E7\nVqBIQyXU8FOlpxMSvQ8zqtaVjroGLlIsS88feo4leM+28Qm70I8W/I7jPDPcmxlS\nnbqycnDu5EY5IeVi27eAUI+LUbBs3APb900Rl2p4uKfoBkAlC0yjI5J1GcczZhf7\nRDh1wGgFWZI+ljiSrfpdiA4XmcZ9c7FlO5+NTotZzYeNx1iZprajV1/dlDy8UWEk\nwoWtppeGzUf3HHgl8yay62ub2vo5I1Z7Z98Roq8KC1o7k2IXOrHztCl3X03gMwlI\nF4WQ6Fx5LZDU9dfaPhzkutekVgbtO9SzHgb3NXCZwQKBgQDcSS/OLll18ssjBwc7\nPsdaIFIPlF428Tk8qezEnDmHS6xeztkGnpOlilk9jYSsVUbQmq8MwBSjfMVH95B0\nw0yyfOYqjgTocg4lRCoPuBdnuBY/lU1Lws4FoGsGMNFkHWjHzl622mavkJiDzWA+\nCORPUllS/DnPKJnZk2n0zZRKaQKBgQDFKqvePMx/a/ayQ09UZYxov0vwRyNkHevm\nwEGQjOiHKozWvLqWhCvFtwo+VqHqmCw95cYUpg1GvppB6Lnw2uHgWAWxr3ugDjaR\nYSqG/L7FG6FDF+1sPvBuxNpBmto59TI1fBFmU9VBGLDnr1M27qH3KTWlA3lCsovV\n6Dbk7D+vNQKBgE6GgFYdS6KyFBu+a6OA84t7LgWDvDoVr3Oil1ZW4mMKZL2/OroT\nWUqPkNRSWFMeawn9uhzvc+v7lE/dPk+BNxwBTgMpcTJzRfue2ueTljRQ+Q1daZpy\nLQLwdnZUfLAVk752IGlKXYSEJPoHAiHbBZgJIPJmGy1vqbhXxlOP3SbRAoGBAJoA\nQ2/5gy0/sdf5FRxxmOM0D+dkWTNY36pDnrJ+LR1uUcVkckUghWQQHRMl7aBkLaJH\nN5lnPdV1CN3UHnAPNwBZIFFyJJiWoW6aO3JmNceVVjcmmE7FNlz+qw81GaDNcOMv\nvhN0BYyr8Xl1iwTMDXwVFw6FkRBUjz6L+1yBXxjFAoGAJZcU+tEM1+gHPCqHK2bP\nkfYOCyEAro4zY/VWXZKHgCoPau8Uc9+vFu2QVMb5kVyLTdyRLQKpooR6f8En6utS\n/G15YuqRYqzSTrMBzpRrqIwbgKI9RHNPAvhtVAmXnwsYDPIQ1rrELK6WzTjUySRd\n7gyCoq+DlY7ZKDa7FUz05Ek=\n-----END PRIVATE KEY-----\n"

    .line 1003
    .line 1004
    const-string v34, "00:11:22:aa:bb:cc"

    .line 1005
    .line 1006
    move-object/from16 v18, v9

    .line 1007
    .line 1008
    move-object/from16 v19, v1

    .line 1009
    .line 1010
    move-object/from16 v20, v2

    .line 1011
    .line 1012
    move-object/from16 v21, v3

    .line 1013
    .line 1014
    move-object/from16 v22, v7

    .line 1015
    .line 1016
    move-object/from16 v23, v6

    .line 1017
    .line 1018
    move-object/from16 v24, v5

    .line 1019
    .line 1020
    invoke-virtual/range {v10 .. v34}, Lcom/google/android/projection/sink/GalIntegration;->init(Ljava/lang/String;[I[ILandroid/view/SurfaceView;Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;Z[Lcom/google/android/projection/protocol/AudioSink$AudioListener;Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;Lcom/google/android/projection/sink/InstrumentClusterListener;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Lcom/google/android/projection/protocol/Radio;Lcom/google/android/projection/protocol/CarWifi;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1028
    .line 1029
    .line 1030
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1031
    .line 1032
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    .line 1034
    .line 1035
    invoke-static {}, Lcom/syu/carlink/CarLink;->i()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v1

    .line 1039
    if-eqz v1, :cond_e

    .line 1040
    .line 1041
    const/16 v1, 0x19

    .line 1042
    .line 1043
    goto :goto_7

    .line 1044
    :cond_e
    const/16 v1, 0x3c

    .line 1045
    .line 1046
    :goto_7
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->width()I

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    .line 1051
    .line 1052
    .line 1053
    move-result v3

    .line 1054
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->n:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 1055
    .line 1056
    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getEmulatedDpi()F

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    float-to-int v5, v5

    .line 1061
    iget-object v6, v0, Lcom/syu/carlink/auto/AutoFragment;->n:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 1062
    .line 1063
    invoke-virtual {v6}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getPhysicalDpi()F

    .line 1064
    .line 1065
    .line 1066
    move-result v6

    .line 1067
    float-to-int v6, v6

    .line 1068
    invoke-static {v2, v3, v5, v6, v1}, Lcom/syu/carlink/auto/AutoFragment;->d(IIIII)Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1073
    .line 1074
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 1075
    .line 1076
    invoke-virtual {v2, v1}, Lcom/google/android/projection/protocol/VideoSink;->addSupportedConfiguration(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)V

    .line 1077
    .line 1078
    .line 1079
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1080
    .line 1081
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 1082
    .line 1083
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_VIDEO_H264_BP:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1084
    .line 1085
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/VideoSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1089
    .line 1090
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1091
    .line 1092
    array-length v2, v1

    .line 1093
    const/16 v3, 0x3e80

    .line 1094
    .line 1095
    const/16 v5, 0x10

    .line 1096
    .line 1097
    const/4 v6, 0x3

    .line 1098
    if-ne v2, v6, :cond_11

    .line 1099
    .line 1100
    const/4 v2, 0x0

    .line 1101
    aget-object v1, v1, v2

    .line 1102
    .line 1103
    const v6, 0xbb80

    .line 1104
    .line 1105
    .line 1106
    const/4 v7, 0x2

    .line 1107
    invoke-virtual {v1, v6, v5, v7}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1111
    .line 1112
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1113
    .line 1114
    aget-object v1, v1, v2

    .line 1115
    .line 1116
    sget-object v6, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_MEDIA:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 1117
    .line 1118
    invoke-virtual {v1, v6}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1122
    .line 1123
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1124
    .line 1125
    aget-object v1, v1, v2

    .line 1126
    .line 1127
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 1128
    .line 1129
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isAAcEnabledForMedia()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v2

    .line 1133
    if-eqz v2, :cond_f

    .line 1134
    .line 1135
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_AAC_LC:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1136
    .line 1137
    goto :goto_8

    .line 1138
    :cond_f
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1139
    .line 1140
    :goto_8
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 1141
    .line 1142
    .line 1143
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1144
    .line 1145
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1146
    .line 1147
    const/4 v2, 0x1

    .line 1148
    aget-object v1, v1, v2

    .line 1149
    .line 1150
    invoke-virtual {v1, v3, v5, v2}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 1151
    .line 1152
    .line 1153
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1154
    .line 1155
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1156
    .line 1157
    aget-object v1, v1, v2

    .line 1158
    .line 1159
    sget-object v6, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_GUIDANCE:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 1160
    .line 1161
    invoke-virtual {v1, v6}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 1162
    .line 1163
    .line 1164
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1165
    .line 1166
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1167
    .line 1168
    aget-object v1, v1, v2

    .line 1169
    .line 1170
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 1171
    .line 1172
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isAAcEnabledForTts()Z

    .line 1173
    .line 1174
    .line 1175
    move-result v2

    .line 1176
    if-eqz v2, :cond_10

    .line 1177
    .line 1178
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_AAC_LC:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1179
    .line 1180
    goto :goto_9

    .line 1181
    :cond_10
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1182
    .line 1183
    :goto_9
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1187
    .line 1188
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1189
    .line 1190
    const/4 v2, 0x2

    .line 1191
    aget-object v1, v1, v2

    .line 1192
    .line 1193
    const/4 v6, 0x1

    .line 1194
    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 1195
    .line 1196
    .line 1197
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1198
    .line 1199
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1200
    .line 1201
    aget-object v1, v1, v2

    .line 1202
    .line 1203
    sget-object v3, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_SYSTEM_AUDIO:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 1204
    .line 1205
    invoke-virtual {v1, v3}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 1206
    .line 1207
    .line 1208
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1209
    .line 1210
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1211
    .line 1212
    aget-object v1, v1, v2

    .line 1213
    .line 1214
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1215
    .line 1216
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 1217
    .line 1218
    .line 1219
    goto :goto_a

    .line 1220
    :cond_11
    const/4 v2, 0x0

    .line 1221
    aget-object v1, v1, v2

    .line 1222
    .line 1223
    const/4 v6, 0x1

    .line 1224
    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 1225
    .line 1226
    .line 1227
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1228
    .line 1229
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1230
    .line 1231
    aget-object v1, v1, v2

    .line 1232
    .line 1233
    sget-object v3, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_SYSTEM_AUDIO:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 1234
    .line 1235
    invoke-virtual {v1, v3}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 1236
    .line 1237
    .line 1238
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1239
    .line 1240
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1241
    .line 1242
    aget-object v1, v1, v2

    .line 1243
    .line 1244
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 1245
    .line 1246
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 1247
    .line 1248
    .line 1249
    :goto_a
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 1250
    .line 1251
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1252
    .line 1253
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    .line 1254
    .line 1255
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->setGalAudioSource(Lcom/google/android/projection/protocol/AudioSource;)V

    .line 1256
    .line 1257
    .line 1258
    const/16 v1, 0x12

    .line 1259
    .line 1260
    new-array v1, v1, [I

    .line 1261
    .line 1262
    const/16 v2, 0x13

    .line 1263
    .line 1264
    const/4 v3, 0x0

    .line 1265
    aput v2, v1, v3

    .line 1266
    .line 1267
    const/16 v3, 0x14

    .line 1268
    .line 1269
    const/4 v6, 0x1

    .line 1270
    aput v3, v1, v6

    .line 1271
    .line 1272
    const/16 v3, 0x15

    .line 1273
    .line 1274
    const/4 v6, 0x2

    .line 1275
    aput v3, v1, v6

    .line 1276
    .line 1277
    const/16 v3, 0x16

    .line 1278
    .line 1279
    const/4 v6, 0x3

    .line 1280
    aput v3, v1, v6

    .line 1281
    .line 1282
    const/16 v3, 0x17

    .line 1283
    .line 1284
    const/4 v6, 0x4

    .line 1285
    aput v3, v1, v6

    .line 1286
    .line 1287
    const/16 v3, 0x54

    .line 1288
    .line 1289
    const/4 v7, 0x5

    .line 1290
    aput v3, v1, v7

    .line 1291
    .line 1292
    const/4 v3, 0x6

    .line 1293
    aput v6, v1, v3

    .line 1294
    .line 1295
    const/4 v6, 0x7

    .line 1296
    const/4 v7, 0x3

    .line 1297
    aput v7, v1, v6

    .line 1298
    .line 1299
    const/16 v6, 0x7e

    .line 1300
    .line 1301
    const/16 v7, 0x8

    .line 1302
    .line 1303
    aput v6, v1, v7

    .line 1304
    .line 1305
    const/16 v6, 0x9

    .line 1306
    .line 1307
    const/16 v7, 0x7f

    .line 1308
    .line 1309
    aput v7, v1, v6

    .line 1310
    .line 1311
    const/16 v6, 0xa

    .line 1312
    .line 1313
    const/16 v7, 0x55

    .line 1314
    .line 1315
    aput v7, v1, v6

    .line 1316
    .line 1317
    const/16 v6, 0xb

    .line 1318
    .line 1319
    const/16 v7, 0x58

    .line 1320
    .line 1321
    aput v7, v1, v6

    .line 1322
    .line 1323
    const/16 v6, 0xc

    .line 1324
    .line 1325
    const/16 v7, 0x57

    .line 1326
    .line 1327
    aput v7, v1, v6

    .line 1328
    .line 1329
    const/16 v6, 0xd

    .line 1330
    .line 1331
    const/16 v7, 0xd1

    .line 1332
    .line 1333
    aput v7, v1, v6

    .line 1334
    .line 1335
    const/16 v6, 0xe

    .line 1336
    .line 1337
    const/4 v7, 0x5

    .line 1338
    aput v7, v1, v6

    .line 1339
    .line 1340
    const/16 v6, 0xf

    .line 1341
    .line 1342
    aput v3, v1, v6

    .line 1343
    .line 1344
    sget-object v3, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_NAVIGATION:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 1345
    .line 1346
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 1347
    .line 1348
    .line 1349
    move-result v3

    .line 1350
    aput v3, v1, v5

    .line 1351
    .line 1352
    sget-object v3, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_TEL:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 1353
    .line 1354
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 1355
    .line 1356
    .line 1357
    move-result v3

    .line 1358
    const/16 v5, 0x11

    .line 1359
    .line 1360
    aput v3, v1, v5

    .line 1361
    .line 1362
    iget-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 1363
    .line 1364
    invoke-virtual {v3}, Lcom/google/android/projection/sink/settings/Settings;->isRotaryControllerEnabled()Z

    .line 1365
    .line 1366
    .line 1367
    move-result v3

    .line 1368
    if-eqz v3, :cond_12

    .line 1369
    .line 1370
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 1371
    .line 1372
    .line 1373
    move-result-object v1

    .line 1374
    array-length v2, v1

    .line 1375
    add-int/lit8 v2, v2, -0x1

    .line 1376
    .line 1377
    sget-object v3, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 1378
    .line 1379
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 1380
    .line 1381
    .line 1382
    move-result v3

    .line 1383
    aput v3, v1, v2

    .line 1384
    .line 1385
    :cond_12
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1386
    .line 1387
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 1388
    .line 1389
    invoke-virtual {v2, v1}, Lcom/google/android/projection/protocol/InputSource;->registerKeyCodes([I)V

    .line 1390
    .line 1391
    .line 1392
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 1393
    .line 1394
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->isTouchScreenEnabled()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v1

    .line 1398
    if-eqz v1, :cond_13

    .line 1399
    .line 1400
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1401
    .line 1402
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 1403
    .line 1404
    sget v2, Lcom/google/android/projection/protocol/InputSource;->TOUCHSCREEN_TYPE_CAPACITIVE:I

    .line 1405
    .line 1406
    move/from16 v5, v35

    .line 1407
    .line 1408
    move/from16 v3, v36

    .line 1409
    .line 1410
    invoke-virtual {v1, v3, v5, v2}, Lcom/google/android/projection/protocol/InputSource;->registerTouchScreen(III)V

    .line 1411
    .line 1412
    .line 1413
    :cond_13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    sget v2, Lcom/google/android/projection/sink/R$id;->touchpad:I

    .line 1418
    .line 1419
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 1424
    .line 1425
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isTouchpadNavigationEnabled()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v8

    .line 1429
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1430
    .line 1431
    iget-object v5, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 1432
    .line 1433
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 1434
    .line 1435
    .line 1436
    move-result v6

    .line 1437
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 1438
    .line 1439
    .line 1440
    move-result v7

    .line 1441
    const/16 v9, 0x32

    .line 1442
    .line 1443
    const/16 v10, 0x32

    .line 1444
    .line 1445
    const/4 v11, 0x0

    .line 1446
    const/4 v12, 0x0

    .line 1447
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/projection/protocol/InputSource;->registerTouchPad(IIZIIZZ)V

    .line 1448
    .line 1449
    .line 1450
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1451
    .line 1452
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 1453
    .line 1454
    const/4 v2, 0x3

    .line 1455
    new-array v2, v2, [I

    .line 1456
    .line 1457
    sget v3, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_SELECT:I

    .line 1458
    .line 1459
    const/4 v5, 0x0

    .line 1460
    aput v3, v2, v5

    .line 1461
    .line 1462
    sget v3, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_SELECT:I

    .line 1463
    .line 1464
    const/4 v5, 0x1

    .line 1465
    aput v3, v2, v5

    .line 1466
    .line 1467
    sget v3, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_FOCUS_CHANGE:I

    .line 1468
    .line 1469
    const/4 v5, 0x2

    .line 1470
    aput v3, v2, v5

    .line 1471
    .line 1472
    new-instance v3, Lf/m;

    .line 1473
    .line 1474
    invoke-direct {v3, v0}, Lf/m;-><init>(Lcom/syu/carlink/auto/AutoFragment;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/InputSource;->registerFeedbackEvents([ILcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;)V

    .line 1478
    .line 1479
    .line 1480
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1481
    .line 1482
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    .line 1483
    .line 1484
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 1485
    .line 1486
    invoke-virtual {v2}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getSamplingRate()I

    .line 1487
    .line 1488
    .line 1489
    move-result v2

    .line 1490
    iget-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 1491
    .line 1492
    invoke-virtual {v3}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getNumberOfBits()I

    .line 1493
    .line 1494
    .line 1495
    move-result v3

    .line 1496
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 1497
    .line 1498
    invoke-virtual {v5}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getNumberOfChannels()I

    .line 1499
    .line 1500
    .line 1501
    move-result v5

    .line 1502
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/projection/protocol/AudioSource;->setConfig(III)V

    .line 1503
    .line 1504
    .line 1505
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1506
    .line 1507
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1508
    .line 1509
    array-length v2, v1

    .line 1510
    const/4 v3, 0x3

    .line 1511
    if-ne v2, v3, :cond_14

    .line 1512
    .line 1513
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 1514
    .line 1515
    const/4 v3, 0x0

    .line 1516
    aget-object v1, v1, v3

    .line 1517
    .line 1518
    invoke-virtual {v2, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 1519
    .line 1520
    .line 1521
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 1522
    .line 1523
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1524
    .line 1525
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1526
    .line 1527
    const/4 v3, 0x1

    .line 1528
    aget-object v2, v2, v3

    .line 1529
    .line 1530
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 1531
    .line 1532
    .line 1533
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 1534
    .line 1535
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1536
    .line 1537
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 1538
    .line 1539
    const/4 v3, 0x2

    .line 1540
    aget-object v2, v2, v3

    .line 1541
    .line 1542
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 1543
    .line 1544
    .line 1545
    goto :goto_b

    .line 1546
    :cond_14
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 1547
    .line 1548
    const/4 v3, 0x0

    .line 1549
    aget-object v1, v1, v3

    .line 1550
    .line 1551
    invoke-virtual {v2, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 1552
    .line 1553
    .line 1554
    :goto_b
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1555
    .line 1556
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 1557
    .line 1558
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/GalIntegration;->start(Lcom/google/android/projection/protocol/Transport;)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 1562
    .line 1563
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1564
    .line 1565
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/sensors/SensorManager;->setGalIntegration(Lcom/google/android/projection/sink/GalIntegration;)V

    .line 1566
    .line 1567
    .line 1568
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1569
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 1570
    .line 1571
    const-string v2, "----------------->>>>> startGAL Success!!"

    .line 1572
    .line 1573
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    .line 1575
    .line 1576
    new-instance v1, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;

    .line 1577
    .line 1578
    iget-object v2, v0, Lcom/syu/carlink/auto/AutoFragment;->m:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 1579
    .line 1580
    iget-object v3, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 1581
    .line 1582
    invoke-direct {v1, v2, v3}, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;-><init>(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;)V

    .line 1583
    .line 1584
    .line 1585
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->y:Landroid/content/BroadcastReceiver;

    .line 1586
    .line 1587
    sget-object v0, Lf/k;->y:Lf/k;

    .line 1588
    .line 1589
    iget-object v0, v0, Lf/k;->j:Landroid/content/Context;

    .line 1590
    .line 1591
    invoke-static {}, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1596
    .line 1597
    .line 1598
    goto :goto_e

    .line 1599
    :catchall_0
    move-exception v0

    .line 1600
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1601
    throw v0

    .line 1602
    :cond_15
    :goto_c
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 1603
    .line 1604
    const-string v1, "connect skipped, fragment not added or transport invalid"

    .line 1605
    .line 1606
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    .line 1608
    .line 1609
    goto :goto_e

    .line 1610
    :cond_16
    :goto_d
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 1611
    .line 1612
    const-string v1, "connect skipped, already connected or renderer exists"

    .line 1613
    .line 1614
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    .line 1616
    .line 1617
    :goto_e
    return-void

    .line 1618
    nop

    .line 1619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
