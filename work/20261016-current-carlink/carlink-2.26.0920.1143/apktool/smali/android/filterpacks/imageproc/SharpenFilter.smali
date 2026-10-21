.class public Landroid/filterpacks/imageproc/SharpenFilter;
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

.field private final mSharpenShader:Ljava/lang/String;

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
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    .line 6
    .line 7
    const/16 p1, 0x280

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 13
    .line 14
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 15
    .line 16
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    .line 17
    .line 18
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mSharpenShader:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 4
    .line 5
    iget-object p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    div-float p1, v0, p1

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string/jumbo v1, "stepsizeX"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v1, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 25
    .line 26
    iget p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 27
    .line 28
    int-to-float p2, p2

    .line 29
    div-float/2addr v0, p2

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string/jumbo v0, "stepsizeY"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

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
    iget-object v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v5, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/SharpenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

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
    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

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
    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

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
    invoke-direct {p0, p1, v2}, Landroid/filterpacks/imageproc/SharpenFilter;->updateFrameSize(II)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

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
