.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final TYPE_AUX_LINE:I = 0x13

.field public static final TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final TYPE_BUILTIN_MIC:I = 0xf

.field public static final TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final TYPE_BUS:I = 0x15

.field public static final TYPE_DOCK:I = 0xd

.field public static final TYPE_FM:I = 0xe

.field public static final TYPE_FM_TUNER:I = 0x10

.field public static final TYPE_HDMI:I = 0x9

.field public static final TYPE_HDMI_ARC:I = 0xa

.field public static final TYPE_IP:I = 0x14

.field public static final TYPE_LINE_ANALOG:I = 0x5

.field public static final TYPE_LINE_DIGITAL:I = 0x6

.field public static final TYPE_TELEPHONY:I = 0x12

.field public static final TYPE_TV_TUNER:I = 0x11

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_ACCESSORY:I = 0xc

.field public static final TYPE_USB_DEVICE:I = 0xb

.field public static final TYPE_USB_HEADSET:I = 0x16

.field public static final TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final mPort:Landroid/media/AudioDevicePort;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    .line 20
    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    const/16 v6, 0x10

    .line 27
    .line 28
    const/4 v7, 0x7

    .line 29
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    const/16 v8, 0x20

    .line 33
    .line 34
    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    const/16 v8, 0x40

    .line 38
    .line 39
    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    .line 41
    .line 42
    const/16 v8, 0x80

    .line 43
    .line 44
    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    .line 46
    .line 47
    const/16 v9, 0x100

    .line 48
    .line 49
    invoke-virtual {v0, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    .line 51
    .line 52
    const/16 v9, 0x200

    .line 53
    .line 54
    invoke-virtual {v0, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    const/16 v9, 0x400

    .line 58
    .line 59
    const/16 v10, 0x9

    .line 60
    .line 61
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    const/16 v11, 0x800

    .line 65
    .line 66
    const/16 v12, 0xd

    .line 67
    .line 68
    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    const/16 v13, 0x1000

    .line 72
    .line 73
    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    .line 75
    .line 76
    const/16 v13, 0x2000

    .line 77
    .line 78
    const/16 v14, 0xc

    .line 79
    .line 80
    invoke-virtual {v0, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    .line 82
    .line 83
    const/16 v15, 0x4000

    .line 84
    .line 85
    const/16 v11, 0xb

    .line 86
    .line 87
    invoke-virtual {v0, v15, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    .line 89
    .line 90
    const/high16 v15, 0x4000000

    .line 91
    .line 92
    const/16 v13, 0x16

    .line 93
    .line 94
    invoke-virtual {v0, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    .line 96
    .line 97
    const/high16 v15, 0x10000

    .line 98
    .line 99
    const/16 v9, 0x12

    .line 100
    .line 101
    invoke-virtual {v0, v15, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    .line 103
    .line 104
    const/high16 v15, 0x20000

    .line 105
    .line 106
    const/4 v8, 0x5

    .line 107
    invoke-virtual {v0, v15, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    .line 109
    .line 110
    const/high16 v15, 0x40000

    .line 111
    .line 112
    const/16 v3, 0xa

    .line 113
    .line 114
    invoke-virtual {v0, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    .line 116
    .line 117
    const/high16 v3, 0x80000

    .line 118
    .line 119
    const/4 v15, 0x6

    .line 120
    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    .line 122
    .line 123
    const/high16 v3, 0x100000

    .line 124
    .line 125
    const/16 v2, 0xe

    .line 126
    .line 127
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    .line 129
    .line 130
    const/high16 v2, 0x200000

    .line 131
    .line 132
    const/16 v3, 0x13

    .line 133
    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    .line 136
    .line 137
    const/high16 v2, 0x800000

    .line 138
    .line 139
    const/16 v3, 0x14

    .line 140
    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    .line 143
    .line 144
    const/high16 v2, 0x1000000

    .line 145
    .line 146
    const/16 v1, 0x15

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    .line 150
    .line 151
    const v2, -0x7ffffffc

    .line 152
    .line 153
    .line 154
    const/16 v1, 0xf

    .line 155
    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    .line 158
    .line 159
    const v2, -0x7ffffff8

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    .line 164
    .line 165
    const v2, -0x7ffffff0

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    .line 170
    .line 171
    const v2, -0x7fffffe0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    .line 176
    .line 177
    const v2, -0x7fffffc0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    .line 182
    .line 183
    const v2, -0x7fffff80

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    .line 188
    .line 189
    const v2, -0x7ffffe00

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    .line 194
    .line 195
    const v2, -0x7ffffc00

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    .line 200
    .line 201
    const v2, -0x7ffff800

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    .line 206
    .line 207
    const v2, -0x7ffff000

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    .line 212
    .line 213
    const/high16 v2, -0x7e000000

    .line 214
    .line 215
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    .line 217
    .line 218
    const v2, -0x7fffe000

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    .line 223
    .line 224
    const v2, -0x7fffc000

    .line 225
    .line 226
    .line 227
    const/16 v9, 0x11

    .line 228
    .line 229
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    .line 231
    .line 232
    const v2, -0x7fff8000

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    .line 237
    .line 238
    const/high16 v2, -0x7fff0000

    .line 239
    .line 240
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    .line 242
    .line 243
    const/high16 v2, -0x7ffe0000

    .line 244
    .line 245
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    .line 247
    .line 248
    const/high16 v2, -0x7ff80000

    .line 249
    .line 250
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    .line 252
    .line 253
    const/high16 v2, -0x7ff00000

    .line 254
    .line 255
    const/16 v9, 0x15

    .line 256
    .line 257
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Landroid/util/SparseIntArray;

    .line 261
    .line 262
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 263
    .line 264
    .line 265
    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 266
    .line 267
    const/4 v2, 0x1

    .line 268
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    .line 270
    .line 271
    const/4 v2, 0x2

    .line 272
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    .line 274
    .line 275
    const/4 v2, 0x4

    .line 276
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    .line 281
    .line 282
    const/high16 v2, 0x20000

    .line 283
    .line 284
    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    .line 286
    .line 287
    const/high16 v2, 0x80000

    .line 288
    .line 289
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 293
    .line 294
    .line 295
    const/16 v2, 0x80

    .line 296
    .line 297
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    .line 299
    .line 300
    const/16 v2, 0x400

    .line 301
    .line 302
    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    .line 304
    .line 305
    const/16 v2, 0xa

    .line 306
    .line 307
    const/high16 v4, 0x40000

    .line 308
    .line 309
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    .line 311
    .line 312
    const/16 v2, 0x4000

    .line 313
    .line 314
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    .line 316
    .line 317
    const/high16 v2, 0x4000000

    .line 318
    .line 319
    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    .line 321
    .line 322
    const/16 v2, 0x2000

    .line 323
    .line 324
    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    .line 326
    .line 327
    const/16 v2, 0x800

    .line 328
    .line 329
    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    .line 331
    .line 332
    const/16 v2, 0xe

    .line 333
    .line 334
    const/high16 v4, 0x100000

    .line 335
    .line 336
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    .line 338
    .line 339
    const v2, -0x7ffffffc

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    .line 344
    .line 345
    const v1, -0x7fffe000

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    .line 350
    .line 351
    const/16 v1, 0x11

    .line 352
    .line 353
    const v2, -0x7fffc000

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    .line 358
    .line 359
    const/high16 v1, 0x10000

    .line 360
    .line 361
    const/16 v2, 0x12

    .line 362
    .line 363
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    .line 365
    .line 366
    const/16 v1, 0x13

    .line 367
    .line 368
    const/high16 v2, 0x200000

    .line 369
    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 371
    .line 372
    .line 373
    const/high16 v1, 0x800000

    .line 374
    .line 375
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 376
    .line 377
    .line 378
    const/high16 v1, 0x1000000

    .line 379
    .line 380
    const/16 v2, 0x15

    .line 381
    .line 382
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 383
    .line 384
    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioDevicePort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    .line 5
    .line 6
    return-void
.end method

.method public static convertDeviceTypeToInternalDevice(I)I
    .locals 2

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public static convertInternalDeviceToDeviceType(I)I
    .locals 2

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelCounts()[I
    .locals 7

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    aget v5, v1, v4

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    array-length v2, v1

    .line 47
    move v4, v3

    .line 48
    :goto_2
    if-ge v4, v2, :cond_2

    .line 49
    .line 50
    aget v5, v1, v4

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    new-array v1, v1, [I

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    add-int/lit8 v4, v3, 0x1

    .line 93
    .line 94
    aput v2, v1, v3

    .line 95
    .line 96
    move v3, v4

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    return-object v1
.end method

.method public getChannelIndexMasks()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->channelIndexMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getChannelMasks()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->channelMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getEncodings()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->formats()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public getProductName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPort;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getSampleRates()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->samplingRates()[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 3

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public isSink()Z
    .locals 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSource()Z
    .locals 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioPort;->role()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
