.class public Landroid/filterpacks/videosrc/SurfaceTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureTarget"


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceTexture"
    .end annotation
.end field

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_STRETCH:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FIT:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FILL_CROP:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_CUSTOMIZE:I

    .line 15
    .line 16
    new-instance v1, Landroid/filterfw/geometry/Quad;

    .line 17
    .line 18
    new-instance v2, Landroid/filterfw/geometry/Point;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Landroid/filterfw/geometry/Point;

    .line 27
    .line 28
    invoke-direct {v5, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Landroid/filterfw/geometry/Point;

    .line 32
    .line 33
    invoke-direct {v6, v3, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 34
    .line 35
    .line 36
    new-instance v7, Landroid/filterfw/geometry/Point;

    .line 37
    .line 38
    invoke-direct {v7, v4, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v5, v6, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 45
    .line 46
    new-instance v1, Landroid/filterfw/geometry/Quad;

    .line 47
    .line 48
    new-instance v2, Landroid/filterfw/geometry/Point;

    .line 49
    .line 50
    invoke-direct {v2, v3, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Landroid/filterfw/geometry/Point;

    .line 54
    .line 55
    invoke-direct {v5, v4, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Landroid/filterfw/geometry/Point;

    .line 59
    .line 60
    invoke-direct {v6, v3, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Landroid/filterfw/geometry/Point;

    .line 64
    .line 65
    invoke-direct {v3, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2, v5, v6, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 72
    .line 73
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 74
    .line 75
    iput v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 76
    .line 77
    const-string p1, "SurfaceTextureTarget"

    .line 78
    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 84
    .line 85
    return-void
.end method

.method private updateTargetRect()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 2
    .line 3
    const-string v1, "SurfaceTextureTarget"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "updateTargetRect. Thread: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    .line 30
    .line 31
    if-lez v0, :cond_a

    .line 32
    .line 33
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    .line 34
    .line 35
    if-lez v2, :cond_a

    .line 36
    .line 37
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 38
    .line 39
    if-eqz v3, :cond_a

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    int-to-float v2, v2

    .line 43
    div-float/2addr v0, v2

    .line 44
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 45
    .line 46
    div-float v2, v0, v2

    .line 47
    .line 48
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "UTR. screen w = "

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, " x screen h = "

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    .line 71
    .line 72
    int-to-float v4, v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, " Screen AR: "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", frame AR: "

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", relative AR: "

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    .line 111
    cmpl-float v3, v2, v0

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x3

    .line 115
    const/4 v6, 0x0

    .line 116
    if-nez v3, :cond_2

    .line 117
    .line 118
    iget v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 119
    .line 120
    if-eq v7, v5, :cond_2

    .line 121
    .line 122
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 123
    .line 124
    invoke-virtual {v1, v6, v6, v0, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 128
    .line 129
    invoke-virtual {v0, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_2
    iget v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 135
    .line 136
    if-eqz v7, :cond_8

    .line 137
    .line 138
    const/4 v4, 0x1

    .line 139
    const/high16 v8, 0x3f000000    # 0.5f

    .line 140
    .line 141
    if-eq v7, v4, :cond_6

    .line 142
    .line 143
    const/4 v9, 0x2

    .line 144
    if-eq v7, v9, :cond_4

    .line 145
    .line 146
    if-eq v7, v5, :cond_3

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 151
    .line 152
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_4
    if-lez v3, :cond_5

    .line 160
    .line 161
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 162
    .line 163
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 164
    .line 165
    mul-float/2addr v2, v8

    .line 166
    sub-float v5, v8, v2

    .line 167
    .line 168
    invoke-virtual {v3, v6, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 172
    .line 173
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 174
    .line 175
    invoke-virtual {v3, v0, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 179
    .line 180
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 181
    .line 182
    add-float/2addr v2, v8

    .line 183
    invoke-virtual {v3, v6, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 187
    .line 188
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 189
    .line 190
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_5
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 195
    .line 196
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 197
    .line 198
    div-float v2, v8, v2

    .line 199
    .line 200
    sub-float v5, v8, v2

    .line 201
    .line 202
    invoke-virtual {v3, v5, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 206
    .line 207
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 208
    .line 209
    add-float/2addr v2, v8

    .line 210
    invoke-virtual {v3, v2, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 211
    .line 212
    .line 213
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 214
    .line 215
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 216
    .line 217
    invoke-virtual {v3, v5, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 221
    .line 222
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 223
    .line 224
    invoke-virtual {v3, v2, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 225
    .line 226
    .line 227
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 228
    .line 229
    invoke-virtual {v0, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    if-lez v3, :cond_7

    .line 234
    .line 235
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 236
    .line 237
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 238
    .line 239
    div-float v2, v8, v2

    .line 240
    .line 241
    sub-float v5, v8, v2

    .line 242
    .line 243
    invoke-virtual {v3, v5, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 244
    .line 245
    .line 246
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 247
    .line 248
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 249
    .line 250
    add-float/2addr v2, v8

    .line 251
    invoke-virtual {v3, v2, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 252
    .line 253
    .line 254
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 255
    .line 256
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 257
    .line 258
    invoke-virtual {v3, v5, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 259
    .line 260
    .line 261
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 262
    .line 263
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 264
    .line 265
    invoke-virtual {v3, v2, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_7
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 270
    .line 271
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 272
    .line 273
    mul-float/2addr v2, v8

    .line 274
    sub-float v5, v8, v2

    .line 275
    .line 276
    invoke-virtual {v3, v6, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 277
    .line 278
    .line 279
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 280
    .line 281
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 282
    .line 283
    invoke-virtual {v3, v0, v5}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 284
    .line 285
    .line 286
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 287
    .line 288
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 289
    .line 290
    add-float/2addr v2, v8

    .line 291
    invoke-virtual {v3, v6, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 292
    .line 293
    .line 294
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 295
    .line 296
    iget-object v3, v3, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 297
    .line 298
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 299
    .line 300
    .line 301
    :goto_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 302
    .line 303
    invoke-virtual {v0, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_8
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 308
    .line 309
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 310
    .line 311
    invoke-virtual {v2, v6, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 312
    .line 313
    .line 314
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 315
    .line 316
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 317
    .line 318
    invoke-virtual {v2, v0, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 319
    .line 320
    .line 321
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 322
    .line 323
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 324
    .line 325
    invoke-virtual {v2, v6, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 326
    .line 327
    .line 328
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 329
    .line 330
    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 331
    .line 332
    invoke-virtual {v2, v0, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 336
    .line 337
    invoke-virtual {v0, v4}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 338
    .line 339
    .line 340
    :goto_2
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 341
    .line 342
    if-eqz v0, :cond_9

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v2, "UTR. quad: "

    .line 347
    .line 348
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    :cond_9
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 364
    .line 365
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 368
    .line 369
    .line 370
    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public declared-synchronized disconnect(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "SurfaceTextureTarget"

    .line 7
    .line 8
    const-string v1, "disconnect"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p1, "SurfaceTextureTarget"

    .line 18
    .line 19
    const-string v0, "SurfaceTexture is already null. Nothing to disconnect."

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :try_start_1
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 28
    .line 29
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 40
    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :cond_2
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p2, "FPVU. Thread: "

    .line 8
    .line 9
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "SurfaceTextureTarget"

    .line 24
    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    const-string v0, "Could not register SurfaceTexture: "

    .line 2
    .line 3
    const-string v1, "Could not register SurfaceTexture: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 15
    .line 16
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    .line 17
    .line 18
    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2, v3}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    const-string p1, "SurfaceTextureTarget"

    .line 51
    .line 52
    const-string v0, "SurfaceTexture is null!!"

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Prepare. Thread: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SurfaceTextureTarget"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 33
    .line 34
    const/high16 v1, -0x40800000    # -1.0f

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v2, v2}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    .line 62
    .line 63
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/16 v1, 0x65

    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 81
    .line 82
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 83
    .line 84
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    .line 1
    const-string v0, "Process. New aspect ratio: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "frame"

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    int-to-float v4, v4

    .line 38
    div-float/2addr v3, v4

    .line 39
    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 40
    .line 41
    cmpl-float v4, v3, v4

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-boolean v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const-string v4, "SurfaceTextureTarget"

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", previously: "

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ". Thread: "

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_1
    iput v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 89
    .line 90
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v3, 0x3

    .line 102
    if-eq v0, v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x0

    .line 115
    move-object p1, v2

    .line 116
    :goto_0
    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 122
    .line 123
    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 124
    .line 125
    invoke-virtual {v3, p1, v4}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 136
    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_4
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    monitor-exit p0

    .line 147
    throw p1
.end method

.method public declared-synchronized setupPorts()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "frame"

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v1, "Null SurfaceTexture passed to SurfaceTextureTarget"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "updateRenderMode. Thread: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SurfaceTextureTarget"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    const-string/jumbo v1, "stretch"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "fit"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    .line 61
    .line 62
    const-string v1, "fill_crop"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    .line 75
    .line 76
    const-string v1, "customize"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const/4 v0, 0x3

    .line 85
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "Unknown render mode \'"

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "\'!"

    .line 100
    .line 101
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 110
    .line 111
    .line 112
    return-void
.end method
