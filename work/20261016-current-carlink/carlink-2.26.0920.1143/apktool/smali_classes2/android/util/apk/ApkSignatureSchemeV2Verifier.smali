.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field private static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field private static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "ByteBuffer byte order must be little endian"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method private static compareContentDigestAlgorithm(II)I
    .locals 4

    .line 1
    const-string v0, "Unknown digestAlgorithm2: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq p0, v3, :cond_3

    .line 7
    .line 8
    if-ne p0, v2, :cond_2

    .line 9
    .line 10
    if-eq p1, v3, :cond_1

    .line 11
    .line 12
    if-ne p1, v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    return v3

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Unknown digestAlgorithm1: "

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_3
    if-eq p1, v3, :cond_5

    .line 39
    .line 40
    if-ne p1, v2, :cond_4

    .line 41
    .line 42
    const/4 p0, -0x1

    .line 43
    return p0

    .line 44
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_5
    return v1
.end method

.method private static compareSignatureAlgorithm(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareContentDigestAlgorithm(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-wide v7, v3

    .line 10
    move v6, v5

    .line 11
    :goto_0
    if-ge v6, v2, :cond_0

    .line 12
    .line 13
    aget-object v9, v1, v6

    .line 14
    .line 15
    invoke-interface {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    invoke-static {v9, v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getChunkCount(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    add-long/2addr v7, v9

    .line 24
    add-int/lit8 v6, v6, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/32 v9, 0x1fffff

    .line 28
    .line 29
    .line 30
    cmp-long v2, v7, v9

    .line 31
    .line 32
    if-gez v2, :cond_9

    .line 33
    .line 34
    long-to-int v2, v7

    .line 35
    array-length v6, v0

    .line 36
    new-array v6, v6, [[B

    .line 37
    .line 38
    move v7, v5

    .line 39
    :goto_1
    array-length v8, v0

    .line 40
    const/4 v9, 0x5

    .line 41
    const/4 v10, 0x1

    .line 42
    if-ge v7, v8, :cond_1

    .line 43
    .line 44
    aget v8, v0, v7

    .line 45
    .line 46
    invoke-static {v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    mul-int/2addr v8, v2

    .line 51
    add-int/2addr v8, v9

    .line 52
    new-array v8, v8, [B

    .line 53
    .line 54
    const/16 v9, 0x5a

    .line 55
    .line 56
    aput-byte v9, v8, v5

    .line 57
    .line 58
    invoke-static {v2, v8, v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    .line 59
    .line 60
    .line 61
    aput-object v8, v6, v7

    .line 62
    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-array v2, v9, [B

    .line 67
    .line 68
    const/16 v7, -0x5b

    .line 69
    .line 70
    aput-byte v7, v2, v5

    .line 71
    .line 72
    array-length v7, v0

    .line 73
    new-array v8, v7, [Ljava/security/MessageDigest;

    .line 74
    .line 75
    move v9, v5

    .line 76
    :goto_2
    array-length v10, v0

    .line 77
    const-string v11, " digest not supported"

    .line 78
    .line 79
    if-ge v9, v10, :cond_2

    .line 80
    .line 81
    aget v10, v0, v9

    .line 82
    .line 83
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    :try_start_0
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    aput-object v12, v8, v9
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    add-int/lit8 v9, v9, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    .line 98
    .line 99
    invoke-static {v10, v11}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_2
    array-length v9, v1

    .line 108
    move v10, v5

    .line 109
    move v12, v10

    .line 110
    :goto_3
    if-ge v5, v9, :cond_7

    .line 111
    .line 112
    aget-object v13, v1, v5

    .line 113
    .line 114
    invoke-interface {v13}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    .line 115
    .line 116
    .line 117
    move-result-wide v14

    .line 118
    move-object/from16 v16, v11

    .line 119
    .line 120
    move/from16 v17, v12

    .line 121
    .line 122
    move-wide v11, v14

    .line 123
    move-wide v14, v3

    .line 124
    :goto_4
    cmp-long v3, v11, v3

    .line 125
    .line 126
    if-lez v3, :cond_6

    .line 127
    .line 128
    const-wide/32 v3, 0x100000

    .line 129
    .line 130
    .line 131
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    long-to-int v3, v3

    .line 136
    const/4 v4, 0x1

    .line 137
    invoke-static {v3, v2, v4}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    .line 138
    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    :goto_5
    if-ge v4, v7, :cond_3

    .line 142
    .line 143
    aget-object v1, v8, v4

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    move-object/from16 v1, p1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_3
    :try_start_1
    invoke-interface {v13, v8, v14, v15, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    :goto_6
    array-length v4, v0

    .line 158
    if-ge v1, v4, :cond_5

    .line 159
    .line 160
    aget v4, v0, v1

    .line 161
    .line 162
    move-object/from16 v18, v2

    .line 163
    .line 164
    aget-object v2, v6, v1

    .line 165
    .line 166
    invoke-static {v4}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    move/from16 v19, v7

    .line 171
    .line 172
    aget-object v7, v8, v1

    .line 173
    .line 174
    mul-int v20, v10, v4

    .line 175
    .line 176
    move-object/from16 v21, v8

    .line 177
    .line 178
    add-int/lit8 v8, v20, 0x5

    .line 179
    .line 180
    invoke-virtual {v7, v2, v8, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-ne v2, v4, :cond_4

    .line 185
    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 187
    .line 188
    move-object/from16 v2, v18

    .line 189
    .line 190
    move/from16 v7, v19

    .line 191
    .line 192
    move-object/from16 v8, v21

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v3, "Unexpected output size of "

    .line 200
    .line 201
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v3, " digest: "

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_5
    move-object/from16 v18, v2

    .line 228
    .line 229
    move/from16 v19, v7

    .line 230
    .line 231
    move-object/from16 v21, v8

    .line 232
    .line 233
    int-to-long v1, v3

    .line 234
    add-long/2addr v14, v1

    .line 235
    sub-long/2addr v11, v1

    .line 236
    add-int/lit8 v10, v10, 0x1

    .line 237
    .line 238
    const-wide/16 v3, 0x0

    .line 239
    .line 240
    move-object/from16 v1, p1

    .line 241
    .line 242
    move-object/from16 v2, v18

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_1
    move-exception v0

    .line 246
    move-object v1, v0

    .line 247
    new-instance v0, Ljava/security/DigestException;

    .line 248
    .line 249
    const-string v2, "Failed to digest chunk #"

    .line 250
    .line 251
    const-string v3, " of section #"

    .line 252
    .line 253
    move/from16 v4, v17

    .line 254
    .line 255
    invoke-static {v2, v10, v3, v4}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v0, v2, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_6
    move-object/from16 v18, v2

    .line 264
    .line 265
    move/from16 v19, v7

    .line 266
    .line 267
    move-object/from16 v21, v8

    .line 268
    .line 269
    move/from16 v4, v17

    .line 270
    .line 271
    add-int/lit8 v12, v4, 0x1

    .line 272
    .line 273
    add-int/lit8 v5, v5, 0x1

    .line 274
    .line 275
    const-wide/16 v3, 0x0

    .line 276
    .line 277
    move-object/from16 v1, p1

    .line 278
    .line 279
    move-object/from16 v11, v16

    .line 280
    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :cond_7
    move-object/from16 v16, v11

    .line 284
    .line 285
    array-length v1, v0

    .line 286
    new-array v1, v1, [[B

    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    :goto_7
    array-length v3, v0

    .line 290
    if-ge v2, v3, :cond_8

    .line 291
    .line 292
    aget v3, v0, v2

    .line 293
    .line 294
    aget-object v4, v6, v2

    .line 295
    .line 296
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :try_start_2
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 301
    .line 302
    .line 303
    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    aput-object v3, v1, v2

    .line 309
    .line 310
    add-int/lit8 v2, v2, 0x1

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :catch_2
    move-exception v0

    .line 314
    move-object v1, v0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    .line 316
    .line 317
    move-object/from16 v2, v16

    .line 318
    .line 319
    invoke-static {v3, v2}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_8
    return-object v1

    .line 328
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    .line 329
    .line 330
    const-string v1, "Too many chunks: "

    .line 331
    .line 332
    invoke-static {v1, v7, v8}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x18

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-static {p0, v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lt v2, v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v4, 0x4

    .line 36
    .line 37
    cmp-long v4, v2, v4

    .line 38
    .line 39
    const-string v5, " size out of range: "

    .line 40
    .line 41
    const-string v6, "APK Signing Block entry #"

    .line 42
    .line 43
    if-ltz v4, :cond_2

    .line 44
    .line 45
    const-wide/32 v7, 0x7fffffff

    .line 46
    .line 47
    .line 48
    cmp-long v4, v2, v7

    .line 49
    .line 50
    if-gtz v4, :cond_2

    .line 51
    .line 52
    long-to-int v2, v2

    .line 53
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v3, v2

    .line 58
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-gt v2, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const v5, 0x7109871a

    .line 69
    .line 70
    .line 71
    if-ne v4, v5, :cond_0

    .line 72
    .line 73
    add-int/lit8 v2, v2, -0x4

    .line 74
    .line 75
    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 85
    .line 86
    const-string v3, ", available: "

    .line 87
    .line 88
    invoke-static {v6, v0, v5, v2, v3}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v1, p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_2
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_3
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 132
    .line 133
    const-string v1, "Insufficient data to read size of APK Signing Block entry #"

    .line 134
    .line 135
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_4
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 144
    .line 145
    const-string v0, "No APK Signature Scheme v2 block in APK Signing Block"

    .line 146
    .line 147
    invoke-direct {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x18

    .line 8
    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-long v2, v2

    .line 23
    sub-long v2, p1, v2

    .line 24
    .line 25
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide v4, 0x20676953204b5041L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmp-long v2, v2, v4

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    const-wide v4, 0x3234206b636f6c42L    # 7.465385175170059E-67

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long v2, v2, v4

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-long v5, v0

    .line 83
    cmp-long v0, v3, v5

    .line 84
    .line 85
    if-ltz v0, :cond_2

    .line 86
    .line 87
    const-wide/32 v5, 0x7ffffff7

    .line 88
    .line 89
    .line 90
    cmp-long v0, v3, v5

    .line 91
    .line 92
    if-gtz v0, :cond_2

    .line 93
    .line 94
    const-wide/16 v5, 0x8

    .line 95
    .line 96
    add-long/2addr v5, v3

    .line 97
    long-to-int v0, v5

    .line 98
    int-to-long v5, v0

    .line 99
    sub-long/2addr p1, v5

    .line 100
    const-wide/16 v5, 0x0

    .line 101
    .line 102
    cmp-long v5, p1, v5

    .line 103
    .line 104
    if-ltz v5, :cond_1

    .line 105
    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    cmp-long p0, v1, v3

    .line 136
    .line 137
    if-nez p0, :cond_0

    .line 138
    .line 139
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_0
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 149
    .line 150
    const-string p1, "APK Signing Block sizes in header and footer do not match: "

    .line 151
    .line 152
    const-string p2, " vs "

    .line 153
    .line 154
    invoke-static {p1, v1, v2, p2}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_1
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 170
    .line 171
    const-string v0, "APK Signing Block offset out of range: "

    .line 172
    .line 173
    invoke-static {v0, p1, p2}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_2
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 182
    .line 183
    const-string p1, "APK Signing Block size out of range: "

    .line 184
    .line 185
    invoke-static {p1, v3, v4}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_3
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 194
    .line 195
    const-string p1, "No APK Signing Block before ZIP Central Directory"

    .line 196
    .line 197
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_4
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 202
    .line 203
    const-string v0, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    .line 204
    .line 205
    invoke-static {v0, p1, p2}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .locals 12

    .line 1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v10, v1

    .line 8
    check-cast v10, Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    invoke-static {p0, v8, v9}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v10, v8, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-static {p0, v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    move-object v2, p0

    .line 52
    invoke-direct/range {v2 .. v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$1;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_0
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 57
    .line 58
    const-string v0, "ZIP64 APK not supported"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr p1, v1

    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    if-gt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string/jumbo v0, "size: "

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v2, v0, p1

    .line 6
    .line 7
    if-gtz v2, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    cmp-long p0, v2, p1

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 20
    .line 21
    const-string p1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 28
    .line 29
    const-string v2, "ZIP Central Directory offset out of range: "

    .line 30
    .line 31
    const-string v3, ". ZIP End of Central Directory offset: "

    .line 32
    .line 33
    invoke-static {v2, v0, v1, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method private static final getChunkCount(J)J
    .locals 4

    const-wide/32 v0, 0x100000

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "SHA-512"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Unknown content digest algorthm: "

    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const-string p0, "SHA-256"

    .line 23
    .line 24
    return-object p0
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x40

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Unknown content digest algorthm: "

    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const/16 p0, 0x20

    .line 23
    .line 24
    return p0
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 9
    .line 10
    const-string v0, "Not an APK file: ZIP End of Central Directory record not found"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 26
    .line 27
    const-string v2, "Length-prefixed field longer than remaining buffer. Field length: "

    .line 28
    .line 29
    const-string v3, ", remaining: "

    .line 30
    .line 31
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "Negative length"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x202

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x301

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Unknown signature algorithm: 0x"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    and-int/lit8 p0, p0, -0x1

    .line 26
    .line 27
    int-to-long v2, p0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_0
    :pswitch_0
    const/4 p0, 0x2

    .line 44
    return p0

    .line 45
    :cond_1
    :pswitch_1
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x202

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x301

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Unknown signature algorithm: 0x"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    and-int/lit8 p0, p0, -0x1

    .line 26
    .line 27
    int-to-long v2, p0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_0
    const-string p0, "RSA"

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_0
    const-string p0, "DSA"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    const-string p0, "EC"

    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x202

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x301

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Unknown signature algorithm: 0x"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    and-int/lit8 p0, p0, -0x1

    .line 27
    .line 28
    int-to-long v2, p0

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :pswitch_0
    const-string p0, "SHA512withRSA"

    .line 45
    .line 46
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_1
    const-string p0, "SHA256withRSA"

    .line 52
    .line 53
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_2
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    .line 59
    .line 60
    const-string v1, "SHA-512"

    .line 61
    .line 62
    const-string v2, "MGF1"

    .line 63
    .line 64
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 65
    .line 66
    const/16 v4, 0x40

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 71
    .line 72
    .line 73
    const-string v0, "SHA512withRSA/PSS"

    .line 74
    .line 75
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_3
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    .line 81
    .line 82
    const-string v1, "SHA-256"

    .line 83
    .line 84
    const-string v2, "MGF1"

    .line 85
    .line 86
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 87
    .line 88
    const/16 v4, 0x20

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    move-object v0, p0

    .line 92
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 93
    .line 94
    .line 95
    const-string v0, "SHA256withRSA/PSS"

    .line 96
    .line 97
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_0
    const-string p0, "SHA256withDSA"

    .line 103
    .line 104
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_1
    const-string p0, "SHA512withECDSA"

    .line 110
    .line 111
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_2
    const-string p0, "SHA256withECDSA"

    .line 117
    .line 118
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v1, "r"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :catchall_1
    move-exception v1

    .line 19
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_2
    move-exception v0

    .line 24
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw v1
    :try_end_5
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 28
    :catch_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1

    const/16 v0, 0x201

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202

    if-eq p0, v0, :cond_0

    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 20
    .line 21
    const-string v2, "Underflow while reading length-prefixed value. Length: "

    .line 22
    .line 23
    const-string v3, ", available: "

    .line 24
    .line 25
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v0, "Negative length"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    ushr-int/lit8 v1, p0, 0x8

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, p1, v0

    .line 14
    .line 15
    add-int/lit8 v0, p2, 0x2

    .line 16
    .line 17
    ushr-int/lit8 v1, p0, 0x10

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    int-to-byte v1, v1

    .line 22
    aput-byte v1, p1, v0

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x3

    .line 25
    .line 26
    ushr-int/lit8 p0, p0, 0x18

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p1, p2

    .line 32
    .line 33
    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    if-lt p2, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt p2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p1, "end > capacity: "

    .line 68
    .line 69
    const-string v1, " > "

    .line 70
    .line 71
    invoke-static {p1, p2, v1, v0}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "end < start: "

    .line 82
    .line 83
    const-string v1, " < "

    .line 84
    .line 85
    invoke-static {v0, p2, v1, p1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string/jumbo p2, "start: "

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method private static verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;
    .locals 10

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "X.509"

    .line 10
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 11
    :try_start_1
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->access$100(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 13
    :try_start_2
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 14
    invoke-static {v4, v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 15
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 16
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to parse/verify signer #"

    const-string v1, " block"

    .line 17
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 v1, 0x1

    if-lt v3, v1, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->access$200(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v2

    .line 21
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->access$300(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v4

    .line 22
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->access$400(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v6

    .line 23
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->access$500(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v1, p0

    .line 24
    invoke-static/range {v0 .. v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V

    .line 25
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/security/cert/X509Certificate;

    return-object p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to read list of signers"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    move-object v2, p1

    .line 13
    move-wide v5, p2

    .line 14
    invoke-direct/range {v1 .. v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    .line 18
    .line 19
    sub-long v9, p6, p4

    .line 20
    .line 21
    move-object v5, v1

    .line 22
    move-object v6, p1

    .line 23
    move-wide v7, p4

    .line 24
    invoke-direct/range {v5 .. v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-wide v3, p2

    .line 37
    invoke-static {v2, p2, p3}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    new-array v4, v2, [I

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v6, 0x0

    .line 60
    move v7, v6

    .line 61
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eqz v8, :cond_0

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    aput v8, v4, v7

    .line 79
    .line 80
    add-int/2addr v7, v9

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v5, 0x3

    .line 83
    :try_start_0
    new-array v5, v5, [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;

    .line 84
    .line 85
    aput-object v0, v5, v6

    .line 86
    .line 87
    aput-object v1, v5, v9

    .line 88
    .line 89
    const/4 v0, 0x2

    .line 90
    aput-object v3, v5, v0

    .line 91
    .line 92
    invoke-static {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    if-ge v6, v2, :cond_2

    .line 97
    .line 98
    aget v1, v4, v6

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object v5, p0

    .line 105
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, [B

    .line 110
    .line 111
    aget-object v7, v0, v6

    .line 112
    .line 113
    invoke-static {v3, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v3, " digest of contents did not verify"

    .line 134
    .line 135
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_2
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/SecurityException;

    .line 146
    .line 147
    const-string v2, "Failed to compute digest(s) of contents"

    .line 148
    .line 149
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 154
    .line 155
    const-string v1, "No digests provided"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    move v7, v3

    .line 22
    move v6, v4

    .line 23
    move-object v8, v5

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    const/16 v10, 0x8

    .line 29
    .line 30
    if-eqz v9, :cond_4

    .line 31
    .line 32
    add-int/lit8 v7, v7, 0x1

    .line 33
    .line 34
    :try_start_0
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-lt v11, v10, :cond_3

    .line 43
    .line 44
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eq v6, v4, :cond_2

    .line 63
    .line 64
    invoke-static {v10, v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareSignatureAlgorithm(II)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-lez v11, :cond_0

    .line 69
    .line 70
    :cond_2
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    move v6, v10

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 77
    .line 78
    const-string p1, "Signature record too short"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 88
    .line 89
    const-string p2, "Failed to parse signature record #"

    .line 90
    .line 91
    invoke-static {p2, v7}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_4
    if-ne v6, v4, :cond_6

    .line 100
    .line 101
    if-nez v7, :cond_5

    .line 102
    .line 103
    new-instance p0, Ljava/lang/SecurityException;

    .line 104
    .line 105
    const-string p1, "No signatures found"

    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 112
    .line 113
    const-string p1, "No supported signatures found"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_6
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v7, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    .line 134
    .line 135
    :try_start_1
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    .line 140
    .line 141
    invoke-direct {v9, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v9, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 153
    .line 154
    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    invoke-virtual {v9, v4}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {v9, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v8}, Ljava/security/Signature;->verify([B)Z

    .line 164
    .line 165
    .line 166
    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5

    .line 167
    if-eqz v1, :cond_11

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    move v7, v3

    .line 182
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_a

    .line 187
    .line 188
    add-int/lit8 v7, v7, 0x1

    .line 189
    .line 190
    :try_start_2
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-lt v9, v10, :cond_9

    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    if-ne v9, v6, :cond_8

    .line 212
    .line 213
    invoke-static {v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    goto :goto_2

    .line 218
    :cond_9
    new-instance p0, Ljava/io/IOException;

    .line 219
    .line 220
    const-string p1, "Record too short"

    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    .line 226
    :catch_2
    move-exception p0

    .line 227
    goto :goto_3

    .line 228
    :catch_3
    move-exception p0

    .line 229
    :goto_3
    new-instance p1, Ljava/io/IOException;

    .line 230
    .line 231
    const-string p2, "Failed to parse digest record #"

    .line 232
    .line 233
    invoke-static {p2, v7}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :cond_a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_10

    .line 246
    .line 247
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, [B

    .line 260
    .line 261
    if-eqz p1, :cond_c

    .line 262
    .line 263
    invoke-static {p1, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_b

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    .line 271
    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    const-string v0, " contents digest does not match the digest specified by a preceding signer"

    .line 282
    .line 283
    invoke-static {p1, p2, v0}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p0

    .line 291
    :cond_c
    :goto_4
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    move v1, v3

    .line 301
    :goto_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_d

    .line 306
    .line 307
    add-int/lit8 v1, v1, 0x1

    .line 308
    .line 309
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 314
    .line 315
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 323
    .line 324
    new-instance v5, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;

    .line 325
    .line 326
    invoke-direct {v5, v4, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :catch_4
    move-exception p0

    .line 334
    new-instance p1, Ljava/lang/SecurityException;

    .line 335
    .line 336
    const-string p2, "Failed to decode certificate #"

    .line 337
    .line 338
    invoke-static {p2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    throw p1

    .line 346
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-nez p1, :cond_f

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-eqz p0, :cond_e

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    .line 377
    .line 378
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    check-cast p0, [Ljava/security/cert/X509Certificate;

    .line 383
    .line 384
    return-object p0

    .line 385
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    .line 386
    .line 387
    const-string p1, "Public key mismatch between certificate and signature record"

    .line 388
    .line 389
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p0

    .line 393
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    .line 394
    .line 395
    const-string p1, "No certificates listed"

    .line 396
    .line 397
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw p0

    .line 401
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    .line 402
    .line 403
    const-string p1, "Signature algorithms don\'t match between digests and signatures records"

    .line 404
    .line 405
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw p0

    .line 409
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    .line 410
    .line 411
    const-string p1, " signature did not verify"

    .line 412
    .line 413
    invoke-static {v7, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw p0

    .line 421
    :catch_5
    move-exception p0

    .line 422
    goto :goto_6

    .line 423
    :catch_6
    move-exception p0

    .line 424
    goto :goto_6

    .line 425
    :catch_7
    move-exception p0

    .line 426
    goto :goto_6

    .line 427
    :catch_8
    move-exception p0

    .line 428
    goto :goto_6

    .line 429
    :catch_9
    move-exception p0

    .line 430
    :goto_6
    new-instance p1, Ljava/lang/SecurityException;

    .line 431
    .line 432
    const-string p2, "Failed to verify "

    .line 433
    .line 434
    const-string v0, " signature"

    .line 435
    .line 436
    invoke-static {p2, v7, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    .line 442
    .line 443
    throw p1
.end method
