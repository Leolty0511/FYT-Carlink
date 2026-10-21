.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 2
    .line 3
    const/high16 v1, 0x42480000    # 50.0f

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    float-to-double v2, v2

    .line 10
    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr v2, v4

    .line 16
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 17
    .line 18
    div-double/2addr v2, v4

    .line 19
    double-to-float v2, v2

    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 17
    .line 18
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 21
    .line 22
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 23
    .line 24
    return-void
.end method

.method public static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .locals 21
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget-object v4, v1, v2

    .line 9
    .line 10
    aget v5, v4, v2

    .line 11
    .line 12
    mul-float/2addr v5, v3

    .line 13
    const/4 v6, 0x1

    .line 14
    aget v7, p0, v6

    .line 15
    .line 16
    aget v8, v4, v6

    .line 17
    .line 18
    mul-float/2addr v8, v7

    .line 19
    add-float/2addr v8, v5

    .line 20
    const/4 v5, 0x2

    .line 21
    aget v9, p0, v5

    .line 22
    .line 23
    aget v4, v4, v5

    .line 24
    .line 25
    mul-float/2addr v4, v9

    .line 26
    add-float/2addr v4, v8

    .line 27
    aget-object v8, v1, v6

    .line 28
    .line 29
    aget v10, v8, v2

    .line 30
    .line 31
    mul-float/2addr v10, v3

    .line 32
    aget v11, v8, v6

    .line 33
    .line 34
    mul-float/2addr v11, v7

    .line 35
    add-float/2addr v11, v10

    .line 36
    aget v8, v8, v5

    .line 37
    .line 38
    mul-float/2addr v8, v9

    .line 39
    add-float/2addr v8, v11

    .line 40
    aget-object v1, v1, v5

    .line 41
    .line 42
    aget v10, v1, v2

    .line 43
    .line 44
    mul-float/2addr v3, v10

    .line 45
    aget v10, v1, v6

    .line 46
    .line 47
    mul-float/2addr v7, v10

    .line 48
    add-float/2addr v7, v3

    .line 49
    aget v1, v1, v5

    .line 50
    .line 51
    mul-float/2addr v9, v1

    .line 52
    add-float/2addr v9, v7

    .line 53
    const/high16 v1, 0x41200000    # 10.0f

    .line 54
    .line 55
    div-float v3, p3, v1

    .line 56
    .line 57
    const v7, 0x3f4ccccd    # 0.8f

    .line 58
    .line 59
    .line 60
    add-float/2addr v3, v7

    .line 61
    float-to-double v10, v3

    .line 62
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmpl-double v10, v10, v12

    .line 68
    .line 69
    const v11, 0x3f170a3d    # 0.59f

    .line 70
    .line 71
    .line 72
    if-ltz v10, :cond_0

    .line 73
    .line 74
    const v7, 0x3f666666    # 0.9f

    .line 75
    .line 76
    .line 77
    sub-float v7, v3, v7

    .line 78
    .line 79
    mul-float/2addr v7, v1

    .line 80
    const v1, 0x3f30a3d7    # 0.69f

    .line 81
    .line 82
    .line 83
    invoke-static {v11, v1, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    sub-float v7, v3, v7

    .line 89
    .line 90
    mul-float/2addr v7, v1

    .line 91
    const v1, 0x3f066666    # 0.525f

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v11, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    :goto_0
    move v15, v1

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    .line 100
    .line 101
    if-eqz p4, :cond_1

    .line 102
    .line 103
    move v7, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    neg-float v7, v0

    .line 106
    const/high16 v10, 0x42280000    # 42.0f

    .line 107
    .line 108
    sub-float/2addr v7, v10

    .line 109
    const/high16 v10, 0x42b80000    # 92.0f

    .line 110
    .line 111
    div-float/2addr v7, v10

    .line 112
    float-to-double v10, v7

    .line 113
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    double-to-float v7, v10

    .line 118
    const v10, 0x3e8e38e4

    .line 119
    .line 120
    .line 121
    mul-float/2addr v7, v10

    .line 122
    sub-float v7, v1, v7

    .line 123
    .line 124
    mul-float/2addr v7, v3

    .line 125
    :goto_1
    float-to-double v10, v7

    .line 126
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 127
    .line 128
    cmpl-double v12, v10, v12

    .line 129
    .line 130
    if-lez v12, :cond_2

    .line 131
    .line 132
    move v7, v1

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const-wide/16 v12, 0x0

    .line 135
    .line 136
    cmpg-double v10, v10, v12

    .line 137
    .line 138
    if-gez v10, :cond_3

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    :cond_3
    :goto_2
    const/4 v10, 0x3

    .line 142
    new-array v14, v10, [F

    .line 143
    .line 144
    const/high16 v11, 0x42c80000    # 100.0f

    .line 145
    .line 146
    div-float v12, v11, v4

    .line 147
    .line 148
    mul-float/2addr v12, v7

    .line 149
    add-float/2addr v12, v1

    .line 150
    sub-float/2addr v12, v7

    .line 151
    aput v12, v14, v2

    .line 152
    .line 153
    div-float v12, v11, v8

    .line 154
    .line 155
    mul-float/2addr v12, v7

    .line 156
    add-float/2addr v12, v1

    .line 157
    sub-float/2addr v12, v7

    .line 158
    aput v12, v14, v6

    .line 159
    .line 160
    div-float/2addr v11, v9

    .line 161
    mul-float/2addr v11, v7

    .line 162
    add-float/2addr v11, v1

    .line 163
    sub-float/2addr v11, v7

    .line 164
    aput v11, v14, v5

    .line 165
    .line 166
    const/high16 v7, 0x40a00000    # 5.0f

    .line 167
    .line 168
    mul-float/2addr v7, v0

    .line 169
    add-float/2addr v7, v1

    .line 170
    div-float v7, v1, v7

    .line 171
    .line 172
    mul-float v11, v7, v7

    .line 173
    .line 174
    mul-float/2addr v11, v7

    .line 175
    mul-float/2addr v11, v7

    .line 176
    sub-float/2addr v1, v11

    .line 177
    mul-float/2addr v11, v0

    .line 178
    const v7, 0x3dcccccd    # 0.1f

    .line 179
    .line 180
    .line 181
    mul-float/2addr v7, v1

    .line 182
    mul-float/2addr v7, v1

    .line 183
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 184
    .line 185
    float-to-double v0, v0

    .line 186
    mul-double/2addr v0, v12

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    double-to-float v0, v0

    .line 192
    mul-float/2addr v7, v0

    .line 193
    add-float v0, v7, v11

    .line 194
    .line 195
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    aget v7, p0, v6

    .line 200
    .line 201
    div-float v11, v1, v7

    .line 202
    .line 203
    float-to-double v12, v11

    .line 204
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 205
    .line 206
    .line 207
    move-result-wide v5

    .line 208
    double-to-float v5, v5

    .line 209
    const v6, 0x3fbd70a4    # 1.48f

    .line 210
    .line 211
    .line 212
    add-float v20, v5, v6

    .line 213
    .line 214
    const-wide v5, 0x3fc999999999999aL    # 0.2

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    double-to-float v5, v5

    .line 224
    const v6, 0x3f39999a    # 0.725f

    .line 225
    .line 226
    .line 227
    div-float v5, v6, v5

    .line 228
    .line 229
    new-array v6, v10, [F

    .line 230
    .line 231
    aget v10, v14, v2

    .line 232
    .line 233
    mul-float/2addr v10, v0

    .line 234
    mul-float/2addr v10, v4

    .line 235
    float-to-double v12, v10

    .line 236
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 237
    .line 238
    div-double v12, v12, v16

    .line 239
    .line 240
    move v4, v8

    .line 241
    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v12

    .line 250
    double-to-float v10, v12

    .line 251
    aput v10, v6, v2

    .line 252
    .line 253
    const/4 v1, 0x1

    .line 254
    aget v10, v14, v1

    .line 255
    .line 256
    mul-float/2addr v10, v0

    .line 257
    mul-float/2addr v10, v4

    .line 258
    float-to-double v12, v10

    .line 259
    div-double v12, v12, v16

    .line 260
    .line 261
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 262
    .line 263
    .line 264
    move-result-wide v12

    .line 265
    double-to-float v4, v12

    .line 266
    aput v4, v6, v1

    .line 267
    .line 268
    const/4 v4, 0x2

    .line 269
    aget v10, v14, v4

    .line 270
    .line 271
    mul-float/2addr v10, v0

    .line 272
    mul-float/2addr v10, v9

    .line 273
    float-to-double v9, v10

    .line 274
    div-double v9, v9, v16

    .line 275
    .line 276
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 277
    .line 278
    .line 279
    move-result-wide v7

    .line 280
    double-to-float v7, v7

    .line 281
    aput v7, v6, v4

    .line 282
    .line 283
    aget v2, v6, v2

    .line 284
    .line 285
    const/high16 v4, 0x43c80000    # 400.0f

    .line 286
    .line 287
    mul-float v8, v2, v4

    .line 288
    .line 289
    const v9, 0x41d90a3d    # 27.13f

    .line 290
    .line 291
    .line 292
    add-float/2addr v2, v9

    .line 293
    div-float/2addr v8, v2

    .line 294
    const/4 v1, 0x1

    .line 295
    aget v1, v6, v1

    .line 296
    .line 297
    mul-float v2, v1, v4

    .line 298
    .line 299
    add-float/2addr v1, v9

    .line 300
    div-float/2addr v2, v1

    .line 301
    mul-float/2addr v4, v7

    .line 302
    add-float/2addr v7, v9

    .line 303
    div-float/2addr v4, v7

    .line 304
    const/high16 v1, 0x40000000    # 2.0f

    .line 305
    .line 306
    mul-float/2addr v8, v1

    .line 307
    add-float/2addr v8, v2

    .line 308
    const v1, 0x3d4ccccd    # 0.05f

    .line 309
    .line 310
    .line 311
    mul-float/2addr v4, v1

    .line 312
    add-float/2addr v4, v8

    .line 313
    mul-float v12, v4, v5

    .line 314
    .line 315
    new-instance v1, Landroidx/core/content/res/ViewingConditions;

    .line 316
    .line 317
    float-to-double v6, v0

    .line 318
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 319
    .line 320
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 321
    .line 322
    .line 323
    move-result-wide v6

    .line 324
    double-to-float v2, v6

    .line 325
    move-object v10, v1

    .line 326
    move v13, v5

    .line 327
    move-object v4, v14

    .line 328
    move v14, v5

    .line 329
    move/from16 v16, v3

    .line 330
    .line 331
    move-object/from16 v17, v4

    .line 332
    .line 333
    move/from16 v18, v0

    .line 334
    .line 335
    move/from16 v19, v2

    .line 336
    .line 337
    invoke-direct/range {v10 .. v20}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    .line 338
    .line 339
    .line 340
    return-object v1
.end method


# virtual methods
.method public getAw()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    return v0
.end method

.method public getC()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    return v0
.end method

.method public getFl()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    return v0
.end method

.method public getFlRoot()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    return v0
.end method

.method public getN()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    return v0
.end method

.method public getNbb()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    return v0
.end method

.method public getNc()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    return v0
.end method

.method public getNcb()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    return v0
.end method

.method public getRgbD()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    return-object v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return v0
.end method
