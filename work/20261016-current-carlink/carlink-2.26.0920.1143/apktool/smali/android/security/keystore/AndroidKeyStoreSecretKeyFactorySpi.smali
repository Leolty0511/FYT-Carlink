.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "SourceFile"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/security/ProviderException;

    .line 12
    .line 13
    const-string v2, "Failed to get GateKeeper secure user ID"

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 26

    .line 1
    const-string v0, "Key too large: "

    .line 2
    .line 3
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    .line 4
    .line 5
    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    move/from16 v5, p3

    .line 15
    .line 16
    move-object v6, v7

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_a

    .line 23
    .line 24
    :try_start_0
    iget-object v1, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 25
    .line 26
    const v3, 0x100002be

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    move v11, v1

    .line 48
    move v10, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_9

    .line 57
    .line 58
    iget-object v1, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 59
    .line 60
    invoke-virtual {v1, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    move v11, v1

    .line 69
    move v10, v5

    .line 70
    :goto_0
    const v1, 0x30000003

    .line 71
    .line 72
    .line 73
    const-wide/16 v3, -0x1

    .line 74
    .line 75
    invoke-virtual {v7, v1, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v8

    .line 79
    cmp-long v1, v8, v3

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    const-wide/32 v12, 0x7fffffff

    .line 84
    .line 85
    .line 86
    cmp-long v1, v8, v12

    .line 87
    .line 88
    if-gtz v1, :cond_7

    .line 89
    .line 90
    long-to-int v0, v8

    .line 91
    const v1, 0x20000001

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v1}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    .line 99
    .line 100
    .line 101
    move-result v16

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v6, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    const v8, 0x20000006

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_1

    .line 128
    .line 129
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :try_start_1
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    :try_start_2
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_1
    :try_start_3
    new-instance v0, Ljava/security/ProviderException;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v2, "Unsupported encryption padding: "

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    new-array v8, v8, [Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    move-object/from16 v17, v1

    .line 189
    .line 190
    check-cast v17, [Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    new-array v1, v1, [Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object/from16 v18, v1

    .line 203
    .line 204
    check-cast v18, [Ljava/lang/String;

    .line 205
    .line 206
    const v1, 0x20000005

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7, v1}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v19

    .line 217
    const v1, 0x20000004

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v1}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v20

    .line 228
    iget-object v1, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 229
    .line 230
    const v6, 0x100001f8

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v6, v5}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 238
    .line 239
    invoke-virtual {v8, v6, v5}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const v8, -0x5ffffe0a

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 250
    const v9, 0x60000190

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v9}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    .line 254
    .line 255
    .line 256
    move-result-object v14

    .line 257
    const v9, 0x60000191

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v9}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    const v9, 0x60000192

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v9}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    .line 268
    .line 269
    .line 270
    move-result-object v21

    .line 271
    const v9, 0x700001f7

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v9}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    xor-int/lit8 v23, v9, 0x1

    .line 279
    .line 280
    const v9, 0x300001f9

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v9, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    .line 284
    .line 285
    .line 286
    move-result-wide v3

    .line 287
    cmp-long v9, v3, v12

    .line 288
    .line 289
    if-gtz v9, :cond_6

    .line 290
    .line 291
    if-eqz v23, :cond_2

    .line 292
    .line 293
    if-eqz v6, :cond_2

    .line 294
    .line 295
    if-nez v1, :cond_2

    .line 296
    .line 297
    move/from16 v24, v2

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_2
    move/from16 v24, v5

    .line 301
    .line 302
    :goto_2
    iget-object v7, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 303
    .line 304
    const v9, 0x700001fa

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v9}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    const/4 v9, 0x2

    .line 312
    if-eq v1, v9, :cond_4

    .line 313
    .line 314
    if-ne v6, v9, :cond_3

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_3
    move/from16 v25, v5

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 321
    .line 322
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_5

    .line 327
    .line 328
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_5

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_5
    move v2, v5

    .line 340
    :goto_4
    move/from16 v25, v2

    .line 341
    .line 342
    :goto_5
    new-instance v1, Landroid/security/keystore/KeyInfo;

    .line 343
    .line 344
    move-object v8, v1

    .line 345
    long-to-int v2, v3

    .line 346
    move/from16 v22, v2

    .line 347
    .line 348
    move-object/from16 v9, p1

    .line 349
    .line 350
    move v12, v0

    .line 351
    move-object v13, v14

    .line 352
    move-object v14, v15

    .line 353
    move-object/from16 v15, v21

    .line 354
    .line 355
    move/from16 v21, v23

    .line 356
    .line 357
    move/from16 v23, v24

    .line 358
    .line 359
    move/from16 v24, v7

    .line 360
    .line 361
    invoke-direct/range {v8 .. v25}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZ)V

    .line 362
    .line 363
    .line 364
    return-object v1

    .line 365
    :cond_6
    new-instance v0, Ljava/security/ProviderException;

    .line 366
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v2, "User authentication timeout validity too long: "

    .line 370
    .line 371
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v2, " seconds"

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :cond_7
    :try_start_4
    new-instance v1, Ljava/security/ProviderException;

    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v0, " bits"

    .line 401
    .line 402
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v1

    .line 413
    :cond_8
    new-instance v0, Ljava/security/ProviderException;

    .line 414
    .line 415
    const-string v1, "Key size not available"

    .line 416
    .line 417
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :cond_9
    new-instance v0, Ljava/security/ProviderException;

    .line 422
    .line 423
    const-string v1, "Key origin not available"

    .line 424
    .line 425
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 429
    :catch_2
    move-exception v0

    .line 430
    new-instance v1, Ljava/security/ProviderException;

    .line 431
    .line 432
    const-string v2, "Unsupported key characteristic"

    .line 433
    .line 434
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    .line 436
    .line 437
    throw v1

    .line 438
    :cond_a
    new-instance v0, Ljava/security/ProviderException;

    .line 439
    .line 440
    const-string v2, "Failed to obtain information about key. Keystore error: "

    .line 441
    .line 442
    invoke-static {v2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v0
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 2
    .line 3
    const-class v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo p1, "null"

    .line 21
    .line 22
    .line 23
    :goto_0
    const-string v0, "Only Android KeyStore secret keys supported: "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2

    .line 33
    :cond_1
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    const-class v0, Landroid/security/keystore/KeyInfo;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreKey;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "USRSKEY_"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {v1, v0, p2, p1}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 81
    .line 82
    const-string v0, "Invalid key alias: "

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const-string v0, "Unsupported key spec: "

    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 109
    .line 110
    const-string p2, "Key material export of Android KeyStore keys is not supported"

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_5
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 117
    .line 118
    const-string/jumbo p2, "keySpecClass == null"

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 9
    .line 10
    const-string v0, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 17
    .line 18
    const-string/jumbo v0, "key == null"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method
