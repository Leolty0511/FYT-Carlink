.class public abstract Landroid/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_TYPE_IMEI:I = 0x2

.field public static final ID_TYPE_MEID:I = 0x3

.field public static final ID_TYPE_SERIAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .locals 6

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    if-eqz p2, :cond_d

    .line 4
    .line 5
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 8
    .line 9
    .line 10
    const v1, -0x6ffffd3c

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Landroid/util/ArraySet;

    .line 17
    .line 18
    array-length v1, p1

    .line 19
    invoke-direct {p2, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 20
    .line 21
    .line 22
    array-length v1, p1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_0

    .line 26
    .line 27
    aget v4, p1, v3

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x2

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v3, 0x3

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 p0, 0x0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    const-string/jumbo v1, "phone"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 72
    .line 73
    if-eqz p0, :cond_c

    .line 74
    .line 75
    :goto_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eqz v1, :cond_8

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eq v5, v4, :cond_7

    .line 97
    .line 98
    if-eq v5, p1, :cond_5

    .line 99
    .line 100
    if-ne v5, v3, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const v4, -0x6ffffd35

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    new-instance p0, Landroid/security/keystore/DeviceIdAttestationException;

    .line 122
    .line 123
    const-string p1, "Unable to retrieve MEID"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string p2, "Unknown device ID type "

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_5
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const v4, -0x6ffffd36

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    new-instance p0, Landroid/security/keystore/DeviceIdAttestationException;

    .line 169
    .line 170
    const-string p1, "Unable to retrieve IMEI"

    .line 171
    .line 172
    invoke-direct {p0, p1}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_7
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 181
    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const v4, -0x6ffffd37

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_8
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 194
    .line 195
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 196
    .line 197
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const p2, -0x6ffffd3a

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p2, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 205
    .line 206
    .line 207
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 208
    .line 209
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 210
    .line 211
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const p2, -0x6ffffd39

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 219
    .line 220
    .line 221
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 222
    .line 223
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 224
    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const p2, -0x6ffffd38

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p2, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 233
    .line 234
    .line 235
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 236
    .line 237
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 238
    .line 239
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    const p2, -0x6ffffd34

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p2, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 247
    .line 248
    .line 249
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 250
    .line 251
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    const p2, -0x6ffffd33

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p2, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 261
    .line 262
    .line 263
    new-instance p0, Landroid/security/keymaster/KeymasterCertificateChain;

    .line 264
    .line 265
    invoke-direct {p0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p2, v0, p0}, Landroid/security/KeyStore;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-ne p2, v4, :cond_b

    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-lt p2, p1, :cond_a

    .line 287
    .line 288
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 289
    .line 290
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 291
    .line 292
    .line 293
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    if-eqz p2, :cond_9

    .line 302
    .line 303
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    check-cast p2, [B

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_9
    const-string p0, "X.509"

    .line 314
    .line 315
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    new-array p1, v2, [Ljava/security/cert/X509Certificate;

    .line 333
    .line 334
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    check-cast p0, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .line 340
    return-object p0

    .line 341
    :catch_0
    move-exception p0

    .line 342
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    .line 343
    .line 344
    const-string p2, "Unable to construct certificate chain"

    .line 345
    .line 346
    invoke-direct {p1, p2, p0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    throw p1

    .line 350
    :cond_a
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    .line 351
    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v0, "Attestation certificate chain contained "

    .line 355
    .line 356
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string p0, " entries. At least two are required."

    .line 367
    .line 368
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-direct {p1, p0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p1

    .line 379
    :cond_b
    new-instance p0, Landroid/security/keystore/DeviceIdAttestationException;

    .line 380
    .line 381
    const-string p1, "Unable to perform attestation"

    .line 382
    .line 383
    invoke-static {p2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .line 389
    .line 390
    throw p0

    .line 391
    :cond_c
    new-instance p0, Landroid/security/keystore/DeviceIdAttestationException;

    .line 392
    .line 393
    const-string p1, "Unable to access telephony service"

    .line 394
    .line 395
    invoke-direct {p0, p1}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p0

    .line 399
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    .line 400
    .line 401
    const-string p1, "Missing attestation challenge"

    .line 402
    .line 403
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw p0

    .line 407
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    .line 408
    .line 409
    const-string p1, "Missing id types"

    .line 410
    .line 411
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw p0
.end method
