.class public Landroid/filterpacks/imageproc/LomoishFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private final mLomoishShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

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
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x280

    .line 5
    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mTileSize:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mWidth:I

    .line 10
    .line 11
    iput p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mHeight:I

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mTarget:I

    .line 14
    .line 15
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsizeX;\nuniform float stepsizeY;\nuniform float stepsize;\nuniform vec2 scale;\nuniform float inv_max_dist;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n"

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mLomoishShader:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/util/Random;

    .line 21
    .line 22
    new-instance v0, Ljava/util/Date;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mRandom:Ljava/util/Random;

    .line 35
    .line 36
    return-void
.end method

.method private initParameters()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iget v2, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mWidth:I

    .line 9
    .line 10
    iget v3, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mHeight:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-le v2, v3, :cond_0

    .line 17
    .line 18
    aput v6, v1, v5

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v3, v2

    .line 23
    aput v3, v1, v4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-float v2, v2

    .line 27
    int-to-float v3, v3

    .line 28
    div-float/2addr v2, v3

    .line 29
    aput v2, v1, v5

    .line 30
    .line 31
    aput v6, v1, v4

    .line 32
    .line 33
    :goto_0
    aget v2, v1, v5

    .line 34
    .line 35
    mul-float/2addr v2, v2

    .line 36
    aget v3, v1, v4

    .line 37
    .line 38
    mul-float/2addr v3, v3

    .line 39
    add-float/2addr v3, v2

    .line 40
    float-to-double v2, v3

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    double-to-float v2, v2

    .line 46
    const/high16 v3, 0x3f000000    # 0.5f

    .line 47
    .line 48
    mul-float/2addr v2, v3

    .line 49
    iget-object v3, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 50
    .line 51
    const-string/jumbo v7, "scale"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v7, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 58
    .line 59
    div-float v2, v6, v2

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string/jumbo v3, "inv_max_dist"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 72
    .line 73
    const v2, 0x3b808081

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string/jumbo v3, "stepsize"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 87
    .line 88
    iget v2, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mWidth:I

    .line 89
    .line 90
    int-to-float v2, v2

    .line 91
    div-float v2, v6, v2

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string/jumbo v3, "stepsizeX"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 104
    .line 105
    iget v2, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mHeight:I

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    div-float/2addr v6, v2

    .line 109
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string/jumbo v3, "stepsizeY"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-array v0, v0, [F

    .line 120
    .line 121
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mRandom:Ljava/util/Random;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    aput v1, v0, v5

    .line 128
    .line 129
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mRandom:Ljava/util/Random;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    aput v1, v0, v4

    .line 136
    .line 137
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 138
    .line 139
    const-string/jumbo v2, "seed"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsizeX;\nuniform float stepsizeY;\nuniform float stepsize;\nuniform vec2 scale;\nuniform float inv_max_dist;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mTarget:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 25
    .line 26
    const-string v1, "!"

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
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
    iget-object v3, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v4, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/LomoishFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

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
    iget v4, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mWidth:I

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
    iget v4, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mHeight:I

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
    iput v3, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mWidth:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mHeight:I

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/filterpacks/imageproc/LomoishFilter;->initParameters()V

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
    iget-object v2, p0, Landroid/filterpacks/imageproc/LomoishFilter;->mProgram:Landroid/filterfw/core/Program;

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
