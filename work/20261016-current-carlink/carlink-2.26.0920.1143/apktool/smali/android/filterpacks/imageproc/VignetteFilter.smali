.class public Landroid/filterpacks/imageproc/VignetteFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final mShade:F

.field private final mSlope:F

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private final mVignetteShader:Ljava/lang/String;

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
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    .line 6
    .line 7
    const/16 p1, 0x280

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    .line 13
    .line 14
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    .line 15
    .line 16
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    .line 17
    .line 18
    const/high16 p1, 0x41a00000    # 20.0f

    .line 19
    .line 20
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mSlope:F

    .line 21
    .line 22
    const p1, 0x3f59999a    # 0.85f

    .line 23
    .line 24
    .line 25
    iput p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mShade:F

    .line 26
    .line 27
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mVignetteShader:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method private initParameters()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iget v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    .line 9
    .line 10
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    .line 11
    .line 12
    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    aput v3, v0, v5

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v2, v1

    .line 23
    aput v2, v0, v4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-float v1, v1

    .line 27
    int-to-float v2, v2

    .line 28
    div-float/2addr v1, v2

    .line 29
    aput v1, v0, v5

    .line 30
    .line 31
    aput v3, v0, v4

    .line 32
    .line 33
    :goto_0
    aget v1, v0, v5

    .line 34
    .line 35
    mul-float/2addr v1, v1

    .line 36
    aget v2, v0, v4

    .line 37
    .line 38
    mul-float/2addr v2, v2

    .line 39
    add-float/2addr v2, v1

    .line 40
    float-to-double v1, v2

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    double-to-float v1, v1

    .line 46
    const/high16 v2, 0x3f000000    # 0.5f

    .line 47
    .line 48
    mul-float/2addr v1, v2

    .line 49
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 50
    .line 51
    const-string/jumbo v4, "scale"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 58
    .line 59
    div-float/2addr v3, v1

    .line 60
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v2, "inv_max_dist"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 71
    .line 72
    const v1, 0x3f59999a    # 0.85f

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string/jumbo v2, "shade"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private updateParameters()V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    const v2, 0x3fa66666    # 1.3f

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "range"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

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
    iget-object v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/VignetteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

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
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

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
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

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
    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->initParameters()V

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
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

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
