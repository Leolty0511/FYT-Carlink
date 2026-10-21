.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 6
    .line 7
    const/high16 p1, 0x42340000    # 45.0f

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 10
    .line 11
    const/16 p1, 0x280

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 17
    .line 18
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 19
    .line 20
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 21
    .line 22
    return-void
.end method

.method private updateParameters()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 2
    .line 3
    const v1, 0x3c8efa35

    .line 4
    .line 5
    .line 6
    mul-float/2addr v0, v1

    .line 7
    float-to-double v2, v0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    double-to-float v0, v2

    .line 13
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 14
    .line 15
    mul-float/2addr v2, v1

    .line 16
    float-to-double v1, v2

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    double-to-float v1, v1

    .line 22
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    cmpg-float v3, v2, v3

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    const/high16 v3, 0x42b40000    # 90.0f

    .line 30
    .line 31
    cmpl-float v4, v2, v3

    .line 32
    .line 33
    if-lez v4, :cond_0

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_0
    iput v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 37
    .line 38
    new-instance v2, Landroid/filterfw/geometry/Point;

    .line 39
    .line 40
    neg-float v3, v0

    .line 41
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 42
    .line 43
    int-to-float v5, v4

    .line 44
    mul-float/2addr v5, v3

    .line 45
    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 46
    .line 47
    int-to-float v7, v6

    .line 48
    mul-float/2addr v7, v1

    .line 49
    add-float/2addr v7, v5

    .line 50
    neg-float v5, v1

    .line 51
    int-to-float v4, v4

    .line 52
    mul-float/2addr v4, v5

    .line 53
    int-to-float v6, v6

    .line 54
    mul-float/2addr v6, v0

    .line 55
    sub-float/2addr v4, v6

    .line 56
    invoke-direct {v2, v7, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Landroid/filterfw/geometry/Point;

    .line 60
    .line 61
    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 62
    .line 63
    int-to-float v7, v6

    .line 64
    mul-float/2addr v7, v0

    .line 65
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 66
    .line 67
    int-to-float v9, v8

    .line 68
    mul-float/2addr v9, v1

    .line 69
    add-float/2addr v9, v7

    .line 70
    int-to-float v6, v6

    .line 71
    mul-float/2addr v6, v1

    .line 72
    int-to-float v7, v8

    .line 73
    mul-float/2addr v7, v0

    .line 74
    sub-float/2addr v6, v7

    .line 75
    invoke-direct {v4, v9, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/filterfw/geometry/Point;

    .line 79
    .line 80
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 81
    .line 82
    int-to-float v8, v7

    .line 83
    mul-float/2addr v3, v8

    .line 84
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 85
    .line 86
    int-to-float v9, v8

    .line 87
    mul-float/2addr v9, v1

    .line 88
    sub-float/2addr v3, v9

    .line 89
    int-to-float v7, v7

    .line 90
    mul-float/2addr v5, v7

    .line 91
    int-to-float v7, v8

    .line 92
    mul-float/2addr v7, v0

    .line 93
    add-float/2addr v7, v5

    .line 94
    invoke-direct {v6, v3, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Landroid/filterfw/geometry/Point;

    .line 98
    .line 99
    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 100
    .line 101
    int-to-float v7, v5

    .line 102
    mul-float/2addr v7, v0

    .line 103
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 104
    .line 105
    int-to-float v9, v8

    .line 106
    mul-float/2addr v9, v1

    .line 107
    sub-float/2addr v7, v9

    .line 108
    int-to-float v5, v5

    .line 109
    mul-float/2addr v1, v5

    .line 110
    int-to-float v5, v8

    .line 111
    mul-float/2addr v0, v5

    .line 112
    add-float/2addr v0, v1

    .line 113
    invoke-direct {v3, v7, v0}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 114
    .line 115
    .line 116
    iget v0, v2, Landroid/filterfw/geometry/Point;->x:F

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget v1, v4, Landroid/filterfw/geometry/Point;->x:F

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v1, v2, Landroid/filterfw/geometry/Point;->y:F

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iget v5, v4, Landroid/filterfw/geometry/Point;->y:F

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 149
    .line 150
    int-to-float v5, v5

    .line 151
    div-float/2addr v5, v0

    .line 152
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 153
    .line 154
    int-to-float v0, v0

    .line 155
    div-float/2addr v0, v1

    .line 156
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/high16 v1, 0x3f000000    # 0.5f

    .line 161
    .line 162
    mul-float/2addr v0, v1

    .line 163
    iget v5, v2, Landroid/filterfw/geometry/Point;->x:F

    .line 164
    .line 165
    mul-float/2addr v5, v0

    .line 166
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 167
    .line 168
    int-to-float v7, v7

    .line 169
    div-float/2addr v5, v7

    .line 170
    add-float/2addr v5, v1

    .line 171
    iget v7, v2, Landroid/filterfw/geometry/Point;->y:F

    .line 172
    .line 173
    mul-float/2addr v7, v0

    .line 174
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 175
    .line 176
    int-to-float v8, v8

    .line 177
    div-float/2addr v7, v8

    .line 178
    add-float/2addr v7, v1

    .line 179
    invoke-virtual {v2, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 180
    .line 181
    .line 182
    iget v5, v4, Landroid/filterfw/geometry/Point;->x:F

    .line 183
    .line 184
    mul-float/2addr v5, v0

    .line 185
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 186
    .line 187
    int-to-float v7, v7

    .line 188
    div-float/2addr v5, v7

    .line 189
    add-float/2addr v5, v1

    .line 190
    iget v7, v4, Landroid/filterfw/geometry/Point;->y:F

    .line 191
    .line 192
    mul-float/2addr v7, v0

    .line 193
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 194
    .line 195
    int-to-float v8, v8

    .line 196
    div-float/2addr v7, v8

    .line 197
    add-float/2addr v7, v1

    .line 198
    invoke-virtual {v4, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 199
    .line 200
    .line 201
    iget v5, v6, Landroid/filterfw/geometry/Point;->x:F

    .line 202
    .line 203
    mul-float/2addr v5, v0

    .line 204
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 205
    .line 206
    int-to-float v7, v7

    .line 207
    div-float/2addr v5, v7

    .line 208
    add-float/2addr v5, v1

    .line 209
    iget v7, v6, Landroid/filterfw/geometry/Point;->y:F

    .line 210
    .line 211
    mul-float/2addr v7, v0

    .line 212
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 213
    .line 214
    int-to-float v8, v8

    .line 215
    div-float/2addr v7, v8

    .line 216
    add-float/2addr v7, v1

    .line 217
    invoke-virtual {v6, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 218
    .line 219
    .line 220
    iget v5, v3, Landroid/filterfw/geometry/Point;->x:F

    .line 221
    .line 222
    mul-float/2addr v5, v0

    .line 223
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 224
    .line 225
    int-to-float v7, v7

    .line 226
    div-float/2addr v5, v7

    .line 227
    add-float/2addr v5, v1

    .line 228
    iget v7, v3, Landroid/filterfw/geometry/Point;->y:F

    .line 229
    .line 230
    mul-float/2addr v0, v7

    .line 231
    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 232
    .line 233
    int-to-float v7, v7

    .line 234
    div-float/2addr v0, v7

    .line 235
    add-float/2addr v0, v1

    .line 236
    invoke-virtual {v3, v5, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Landroid/filterfw/geometry/Quad;

    .line 240
    .line 241
    invoke-direct {v0, v2, v4, v6, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 245
    .line 246
    check-cast v1, Landroid/filterfw/core/ShaderProgram;

    .line 247
    .line 248
    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 253
    .line 254
    const-string v1, "Max angle is out of range (0-180)."

    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 14
    .line 15
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 21
    .line 22
    const-string v1, "!"

    .line 23
    .line 24
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "image"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 44
    .line 45
    if-eq v3, v4, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 71
    .line 72
    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "image"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
