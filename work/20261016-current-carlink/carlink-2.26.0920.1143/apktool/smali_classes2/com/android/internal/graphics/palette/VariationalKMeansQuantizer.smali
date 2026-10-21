.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final mInitializations:I

.field private final mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final mMinClusterSqDistance:F

.field private mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    mul-float/2addr p1, p1

    .line 5
    iput p1, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 6
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    return-void
.end method

.method private getOptimalKMeans(I[[F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide v2, -0x10000000000001L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    :goto_0
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 12
    .line 13
    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    cmpl-double v7, v5, v2

    .line 24
    .line 25
    if-lez v7, :cond_1

    .line 26
    .line 27
    :cond_0
    move-object v1, v4

    .line 28
    move-wide v2, v5

    .line 29
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [F

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    array-length v4, v1

    .line 12
    const/4 v5, 0x2

    .line 13
    new-array v6, v5, [I

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    aput v2, v6, v7

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    aput v4, v6, v8

    .line 20
    .line 21
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, [[F

    .line 28
    .line 29
    move v6, v8

    .line 30
    :goto_0
    array-length v9, v1

    .line 31
    const/high16 v10, 0x43b40000    # 360.0f

    .line 32
    .line 33
    if-ge v6, v9, :cond_0

    .line 34
    .line 35
    aget v9, v1, v6

    .line 36
    .line 37
    invoke-static {v9, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 38
    .line 39
    .line 40
    aget-object v9, v4, v6

    .line 41
    .line 42
    aget v11, v3, v8

    .line 43
    .line 44
    div-float/2addr v11, v10

    .line 45
    aput v11, v9, v8

    .line 46
    .line 47
    aget v10, v3, v7

    .line 48
    .line 49
    aput v10, v9, v7

    .line 50
    .line 51
    aget v10, v3, v5

    .line 52
    .line 53
    aput v10, v9, v5

    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move/from16 v6, p2

    .line 59
    .line 60
    invoke-direct {v0, v6, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move v3, v8

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v3, v4, :cond_4

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    move v9, v3

    .line 84
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-ge v9, v11, :cond_3

    .line 89
    .line 90
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 95
    .line 96
    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-static {v6, v12}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    iget v14, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 105
    .line 106
    cmpg-float v13, v13, v14

    .line 107
    .line 108
    if-gez v13, :cond_2

    .line 109
    .line 110
    invoke-interface {v1, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    move v11, v8

    .line 125
    :goto_3
    array-length v13, v6

    .line 126
    if-ge v11, v13, :cond_1

    .line 127
    .line 128
    aget v13, v6, v11

    .line 129
    .line 130
    float-to-double v14, v13

    .line 131
    aget v16, v12, v11

    .line 132
    .line 133
    sub-float v13, v16, v13

    .line 134
    .line 135
    move/from16 p1, v3

    .line 136
    .line 137
    float-to-double v2, v13

    .line 138
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 139
    .line 140
    div-double v2, v2, v16

    .line 141
    .line 142
    add-double/2addr v2, v14

    .line 143
    double-to-float v2, v2

    .line 144
    aput v2, v6, v11

    .line 145
    .line 146
    add-int/lit8 v11, v11, 0x1

    .line 147
    .line 148
    move/from16 v3, p1

    .line 149
    .line 150
    const/4 v2, 0x3

    .line 151
    goto :goto_3

    .line 152
    :cond_1
    move/from16 p1, v3

    .line 153
    .line 154
    add-int/lit8 v9, v9, -0x1

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_2
    move/from16 p1, v3

    .line 158
    .line 159
    :goto_4
    add-int/2addr v9, v7

    .line 160
    move/from16 v3, p1

    .line 161
    .line 162
    const/4 v2, 0x3

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move/from16 p1, v3

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v2, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_5

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    iget-object v4, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 206
    .line 207
    new-instance v6, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 208
    .line 209
    const/4 v9, 0x3

    .line 210
    new-array v11, v9, [F

    .line 211
    .line 212
    aget v12, v3, v8

    .line 213
    .line 214
    mul-float/2addr v12, v10

    .line 215
    aput v12, v11, v8

    .line 216
    .line 217
    aget v12, v3, v7

    .line 218
    .line 219
    aput v12, v11, v7

    .line 220
    .line 221
    aget v3, v3, v5

    .line 222
    .line 223
    aput v3, v11, v5

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-direct {v6, v11, v2}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>([FI)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_6
    return-void

    .line 241
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
