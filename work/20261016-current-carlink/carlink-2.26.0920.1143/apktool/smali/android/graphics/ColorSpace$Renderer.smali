.class public Landroid/graphics/ColorSpace$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Renderer$Point;
    }
.end annotation


# static fields
.field private static final CHROMATICITY_RESOLUTION:I = 0x20

.field private static final NATIVE_SIZE:I = 0x5a0

.field private static final ONE_THIRD:D = 0.3333333333333333

.field private static final SPECTRUM_LOCUS_X:[F

.field private static final SPECTRUM_LOCUS_Y:[F

.field private static final UCS_SCALE:F = 1.5f


# instance fields
.field private mClip:Z

.field private final mColorSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/ColorSpace;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/ColorSpace$Renderer$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mShowWhitePoint:Z

.field private mSize:I

.field private mUcs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x5f

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3e33cf70
        0x3e30ef13
        0x3e2ee7c5
        0x3e2e2ac3
        0x3e2430f5
        0x3e167c28
        0x3e0e7d13
        0x3e08bda9
        0x3e01ba80
        0x3ded3847    # 0.11583f
        0x3de07e5a
        0x3dcb0d0f
        0x3dbb00bd    # 0.09131f
        0x3da0029f    # 0.07813f
        0x3d8cbb80
        0x3d5ff2e5
        0x3d26f71a
        0x3ce14163    # 0.027497f
        0x3c8548aa    # 0.01627f
        0x3c05d745    # 0.008169f
        0x3b9fc6da    # 0.004876f
        0x3b8283d3    # 0.003983f
        0x3b7ce747    # 0.003859f
        0x3b983d79    # 0.004646f
        0x3c02e01a    # 0.007988f
        0x3c633eff    # 0.01387f
        0x3cb6390d    # 0.022244f
        0x3cdf6ba0    # 0.027273f
        0x3d066e44    # 0.03282f
        0x3d1f223a    # 0.038851f
        0x3d39a8ce    # 0.045327f
        0x3d55b574    # 0.052175f
        0x3d72fcad
        0x3d88a0d3
        0x3d982a13    # 0.074299f
        0x3db830e4
        0x3de9ca19
        0x3e0e0610
        0x3e1e6d59
        0x3e457e67    # 0.192865f
        0x3e6b1e19    # 0.229607f
        0x3e8811b2    # 0.26576f
        0x3e9a69be
        0x3eacb89d
        0x3ebf04bc
        0x3ed1435b
        0x3ee3599b
        0x3ef51f60
        0x3f03310a
        0x3f0b75da
        0x3f133bda
        0x3f1a5892
        0x3f208440
        0x3f25f16b
        0x3f2a6e54
        0x3f2e187a
        0x3f31054b
        0x3f3359cd
        0x3f353900    # 0.707901f
        0x3f36c9b0
        0x3f381180
        0x3f391794
        0x3f3c1398
        0x3f379a9e
        0x3f3321a3
        0x3f2ea897
        0x3f2a2f9d
        0x3f25b6a2
        0x3f213da7
        0x3f1cc4ac
        0x3f184bb2
        0x3f13d2a6
        0x3f0f59ab
        0x3f0ae0b1
        0x3f0667b6    # 0.52502f
        0x3f01eebb
        0x3efaeb5f
        0x3ef1f96a
        0x3ee90774
        0x3ee0157f
        0x3ed72389
        0x3ece3172
        0x3ec53f7d    # 0.38525f
        0x3ebc4d87
        0x3eb35b92
        0x3eaa699c
        0x3ea177a7    # 0.315366f
        0x3e988590
        0x3e8f939a
        0x3e86a1a5    # 0.262952f
        0x3e7b5f5f    # 0.245481f
        0x3e697b74    # 0.22801f
        0x3e579746    # 0.210538f
        0x3e45b35b    # 0.193067f
        0x3e33cf70
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    :array_1
    .array-data 4
        0x3bad81ae    # 0.005295f
        0x3b9d4952    # 0.0048f
        0x3bb34e77    # 0.005472f
        0x3bc3d252    # 0.005976f
        0x3c6d80a1    # 0.014496f
        0x3cda426c    # 0.026643f
        0x3d103969    # 0.035211f
        0x3d2eea64
        0x3d5ae4f3    # 0.053441f
        0x3d96bc1f    # 0.073601f
        0x3db1e6cd
        0x3de573a8
        0x3e07ec35
        0x3e2e8e1d
        0x3e4d9770    # 0.200773f
        0x3e82209b
        0x3ea2543f
        0x3ec6a78b
        0x3eed12ec
        0x3f09db66
        0x3f16527a
        0x3f1c4b6f
        0x3f27a754
        0x3f2d0c5f
        0x3f3724ea
        0x3f40101f
        0x3f47993d
        0x3f4aca8a    # 0.792153f
        0x3f4d8f82
        0x3f4fe319
        0x3f51c62a    # 0.81943f
        0x3f53404f    # 0.8252f
        0x3f54577e
        0x3f551202
        0x3f557614
        0x3f555433
        0x3f5383e0
        0x3f509678
        0x3f4e4e6a
        0x3f481a15
        0x3f411ce3
        0x3f396e7a
        0x3f313c47
        0x3f28ab82
        0x3f1fdd44    # 0.62447f
        0x3f16f1bb
        0x3f0e030c
        0x3f052d45
        0x3ef92514
        0x3ee8ae32
        0x3ed9378f
        0x3ecb0425
        0x3ebeb9a1
        0x3eb3ec68
        0x3eab05b8
        0x3ea3b83d
        0x3e9de13b
        0x3e994014
        0x3e9586cb
        0x3e926762
        0x3e8fd8cf
        0x3e8dce3a
        0x3e87d8cf
        0x3e83afb8    # 0.2572f
        0x3e7f0d41
        0x3e76bb13
        0x3e6e68e4    # 0.232822f
        0x3e6616b5
        0x3e5dc487    # 0.21657f
        0x3e557258    # 0.208444f
        0x3e4d2029
        0x3e44cdfb
        0x3e3c7bcc
        0x3e34299e    # 0.17594f
        0x3e2bd76f
        0x3e238540
        0x3e1b3312
        0x3e12e0e3    # 0.143436f
        0x3e0a8ef7
        0x3e023cc9
        0x3df3d534
        0x3de330d7
        0x3dd28c7a    # 0.102807f
        0x3dc1e81d
        0x3db143bf
        0x3da09f62
        0x3d8ffb05    # 0.070303f
        0x3d7ead4f
        0x3d5d6495    # 0.054051f
        0x3d3c1bda
        0x3d1ad320    # 0.037799f
        0x3cf314cb    # 0.029673f
        0x3cb08356    # 0.021547f
        0x3c5be3c1    # 0.013421f
        0x3bad81ae    # 0.005295f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 3
    iput v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    .line 6
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorSpace$Renderer;-><init>()V

    return-void
.end method

.method private static computeChromaticityMesh([F[I)V
    .locals 31

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    sget-object v5, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    .line 14
    .line 15
    array-length v6, v5

    .line 16
    if-ge v2, v6, :cond_1

    .line 17
    .line 18
    array-length v6, v5

    .line 19
    const/4 v7, 0x1

    .line 20
    sub-int/2addr v6, v7

    .line 21
    rem-int v6, v2, v6

    .line 22
    .line 23
    add-int/2addr v6, v7

    .line 24
    sget-object v8, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    .line 25
    .line 26
    aget v9, v8, v2

    .line 27
    .line 28
    float-to-double v9, v9

    .line 29
    const-wide v11, 0x3fd5555555555555L    # 0.3333333333333333

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    sub-double/2addr v9, v11

    .line 35
    aget v13, v5, v2

    .line 36
    .line 37
    float-to-double v13, v13

    .line 38
    sub-double/2addr v13, v11

    .line 39
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    double-to-float v9, v9

    .line 44
    aget v10, v8, v6

    .line 45
    .line 46
    float-to-double v13, v10

    .line 47
    sub-double/2addr v13, v11

    .line 48
    aget v10, v5, v6

    .line 49
    .line 50
    move-object/from16 v16, v8

    .line 51
    .line 52
    float-to-double v7, v10

    .line 53
    sub-double/2addr v7, v11

    .line 54
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    double-to-float v7, v7

    .line 59
    aget v8, v5, v2

    .line 60
    .line 61
    float-to-double v13, v8

    .line 62
    sub-double/2addr v13, v11

    .line 63
    invoke-static {v13, v14}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    aget v8, v16, v2

    .line 68
    .line 69
    move v10, v3

    .line 70
    move/from16 v17, v4

    .line 71
    .line 72
    float-to-double v3, v8

    .line 73
    sub-double/2addr v3, v11

    .line 74
    invoke-static {v3, v4}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    add-double/2addr v13, v3

    .line 79
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 80
    .line 81
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 82
    .line 83
    .line 84
    move-result-wide v13

    .line 85
    double-to-float v8, v13

    .line 86
    aget v5, v5, v6

    .line 87
    .line 88
    float-to-double v13, v5

    .line 89
    sub-double/2addr v13, v11

    .line 90
    invoke-static {v13, v14}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    .line 91
    .line 92
    .line 93
    move-result-wide v13

    .line 94
    aget v5, v16, v6

    .line 95
    .line 96
    float-to-double v5, v5

    .line 97
    sub-double/2addr v5, v11

    .line 98
    invoke-static {v5, v6}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    add-double/2addr v13, v5

    .line 103
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    double-to-float v3, v3

    .line 108
    move/from16 v4, v17

    .line 109
    .line 110
    const/4 v15, 0x1

    .line 111
    :goto_1
    const/16 v5, 0x20

    .line 112
    .line 113
    if-gt v15, v5, :cond_0

    .line 114
    .line 115
    int-to-float v5, v15

    .line 116
    const/high16 v6, 0x42000000    # 32.0f

    .line 117
    .line 118
    div-float/2addr v5, v6

    .line 119
    add-int/lit8 v13, v15, -0x1

    .line 120
    .line 121
    int-to-float v13, v13

    .line 122
    div-float/2addr v13, v6

    .line 123
    float-to-double v11, v8

    .line 124
    move v6, v15

    .line 125
    float-to-double v14, v9

    .line 126
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v18

    .line 130
    mul-double v18, v18, v11

    .line 131
    .line 132
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v14

    .line 136
    mul-double/2addr v14, v11

    .line 137
    float-to-double v11, v3

    .line 138
    move/from16 v21, v8

    .line 139
    .line 140
    move/from16 v20, v9

    .line 141
    .line 142
    float-to-double v8, v7

    .line 143
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v22

    .line 147
    mul-double v22, v22, v11

    .line 148
    .line 149
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v8

    .line 153
    mul-double/2addr v8, v11

    .line 154
    float-to-double v11, v5

    .line 155
    mul-double v24, v18, v11

    .line 156
    .line 157
    move v5, v2

    .line 158
    move/from16 v26, v3

    .line 159
    .line 160
    const-wide v16, 0x3fd5555555555555L    # 0.3333333333333333

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    add-double v2, v24, v16

    .line 166
    .line 167
    double-to-float v2, v2

    .line 168
    mul-double v24, v14, v11

    .line 169
    .line 170
    move/from16 v27, v5

    .line 171
    .line 172
    move v3, v6

    .line 173
    add-double v5, v24, v16

    .line 174
    .line 175
    double-to-float v5, v5

    .line 176
    const/high16 v6, 0x3f800000    # 1.0f

    .line 177
    .line 178
    sub-float v24, v6, v2

    .line 179
    .line 180
    sub-float v6, v24, v5

    .line 181
    .line 182
    move/from16 v28, v3

    .line 183
    .line 184
    move/from16 v24, v4

    .line 185
    .line 186
    float-to-double v3, v13

    .line 187
    mul-double v18, v18, v3

    .line 188
    .line 189
    move-object v13, v0

    .line 190
    move-object/from16 v29, v1

    .line 191
    .line 192
    add-double v0, v18, v16

    .line 193
    .line 194
    double-to-float v0, v0

    .line 195
    mul-double/2addr v14, v3

    .line 196
    add-double v14, v14, v16

    .line 197
    .line 198
    double-to-float v1, v14

    .line 199
    const/high16 v14, 0x3f800000    # 1.0f

    .line 200
    .line 201
    sub-float v15, v14, v0

    .line 202
    .line 203
    sub-float/2addr v15, v1

    .line 204
    mul-double v18, v22, v3

    .line 205
    .line 206
    move/from16 v30, v15

    .line 207
    .line 208
    add-double v14, v18, v16

    .line 209
    .line 210
    double-to-float v14, v14

    .line 211
    mul-double/2addr v3, v8

    .line 212
    add-double v3, v3, v16

    .line 213
    .line 214
    double-to-float v3, v3

    .line 215
    const/high16 v4, 0x3f800000    # 1.0f

    .line 216
    .line 217
    sub-float v15, v4, v14

    .line 218
    .line 219
    sub-float/2addr v15, v3

    .line 220
    mul-double v22, v22, v11

    .line 221
    .line 222
    move/from16 v18, v5

    .line 223
    .line 224
    add-double v4, v22, v16

    .line 225
    .line 226
    double-to-float v4, v4

    .line 227
    mul-double/2addr v8, v11

    .line 228
    add-double v8, v8, v16

    .line 229
    .line 230
    double-to-float v5, v8

    .line 231
    const/high16 v8, 0x3f800000    # 1.0f

    .line 232
    .line 233
    sub-float/2addr v8, v4

    .line 234
    sub-float/2addr v8, v5

    .line 235
    move/from16 v11, v18

    .line 236
    .line 237
    move-object/from16 v9, v29

    .line 238
    .line 239
    invoke-static {v9, v2, v11, v6, v13}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    aput v6, p1, v24

    .line 244
    .line 245
    add-int/lit8 v6, v24, 0x1

    .line 246
    .line 247
    move/from16 v12, v30

    .line 248
    .line 249
    invoke-static {v9, v0, v1, v12, v13}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    aput v12, p1, v6

    .line 254
    .line 255
    add-int/lit8 v6, v24, 0x2

    .line 256
    .line 257
    invoke-static {v9, v14, v3, v15, v13}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    aput v12, p1, v6

    .line 262
    .line 263
    add-int/lit8 v12, v24, 0x3

    .line 264
    .line 265
    aget v15, p1, v24

    .line 266
    .line 267
    aput v15, p1, v12

    .line 268
    .line 269
    add-int/lit8 v12, v24, 0x4

    .line 270
    .line 271
    aget v6, p1, v6

    .line 272
    .line 273
    aput v6, p1, v12

    .line 274
    .line 275
    add-int/lit8 v6, v24, 0x5

    .line 276
    .line 277
    invoke-static {v9, v4, v5, v8, v13}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    aput v8, p1, v6

    .line 282
    .line 283
    add-int/lit8 v6, v24, 0x6

    .line 284
    .line 285
    add-int/lit8 v8, v10, 0x1

    .line 286
    .line 287
    aput v2, p0, v10

    .line 288
    .line 289
    add-int/lit8 v10, v8, 0x1

    .line 290
    .line 291
    aput v11, p0, v8

    .line 292
    .line 293
    add-int/lit8 v8, v10, 0x1

    .line 294
    .line 295
    aput v0, p0, v10

    .line 296
    .line 297
    add-int/lit8 v0, v8, 0x1

    .line 298
    .line 299
    aput v1, p0, v8

    .line 300
    .line 301
    add-int/lit8 v1, v0, 0x1

    .line 302
    .line 303
    aput v14, p0, v0

    .line 304
    .line 305
    add-int/lit8 v0, v1, 0x1

    .line 306
    .line 307
    aput v3, p0, v1

    .line 308
    .line 309
    add-int/lit8 v1, v0, 0x1

    .line 310
    .line 311
    aput v2, p0, v0

    .line 312
    .line 313
    add-int/lit8 v0, v1, 0x1

    .line 314
    .line 315
    aput v11, p0, v1

    .line 316
    .line 317
    add-int/lit8 v1, v0, 0x1

    .line 318
    .line 319
    aput v14, p0, v0

    .line 320
    .line 321
    add-int/lit8 v0, v1, 0x1

    .line 322
    .line 323
    aput v3, p0, v1

    .line 324
    .line 325
    add-int/lit8 v1, v0, 0x1

    .line 326
    .line 327
    aput v4, p0, v0

    .line 328
    .line 329
    add-int/lit8 v10, v1, 0x1

    .line 330
    .line 331
    aput v5, p0, v1

    .line 332
    .line 333
    add-int/lit8 v15, v28, 0x1

    .line 334
    .line 335
    move v4, v6

    .line 336
    move-object v1, v9

    .line 337
    move-object v0, v13

    .line 338
    move-wide/from16 v11, v16

    .line 339
    .line 340
    move/from16 v9, v20

    .line 341
    .line 342
    move/from16 v8, v21

    .line 343
    .line 344
    move/from16 v3, v26

    .line 345
    .line 346
    move/from16 v2, v27

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :cond_0
    move-object v13, v0

    .line 351
    move-object v9, v1

    .line 352
    move/from16 v27, v2

    .line 353
    .line 354
    move/from16 v24, v4

    .line 355
    .line 356
    add-int/lit8 v2, v27, 0x1

    .line 357
    .line 358
    move v3, v10

    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_1
    return-void
.end method

.method private static computeColor([FFFFLandroid/graphics/ColorSpace;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    aput p1, p0, v0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    aput p2, p0, p1

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    aput p3, p0, p2

    .line 9
    .line 10
    invoke-virtual {p4, p0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    .line 11
    .line 12
    .line 13
    aget p3, p0, v0

    .line 14
    .line 15
    const/high16 p4, 0x437f0000    # 255.0f

    .line 16
    .line 17
    mul-float/2addr p3, p4

    .line 18
    float-to-int p3, p3

    .line 19
    and-int/lit16 p3, p3, 0xff

    .line 20
    .line 21
    shl-int/lit8 p3, p3, 0x10

    .line 22
    .line 23
    const/high16 v0, -0x1000000

    .line 24
    .line 25
    or-int/2addr p3, v0

    .line 26
    aget p1, p0, p1

    .line 27
    .line 28
    mul-float/2addr p1, p4

    .line 29
    float-to-int p1, p1

    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    shl-int/lit8 p1, p1, 0x8

    .line 33
    .line 34
    or-int/2addr p1, p3

    .line 35
    aget p0, p0, p2

    .line 36
    .line 37
    mul-float/2addr p0, p4

    .line 38
    float-to-int p0, p0

    .line 39
    and-int/lit16 p0, p0, 0xff

    .line 40
    .line 41
    or-int/2addr p0, p1

    .line 42
    return p0
.end method

.method private drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V
    .locals 21

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p0

    .line 10
    .line 11
    move-object/from16 v11, p5

    .line 12
    .line 13
    iget-boolean v0, v10, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0xa

    .line 22
    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    :goto_0
    move v12, v0

    .line 26
    move v13, v1

    .line 27
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    .line 31
    .line 32
    const/high16 v14, 0x40000000    # 2.0f

    .line 33
    .line 34
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    const v0, -0x3f3f40

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    const/4 v15, 0x1

    .line 44
    move v5, v15

    .line 45
    :goto_1
    add-int/lit8 v4, v12, -0x1

    .line 46
    .line 47
    const v16, 0x3dcccccd    # 0.1f

    .line 48
    .line 49
    .line 50
    const v17, 0x3f666666    # 0.9f

    .line 51
    .line 52
    .line 53
    const/high16 v18, 0x41200000    # 10.0f

    .line 54
    .line 55
    if-ge v5, v4, :cond_1

    .line 56
    .line 57
    int-to-float v0, v5

    .line 58
    div-float v0, v0, v18

    .line 59
    .line 60
    int-to-float v1, v7

    .line 61
    mul-float v2, v1, v0

    .line 62
    .line 63
    mul-float v18, v2, v13

    .line 64
    .line 65
    int-to-float v4, v8

    .line 66
    mul-float/2addr v0, v4

    .line 67
    mul-float/2addr v0, v13

    .line 68
    sub-float v19, v4, v0

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    mul-float v3, v1, v17

    .line 72
    .line 73
    move-object/from16 v0, p1

    .line 74
    .line 75
    move v1, v2

    .line 76
    move/from16 v2, v19

    .line 77
    .line 78
    move/from16 v17, v4

    .line 79
    .line 80
    move/from16 v4, v19

    .line 81
    .line 82
    move/from16 v19, v5

    .line 83
    .line 84
    move-object/from16 v5, p4

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    mul-float v4, v17, v16

    .line 90
    .line 91
    move/from16 v1, v18

    .line 92
    .line 93
    move/from16 v2, v17

    .line 94
    .line 95
    move/from16 v3, v18

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v5, v19, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 104
    .line 105
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    .line 107
    .line 108
    const/high16 v0, -0x1000000

    .line 109
    .line 110
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    :goto_2
    if-ge v15, v4, :cond_2

    .line 114
    .line 115
    int-to-float v0, v15

    .line 116
    div-float v0, v0, v18

    .line 117
    .line 118
    int-to-float v1, v7

    .line 119
    mul-float v2, v1, v0

    .line 120
    .line 121
    mul-float v12, v2, v13

    .line 122
    .line 123
    int-to-float v5, v8

    .line 124
    mul-float/2addr v0, v5

    .line 125
    mul-float/2addr v0, v13

    .line 126
    sub-float v19, v5, v0

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    const/high16 v20, 0x42c80000    # 100.0f

    .line 130
    .line 131
    div-float v3, v1, v20

    .line 132
    .line 133
    move-object/from16 v0, p1

    .line 134
    .line 135
    move v1, v2

    .line 136
    move/from16 v2, v19

    .line 137
    .line 138
    move v14, v4

    .line 139
    move/from16 v4, v19

    .line 140
    .line 141
    move/from16 v19, v5

    .line 142
    .line 143
    move-object/from16 v5, p4

    .line 144
    .line 145
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    div-float v5, v19, v20

    .line 149
    .line 150
    sub-float v4, v19, v5

    .line 151
    .line 152
    move v1, v12

    .line 153
    move/from16 v2, v19

    .line 154
    .line 155
    move v3, v12

    .line 156
    move-object/from16 v5, p4

    .line 157
    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v15, v15, 0x1

    .line 162
    .line 163
    move v4, v14

    .line 164
    const/high16 v14, 0x40000000    # 2.0f

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    move v14, v4

    .line 168
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 169
    .line 170
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    .line 172
    .line 173
    const/high16 v0, 0x42100000    # 36.0f

    .line 174
    .line 175
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    .line 177
    .line 178
    const-string/jumbo v0, "sans-serif-light"

    .line 179
    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    .line 188
    .line 189
    new-instance v0, Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    :goto_3
    if-ge v2, v14, :cond_3

    .line 196
    .line 197
    const-string v3, "0."

    .line 198
    .line 199
    invoke-static {v3, v2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v9, v3, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 208
    .line 209
    .line 210
    int-to-float v1, v2

    .line 211
    div-float v1, v1, v18

    .line 212
    .line 213
    int-to-float v4, v7

    .line 214
    mul-float v5, v4, v1

    .line 215
    .line 216
    mul-float/2addr v5, v13

    .line 217
    int-to-float v12, v8

    .line 218
    mul-float/2addr v1, v12

    .line 219
    mul-float/2addr v1, v13

    .line 220
    sub-float/2addr v12, v1

    .line 221
    const v1, -0x42b33333    # -0.05f

    .line 222
    .line 223
    .line 224
    mul-float/2addr v4, v1

    .line 225
    add-float v4, v4, v18

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    int-to-float v1, v1

    .line 232
    const/high16 v15, 0x40000000    # 2.0f

    .line 233
    .line 234
    div-float/2addr v1, v15

    .line 235
    add-float/2addr v1, v12

    .line 236
    invoke-virtual {v6, v3, v4, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    int-to-float v1, v1

    .line 244
    div-float/2addr v1, v15

    .line 245
    sub-float/2addr v5, v1

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    add-int/2addr v1, v8

    .line 251
    add-int/lit8 v1, v1, 0x10

    .line 252
    .line 253
    int-to-float v1, v1

    .line 254
    invoke-virtual {v6, v3, v5, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 258
    .line 259
    const/4 v1, 0x0

    .line 260
    goto :goto_3

    .line 261
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 262
    .line 263
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    .line 265
    .line 266
    int-to-float v0, v8

    .line 267
    const/4 v1, 0x0

    .line 268
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 269
    .line 270
    .line 271
    int-to-float v2, v7

    .line 272
    mul-float v2, v2, v17

    .line 273
    .line 274
    invoke-virtual {v11, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    .line 276
    .line 277
    mul-float v0, v0, v16

    .line 278
    .line 279
    invoke-virtual {v11, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method private drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    iget-boolean v6, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 21
    .line 22
    :goto_0
    const/high16 v7, 0x40800000    # 4.0f

    .line 23
    .line 24
    div-float/2addr v7, v6

    .line 25
    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_4

    .line 36
    .line 37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Landroid/util/Pair;

    .line 42
    .line 43
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v9, Landroid/graphics/ColorSpace;

    .line 46
    .line 47
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v8, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {v9}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    sget-object v11, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 60
    .line 61
    if-eq v10, v11, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    check-cast v9, Landroid/graphics/ColorSpace$Rgb;

    .line 65
    .line 66
    iget-boolean v10, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 67
    .line 68
    invoke-static {v9, v4, v10}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 72
    .line 73
    .line 74
    move/from16 v10, p2

    .line 75
    .line 76
    int-to-float v11, v10

    .line 77
    const/4 v12, 0x0

    .line 78
    aget v13, v4, v12

    .line 79
    .line 80
    mul-float/2addr v13, v11

    .line 81
    move/from16 v14, p3

    .line 82
    .line 83
    int-to-float v15, v14

    .line 84
    const/16 v16, 0x1

    .line 85
    .line 86
    aget v17, v4, v16

    .line 87
    .line 88
    mul-float v17, v17, v15

    .line 89
    .line 90
    sub-float v12, v15, v17

    .line 91
    .line 92
    invoke-virtual {v3, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    .line 94
    .line 95
    const/4 v12, 0x2

    .line 96
    aget v12, v4, v12

    .line 97
    .line 98
    mul-float/2addr v12, v11

    .line 99
    const/4 v13, 0x3

    .line 100
    aget v13, v4, v13

    .line 101
    .line 102
    mul-float/2addr v13, v15

    .line 103
    sub-float v13, v15, v13

    .line 104
    .line 105
    invoke-virtual {v3, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    .line 107
    .line 108
    const/4 v12, 0x4

    .line 109
    aget v12, v4, v12

    .line 110
    .line 111
    mul-float/2addr v12, v11

    .line 112
    const/4 v13, 0x5

    .line 113
    aget v13, v4, v13

    .line 114
    .line 115
    mul-float/2addr v13, v15

    .line 116
    sub-float v13, v15, v13

    .line 117
    .line 118
    invoke-virtual {v3, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 122
    .line 123
    .line 124
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 125
    .line 126
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v12, v0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    .line 136
    .line 137
    if-eqz v12, :cond_1

    .line 138
    .line 139
    invoke-virtual {v9, v5}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint([F)[F

    .line 140
    .line 141
    .line 142
    iget-boolean v9, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 143
    .line 144
    if-eqz v9, :cond_3

    .line 145
    .line 146
    invoke-static/range {p7 .. p7}, Landroid/graphics/ColorSpace;->access$2900([F)V

    .line 147
    .line 148
    .line 149
    :cond_3
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 150
    .line 151
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    aget v8, v5, v8

    .line 159
    .line 160
    mul-float/2addr v11, v8

    .line 161
    aget v8, v5, v16

    .line 162
    .line 163
    mul-float/2addr v8, v15

    .line 164
    sub-float/2addr v15, v8

    .line 165
    invoke-virtual {v1, v11, v15, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_4
    return-void
.end method

.method private drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v15, p4

    .line 10
    .line 11
    move-object/from16 v13, p5

    .line 12
    .line 13
    move-object/from16 v3, p6

    .line 14
    .line 15
    sget-object v4, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    .line 16
    .line 17
    array-length v4, v4

    .line 18
    mul-int/lit8 v4, v4, 0x20

    .line 19
    .line 20
    mul-int/lit8 v4, v4, 0x6

    .line 21
    .line 22
    const/16 v16, 0x2

    .line 23
    .line 24
    mul-int/lit8 v12, v4, 0x2

    .line 25
    .line 26
    new-array v11, v12, [F

    .line 27
    .line 28
    new-array v10, v12, [I

    .line 29
    .line 30
    invoke-static {v11, v10}, Landroid/graphics/ColorSpace$Renderer;->computeChromaticityMesh([F[I)V

    .line 31
    .line 32
    .line 33
    iget-boolean v4, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-static {v11}, Landroid/graphics/ColorSpace;->access$2900([F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    move v5, v4

    .line 42
    :goto_0
    if-ge v5, v12, :cond_1

    .line 43
    .line 44
    aget v6, v11, v5

    .line 45
    .line 46
    int-to-float v7, v1

    .line 47
    mul-float/2addr v6, v7

    .line 48
    aput v6, v11, v5

    .line 49
    .line 50
    add-int/lit8 v6, v5, 0x1

    .line 51
    .line 52
    int-to-float v7, v2

    .line 53
    aget v8, v11, v6

    .line 54
    .line 55
    mul-float/2addr v8, v7

    .line 56
    sub-float/2addr v7, v8

    .line 57
    aput v7, v11, v6

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v5, v0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    iget-object v5, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-lez v5, :cond_4

    .line 73
    .line 74
    iget-object v5, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/util/Pair;

    .line 91
    .line 92
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Landroid/graphics/ColorSpace;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    sget-object v8, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 101
    .line 102
    if-eq v7, v8, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    check-cast v6, Landroid/graphics/ColorSpace$Rgb;

    .line 106
    .line 107
    iget-boolean v5, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 108
    .line 109
    invoke-static {v6, v3, v5}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 113
    .line 114
    .line 115
    int-to-float v1, v1

    .line 116
    aget v4, v3, v4

    .line 117
    .line 118
    mul-float/2addr v4, v1

    .line 119
    int-to-float v2, v2

    .line 120
    const/4 v5, 0x1

    .line 121
    aget v5, v3, v5

    .line 122
    .line 123
    mul-float/2addr v5, v2

    .line 124
    sub-float v5, v2, v5

    .line 125
    .line 126
    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    .line 128
    .line 129
    aget v4, v3, v16

    .line 130
    .line 131
    mul-float/2addr v4, v1

    .line 132
    const/4 v5, 0x3

    .line 133
    aget v5, v3, v5

    .line 134
    .line 135
    mul-float/2addr v5, v2

    .line 136
    sub-float v5, v2, v5

    .line 137
    .line 138
    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    .line 140
    .line 141
    const/4 v4, 0x4

    .line 142
    aget v4, v3, v4

    .line 143
    .line 144
    mul-float/2addr v1, v4

    .line 145
    const/4 v4, 0x5

    .line 146
    aget v3, v3, v4

    .line 147
    .line 148
    mul-float/2addr v3, v2

    .line 149
    sub-float/2addr v2, v3

    .line 150
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 154
    .line 155
    .line 156
    new-array v8, v12, [I

    .line 157
    .line 158
    const v1, -0x939394

    .line 159
    .line 160
    .line 161
    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([II)V

    .line 162
    .line 163
    .line 164
    sget-object v17, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v6, 0x0

    .line 168
    const/4 v7, 0x0

    .line 169
    const/4 v9, 0x0

    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x0

    .line 175
    .line 176
    move-object/from16 v1, p1

    .line 177
    .line 178
    move-object/from16 v2, v17

    .line 179
    .line 180
    move v3, v12

    .line 181
    move-object v4, v11

    .line 182
    move-object/from16 v21, v10

    .line 183
    .line 184
    move-object/from16 v10, v18

    .line 185
    .line 186
    move-object/from16 v18, v11

    .line 187
    .line 188
    move/from16 v11, v19

    .line 189
    .line 190
    move/from16 v19, v12

    .line 191
    .line 192
    move/from16 v12, v20

    .line 193
    .line 194
    move-object v15, v13

    .line 195
    move-object/from16 v13, p4

    .line 196
    .line 197
    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 204
    .line 205
    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x0

    .line 209
    move/from16 v3, v19

    .line 210
    .line 211
    move-object/from16 v4, v18

    .line 212
    .line 213
    move-object/from16 v8, v21

    .line 214
    .line 215
    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    move-object/from16 v21, v10

    .line 223
    .line 224
    move-object/from16 v18, v11

    .line 225
    .line 226
    move/from16 v19, v12

    .line 227
    .line 228
    move-object v15, v13

    .line 229
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    const/4 v6, 0x0

    .line 233
    const/4 v7, 0x0

    .line 234
    const/4 v9, 0x0

    .line 235
    const/4 v10, 0x0

    .line 236
    const/4 v11, 0x0

    .line 237
    const/4 v12, 0x0

    .line 238
    move-object/from16 v1, p1

    .line 239
    .line 240
    move/from16 v3, v19

    .line 241
    .line 242
    move-object/from16 v4, v18

    .line 243
    .line 244
    move-object/from16 v8, v21

    .line 245
    .line 246
    move-object/from16 v13, p4

    .line 247
    .line 248
    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    .line 252
    .line 253
    .line 254
    const/16 v1, 0x174

    .line 255
    .line 256
    aget v2, v18, v1

    .line 257
    .line 258
    const/16 v3, 0x175

    .line 259
    .line 260
    aget v3, v18, v3

    .line 261
    .line 262
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 263
    .line 264
    .line 265
    move/from16 v2, v16

    .line 266
    .line 267
    :goto_3
    sget-object v3, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    .line 268
    .line 269
    array-length v3, v3

    .line 270
    if-ge v2, v3, :cond_5

    .line 271
    .line 272
    add-int/lit16 v1, v1, 0x180

    .line 273
    .line 274
    aget v3, v18, v1

    .line 275
    .line 276
    add-int/lit8 v4, v1, 0x1

    .line 277
    .line 278
    aget v4, v18, v4

    .line 279
    .line 280
    invoke-virtual {v15, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    .line 282
    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 287
    .line 288
    .line 289
    iget-boolean v1, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 290
    .line 291
    if-eqz v1, :cond_6

    .line 292
    .line 293
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 297
    .line 298
    :goto_4
    const/high16 v2, 0x40800000    # 4.0f

    .line 299
    .line 300
    div-float/2addr v2, v1

    .line 301
    move-object/from16 v1, p4

    .line 302
    .line 303
    move-object v3, v15

    .line 304
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 305
    .line 306
    .line 307
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    .line 311
    .line 312
    const/high16 v2, -0x1000000

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v14, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 11

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    :goto_0
    const/high16 v1, 0x40800000    # 4.0f

    .line 16
    .line 17
    div-float/2addr v1, v0

    .line 18
    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v3, v2, [F

    .line 23
    .line 24
    iget-object v4, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/graphics/ColorSpace$Renderer$Point;

    .line 41
    .line 42
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    aget v8, v6, v7

    .line 46
    .line 47
    aput v8, v0, v7

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    aget v9, v6, v8

    .line 51
    .line 52
    aput v9, v0, v8

    .line 53
    .line 54
    aget v6, v6, v2

    .line 55
    .line 56
    aput v6, v0, v2

    .line 57
    .line 58
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    .line 61
    .line 62
    .line 63
    iget v5, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    .line 64
    .line 65
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    .line 67
    .line 68
    aget v5, v0, v7

    .line 69
    .line 70
    aget v6, v0, v8

    .line 71
    .line 72
    add-float v9, v5, v6

    .line 73
    .line 74
    aget v10, v0, v2

    .line 75
    .line 76
    add-float/2addr v9, v10

    .line 77
    div-float/2addr v5, v9

    .line 78
    aput v5, v3, v7

    .line 79
    .line 80
    div-float/2addr v6, v9

    .line 81
    aput v6, v3, v8

    .line 82
    .line 83
    iget-boolean v5, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 84
    .line 85
    if-eqz v5, :cond_1

    .line 86
    .line 87
    invoke-static {v3}, Landroid/graphics/ColorSpace;->access$2900([F)V

    .line 88
    .line 89
    .line 90
    :cond_1
    int-to-float v5, p2

    .line 91
    aget v6, v3, v7

    .line 92
    .line 93
    mul-float/2addr v5, v6

    .line 94
    int-to-float v6, p3

    .line 95
    aget v7, v3, v8

    .line 96
    .line 97
    mul-float/2addr v7, v6

    .line 98
    sub-float/2addr v6, v7

    .line 99
    invoke-virtual {p1, v5, v6, v1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method

.method private static getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace$Rgb;->getPrimaries([F)[F

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 31
    const v0, 0x3fb47ae1    # 1.41f

    .line 32
    .line 33
    .line 34
    aput v0, p1, p0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    const v0, 0x3ea8f5c3    # 0.33f

    .line 38
    .line 39
    .line 40
    aput v0, p1, p0

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    const v0, 0x3e8a3d71    # 0.27f

    .line 44
    .line 45
    .line 46
    aput v0, p1, p0

    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    const v0, 0x3f9eb852    # 1.24f

    .line 50
    .line 51
    .line 52
    aput v0, p1, p0

    .line 53
    .line 54
    const/4 p0, 0x4

    .line 55
    const v0, -0x41947ae1    # -0.23f

    .line 56
    .line 57
    .line 58
    aput v0, p1, p0

    .line 59
    .line 60
    const/4 p0, 0x5

    .line 61
    const v0, -0x40ee147b    # -0.57f

    .line 62
    .line 63
    .line 64
    aput v0, p1, p0

    .line 65
    .line 66
    :goto_1
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-static {p1}, Landroid/graphics/ColorSpace;->access$2900([F)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private setTransform(Landroid/graphics/Canvas;II[F)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/util/Pair;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Landroid/graphics/ColorSpace;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .line 38
    .line 39
    iget-boolean v3, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 40
    .line 41
    invoke-static {v2, p4, v3}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 42
    .line 43
    .line 44
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    aget v3, p4, v3

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 54
    .line 55
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    aget v3, p4, v3

    .line 59
    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 65
    .line 66
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    aget v3, p4, v3

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 76
    .line 77
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 78
    .line 79
    const/4 v3, 0x3

    .line 80
    aget v3, p4, v3

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-boolean p4, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 90
    .line 91
    if-eqz p4, :cond_2

    .line 92
    .line 93
    const p4, 0x3f19999a    # 0.6f

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const p4, 0x3f666666    # 0.9f

    .line 98
    .line 99
    .line 100
    :goto_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 108
    .line 109
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 110
    .line 111
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 116
    .line 117
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 118
    .line 119
    invoke-static {p4, v1}, Ljava/lang/Math;->max(FF)F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 124
    .line 125
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 126
    .line 127
    invoke-static {p4, v1}, Ljava/lang/Math;->max(FF)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    div-float v1, p4, v1

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    div-float v2, p4, v2

    .line 144
    .line 145
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iget v2, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    .line 150
    .line 151
    int-to-float v3, v2

    .line 152
    const/high16 v4, 0x44b40000    # 1440.0f

    .line 153
    .line 154
    div-float/2addr v3, v4

    .line 155
    int-to-float v2, v2

    .line 156
    div-float/2addr v2, v4

    .line 157
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    sub-float/2addr v1, p4

    .line 168
    int-to-float p2, p2

    .line 169
    mul-float/2addr v1, p2

    .line 170
    const/high16 v2, 0x40000000    # 2.0f

    .line 171
    .line 172
    div-float/2addr v1, v2

    .line 173
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    sub-float/2addr v0, p4

    .line 178
    int-to-float p3, p3

    .line 179
    mul-float/2addr v0, p3

    .line 180
    div-float/2addr v0, v2

    .line 181
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    .line 183
    .line 184
    const p4, 0x3d4ccccd    # 0.05f

    .line 185
    .line 186
    .line 187
    mul-float/2addr p2, p4

    .line 188
    const p4, -0x42b33333    # -0.05f

    .line 189
    .line 190
    .line 191
    mul-float/2addr p3, p4

    .line 192
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private setUcsTransform(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-float p2, p2

    .line 6
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 7
    .line 8
    mul-float v1, p2, v0

    .line 9
    .line 10
    sub-float/2addr p2, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static sqr(D)D
    .locals 0

    mul-double/2addr p0, p0

    return-wide p0
.end method


# virtual methods
.method public add(Landroid/graphics/ColorSpace;FFFI)Landroid/graphics/ColorSpace$Renderer;
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/ColorSpace$Renderer$Point;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    const/4 p2, 0x2

    aput p4, v2, p2

    invoke-direct {v1, p1, v2, p5}, Landroid/graphics/ColorSpace$Renderer$Point;-><init>(Landroid/graphics/ColorSpace;[FI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Landroid/graphics/ColorSpace;I)Landroid/graphics/ColorSpace$Renderer;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clip(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    return-object p0
.end method

.method public render()Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    new-instance v8, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    new-instance v10, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    new-array v7, v0, [F

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v11, v0, [F

    .line 25
    .line 26
    new-instance v12, Landroid/graphics/Path;

    .line 27
    .line 28
    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v13, 0x5a0

    .line 32
    .line 33
    invoke-direct {p0, v10, v13, v13, v7}, Landroid/graphics/ColorSpace$Renderer;->setTransform(Landroid/graphics/Canvas;II[F)V

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x5a0

    .line 37
    .line 38
    const/16 v3, 0x5a0

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    move-object v1, v10

    .line 42
    move-object v4, v8

    .line 43
    move-object v5, v12

    .line 44
    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Renderer;->drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v10, v13}, Landroid/graphics/ColorSpace$Renderer;->setUcsTransform(Landroid/graphics/Canvas;I)V

    .line 48
    .line 49
    .line 50
    move-object v6, v7

    .line 51
    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Renderer;->drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V

    .line 52
    .line 53
    .line 54
    move-object v7, v11

    .line 55
    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Renderer;->drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v10, v13, v13, v8}, Landroid/graphics/ColorSpace$Renderer;->drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    return-object v9
.end method

.method public showWhitePoint(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    return-object p0
.end method

.method public size(I)Landroid/graphics/ColorSpace$Renderer;
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    return-object p0
.end method

.method public uniformChromaticityScale(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    return-object p0
.end method
