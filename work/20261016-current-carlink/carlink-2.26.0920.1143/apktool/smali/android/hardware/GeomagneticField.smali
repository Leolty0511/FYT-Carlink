.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE_TIME:J

.field private static final DELTA_G:[[F

.field private static final DELTA_H:[[F

.field private static final EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final G_COEFF:[[F

.field private static final H_COEFF:[[F

.field private static final SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private mGcLatitudeRad:F

.field private mGcLongitudeRad:F

.field private mGcRadiusKm:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v1, v0, [[F

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [F

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    aput v5, v3, v4

    .line 11
    .line 12
    aput-object v3, v1, v4

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    new-array v6, v3, [F

    .line 16
    .line 17
    fill-array-data v6, :array_0

    .line 18
    .line 19
    .line 20
    aput-object v6, v1, v2

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    new-array v7, v6, [F

    .line 24
    .line 25
    fill-array-data v7, :array_1

    .line 26
    .line 27
    .line 28
    aput-object v7, v1, v3

    .line 29
    .line 30
    const/4 v7, 0x4

    .line 31
    new-array v8, v7, [F

    .line 32
    .line 33
    fill-array-data v8, :array_2

    .line 34
    .line 35
    .line 36
    aput-object v8, v1, v6

    .line 37
    .line 38
    const/4 v8, 0x5

    .line 39
    new-array v9, v8, [F

    .line 40
    .line 41
    fill-array-data v9, :array_3

    .line 42
    .line 43
    .line 44
    aput-object v9, v1, v7

    .line 45
    .line 46
    const/4 v9, 0x6

    .line 47
    new-array v10, v9, [F

    .line 48
    .line 49
    fill-array-data v10, :array_4

    .line 50
    .line 51
    .line 52
    aput-object v10, v1, v8

    .line 53
    .line 54
    const/4 v10, 0x7

    .line 55
    new-array v11, v10, [F

    .line 56
    .line 57
    fill-array-data v11, :array_5

    .line 58
    .line 59
    .line 60
    aput-object v11, v1, v9

    .line 61
    .line 62
    const/16 v11, 0x8

    .line 63
    .line 64
    new-array v12, v11, [F

    .line 65
    .line 66
    fill-array-data v12, :array_6

    .line 67
    .line 68
    .line 69
    aput-object v12, v1, v10

    .line 70
    .line 71
    const/16 v12, 0x9

    .line 72
    .line 73
    new-array v13, v12, [F

    .line 74
    .line 75
    fill-array-data v13, :array_7

    .line 76
    .line 77
    .line 78
    aput-object v13, v1, v11

    .line 79
    .line 80
    const/16 v13, 0xa

    .line 81
    .line 82
    new-array v14, v13, [F

    .line 83
    .line 84
    fill-array-data v14, :array_8

    .line 85
    .line 86
    .line 87
    aput-object v14, v1, v12

    .line 88
    .line 89
    const/16 v14, 0xb

    .line 90
    .line 91
    new-array v15, v14, [F

    .line 92
    .line 93
    fill-array-data v15, :array_9

    .line 94
    .line 95
    .line 96
    aput-object v15, v1, v13

    .line 97
    .line 98
    const/16 v15, 0xc

    .line 99
    .line 100
    new-array v13, v15, [F

    .line 101
    .line 102
    fill-array-data v13, :array_a

    .line 103
    .line 104
    .line 105
    aput-object v13, v1, v14

    .line 106
    .line 107
    new-array v13, v0, [F

    .line 108
    .line 109
    fill-array-data v13, :array_b

    .line 110
    .line 111
    .line 112
    aput-object v13, v1, v15

    .line 113
    .line 114
    sput-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 115
    .line 116
    new-array v13, v0, [[F

    .line 117
    .line 118
    new-array v0, v2, [F

    .line 119
    .line 120
    aput v5, v0, v4

    .line 121
    .line 122
    aput-object v0, v13, v4

    .line 123
    .line 124
    new-array v0, v3, [F

    .line 125
    .line 126
    fill-array-data v0, :array_c

    .line 127
    .line 128
    .line 129
    aput-object v0, v13, v2

    .line 130
    .line 131
    new-array v0, v6, [F

    .line 132
    .line 133
    fill-array-data v0, :array_d

    .line 134
    .line 135
    .line 136
    aput-object v0, v13, v3

    .line 137
    .line 138
    new-array v0, v7, [F

    .line 139
    .line 140
    fill-array-data v0, :array_e

    .line 141
    .line 142
    .line 143
    aput-object v0, v13, v6

    .line 144
    .line 145
    new-array v0, v8, [F

    .line 146
    .line 147
    fill-array-data v0, :array_f

    .line 148
    .line 149
    .line 150
    aput-object v0, v13, v7

    .line 151
    .line 152
    new-array v0, v9, [F

    .line 153
    .line 154
    fill-array-data v0, :array_10

    .line 155
    .line 156
    .line 157
    aput-object v0, v13, v8

    .line 158
    .line 159
    new-array v0, v10, [F

    .line 160
    .line 161
    fill-array-data v0, :array_11

    .line 162
    .line 163
    .line 164
    aput-object v0, v13, v9

    .line 165
    .line 166
    new-array v0, v11, [F

    .line 167
    .line 168
    fill-array-data v0, :array_12

    .line 169
    .line 170
    .line 171
    aput-object v0, v13, v10

    .line 172
    .line 173
    new-array v0, v12, [F

    .line 174
    .line 175
    fill-array-data v0, :array_13

    .line 176
    .line 177
    .line 178
    aput-object v0, v13, v11

    .line 179
    .line 180
    const/16 v0, 0xa

    .line 181
    .line 182
    new-array v11, v0, [F

    .line 183
    .line 184
    fill-array-data v11, :array_14

    .line 185
    .line 186
    .line 187
    aput-object v11, v13, v12

    .line 188
    .line 189
    new-array v11, v14, [F

    .line 190
    .line 191
    fill-array-data v11, :array_15

    .line 192
    .line 193
    .line 194
    aput-object v11, v13, v0

    .line 195
    .line 196
    new-array v0, v15, [F

    .line 197
    .line 198
    fill-array-data v0, :array_16

    .line 199
    .line 200
    .line 201
    aput-object v0, v13, v14

    .line 202
    .line 203
    const/16 v0, 0xd

    .line 204
    .line 205
    new-array v11, v0, [F

    .line 206
    .line 207
    fill-array-data v11, :array_17

    .line 208
    .line 209
    .line 210
    aput-object v11, v13, v15

    .line 211
    .line 212
    sput-object v13, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    .line 213
    .line 214
    new-array v11, v0, [[F

    .line 215
    .line 216
    new-array v0, v2, [F

    .line 217
    .line 218
    aput v5, v0, v4

    .line 219
    .line 220
    aput-object v0, v11, v4

    .line 221
    .line 222
    new-array v0, v3, [F

    .line 223
    .line 224
    fill-array-data v0, :array_18

    .line 225
    .line 226
    .line 227
    aput-object v0, v11, v2

    .line 228
    .line 229
    new-array v0, v6, [F

    .line 230
    .line 231
    fill-array-data v0, :array_19

    .line 232
    .line 233
    .line 234
    aput-object v0, v11, v3

    .line 235
    .line 236
    new-array v0, v7, [F

    .line 237
    .line 238
    fill-array-data v0, :array_1a

    .line 239
    .line 240
    .line 241
    aput-object v0, v11, v6

    .line 242
    .line 243
    new-array v0, v8, [F

    .line 244
    .line 245
    fill-array-data v0, :array_1b

    .line 246
    .line 247
    .line 248
    aput-object v0, v11, v7

    .line 249
    .line 250
    new-array v0, v9, [F

    .line 251
    .line 252
    fill-array-data v0, :array_1c

    .line 253
    .line 254
    .line 255
    aput-object v0, v11, v8

    .line 256
    .line 257
    new-array v0, v10, [F

    .line 258
    .line 259
    fill-array-data v0, :array_1d

    .line 260
    .line 261
    .line 262
    aput-object v0, v11, v9

    .line 263
    .line 264
    const/16 v0, 0x8

    .line 265
    .line 266
    new-array v13, v0, [F

    .line 267
    .line 268
    fill-array-data v13, :array_1e

    .line 269
    .line 270
    .line 271
    aput-object v13, v11, v10

    .line 272
    .line 273
    new-array v13, v12, [F

    .line 274
    .line 275
    fill-array-data v13, :array_1f

    .line 276
    .line 277
    .line 278
    aput-object v13, v11, v0

    .line 279
    .line 280
    const/16 v0, 0xa

    .line 281
    .line 282
    new-array v13, v0, [F

    .line 283
    .line 284
    fill-array-data v13, :array_20

    .line 285
    .line 286
    .line 287
    aput-object v13, v11, v12

    .line 288
    .line 289
    new-array v13, v14, [F

    .line 290
    .line 291
    fill-array-data v13, :array_21

    .line 292
    .line 293
    .line 294
    aput-object v13, v11, v0

    .line 295
    .line 296
    new-array v0, v15, [F

    .line 297
    .line 298
    fill-array-data v0, :array_22

    .line 299
    .line 300
    .line 301
    aput-object v0, v11, v14

    .line 302
    .line 303
    const/16 v0, 0xd

    .line 304
    .line 305
    new-array v13, v0, [F

    .line 306
    .line 307
    fill-array-data v13, :array_23

    .line 308
    .line 309
    .line 310
    aput-object v13, v11, v15

    .line 311
    .line 312
    sput-object v11, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    .line 313
    .line 314
    new-array v11, v0, [[F

    .line 315
    .line 316
    new-array v0, v2, [F

    .line 317
    .line 318
    aput v5, v0, v4

    .line 319
    .line 320
    aput-object v0, v11, v4

    .line 321
    .line 322
    new-array v0, v3, [F

    .line 323
    .line 324
    fill-array-data v0, :array_24

    .line 325
    .line 326
    .line 327
    aput-object v0, v11, v2

    .line 328
    .line 329
    new-array v0, v6, [F

    .line 330
    .line 331
    fill-array-data v0, :array_25

    .line 332
    .line 333
    .line 334
    aput-object v0, v11, v3

    .line 335
    .line 336
    new-array v0, v7, [F

    .line 337
    .line 338
    fill-array-data v0, :array_26

    .line 339
    .line 340
    .line 341
    aput-object v0, v11, v6

    .line 342
    .line 343
    new-array v0, v8, [F

    .line 344
    .line 345
    fill-array-data v0, :array_27

    .line 346
    .line 347
    .line 348
    aput-object v0, v11, v7

    .line 349
    .line 350
    new-array v0, v9, [F

    .line 351
    .line 352
    fill-array-data v0, :array_28

    .line 353
    .line 354
    .line 355
    aput-object v0, v11, v8

    .line 356
    .line 357
    new-array v0, v10, [F

    .line 358
    .line 359
    fill-array-data v0, :array_29

    .line 360
    .line 361
    .line 362
    aput-object v0, v11, v9

    .line 363
    .line 364
    const/16 v0, 0x8

    .line 365
    .line 366
    new-array v3, v0, [F

    .line 367
    .line 368
    fill-array-data v3, :array_2a

    .line 369
    .line 370
    .line 371
    aput-object v3, v11, v10

    .line 372
    .line 373
    new-array v3, v12, [F

    .line 374
    .line 375
    fill-array-data v3, :array_2b

    .line 376
    .line 377
    .line 378
    aput-object v3, v11, v0

    .line 379
    .line 380
    const/16 v0, 0xa

    .line 381
    .line 382
    new-array v3, v0, [F

    .line 383
    .line 384
    fill-array-data v3, :array_2c

    .line 385
    .line 386
    .line 387
    aput-object v3, v11, v12

    .line 388
    .line 389
    new-array v3, v14, [F

    .line 390
    .line 391
    fill-array-data v3, :array_2d

    .line 392
    .line 393
    .line 394
    aput-object v3, v11, v0

    .line 395
    .line 396
    new-array v0, v15, [F

    .line 397
    .line 398
    fill-array-data v0, :array_2e

    .line 399
    .line 400
    .line 401
    aput-object v0, v11, v14

    .line 402
    .line 403
    const/16 v0, 0xd

    .line 404
    .line 405
    new-array v0, v0, [F

    .line 406
    .line 407
    fill-array-data v0, :array_2f

    .line 408
    .line 409
    .line 410
    aput-object v0, v11, v15

    .line 411
    .line 412
    sput-object v11, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    .line 413
    .line 414
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 415
    .line 416
    const/16 v3, 0x7da

    .line 417
    .line 418
    invoke-direct {v0, v3, v2, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    sput-wide v2, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    .line 426
    .line 427
    array-length v0, v1

    .line 428
    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    .line 433
    .line 434
    return-void

    .line 435
    :array_0
    .array-data 4
        -0x39198ecd
        -0x3b39b666    # -1586.3f
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_1
    .array-data 4
        -0x3aea3666    # -2396.6f
        0x453d219a    # 3026.1f
        0x44d09333    # 1668.6f
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_2
    .array-data 4
        0x44a78333    # 1340.1f
        -0x3aee9ccd    # -2326.2f
        0x4499fccd    # 1231.9f
        0x441e8000    # 634.0f
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_3
    .array-data 4
        0x44642666    # 912.6f
        0x444a399a    # 808.9f
        0x4326b333    # 166.7f
        -0x3c4d7333    # -357.1f
        0x42b2cccd    # 89.4f
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_4
    .array-data 4
        -0x3c99199a    # -230.9f
        0x43b2999a    # 357.2f
        0x43484ccd    # 200.3f
        -0x3cf2e666    # -141.1f
        -0x3cdd0000    # -163.0f
        -0x3f066666    # -7.8f
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_5
    .array-data 4
        0x4291999a    # 72.8f
        0x42893333    # 68.6f
        0x42980000    # 76.0f
        -0x3cf2999a    # -141.4f
        -0x3e49999a    # -22.8f
        0x41533333    # 13.2f
        -0x3d643333    # -77.9f
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_6
    .array-data 4
        0x42a10000    # 80.5f
        -0x3d69cccd    # -75.1f
        -0x3f69999a    # -4.7f
        0x42353333    # 45.3f
        0x415e6666    # 13.9f
        0x41266666    # 10.4f
        0x3fd9999a    # 1.7f
        0x409ccccd    # 4.9f
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_7
    .array-data 4
        0x41c33333    # 24.4f
        0x4101999a    # 8.1f
        -0x3e980000    # -14.5f
        -0x3f4ccccd    # -5.6f
        -0x3e65999a    # -19.3f
        0x41380000    # 11.5f
        0x412e6666    # 10.9f
        -0x3e9e6666    # -14.1f
        -0x3f933333    # -3.7f
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_8
    .array-data 4
        0x40accccd    # 5.4f
        0x41166666    # 9.4f
        0x4059999a    # 3.4f
        -0x3f59999a    # -5.2f
        0x40466666    # 3.1f
        -0x3eb9999a    # -12.4f
        -0x40cccccd    # -0.7f
        0x41066666    # 8.4f
        -0x3ef80000    # -8.5f
        -0x3ede6666    # -10.1f
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_9
    .array-data 4
        -0x40000000    # -2.0f
        -0x3f366666    # -6.3f
        0x3f666666    # 0.9f
        -0x40733333    # -1.1f
        -0x41b33333    # -0.2f
        0x40200000    # 2.5f
        -0x41666666    # -0.3f
        0x400ccccd    # 2.2f
        0x40466666    # 3.1f
        -0x40800000    # -1.0f
        -0x3fcccccd    # -2.8f
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_a
    .array-data 4
        0x40400000    # 3.0f
        -0x40400000    # -1.5f
        -0x3ff9999a    # -2.1f
        0x3fd9999a    # 1.7f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x40b33333    # -0.8f
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x40733333    # 3.8f
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_b
    .array-data 4
        -0x3ff33333    # -2.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        -0x40e66666    # -0.6f
        0x3f666666    # 0.9f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        -0x41333333    # -0.4f
        -0x41333333    # -0.4f
        0x3e4ccccd    # 0.2f
        -0x40b33333    # -0.8f
        0x0
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_c
    .array-data 4
        0x0
        0x459a8333    # 4944.4f
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_d
    .array-data 4
        0x0
        -0x3ad6c4cd    # -2707.7f
        -0x3beff99a    # -576.1f
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_e
    .array-data 4
        0x0
        -0x3cdfcccd    # -160.2f
        0x437be666    # 251.9f
        -0x3bf9d99a    # -536.6f
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_f
    .array-data 4
        0x0
        0x438f3333    # 286.4f
        -0x3caccccd    # -211.2f
        0x43244ccd    # 164.3f
        -0x3c657333    # -309.1f
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_10
    .array-data 4
        0x0
        0x42326666    # 44.6f
        0x433ce666    # 188.9f
        -0x3d13999a    # -118.2f
        0x0
        0x42c9cccd    # 100.9f
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_11
    .array-data 4
        0x0
        -0x3e59999a    # -20.8f
        0x42306666    # 44.1f
        0x42760000    # 61.5f
        -0x3d7b6666    # -66.3f
        0x40466666    # 3.1f
        0x425c0000    # 55.0f
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
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
    :array_12
    .array-data 4
        0x0
        -0x3d986666    # -57.9f
        -0x3e573333    # -21.1f
        0x40d00000    # 6.5f
        0x41c73333    # 24.9f
        0x40e00000    # 7.0f
        -0x3e226666    # -27.7f
        -0x3faccccd    # -3.3f
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_13
    .array-data 4
        0x0
        0x41300000    # 11.0f
        -0x3e600000    # -20.0f
        0x413e6666    # 11.9f
        -0x3e74cccd    # -17.4f
        0x4185999a    # 16.7f
        0x40e00000    # 7.0f
        -0x3ed33333    # -10.8f
        0x3fd9999a    # 1.7f
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_14
    .array-data 4
        0x0
        -0x3e5c0000    # -20.5f
        0x41380000    # 11.5f
        0x414ccccd    # 12.8f
        -0x3f19999a    # -7.2f
        -0x3f133333    # -7.4f
        0x41000000    # 8.0f
        0x40066666    # 2.1f
        -0x3f3ccccd    # -6.1f
        0x40e00000    # 7.0f
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    :array_15
    .array-data 4
        0x0
        0x40333333    # 2.8f
        -0x42333333    # -0.1f
        0x40966666    # 4.7f
        0x408ccccd    # 4.4f
        -0x3f19999a    # -7.2f
        -0x40800000    # -1.0f
        -0x3f866666    # -3.9f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        -0x3efb3333    # -8.3f
    .end array-data

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_16
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3fd9999a    # 1.7f
        -0x40e66666    # -0.6f
        -0x4019999a    # -1.8f
        0x3f666666    # 0.9f
        -0x41333333    # -0.4f
        -0x3fe00000    # -2.5f
        -0x4059999a    # -1.3f
        -0x3ff9999a    # -2.1f
        -0x400ccccd    # -1.9f
        -0x4019999a    # -1.8f
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_17
    .array-data 4
        0x0
        -0x4099999a    # -0.9f
        0x3e99999a    # 0.3f
        0x40066666    # 2.1f
        -0x3fe00000    # -2.5f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        -0x4099999a    # -0.9f
        -0x41b33333    # -0.2f
        0x3f666666    # 0.9f
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_18
    .array-data 4
        0x4139999a    # 11.6f
        0x41840000    # 16.5f
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_19
    .array-data 4
        -0x3ebe6666    # -12.1f
        -0x3f733333    # -4.4f
        0x3ff33333    # 1.9f
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :array_1a
    .array-data 4
        0x3ecccccd    # 0.4f
        -0x3f7ccccd    # -4.1f
        -0x3fc66666    # -2.9f
        -0x3f09999a    # -7.7f
    .end array-data

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :array_1b
    .array-data 4
        -0x4019999a    # -1.8f
        0x40133333    # 2.3f
        -0x3ef4cccd    # -8.7f
        0x40933333    # 4.6f
        -0x3ff9999a    # -2.1f
    .end array-data

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_1c
    .array-data 4
        -0x40800000    # -1.0f
        0x3f19999a    # 0.6f
        -0x4019999a    # -1.8f
        -0x40800000    # -1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_1d
    .array-data 4
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x40000000    # 2.0f
        -0x40266666    # -1.7f
        -0x41666666    # -0.3f
        0x3fd9999a    # 1.7f
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_1e
    .array-data 4
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x40e66666    # -0.6f
        0x3fa66666    # 1.3f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        -0x40cccccd    # -0.7f
        0x3f19999a    # 0.6f
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :array_1f
    .array-data 4
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_20
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x0
        0x3e99999a    # 0.3f
        -0x41333333    # -0.4f
        -0x41666666    # -0.3f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x41333333    # -0.4f
        -0x41b33333    # -0.2f
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_21
    .array-data 4
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x0
    .end array-data

    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    :array_23
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    :array_24
    .array-data 4
        0x0
        -0x3e30cccd    # -25.9f
    .end array-data

    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    :array_25
    .array-data 4
        0x0
        -0x3e4c0000    # -22.5f
        -0x3ec33333    # -11.8f
    .end array-data

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    :array_26
    .array-data 4
        0x0
        0x40e9999a    # 7.3f
        -0x3f866666    # -3.9f
        -0x3fd9999a    # -2.6f
    .end array-data

    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    :array_27
    .array-data 4
        0x0
        0x3f8ccccd    # 1.1f
        0x402ccccd    # 2.7f
        0x4079999a    # 3.9f
        -0x40b33333    # -0.8f
    .end array-data

    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :array_28
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3f99999a    # 1.2f
        0x40800000    # 4.0f
        -0x40e66666    # -0.6f
    .end array-data

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    :array_29
    .array-data 4
        0x0
        -0x41b33333    # -0.2f
        -0x3ff9999a    # -2.1f
        -0x41333333    # -0.4f
        -0x40e66666    # -0.6f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
    .end array-data

    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    :array_2a
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x40b33333    # -0.8f
        -0x41666666    # -0.3f
        0x3e99999a    # 0.3f
    .end array-data

    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    :array_2b
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
    .end array-data

    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    :array_2c
    .array-data 4
        0x0
        0x0
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x0
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    :array_2d
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :array_2e
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    :array_2f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFJ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    const v2, -0x3d4c0001    # -89.99999f

    .line 10
    .line 11
    .line 12
    move/from16 v3, p1

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x42b3ffff    # 89.99999f

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    move/from16 v3, p2

    .line 26
    .line 27
    move/from16 v4, p3

    .line 28
    .line 29
    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Landroid/hardware/GeomagneticField$LegendreTable;

    .line 33
    .line 34
    add-int/lit8 v4, v1, -0x1

    .line 35
    .line 36
    iget v5, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 37
    .line 38
    float-to-double v5, v5

    .line 39
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    sub-double/2addr v7, v5

    .line 45
    double-to-float v5, v7

    .line 46
    invoke-direct {v3, v4, v5}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v1, 0x2

    .line 50
    .line 51
    new-array v5, v4, [F

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/high16 v7, 0x3f800000    # 1.0f

    .line 55
    .line 56
    aput v7, v5, v6

    .line 57
    .line 58
    const v8, 0x45c7199a

    .line 59
    .line 60
    .line 61
    iget v9, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    .line 62
    .line 63
    div-float/2addr v8, v9

    .line 64
    const/4 v9, 0x1

    .line 65
    aput v8, v5, v9

    .line 66
    .line 67
    const/4 v8, 0x2

    .line 68
    move v10, v8

    .line 69
    :goto_0
    if-ge v10, v4, :cond_0

    .line 70
    .line 71
    add-int/lit8 v11, v10, -0x1

    .line 72
    .line 73
    aget v11, v5, v11

    .line 74
    .line 75
    aget v12, v5, v9

    .line 76
    .line 77
    mul-float/2addr v11, v12

    .line 78
    aput v11, v5, v10

    .line 79
    .line 80
    add-int/lit8 v10, v10, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-array v4, v1, [F

    .line 84
    .line 85
    new-array v10, v1, [F

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    aput v11, v4, v6

    .line 89
    .line 90
    aput v7, v10, v6

    .line 91
    .line 92
    iget v12, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 93
    .line 94
    float-to-double v12, v12

    .line 95
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    double-to-float v12, v12

    .line 100
    aput v12, v4, v9

    .line 101
    .line 102
    iget v12, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 103
    .line 104
    float-to-double v12, v12

    .line 105
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v12

    .line 109
    double-to-float v12, v12

    .line 110
    aput v12, v10, v9

    .line 111
    .line 112
    :goto_1
    if-ge v8, v1, :cond_1

    .line 113
    .line 114
    shr-int/lit8 v12, v8, 0x1

    .line 115
    .line 116
    sub-int v13, v8, v12

    .line 117
    .line 118
    aget v14, v4, v13

    .line 119
    .line 120
    aget v15, v10, v12

    .line 121
    .line 122
    mul-float/2addr v14, v15

    .line 123
    aget v15, v10, v13

    .line 124
    .line 125
    aget v16, v4, v12

    .line 126
    .line 127
    mul-float v15, v15, v16

    .line 128
    .line 129
    add-float/2addr v15, v14

    .line 130
    aput v15, v4, v8

    .line 131
    .line 132
    aget v14, v10, v13

    .line 133
    .line 134
    aget v15, v10, v12

    .line 135
    .line 136
    mul-float/2addr v14, v15

    .line 137
    aget v13, v4, v13

    .line 138
    .line 139
    aget v12, v4, v12

    .line 140
    .line 141
    mul-float/2addr v13, v12

    .line 142
    sub-float/2addr v14, v13

    .line 143
    aput v14, v10, v8

    .line 144
    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    iget v8, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 149
    .line 150
    float-to-double v12, v8

    .line 151
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    double-to-float v8, v12

    .line 156
    div-float/2addr v7, v8

    .line 157
    sget-wide v12, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    .line 158
    .line 159
    sub-long v12, p4, v12

    .line 160
    .line 161
    long-to-float v8, v12

    .line 162
    const v12, 0x50eaf626

    .line 163
    .line 164
    .line 165
    div-float/2addr v8, v12

    .line 166
    move v12, v11

    .line 167
    move v13, v12

    .line 168
    :goto_2
    if-ge v9, v1, :cond_3

    .line 169
    .line 170
    :goto_3
    if-gt v6, v9, :cond_2

    .line 171
    .line 172
    sget-object v14, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 173
    .line 174
    aget-object v14, v14, v9

    .line 175
    .line 176
    aget v14, v14, v6

    .line 177
    .line 178
    sget-object v15, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    .line 179
    .line 180
    aget-object v15, v15, v9

    .line 181
    .line 182
    aget v15, v15, v6

    .line 183
    .line 184
    mul-float/2addr v15, v8

    .line 185
    add-float/2addr v15, v14

    .line 186
    sget-object v14, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    .line 187
    .line 188
    aget-object v14, v14, v9

    .line 189
    .line 190
    aget v14, v14, v6

    .line 191
    .line 192
    sget-object v16, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    .line 193
    .line 194
    aget-object v16, v16, v9

    .line 195
    .line 196
    aget v16, v16, v6

    .line 197
    .line 198
    mul-float v16, v16, v8

    .line 199
    .line 200
    add-float v16, v16, v14

    .line 201
    .line 202
    add-int/lit8 v14, v9, 0x2

    .line 203
    .line 204
    aget v14, v5, v14

    .line 205
    .line 206
    aget v17, v10, v6

    .line 207
    .line 208
    mul-float v18, v15, v17

    .line 209
    .line 210
    aget v19, v4, v6

    .line 211
    .line 212
    mul-float v20, v16, v19

    .line 213
    .line 214
    add-float v20, v20, v18

    .line 215
    .line 216
    mul-float v20, v20, v14

    .line 217
    .line 218
    move/from16 v18, v1

    .line 219
    .line 220
    iget-object v1, v3, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 221
    .line 222
    aget-object v1, v1, v9

    .line 223
    .line 224
    aget v1, v1, v6

    .line 225
    .line 226
    mul-float v20, v20, v1

    .line 227
    .line 228
    sget-object v1, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    .line 229
    .line 230
    aget-object v1, v1, v9

    .line 231
    .line 232
    aget v1, v1, v6

    .line 233
    .line 234
    mul-float v20, v20, v1

    .line 235
    .line 236
    add-float v11, v20, v11

    .line 237
    .line 238
    move-object/from16 v20, v4

    .line 239
    .line 240
    int-to-float v4, v6

    .line 241
    mul-float/2addr v4, v14

    .line 242
    mul-float v21, v15, v19

    .line 243
    .line 244
    mul-float v22, v16, v17

    .line 245
    .line 246
    sub-float v21, v21, v22

    .line 247
    .line 248
    mul-float v21, v21, v4

    .line 249
    .line 250
    iget-object v4, v3, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 251
    .line 252
    aget-object v4, v4, v9

    .line 253
    .line 254
    aget v4, v4, v6

    .line 255
    .line 256
    mul-float v21, v21, v4

    .line 257
    .line 258
    mul-float v21, v21, v1

    .line 259
    .line 260
    mul-float v21, v21, v7

    .line 261
    .line 262
    add-float v13, v21, v13

    .line 263
    .line 264
    move-object/from16 p1, v3

    .line 265
    .line 266
    add-int/lit8 v3, v9, 0x1

    .line 267
    .line 268
    int-to-float v3, v3

    .line 269
    mul-float/2addr v3, v14

    .line 270
    mul-float v15, v15, v17

    .line 271
    .line 272
    mul-float v16, v16, v19

    .line 273
    .line 274
    add-float v16, v16, v15

    .line 275
    .line 276
    mul-float v16, v16, v3

    .line 277
    .line 278
    mul-float v16, v16, v4

    .line 279
    .line 280
    mul-float v16, v16, v1

    .line 281
    .line 282
    sub-float v12, v12, v16

    .line 283
    .line 284
    add-int/lit8 v6, v6, 0x1

    .line 285
    .line 286
    move-object/from16 v3, p1

    .line 287
    .line 288
    move/from16 v1, v18

    .line 289
    .line 290
    move-object/from16 v4, v20

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_2
    move/from16 v18, v1

    .line 294
    .line 295
    move-object/from16 p1, v3

    .line 296
    .line 297
    move-object/from16 v20, v4

    .line 298
    .line 299
    add-int/lit8 v9, v9, 0x1

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :cond_3
    float-to-double v1, v2

    .line 305
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    iget v3, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 310
    .line 311
    float-to-double v3, v3

    .line 312
    sub-double/2addr v1, v3

    .line 313
    float-to-double v3, v11

    .line 314
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 315
    .line 316
    .line 317
    move-result-wide v5

    .line 318
    mul-double v9, v5, v3

    .line 319
    .line 320
    float-to-double v3, v12

    .line 321
    move-wide v5, v1

    .line 322
    move-wide v7, v3

    .line 323
    invoke-static/range {v5 .. v10}, Landroid/app/m;->a(DDD)D

    .line 324
    .line 325
    .line 326
    move-result-wide v5

    .line 327
    double-to-float v5, v5

    .line 328
    iput v5, v0, Landroid/hardware/GeomagneticField;->mX:F

    .line 329
    .line 330
    iput v13, v0, Landroid/hardware/GeomagneticField;->mY:F

    .line 331
    .line 332
    neg-float v5, v11

    .line 333
    float-to-double v5, v5

    .line 334
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v7

    .line 338
    mul-double/2addr v7, v5

    .line 339
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 340
    .line 341
    .line 342
    move-result-wide v1

    .line 343
    mul-double/2addr v1, v3

    .line 344
    add-double/2addr v1, v7

    .line 345
    double-to-float v1, v1

    .line 346
    iput v1, v0, Landroid/hardware/GeomagneticField;->mZ:F

    .line 347
    .line 348
    return-void
.end method

.method private computeGeocentricCoordinates(FFF)V
    .locals 10

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    div-float/2addr p3, v0

    .line 4
    float-to-double v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    double-to-float p1, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    div-float v1, v0, p1

    .line 20
    .line 21
    const v2, 0x4c1b2f2f    # 4.0680636E7f

    .line 22
    .line 23
    .line 24
    mul-float v3, p1, v2

    .line 25
    .line 26
    mul-float/2addr v3, p1

    .line 27
    const v4, 0x4c1a253b    # 4.04083E7f

    .line 28
    .line 29
    .line 30
    mul-float v5, v0, v4

    .line 31
    .line 32
    mul-float/2addr v5, v0

    .line 33
    add-float/2addr v5, v3

    .line 34
    float-to-double v6, v5

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    double-to-float v3, v8

    .line 40
    mul-float/2addr v3, p3

    .line 41
    add-float/2addr v4, v3

    .line 42
    mul-float/2addr v4, v1

    .line 43
    add-float/2addr v3, v2

    .line 44
    div-float/2addr v4, v3

    .line 45
    float-to-double v1, v4

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    double-to-float v1, v1

    .line 51
    iput v1, p0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 52
    .line 53
    float-to-double v1, p2

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    double-to-float p2, v1

    .line 59
    iput p2, p0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 60
    .line 61
    mul-float p2, p3, p3

    .line 62
    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    .line 64
    .line 65
    mul-float/2addr p3, v1

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    double-to-float v1, v1

    .line 71
    mul-float/2addr p3, v1

    .line 72
    add-float/2addr p3, p2

    .line 73
    const p2, 0x58bc2457

    .line 74
    .line 75
    .line 76
    mul-float/2addr p2, p1

    .line 77
    mul-float/2addr p2, p1

    .line 78
    const p1, 0x58b9a1a1

    .line 79
    .line 80
    .line 81
    mul-float/2addr p1, v0

    .line 82
    mul-float/2addr p1, v0

    .line 83
    add-float/2addr p1, p2

    .line 84
    div-float/2addr p1, v5

    .line 85
    add-float/2addr p1, p3

    .line 86
    float-to-double p1, p1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    double-to-float p1, p1

    .line 92
    iput p1, p0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    .line 93
    .line 94
    return-void
.end method

.method private static computeSchmidtQuasiNormFactors(I)[[F
    .locals 10

    .line 1
    add-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [[F

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [F

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput v3, v2, v4

    .line 12
    .line 13
    aput-object v2, v0, v4

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-gt v2, p0, :cond_2

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    new-array v5, v3, [F

    .line 21
    .line 22
    aput-object v5, v0, v2

    .line 23
    .line 24
    add-int/lit8 v6, v2, -0x1

    .line 25
    .line 26
    aget-object v6, v0, v6

    .line 27
    .line 28
    aget v6, v6, v4

    .line 29
    .line 30
    mul-int/lit8 v7, v2, 0x2

    .line 31
    .line 32
    sub-int/2addr v7, v1

    .line 33
    int-to-float v7, v7

    .line 34
    mul-float/2addr v6, v7

    .line 35
    int-to-float v7, v2

    .line 36
    div-float/2addr v6, v7

    .line 37
    aput v6, v5, v4

    .line 38
    .line 39
    move v5, v1

    .line 40
    :goto_1
    if-gt v5, v2, :cond_1

    .line 41
    .line 42
    aget-object v6, v0, v2

    .line 43
    .line 44
    add-int/lit8 v7, v5, -0x1

    .line 45
    .line 46
    aget v7, v6, v7

    .line 47
    .line 48
    sub-int v8, v2, v5

    .line 49
    .line 50
    add-int/2addr v8, v1

    .line 51
    if-ne v5, v1, :cond_0

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    move v9, v1

    .line 56
    :goto_2
    mul-int/2addr v8, v9

    .line 57
    int-to-float v8, v8

    .line 58
    add-int v9, v2, v5

    .line 59
    .line 60
    int-to-float v9, v9

    .line 61
    div-float/2addr v8, v9

    .line 62
    float-to-double v8, v8

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    double-to-float v8, v8

    .line 68
    mul-float/2addr v7, v8

    .line 69
    aput v7, v6, v5

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v2, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getDeclination()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFieldStrength()F
    .locals 2

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v0

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHorizontalStrength()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInclination()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    float-to-double v2, v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
