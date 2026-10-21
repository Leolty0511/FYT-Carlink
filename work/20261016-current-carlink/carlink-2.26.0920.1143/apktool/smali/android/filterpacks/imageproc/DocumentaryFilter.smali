.class public Landroid/filterpacks/imageproc/DocumentaryFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private final mDocumentaryShader:Ljava/lang/String;

.field private mHeight:I

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
    iput p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 10
    .line 11
    iput p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    .line 14
    .line 15
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mDocumentaryShader:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/util/Random;

    .line 26
    .line 27
    new-instance v0, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 40
    .line 41
    return-void
.end method

.method private initParameters()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 9
    .line 10
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 11
    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-le v2, v3, :cond_0

    .line 17
    .line 18
    aput v4, v1, v6

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v3, v2

    .line 23
    aput v3, v1, v5

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
    aput v2, v1, v6

    .line 30
    .line 31
    aput v4, v1, v5

    .line 32
    .line 33
    :goto_0
    aget v2, v1, v6

    .line 34
    .line 35
    mul-float/2addr v2, v2

    .line 36
    aget v3, v1, v5

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
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 58
    .line 59
    div-float/2addr v4, v2

    .line 60
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string/jumbo v3, "inv_max_dist"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 71
    .line 72
    const v2, 0x3b808081

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string/jumbo v3, "stepsize"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-array v0, v0, [F

    .line 86
    .line 87
    iget-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    aput v1, v0, v6

    .line 94
    .line 95
    iget-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    aput v1, v0, v5

    .line 102
    .line 103
    iget-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 104
    .line 105
    const-string/jumbo v2, "seed"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

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
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

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
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

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
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

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
    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initParameters()V

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
    iget-object v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

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
