.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private mTimestamp:J

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    .line 10
    .line 11
    .line 12
    const/16 v4, 0x23

    .line 13
    .line 14
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 15
    .line 16
    move-wide/from16 v4, p4

    .line 17
    .line 18
    iput-wide v4, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    iput-boolean v4, v0, Landroid/media/Image;->mIsImageValid:Z

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput-boolean v5, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iput-object v5, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 36
    .line 37
    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 38
    .line 39
    move-object/from16 v5, p2

    .line 40
    .line 41
    iput-object v5, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/16 v7, 0x68

    .line 48
    .line 49
    if-ne v6, v7, :cond_a

    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ne v6, v4, :cond_9

    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x3

    .line 62
    if-ne v6, v7, :cond_8

    .line 63
    .line 64
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 75
    .line 76
    const-string/jumbo v9, "x"

    .line 77
    .line 78
    .line 79
    if-lt v7, v4, :cond_7

    .line 80
    .line 81
    if-lt v8, v4, :cond_7

    .line 82
    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/16 v8, 0x8

    .line 88
    .line 89
    if-ne v7, v8, :cond_6

    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-ne v10, v8, :cond_5

    .line 96
    .line 97
    new-array v8, v6, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    .line 98
    .line 99
    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    :goto_0
    if-ge v8, v6, :cond_3

    .line 103
    .line 104
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-ne v13, v14, :cond_2

    .line 125
    .line 126
    if-nez v8, :cond_0

    .line 127
    .line 128
    move v15, v4

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    const/4 v15, 0x2

    .line 131
    :goto_1
    if-ne v13, v15, :cond_2

    .line 132
    .line 133
    if-lt v11, v4, :cond_1

    .line 134
    .line 135
    if-lt v12, v4, :cond_1

    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    .line 139
    .line 140
    iget-object v15, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    invoke-virtual {v15}, Ljava/nio/Buffer;->position()I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    add-int/2addr v15, v10

    .line 147
    div-int v10, v2, v13

    .line 148
    .line 149
    mul-int/2addr v10, v11

    .line 150
    add-int/2addr v10, v15

    .line 151
    div-int v15, v3, v14

    .line 152
    .line 153
    mul-int/2addr v15, v12

    .line 154
    add-int/2addr v15, v10

    .line 155
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const/16 v15, 0x8

    .line 163
    .line 164
    invoke-static {v7, v15}, Landroid/media/Utils;->divUp(II)I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    add-int/2addr v10, v15

    .line 169
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 170
    .line 171
    div-int/2addr v15, v14

    .line 172
    sub-int/2addr v15, v4

    .line 173
    mul-int/2addr v15, v12

    .line 174
    add-int/2addr v15, v10

    .line 175
    iget v10, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 176
    .line 177
    div-int/2addr v10, v13

    .line 178
    sub-int/2addr v10, v4

    .line 179
    mul-int/2addr v10, v11

    .line 180
    add-int/2addr v10, v15

    .line 181
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    .line 183
    .line 184
    iget-object v10, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 185
    .line 186
    new-instance v13, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-direct {v13, v0, v14, v12, v11}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    .line 193
    .line 194
    .line 195
    aput-object v13, v10, v8

    .line 196
    .line 197
    add-int/lit8 v8, v8, 0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 201
    .line 202
    const-string/jumbo v2, "unexpected strides: "

    .line 203
    .line 204
    .line 205
    const-string v3, " pixel, "

    .line 206
    .line 207
    const-string v4, " row on plane "

    .line 208
    .line 209
    invoke-static {v2, v11, v3, v12, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v1

    .line 224
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 225
    .line 226
    const-string/jumbo v2, "unexpected subsampling: "

    .line 227
    .line 228
    .line 229
    const-string v3, " on plane "

    .line 230
    .line 231
    invoke-static {v2, v13, v9, v14, v3}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :cond_3
    if-nez p8, :cond_4

    .line 247
    .line 248
    new-instance v1, Landroid/graphics/Rect;

    .line 249
    .line 250
    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 251
    .line 252
    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_4
    move-object/from16 v1, p8

    .line 260
    .line 261
    :goto_2
    neg-int v2, v2

    .line 262
    neg-int v3, v3

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 264
    .line 265
    .line 266
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 271
    .line 272
    const-string/jumbo v2, "unsupported allocated bit depth: "

    .line 273
    .line 274
    .line 275
    invoke-static {v2, v10}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v1

    .line 283
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 284
    .line 285
    const-string/jumbo v2, "unsupported bit depth: "

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v7}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v1

    .line 296
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 297
    .line 298
    const-string/jumbo v2, "unsupported size: "

    .line 299
    .line 300
    .line 301
    invoke-static {v2, v7, v9, v8}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v1

    .line 309
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 310
    .line 311
    const-string/jumbo v2, "unexpected number of planes: "

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v6}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v1

    .line 322
    :cond_9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 323
    .line 324
    const-string/jumbo v2, "unsupported type: "

    .line 325
    .line 326
    .line 327
    invoke-static {v2, v6}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v1

    .line 335
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 336
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string/jumbo v3, "unsupported info length: "

    .line 340
    .line 341
    .line 342
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 5
    .line 6
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 5
    .line 6
    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Landroid/media/Image$Plane;

    .line 12
    .line 13
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 5
    .line 6
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
