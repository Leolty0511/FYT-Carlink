.class public Landroid/filterpacks/imageproc/SaturateFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mBenProgram:Landroid/filterfw/core/Program;

.field private final mBenSaturateShader:Ljava/lang/String;

.field private mHerfProgram:Landroid/filterfw/core/Program;

.field private final mHerfSaturateShader:Ljava/lang/String;

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
    iput p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 6
    .line 7
    const/16 p1, 0x280

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 13
    .line 14
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenSaturateShader:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfSaturateShader:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private initParameters()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 8
    .line 9
    const-string/jumbo v2, "weights"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 16
    .line 17
    const-string/jumbo v3, "shift"

    .line 18
    .line 19
    .line 20
    const v4, 0x3b808081

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method private updateParameters()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [F

    .line 12
    .line 13
    const v3, 0x3f666666    # 0.9f

    .line 14
    .line 15
    .line 16
    mul-float/2addr v3, v0

    .line 17
    add-float/2addr v3, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    aput v3, v1, v4

    .line 20
    .line 21
    const v3, 0x40066666    # 2.1f

    .line 22
    .line 23
    .line 24
    mul-float/2addr v3, v0

    .line 25
    add-float/2addr v3, v2

    .line 26
    const/4 v4, 0x1

    .line 27
    aput v3, v1, v4

    .line 28
    .line 29
    const v3, 0x402ccccd    # 2.7f

    .line 30
    .line 31
    .line 32
    mul-float/2addr v0, v3

    .line 33
    add-float/2addr v0, v2

    .line 34
    const/4 v2, 0x2

    .line 35
    aput v0, v1, v2

    .line 36
    .line 37
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 38
    .line 39
    const-string v2, "exponents"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 46
    .line 47
    add-float/2addr v0, v2

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "scale"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 10
    .line 11
    .line 12
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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 20
    .line 21
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 33
    .line 34
    iput p2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 40
    .line 41
    const-string v1, "!"

    .line 42
    .line 43
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
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
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

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
    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->initParameters()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    cmpl-float v2, v2, v3

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 50
    .line 51
    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 56
    .line 57
    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 64
    .line 65
    .line 66
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
