.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DURATION_20FPS_NS:J = 0x2faf080L

.field private static final DURATION_MIN_FRAME:I = 0x0

.field private static final DURATION_STALL:I = 0x1

.field private static final HAL_DATASPACE_DEPTH:I = 0x1000

.field private static final HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputFormats:Landroid/util/SparseIntArray;

.field private final mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final mListHighResolution:Z

.field private final mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mOutputFormats:Landroid/util/SparseIntArray;

.field private final mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p7

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    new-instance v4, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance v4, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v4, Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    new-instance v4, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    new-instance v4, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 52
    .line 53
    new-instance v4, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 59
    .line 60
    const-string v4, "depthConfigurations"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-array v7, v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 73
    .line 74
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 75
    .line 76
    new-array v7, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 77
    .line 78
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 79
    .line 80
    new-array v7, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 81
    .line 82
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v7, "configurations"

    .line 86
    .line 87
    invoke-static {v1, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 92
    .line 93
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 94
    .line 95
    const-string/jumbo v7, "minFrameDurations"

    .line 96
    .line 97
    .line 98
    move-object/from16 v8, p2

    .line 99
    .line 100
    invoke-static {v8, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 105
    .line 106
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 107
    .line 108
    const-string/jumbo v7, "stallDurations"

    .line 109
    .line 110
    .line 111
    move-object/from16 v8, p3

    .line 112
    .line 113
    invoke-static {v8, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 118
    .line 119
    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 120
    .line 121
    :goto_0
    move/from16 v7, p9

    .line 122
    .line 123
    iput-boolean v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 124
    .line 125
    if-nez v2, :cond_1

    .line 126
    .line 127
    new-array v2, v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 128
    .line 129
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 130
    .line 131
    new-array v2, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 132
    .line 133
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 134
    .line 135
    new-array v2, v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 136
    .line 137
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 145
    .line 146
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 147
    .line 148
    const-string v2, "depthMinFrameDurations"

    .line 149
    .line 150
    move-object/from16 v4, p5

    .line 151
    .line 152
    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 157
    .line 158
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 159
    .line 160
    const-string v2, "depthStallDurations"

    .line 161
    .line 162
    move-object/from16 v4, p6

    .line 163
    .line 164
    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 169
    .line 170
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 171
    .line 172
    :goto_1
    if-nez v3, :cond_2

    .line 173
    .line 174
    new-array v2, v5, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 175
    .line 176
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    const-string/jumbo v2, "highSpeedVideoConfigurations"

    .line 180
    .line 181
    .line 182
    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 187
    .line 188
    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 189
    .line 190
    :goto_2
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 191
    .line 192
    array-length v3, v2

    .line 193
    move v4, v5

    .line 194
    :goto_3
    if-ge v4, v3, :cond_7

    .line 195
    .line 196
    aget-object v7, v2, v4

    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_6

    .line 207
    .line 208
    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 209
    .line 210
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    add-int/lit8 v10, v10, 0x1

    .line 215
    .line 216
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    .line 218
    .line 219
    iget-boolean v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 220
    .line 221
    if-eqz v9, :cond_4

    .line 222
    .line 223
    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 224
    .line 225
    array-length v10, v9

    .line 226
    move v11, v5

    .line 227
    :goto_4
    if-ge v11, v10, :cond_4

    .line 228
    .line 229
    aget-object v12, v9, v11

    .line 230
    .line 231
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    if-ne v13, v8, :cond_3

    .line 236
    .line 237
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-ne v13, v14, :cond_3

    .line 250
    .line 251
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-ne v13, v14, :cond_3

    .line 264
    .line 265
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    .line 266
    .line 267
    .line 268
    move-result-wide v9

    .line 269
    goto :goto_5

    .line 270
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_4
    const-wide/16 v9, 0x0

    .line 274
    .line 275
    :goto_5
    const-wide/32 v11, 0x2faf080

    .line 276
    .line 277
    .line 278
    cmp-long v7, v9, v11

    .line 279
    .line 280
    if-gtz v7, :cond_5

    .line 281
    .line 282
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_5
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_6
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 289
    .line 290
    :goto_6
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    add-int/lit8 v9, v9, 0x1

    .line 295
    .line 296
    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    .line 298
    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_7
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 303
    .line 304
    array-length v3, v2

    .line 305
    move v4, v5

    .line 306
    :goto_7
    if-ge v4, v3, :cond_9

    .line 307
    .line 308
    aget-object v7, v2, v4

    .line 309
    .line 310
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-nez v8, :cond_8

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_8
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 318
    .line 319
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    add-int/lit8 v7, v7, 0x1

    .line 334
    .line 335
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    .line 337
    .line 338
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_9
    if-eqz v1, :cond_b

    .line 342
    .line 343
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 344
    .line 345
    const/16 v2, 0x22

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-ltz v1, :cond_a

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    .line 355
    .line 356
    const-string v2, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    .line 357
    .line 358
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    throw v1

    .line 362
    :cond_b
    :goto_9
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 363
    .line 364
    array-length v2, v1

    .line 365
    :goto_a
    if-ge v5, v2, :cond_e

    .line 366
    .line 367
    aget-object v3, v1, v5

    .line 368
    .line 369
    invoke-virtual {v3}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v3}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 378
    .line 379
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    check-cast v7, Ljava/lang/Integer;

    .line 384
    .line 385
    if-nez v7, :cond_c

    .line 386
    .line 387
    move-object v7, v6

    .line 388
    :cond_c
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    add-int/lit8 v7, v7, 0x1

    .line 395
    .line 396
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 404
    .line 405
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    check-cast v4, Ljava/lang/Integer;

    .line 410
    .line 411
    if-nez v4, :cond_d

    .line 412
    .line 413
    move-object v4, v6

    .line 414
    :cond_d
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    .line 422
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    add-int/lit8 v5, v5, 0x1

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_e
    move-object/from16 v3, p8

    .line 433
    .line 434
    iput-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 435
    .line 436
    return-void
.end method

.method private appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "HighResolutionOutputs("

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    const/4 v7, 0x1

    .line 18
    if-ge v5, v3, :cond_2

    .line 19
    .line 20
    aget v8, v2, v5

    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    if-nez v9, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    array-length v10, v9

    .line 30
    move v11, v4

    .line 31
    :goto_1
    if-ge v11, v10, :cond_1

    .line 32
    .line 33
    aget-object v12, v9, v11

    .line 34
    .line 35
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v13

    .line 39
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v15

    .line 43
    const/4 v6, 0x6

    .line 44
    new-array v6, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v18

    .line 50
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v18

    .line 54
    aput-object v18, v6, v4

    .line 55
    .line 56
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    aput-object v12, v6, v7

    .line 65
    .line 66
    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    const/16 v17, 0x2

    .line 71
    .line 72
    aput-object v12, v6, v17

    .line 73
    .line 74
    const/4 v12, 0x3

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v18

    .line 79
    aput-object v18, v6, v12

    .line 80
    .line 81
    const/4 v12, 0x4

    .line 82
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    aput-object v13, v6, v12

    .line 87
    .line 88
    const/4 v12, 0x5

    .line 89
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    aput-object v13, v6, v12

    .line 94
    .line 95
    const-string v12, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    .line 96
    .line 97
    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    add-int/lit8 v11, v11, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    sub-int/2addr v2, v7

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const/16 v3, 0x20

    .line 120
    .line 121
    if-ne v2, v3, :cond_3

    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x2

    .line 128
    sub-int/2addr v2, v3

    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_3
    const-string v2, ")"

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method private appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 13

    .line 1
    const-string v0, "HighSpeedVideoConfigurations("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget-object v6, v0, v3

    .line 18
    .line 19
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    array-length v8, v7

    .line 24
    move v9, v2

    .line 25
    :goto_1
    if-ge v9, v8, :cond_0

    .line 26
    .line 27
    aget-object v10, v7, v9

    .line 28
    .line 29
    const/4 v11, 0x4

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    aput-object v12, v11, v2

    .line 41
    .line 42
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    aput-object v12, v11, v5

    .line 51
    .line 52
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    aput-object v12, v11, v4

    .line 57
    .line 58
    const/4 v12, 0x3

    .line 59
    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    aput-object v10, v11, v12

    .line 64
    .line 65
    const-string v10, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    .line 66
    .line 67
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sub-int/2addr v0, v5

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x20

    .line 90
    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sub-int/2addr v0, v4

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_2
    const-string v0, ")"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 13

    .line 1
    const-string v0, "Inputs("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget v6, v0, v3

    .line 18
    .line 19
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    array-length v8, v7

    .line 24
    move v9, v2

    .line 25
    :goto_1
    if-ge v9, v8, :cond_0

    .line 26
    .line 27
    aget-object v10, v7, v9

    .line 28
    .line 29
    const/4 v11, 0x4

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    aput-object v12, v11, v2

    .line 41
    .line 42
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aput-object v10, v11, v5

    .line 51
    .line 52
    invoke-direct {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    aput-object v10, v11, v4

    .line 57
    .line 58
    const/4 v10, 0x3

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    aput-object v12, v11, v10

    .line 64
    .line 65
    const-string v10, "[w:%d, h:%d, format:%s(%d)], "

    .line 66
    .line 67
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sub-int/2addr v0, v5

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x20

    .line 90
    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sub-int/2addr v0, v4

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_2
    const-string v0, ")"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Outputs("

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    const/4 v7, 0x1

    .line 18
    if-ge v5, v3, :cond_1

    .line 19
    .line 20
    aget v8, v2, v5

    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    array-length v10, v9

    .line 27
    move v11, v4

    .line 28
    :goto_1
    if-ge v11, v10, :cond_0

    .line 29
    .line 30
    aget-object v12, v9, v11

    .line 31
    .line 32
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v13

    .line 36
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v15

    .line 40
    const/4 v6, 0x6

    .line 41
    new-array v6, v6, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v18

    .line 47
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v18

    .line 51
    aput-object v18, v6, v4

    .line 52
    .line 53
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    aput-object v12, v6, v7

    .line 62
    .line 63
    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const/16 v17, 0x2

    .line 68
    .line 69
    aput-object v12, v6, v17

    .line 70
    .line 71
    const/4 v12, 0x3

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v18

    .line 76
    aput-object v18, v6, v12

    .line 77
    .line 78
    const/4 v12, 0x4

    .line 79
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    aput-object v13, v6, v12

    .line 84
    .line 85
    const/4 v12, 0x5

    .line 86
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    aput-object v13, v6, v12

    .line 91
    .line 92
    const-string v12, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    .line 93
    .line 94
    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v11, v11, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    sub-int/2addr v2, v7

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/16 v3, 0x20

    .line 117
    .line 118
    if-ne v2, v3, :cond_2

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const/4 v3, 0x2

    .line 125
    sub-int/2addr v2, v3

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_2
    const-string v2, ")"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 10

    .line 1
    const-string v0, "ValidOutputFormatsForInput("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    aget v6, v0, v3

    .line 18
    .line 19
    new-array v7, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    aput-object v8, v7, v2

    .line 26
    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    aput-object v8, v7, v5

    .line 32
    .line 33
    const-string v8, "[in:%s(%d), out:"

    .line 34
    .line 35
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    move v7, v2

    .line 47
    :goto_1
    array-length v8, v6

    .line 48
    if-ge v7, v8, :cond_1

    .line 49
    .line 50
    new-array v8, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    aget v9, v6, v7

    .line 53
    .line 54
    invoke-direct {p0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    aput-object v9, v8, v2

    .line 59
    .line 60
    aget v9, v6, v7

    .line 61
    .line 62
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    aput-object v9, v8, v5

    .line 67
    .line 68
    const-string v9, "%s(%d)"

    .line 69
    .line 70
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    array-length v8, v6

    .line 78
    sub-int/2addr v8, v5

    .line 79
    if-ge v7, v8, :cond_0

    .line 80
    .line 81
    const-string v8, ", "

    .line 82
    .line 83
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const-string v4, "], "

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sub-int/2addr v0, v5

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v1, 0x20

    .line 107
    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    sub-int/2addr v0, v4

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_3
    const-string v0, ")"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v0
.end method

.method public static checkArgumentFormat(I)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    aput-object p0, v1, v2

    .line 25
    .line 26
    const-string p0, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    .line 27
    .line 28
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return p0
.end method

.method public static checkArgumentFormatInternal(I)I
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x22

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x24

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const v0, 0x20363159

    .line 18
    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "ImageFormat.JPEG is an unknown internal format"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    return p0
.end method

.method private checkArgumentFormatSupported(IZ)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const/16 p2, 0x1000

    .line 15
    .line 16
    if-ne v1, p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-ltz p2, :cond_2

    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-ltz p2, :cond_2

    .line 34
    .line 35
    return p1

    .line 36
    :cond_1
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-ltz p2, :cond_2

    .line 43
    .line 44
    return p1

    .line 45
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    aput-object p1, v0, v1

    .line 56
    .line 57
    const-string p1, "format %x is not supported by this stream configuration map"

    .line 58
    .line 59
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p2
.end method

.method public static depthFormatToPublic(I)I
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const v0, 0x20363159

    .line 6
    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Unknown DATASPACE_DEPTH format "

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "IMPLEMENTATION_DEFINED must not leak to public API"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :pswitch_1
    const/16 p0, 0x101

    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_2
    const/16 p0, 0x1002

    .line 37
    .line 38
    return p0

    .line 39
    :cond_0
    const p0, 0x44363159

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "ImageFormat.JPEG is an unknown internal format"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "RAW10"

    return-object p1

    :pswitch_1
    const-string p1, "RAW_PRIVATE"

    return-object p1

    :pswitch_2
    const-string p1, "YUV_420_888"

    return-object p1

    :pswitch_3
    const-string p1, "PRIVATE"

    return-object p1

    :sswitch_0
    const-string p1, "DEPTH16"

    return-object p1

    :sswitch_1
    const-string p1, "YV12"

    return-object p1

    :sswitch_2
    const-string p1, "Y16"

    return-object p1

    :sswitch_3
    const-string p1, "Y8"

    return-object p1

    :sswitch_4
    const-string p1, "RAW_DEPTH"

    return-object p1

    :sswitch_5
    const-string p1, "RAW_SENSOR"

    return-object p1

    :sswitch_6
    const-string p1, "YUY2"

    return-object p1

    :cond_0
    const-string p1, "DEPTH_POINT_CLOUD"

    return-object p1

    :cond_1
    const-string p1, "JPEG"

    return-object p1

    :cond_2
    const-string p1, "NV21"

    return-object p1

    :cond_3
    const-string p1, "NV16"

    return-object p1

    :cond_4
    const-string p1, "RGB_565"

    return-object p1

    :cond_5
    const-string p1, "RGB_888"

    return-object p1

    :cond_6
    const-string p1, "RGBX_8888"

    return-object p1

    :cond_7
    const-string p1, "RGBA_8888"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_6
        0x20 -> :sswitch_5
        0x1002 -> :sswitch_4
        0x20203859 -> :sswitch_3
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_1
        0x44363159 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 2

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_1

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 14
    .line 15
    :goto_0
    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "duration was invalid"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_2
    if-ne p2, v0, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 30
    .line 31
    :goto_1
    return-object p1
.end method

.method private getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    :goto_0
    return-object p1
.end method

.method private getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    array-length p4, p2

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p4, :cond_1

    .line 14
    .line 15
    aget-object v1, p2, v0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    return-wide p1

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 p1, 0x0

    .line 52
    .line 53
    return-wide p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string/jumbo p2, "size was not supported"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method private getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v6, 0x1000

    .line 13
    .line 14
    if-ne v2, v6, :cond_0

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-array v1, v5, [Landroid/util/Size;

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    if-nez v3, :cond_1

    .line 22
    .line 23
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-ne v2, v6, :cond_2

    .line 27
    .line 28
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    if-ne v2, v6, :cond_5

    .line 45
    .line 46
    :cond_4
    if-eqz v7, :cond_10

    .line 47
    .line 48
    :cond_5
    if-eqz v3, :cond_6

    .line 49
    .line 50
    if-eq v2, v6, :cond_6

    .line 51
    .line 52
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_10

    .line 59
    .line 60
    :cond_6
    new-array v8, v7, [Landroid/util/Size;

    .line 61
    .line 62
    if-ne v2, v6, :cond_7

    .line 63
    .line 64
    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_7
    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 68
    .line 69
    :goto_1
    if-ne v2, v6, :cond_8

    .line 70
    .line 71
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_8
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 75
    .line 76
    :goto_2
    array-length v10, v9

    .line 77
    move v11, v5

    .line 78
    :goto_3
    if-ge v5, v10, :cond_e

    .line 79
    .line 80
    aget-object v12, v9, v5

    .line 81
    .line 82
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-ne v13, v1, :cond_d

    .line 87
    .line 88
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    if-ne v14, v3, :cond_d

    .line 93
    .line 94
    if-eqz v3, :cond_c

    .line 95
    .line 96
    iget-boolean v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 97
    .line 98
    if-eqz v14, :cond_c

    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    :goto_4
    array-length v15, v6

    .line 102
    if-ge v14, v15, :cond_a

    .line 103
    .line 104
    aget-object v15, v6, v14

    .line 105
    .line 106
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-ne v0, v13, :cond_9

    .line 111
    .line 112
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v0, v1, :cond_9

    .line 125
    .line 126
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v0, v1, :cond_9

    .line 139
    .line 140
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 146
    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    move/from16 v1, p1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_a
    const-wide/16 v0, 0x0

    .line 153
    .line 154
    :goto_5
    const/16 v13, 0x1000

    .line 155
    .line 156
    if-eq v2, v13, :cond_c

    .line 157
    .line 158
    const-wide/32 v13, 0x2faf080

    .line 159
    .line 160
    .line 161
    cmp-long v0, v0, v13

    .line 162
    .line 163
    if-lez v0, :cond_b

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_6

    .line 167
    :cond_b
    const/4 v0, 0x0

    .line 168
    :goto_6
    if-eq v4, v0, :cond_c

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_c
    add-int/lit8 v0, v11, 0x1

    .line 172
    .line 173
    invoke-virtual {v12}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    aput-object v1, v8, v11

    .line 178
    .line 179
    move v11, v0

    .line 180
    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    move-object/from16 v0, p0

    .line 183
    .line 184
    move/from16 v1, p1

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_e
    if-ne v11, v7, :cond_f

    .line 188
    .line 189
    return-object v8

    .line 190
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    .line 191
    .line 192
    const-string v1, "Too few sizes (expected "

    .line 193
    .line 194
    const-string v2, ", actual "

    .line 195
    .line 196
    const-string v3, ")"

    .line 197
    .line 198
    invoke-static {v1, v7, v2, v11, v3}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    const-string v1, "format not available"

    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0
.end method

.method private getPublicFormatCount(Z)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/2addr v0, p1

    .line 18
    :cond_0
    return v0
.end method

.method private getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :catch_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private getPublicFormats(Z)[I
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-ge v4, v6, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/lit8 v7, v5, 0x1

    .line 25
    .line 26
    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    aput v6, v1, v5

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    move v5, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :goto_1
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ge v3, p1, :cond_1

    .line 45
    .line 46
    add-int/lit8 p1, v5, 0x1

    .line 47
    .line 48
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    aput v2, v1, v5

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    move v5, p1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-ne v0, v5, :cond_2

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 68
    .line 69
    const-string v1, "Too few formats "

    .line 70
    .line 71
    const-string v2, ", expected "

    .line 72
    .line 73
    invoke-static {v1, v5, v2, v0}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public static imageFormatToDataspace(I)I
    .locals 1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x101

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x1000

    return p0

    :cond_1
    const/high16 p0, 0x8c20000

    return p0
.end method

.method public static imageFormatToInternal(I)I
    .locals 1

    .line 1
    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x101

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_1

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const p0, 0x20363159

    return p0

    :cond_1
    const/16 p0, 0x20

    return p0

    :cond_2
    const/16 p0, 0x21

    return p0
.end method

.method public static imageFormatToInternal([I)[I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static imageFormatToPublic(I)I
    .locals 2

    const/16 v0, 0x21

    const/16 v1, 0x100

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method public static imageFormatToPublic([I)[I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "klass must not be null"

    .line 6
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v0, Landroid/media/ImageReader;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 8
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_1

    return v1

    .line 9
    :cond_1
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_2

    return v1

    .line 10
    :cond_2
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_3

    return v1

    .line 11
    :cond_3
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_4

    return v1

    .line 12
    :cond_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_1
    array-length v2, p2

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    aget-object v2, p2, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, p1, :cond_1

    .line 22
    .line 23
    aget-object v2, p2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 14
    .line 15
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 16
    .line 17
    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 26
    .line 27
    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 46
    .line 47
    iget-object v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 56
    .line 57
    iget-object p1, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 58
    .line 59
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    move v0, v1

    .line 66
    :cond_2
    return v0
.end method

.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Landroid/util/Range;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroid/util/Range;

    .line 18
    .line 19
    return-object v0
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [Landroid/util/Range;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    move v4, v1

    .line 28
    :goto_0
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    aget-object v5, v2, v1

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p1, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    aput-object v5, v0, v4

    .line 49
    .line 50
    move v4, v6

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p1, v2, v1

    .line 61
    .line 62
    const-string p1, "Size %s does not support high speed video recording"

    .line 63
    .line 64
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Landroid/util/Size;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroid/util/Size;

    .line 18
    .line 19
    return-object v0
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [Landroid/util/Size;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    move v4, v1

    .line 28
    :goto_0
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    aget-object v5, v2, v1

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p1, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    aput-object v5, v0, v4

    .line 49
    .line 50
    move v4, v6

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p1, v2, v1

    .line 61
    .line 62
    const-string p1, "FpsRange %s does not support high speed video recording"

    .line 63
    .line 64
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final getInputFormats()[I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getInputSizes(I)[Landroid/util/Size;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public final getOutputFormats()[I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 2

    const-string/jumbo v0, "size must not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 3
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "klass was not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 p1, 0x22

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStallDuration(ILandroid/util/Size;)J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 2
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    .line 4
    invoke-direct {p0, v1, p1, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x22

    .line 6
    invoke-direct {p0, v1, p1, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide p1

    return-wide p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "klass was not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValidOutputFormatsForInput(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [I

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [[Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public isOutputSupportedFor(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 2
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 5
    :cond_1
    invoke-direct {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 9

    const-string/jumbo v0, "surface must not be null"

    .line 13
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 15
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    .line 16
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    .line 17
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result p1

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    .line 18
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 19
    :goto_0
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 20
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v7

    if-ne v7, v1, :cond_2

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 21
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    return v8

    :cond_1
    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x780

    if-gt v6, v7, :cond_2

    return v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamConfiguration("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ")"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
