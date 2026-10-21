.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

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
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    .line 6
    .line 7
    const/16 p1, 0x280

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 13
    .line 14
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 15
    .line 16
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 17
    .line 18
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private updateProgramParams()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 5
    .line 6
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    aput v3, v0, v5

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v2, v1

    .line 19
    aput v2, v0, v4

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    int-to-float v1, v1

    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v1, v2

    .line 25
    aput v1, v0, v5

    .line 26
    .line 27
    aput v3, v0, v4

    .line 28
    .line 29
    :goto_0
    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    .line 30
    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    .line 33
    mul-float/2addr v1, v2

    .line 34
    const/high16 v2, 0x3f400000    # 0.75f

    .line 35
    .line 36
    add-float/2addr v1, v2

    .line 37
    aget v2, v0, v5

    .line 38
    .line 39
    mul-float/2addr v2, v2

    .line 40
    aget v3, v0, v4

    .line 41
    .line 42
    mul-float/2addr v3, v3

    .line 43
    add-float/2addr v3, v2

    .line 44
    const/high16 v2, 0x3e800000    # 0.25f

    .line 45
    .line 46
    mul-float/2addr v3, v2

    .line 47
    float-to-double v4, v3

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    double-to-float v2, v4

    .line 53
    const v4, 0x3f933333    # 1.15f

    .line 54
    .line 55
    .line 56
    mul-float/2addr v4, v2

    .line 57
    mul-float/2addr v4, v4

    .line 58
    div-float v5, v1, v2

    .line 59
    .line 60
    sub-float v3, v4, v3

    .line 61
    .line 62
    float-to-double v6, v3

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    double-to-float v3, v6

    .line 68
    mul-float/2addr v5, v3

    .line 69
    float-to-double v5, v5

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    double-to-float v3, v5

    .line 75
    const v5, 0x3fc90fdb

    .line 76
    .line 77
    .line 78
    sub-float/2addr v5, v3

    .line 79
    div-float/2addr v2, v5

    .line 80
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 81
    .line 82
    const-string/jumbo v5, "scale"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 89
    .line 90
    const-string/jumbo v3, "radius2"

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    .line 102
    const-string v3, "factor"

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 112
    .line 113
    const-string v2, "alpha"

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "Filter FisheyeFilter does not support frames of target "

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
    .locals 6

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
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget v5, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 29
    .line 30
    if-eq v4, v5, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 44
    .line 45
    if-ne p1, v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 52
    .line 53
    if-eq p1, v4, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-direct {p0, p1, v2}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 67
    .line 68
    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 75
    .line 76
    .line 77
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
